package com.jw.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.jw.common.service.HttpClientService;
import com.jw.common.util.ObjectMapperUtils;
import com.jw.common.vo.HttpResult;
import com.jw.common.vo.SysResult;
import com.jw.pojo.User;

@Service
public class UserService {

	@Autowired
	private HttpClientService client;

	// 用户登录
	// 通过httpclient调用 http://localhost:9093/sso/login
	public String login(User user) throws Exception {

		String url = "http://localhost:9093/sso/login";

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userName", user.getUserName());
		map.put("passWord", user.getPassword());

		HttpResult response = client.doPost(url, map);

		String body = response.getBody();

		//string:{"createTime":1539133561000,"updateTime":null,"userId":379,"userName":"qqq","nickName":"qqq","password":"b2ca678b4c936f905fb82f2733f5297f","roleCode":1,"headPortrait":null,"status":1,"phone":null,"email":"qqq"}

		JsonNode jsonNode = ObjectMapperUtils.getMapper().readTree(body);
		String ticket = jsonNode.get("data").asText();

		return ticket;

	}

	// 注册 httpclient
	public SysResult regist(User user, String yzm, String code, HttpServletRequest request) throws Exception {
		// 先判断验证码是否正确
		if (!code.equals(yzm)) {
			return SysResult.build(201, "验证码错误");
		} else {
			// 使用httpclient发送请求 注册 sso/regist user

			String url = "http://localhost:9093/sso/regist";

			Map<String, Object> map = new HashMap<String, Object>();
			map.put("userName", user.getUserName());
			map.put("password", user.getPassword());
			map.put("nickName", user.getNickName());
			map.put("email", user.getEmail());

			HttpResult response = client.doPost(url, map);

			String body = response.getBody();

			JsonNode jsonNode = ObjectMapperUtils.getMapper().readTree(body);

			int status = Integer.parseInt(jsonNode.get("status").asText());
			String msg = jsonNode.get("msg").asText();

			return SysResult.build(status, msg);

		}

	}

	// 验证码校验方法

	public SysResult checkYzm(String code, String yzm) {

		// 先判断验证码是否正确
		if (!code.equals(yzm)) {
			return SysResult.build(201, "验证码错误");
		} else {

			return SysResult.oK();
		}

	}


}
