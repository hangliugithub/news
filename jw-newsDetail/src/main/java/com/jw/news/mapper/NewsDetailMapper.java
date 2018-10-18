package com.jw.news.mapper;

import java.util.List;

import com.jw.common.mapper.MyMapper;
import com.jw.news.pojo.Comment;
import com.jw.news.pojo.News;
import com.jw.news.pojo.Page;


public interface NewsDetailMapper extends MyMapper<News>{

	/**
	 * 总览页
	 * 分页查询, 带种类
	 * @param page
	 * @param category
	 * @return
	 */
	public List<News> queryAll(Page page);

	/**
	 * 总览页
	 * 查询最新新闻,带需求新闻的数量
	 * @param newsNum
	 * @return
	 */
	public List<News> queryLatestNews(Integer newsNum);

	/**
	 * 获取总览中最新的评论
	 * 2表联查
	 * @param commentNum
	 * @return
	 */
	public List<Comment> queryLatestComment(Integer commentNum);

}
