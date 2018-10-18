package com.jw.news.mapper;

import java.util.List;

import com.jw.common.mapper.MyMapper;
import com.jw.news.pojo.Comment;
import com.jw.news.pojo.News;

public interface SinglePageMapper extends MyMapper<News> {

	List<Comment> queryCommentsByNewsId(Integer newsId);
	/**
	 * 插入评论
	 * @param comment 评论的字段
	 * @param
	 * @return
	 */
	int editComment(Comment comment);
}
