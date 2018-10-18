package com.jw.news.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jw.news.mapper.SinglePageMapper;
import com.jw.news.pojo.Comment;
import com.jw.news.pojo.News;
import com.jw.news.pojo.Result;


@Service
public class SinglePageService {

	@Autowired
	private SinglePageMapper singlePageMapper;
	
//	@Autowired
//	private CommentMapper commentMapper;
	
	/**
	 * 从数据库获取单个新闻详情
	 * 未加redis, mycat, 异常处理等
	 * @param newsId
	 * @return
	 */
	public News querySingleNews(Integer newsId) {
		return singlePageMapper.selectByPrimaryKey(newsId);
	}

	/**
	 * 点赞事件
	 * 未加redis, mycat
	 * @return
	 */
	public Result thumbsUp(Integer newsId, Integer thumbs) {
		Result result = new Result();
		News news = new News();
		news.setNewsId(newsId);
		news.setThumbs(thumbs);
		singlePageMapper.updateByPrimaryKeySelective(news);
		result.setStatus(200);
		return result;
	}

	/**
	 * 获取对应文章的评论
	 * 未加redis, es, mycat
	 * @param newsId
	 * @return
	 */
	public Result queryCommentsByNewsId(Integer newsId) {
		List<Comment> commentList = singlePageMapper.queryCommentsByNewsId(newsId);
		Result result = new Result();
		result.setStatus(200);
		result.setMessage("query comments by news id ok!");
		result.setData(commentList);
		return result;
	}

	public Result editCommentByUserId(Comment comment) {
		// TODO Auto-generated method stub
		
		int row = singlePageMapper.editComment(comment);
		Result result = new Result();
		result.setData(comment);
		result.setStatus(200);
		result.setMessage("comment");
		return result;
	}

}
