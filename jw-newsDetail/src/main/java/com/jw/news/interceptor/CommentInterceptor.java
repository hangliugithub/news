package com.jw.news.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.jw.common.service.HttpClientService;
import com.jw.common.util.CookieUtils;
import com.jw.common.util.ObjectMapperUtils;
import com.jw.common.vo.SysResult;
import com.jw.news.pojo.User;


public class CommentInterceptor implements HandlerInterceptor{

	@Autowired
	private HttpClientService client;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//获取cookie
		String ticket = CookieUtils.getCookieValue(request, "JW_TICKET");
		//判断ticket
		if(StringUtils.isNotEmpty(ticket)){
			//使用client访问sso，获取userJson,判断userJson
			String url = "http://sso.jt.com/sso/checkLogin/"+ticket;
			String jsonData = client.doGet(url);
			SysResult result = ObjectMapperUtils.getMapper().readValue(jsonData, SysResult.class);
			String userJson = (String) result.getData();
			//判断userJson是否为空
			if(StringUtils.isNotEmpty(userJson)){
				User user = ObjectMapperUtils.getMapper().readValue(userJson, User.class);
				request.setAttribute("userId", user.getUserId());
				return true;
			}
		}
		response.sendRedirect("/login.html");
		
	
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}
}
