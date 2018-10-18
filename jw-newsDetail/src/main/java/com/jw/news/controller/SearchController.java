package com.jw.news.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jw.news.pojo.News;
import com.jw.news.pojo.Page;
import com.jw.news.pojo.Result;
import com.jw.news.service.QueryService;

@Controller
@RequestMapping("/news/")
public class SearchController {
	@Autowired
	private QueryService querySearch;
	//搜索功能。title关键字
	@RequestMapping("search")
	@ResponseBody
	public Result search(Model model,Page page, String key){
		//一行显示20条数据
		Result result = querySearch.serach(page,key);
		//当第二页的查询没有q 条件，让jsp的域对象加上条件
//		model.addAttribute("query", q);
//		model.addAttribute("page",page);
		return result;
	}
}
