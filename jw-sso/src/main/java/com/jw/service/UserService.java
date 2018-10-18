package com.jw.service;

import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;


import com.jw.common.util.ObjectMapperUtils;
import com.jw.common.vo.SysResult;
import com.jw.mapper.UserMapper;
import com.jw.pojo.User;

import redis.clients.jedis.JedisCluster;



@Service
public class UserService {
	@Autowired
	UserMapper userMapper;

	@Autowired
	JedisCluster redisService;

	// 用户名和邮箱校验

	// 注册
	public SysResult regist(User user) {

		// 校验用户名或邮箱是否注册
		User userN = new User();
		userN.setUserName(user.getUserName());		
		int countN = userMapper.selectCount(userN);
		if (countN > 0) {
			return SysResult.build(201, "用户已存在");
		}

		User userP = new User();
		userP.setEmail(user.getEmail());
		int countP = userMapper.selectCount(userP);
		if (countP > 0) {
			return SysResult.build(201, "邮箱已存在");

		}

		// 补数据
		user.setRoleCode(01);// 普通用户 01
		user.setStatus(01);// 用户状态正常 01
		user.setCreateTime(new Date());
		// 密码加密
		user.setPassword (DigestUtils.md5Hex(user.getPassword()));

		
		try {
			int countU = userMapper.insert(user);
			
			System.out.println(countU);
			
			if (countU > 0) {
				return SysResult.oK();

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

		return SysResult.build(201, "系统异常，请稍后再试");

	}

	// 登录
	public SysResult login(String userName, String passWord) throws Exception {

		// 校验用户和密码正确的话存入redis
		User user = new User();
		user.setUserName(userName);
		user.setPassword(DigestUtils.md5Hex(passWord));

		// 查询校验用户
		User user2 = userMapper.selectOne(user);

		// 用户存在则将用户数据存入redis
		if (user2 != null) {

			String key = DigestUtils.md5Hex("JW_TICKET" + System.currentTimeMillis() + userName);
			String value = ObjectMapperUtils.getMapper().writeValueAsString(user2);

			redisService.set(key, value,"3600");
			// 将key返回作为cookie的值
			return SysResult.oK(key);

		} else {
			return SysResult.build(201, "用户名或密码错误", null);
		}

	}

	// 使用ticket获取用户信息
	/*
	 * {\
	 * "createTime\":1539133561000,\"updateTime\":null,\"userId\":379,\"userName\":\"qqq\",
	 * \"nickName\":\"qqq\",\"passWord\":\"b2ca678b4c936f905fb82f2733f5297f\",\"roleCode\"
	 * :1,\"headPortrait\":null,\"status\":1,\"phone\":null,\"email\":\"qqq\"}
	 */
	public String checkUserLogin(String ticket) throws JsonProcessingException {

		String userJson;
		String string = redisService.get(ticket);
		// 封装到对象，并转换为json

		userJson = ObjectMapperUtils.getMapper().writeValueAsString(SysResult.oK(string));
		return userJson;

	}

}
