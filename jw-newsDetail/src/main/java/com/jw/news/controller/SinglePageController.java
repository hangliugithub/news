package com.jw.news.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jw.news.pojo.Comment;
import com.jw.news.pojo.News;
import com.jw.news.pojo.Result;
import com.jw.news.service.SinglePageService;

@Controller
@RequestMapping("/singlePage")
public class SinglePageController {

	@Autowired
	private SinglePageService singlePageService;
	
	/**
	 * 从数据库获取单个新闻详情
	 * 未加redis, mycat, 异常处理等
	 * @param newsId
	 * @param model
	 * @return
	 */
	@RequestMapping("/{newsId}")
	public String querySingleNews(
			@PathVariable(name="newsId")Integer newsId,
			Model model){
		News news = singlePageService.querySingleNews(newsId);
		model.addAttribute("News", news);
		return "singlepage";
	}
	
	/**
	 * 点赞事件
	 * 未加redis, mycat
	 * @return
	 */
	@RequestMapping("/thumbsUp")
	@ResponseBody
	public Result thumbsUp(
			Integer newsId,
			@RequestParam(name="thumbsNum")Integer thumbs){
		Result result = singlePageService.thumbsUp(newsId, thumbs);
		return result;
	}
	/**
	 * 获取对应文章的评论
	 * 未加redis, es, mycat
	 * @param newsId
	 * @return
	 */
	@RequestMapping("/queryCommentsByNewsId")
	@ResponseBody
	public Result queryCommentsByNewsId(@RequestParam(name="newsId")Integer newsId){		
		Result result = singlePageService.queryCommentsByNewsId(newsId);		
		return result;
	}
	
	/**
	 * 从拦截器中获取取用户的userId
	 * @param request
	 * @param comment
	 * @return
	 */
	@RequestMapping("/editComment")
	@ResponseBody
	public Result editCommentsByUserId(HttpServletRequest request,Comment comment){
		Integer userId =(Integer) request.getAttribute("userId");
		comment.setCuserId(userId);
		Result result = singlePageService.editCommentByUserId(comment);
		return result;
		
	}
}
