package com.jw.news.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jw.news.mapper.IndexMapper;
import com.jw.news.pojo.News;
import com.jw.news.pojo.Page;
import com.jw.news.pojo.Result;
import com.jw.news.service.IndexService;
@Service(value="indexService")
public class IndexServiceImpl implements IndexService {

	@Autowired
	private IndexMapper indexMapper;
	
	@Override
	public Result getNewsByPage(Page page) {
//		page.setPageSize(9);
//		PageHelper.startPage(1, 9);
//		List<News> newsList = indexMapper.selectAll();
//		PageInfo<News> pageInfo = new PageInfo<>(newsList);
//		Result result = new Result(1,"success",pageInfo.getList());
		List<News> newsList = indexMapper.selectAll();
		Result result = new Result(1,"success",newsList);
//		System.out.println("indexService"+newsList);
		return result;
	}

	

}
