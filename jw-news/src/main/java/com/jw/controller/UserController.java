package com.jw.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jw.common.util.CookieUtils;
import com.jw.common.vo.SysResult;
import com.jw.pojo.User;
import com.jw.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	// 注册
	@RequestMapping(value = "web/regist")
	@ResponseBody
	public SysResult regist(User user, String yzm, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String code = (String) request.getSession().getAttribute("rightCode");

		SysResult result = userService.regist(user, yzm, code, request);
		
		CookieUtils.setCookie(request, response, "JW_USERNAME", user.getUserName());

		return result;

	}


	// 登录
	@RequestMapping(value = "web/login")
	@ResponseBody
	public SysResult login(User user, String yzm, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// 获取redis中的key作为cookie的值

		// 获取页面验证码 String code, String yzm
		String code = (String) request.getSession().getAttribute("rightCode");

		SysResult result = userService.checkYzm(code, yzm);

		if (result.getStatus() == 201) {
			return result;

		}

		String ticket = userService.login(user);

		if (ticket != "null") {// 存入cookie
			CookieUtils.setCookie(request, response, "JW_TICKET", ticket);

			return SysResult.oK();

		} else {
			return SysResult.build(201, "用户或密码错误", "false");
		}

	}

	// 退出登录，删除cookie web/logout
	@RequestMapping(value = "web/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {

		try {
			CookieUtils.deleteCookie(request, response, "JW_TICKET");
			return "index";

		} catch (Exception e) {

			return null;
		}

	}

}
