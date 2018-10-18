package com.jw.news.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jw.news.config.PageUtil;
import com.jw.news.mapper.NewsDetailMapper;
import com.jw.news.pojo.Comment;
import com.jw.news.pojo.News;
import com.jw.news.pojo.Page;
import com.jw.news.pojo.Result;

@Service
public class NewsDetailService {
	
	@Autowired
	private NewsDetailMapper newsDetailMapper;
	
	@Autowired
	private PageUtil pageUtil;

	/**
	 * 总览页
	 * 暂时不涉及高可用, 缓存等机制, 后面要加入
	 * @param page
	 * @param category
	 * @return
	 */
	public Result queryAll(Page page, String category) {
		
		News news =new News();
		news.setNewsCategory(category);
		//做封装		
		//计算page相关数值
		page.setPageSize(pageUtil.getPageSize());
		page.setTotalCount(newsDetailMapper.selectCount(news));
		page.setTotalPage(page.getTotalPage());
		//计算前一页
		if (page.getCurrentPage() == 1) {
			page.setPreviousPage(page.getCurrentPage());
		} else {
			page.setPreviousPage(page.getCurrentPage() - 1);
		}
		// 计算下一页
		if (page.getCurrentPage() == page.getTotalPage()) {
			page.setNextPage(page.getCurrentPage());
		} else {
			page.setNextPage(page.getCurrentPage() + 1);
		}
		// 计算超链接的个数
		page.setaNum(pageUtil.getFenYe_a_Num(
				page.getCurrentPage(), 
				page.getPageSize(), 
				page.getTotalCount(),
				page.getTotalPage()));
		
//		System.out.println(page);		

		//传入dao
		List<News> newsList = newsDetailMapper.queryAll(page);
		page.setData(newsList);
		
		Result result = new Result();
		result.setStatus(200);
		result.setMessage("Query All OK!");
		result.setData(page);
		return result;
	}

	/**
	 * 总览页
	 * 还未加入redis , 异常处理等机制
	 * @param newsNum
	 * @return
	 */
	public Result queryLatestNews(Integer newsNum) {
		List<News> newsList = newsDetailMapper.queryLatestNews(newsNum);
		Result result = new Result();
		result.setStatus(200);
		result.setMessage("Query Lastest News OK!");
		result.setData(newsList);
		return result;
	}

	/**
	 * 查询最新评论
	 * 未加mycat
	 * 未加redis
	 * @param commentNum
	 * @return
	 */
	public Result queryLatestComment(Integer commentNum) {
		List<Comment> commentList = newsDetailMapper.queryLatestComment(commentNum);
		Result result = new Result();
		result.setStatus(200);
		result.setMessage("Get Latest Comment! ");
		result.setData(commentList);
		return result;
	}

}
