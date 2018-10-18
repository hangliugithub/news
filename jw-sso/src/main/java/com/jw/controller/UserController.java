package com.jw.controller;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.jw.common.util.ObjectMapperUtils;
import com.jw.common.vo.SysResult;
import com.jw.pojo.User;
import com.jw.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	// 注册 
	@RequestMapping(value = "sso/regist")
	@ResponseBody
	public SysResult regist(User user) throws JsonProcessingException {

		String jsonData;
		try {
			SysResult regist = userService.regist(user);
			return regist;

		} catch (Exception e) {
			return SysResult.build(201, "系统异常，请稍后再试");

		}

	}

	// 登录
	@RequestMapping(value = "sso/login")
	@ResponseBody
	public SysResult login(String userName, String passWord) throws Exception {

		SysResult result = userService.login(userName, passWord);

		return result;

	}

	// 用ticket获取用户信息
	@RequestMapping(value = "sso/checkLogin/{ticket}")
	@ResponseBody
	public String checkUserLogin(@PathVariable String ticket, String callback) throws JsonProcessingException {

		if (StringUtils.isNotEmpty(callback)) {
			String checkUserLogin = userService.checkUserLogin(ticket);

			System.out.println(checkUserLogin);

			return callback + "(" + checkUserLogin + ")";

		} else {
			return userService.checkUserLogin(ticket);

		}

	}

}
