package com.jw.news.pojo;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="jw_comment")
public class Comment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer commentId; //评论id, 自增, 主键
	private String commentDesc;//评论内容
	private Timestamp createDate;//以发布时间为准
	private Date latestModify;//以最后修改时间为准
	private Integer hide;//是否被显示  1为屏蔽不显示
	private Integer cuserId;//关联userId
	private Integer cnewsId;//关联newsId
	
	private User user; // 关联user相关信息
	
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	public String getCommentDesc() {
		return commentDesc;
	}
	public void setCommentDesc(String commentDesc) {
		this.commentDesc = commentDesc;
	}
	public Timestamp getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	public Date getLatestModify() {
		return latestModify;
	}
	public void setLatestModify(Date latestModify) {
		this.latestModify = latestModify;
	}
	public Integer getHide() {
		return hide;
	}
	public void setHide(Integer hide) {
		this.hide = hide;
	}
	public Integer getCuserId() {
		return cuserId;
	}
	public void setCuserId(Integer cuserId) {
		this.cuserId = cuserId;
	}
	public Integer getCnewsId() {
		return cnewsId;
	}
	public void setCnewsId(Integer cnewsId) {
		this.cnewsId = cnewsId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", commentDesc=" + commentDesc + ", createDate=" + createDate
				+ ", latestModify=" + latestModify + ", hide=" + hide + ", cuserId=" + cuserId + ", cnewsId=" + cnewsId
				+ ", user=" + user + "]";
	}
	
	
}
