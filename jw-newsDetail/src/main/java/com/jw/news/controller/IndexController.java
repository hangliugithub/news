package com.jw.news.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jw.news.pojo.Page;
import com.jw.news.pojo.Result;
import com.jw.news.service.IndexService;

@Controller
public class IndexController {
	@RequestMapping("/{index}")
	public String getIndex(@PathVariable(name="index")String index){
		return index;
	}	

	@Autowired
	private IndexService indexService;
	
	@RequestMapping(value="/queryIndexNews",method=RequestMethod.GET)
	@ResponseBody
	public Result getNewsByPage(Page page){
		Result result = null;
		System.out.println("controller");
		result = indexService.getNewsByPage(page);
		return result;
		
	}

}
