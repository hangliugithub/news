package com.jw.news.pojo;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Table(name="jw_news")
public class News {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer newsId; //内部id, 自增, 主键
	private String newsTitle;//新闻标题
	private String newsCategory;//新闻分类
	private String newsDesc;//新闻简要描述, 可有可无
	private String newsImage;//图片URL
	private String newsText;//新闻正文
	private Integer thumbs;//点赞数, 不用爬取
	private Float newsScore;//评分, 与热度挂钩项, 不用爬取
	private Date newsPost;//以发布时间为准, 不用爬
	private Date newsFetch;//爬取新闻, 存入数据库的时间
	private Integer newsHide;//是否被屏蔽 NULL-不屏蔽 非NULL-屏蔽
	
	@Transient
	private Page page;//传参用
	
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsCategory() {
		return newsCategory;
	}
	public void setNewsCategory(String newsCategory) {
		this.newsCategory = newsCategory;
	}
	public String getNewsDesc() {
		return newsDesc;
	}
	public void setNewsDesc(String newsDesc) {
		this.newsDesc = newsDesc;
	}	
	public String getNewsImage() {
		return newsImage;
	}
	public void setNewsImage(String newsImage) {
		this.newsImage = newsImage;
	}
	public String getNewsText() {
		return newsText;
	}
	public void setNewsText(String newsText) {
		this.newsText = newsText;
	}
	public Integer getThumbs() {
		return thumbs;
	}
	public void setThumbs(Integer thumbs) {
		this.thumbs = thumbs;
	}
	public Float getNewsScore() {
		return newsScore;
	}
	public void setNewsScore(Float newsScore) {
		this.newsScore = newsScore;
	}	
	public Date getNewsPost() {
		return newsPost;
	}
	public void setNewsPost(Date newsPost) {
		this.newsPost = newsPost;
	}
	public Date getNewsFetch() {
		return newsFetch;
	}
	public void setNewsFetch(Date newsFetch) {
		this.newsFetch = newsFetch;
	}
	public Integer getNewsHide() {
		return newsHide;
	}
	public void setNewsHide(Integer newsHide) {
		this.newsHide = newsHide;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", newsTitle=" + newsTitle + ", newsCategory=" + newsCategory + ", newsDesc="
				+ newsDesc + ", newsImage=" + newsImage + ", newsText=" + newsText + ", thumbs=" + thumbs
				+ ", newsScore=" + newsScore + ", newsPost=" + newsPost + ", newsFetch=" + newsFetch + ", newsHide="
				+ newsHide + ", page=" + page + "]";
	}
	
	
}
