package com.jw.news.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jw.news.pojo.Page;
import com.jw.news.pojo.Result;
import com.jw.news.service.NewsDetailService;

@Controller
@RequestMapping("/news/")
public class NewsDetailController {
	
	@Autowired 
	private NewsDetailService newsDetailService;
	
	/**
	 * 总览页
	 * 未加入redis , es, mycat的分页查询
	 * 未加入异常机制
	 * @param page
	 * @param category
	 * @return
	 */
	@RequestMapping("queryAll")
	@ResponseBody
	public Result queryAll(Page page, String category){
//		System.out.println("Page="+page);
//		System.out.println("Category="+category);
		
		Result result = newsDetailService.queryAll(page, category);
		
		return result;
	}
	
	
	/**
	 * 总览页
	 * @param newsNum
	 * @return
	 */
	@RequestMapping("queryLatestNews")
	@ResponseBody
	public Result queryLatestNews(Integer newsNum){
		Result result = newsDetailService.queryLatestNews(newsNum);
		return result;
	}
	
	/**
	 * 查询最新评论
	 * 未加mycat
	 * 未加redis
	 * @param commentNum
	 * @return
	 */
	@RequestMapping("queryLatestComment")
	@ResponseBody
	public Result queryLatestComment(Integer commentNum){
		Result result = newsDetailService.queryLatestComment(commentNum);
		return result;
	}
	
}
