package com.jw.news.pojo;

import java.io.Serializable;
import java.util.List;

public class Page implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 105L;
	private int currentPage; //当前页
	private int pageSize; //每页的记录条数
	private int previousPage; //前一页
	private int nextPage; //下一页
	private int totalCount; //总记录数
	private int totalPage; //总页数
	
	private int begin; //limit的起始值
	
	private List<Integer> aNum; //分页条中的超链接个数	
	
	private List data; // 当前页的数据
	
	private String category;//新闻种类

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPreviousPage() {
		return previousPage;
	}

	public void setPreviousPage(int previousPage) {
		this.previousPage = previousPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		//总页数的计算:
		totalPage=(totalCount%pageSize==0)? (totalCount/pageSize) : (totalCount/pageSize)+1;
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getBegin() {
		//起始值的计算
		begin=(currentPage-1)*pageSize;
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public List<Integer> getaNum() {
		return aNum;
	}

	public void setaNum(List<Integer> aNum) {
		this.aNum = aNum;
	}

	public List getData() {
		return data;
	}

	public void setData(List data) {
		this.data = data;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Page [currentPage=" + currentPage + ", pageSize=" + pageSize + ", previousPage=" + previousPage
				+ ", nextPage=" + nextPage + ", totalCount=" + totalCount + ", totalPage=" + totalPage + ", begin="
				+ begin + ", aNum=" + aNum + ", data=" + data + ", category=" + category + "]";
	}	
	
	

//	public News getNews() {
//		return news;
//	}
//
//	public void setNews(News news) {
//		this.news = news;
//	}
//
//	@Override
//	public String toString() {
//		return "Page [currentPage=" + currentPage + ", pageSize=" + pageSize + ", previousPage=" + previousPage
//				+ ", nextPage=" + nextPage + ", totalCount=" + totalCount + ", totalPage=" + totalPage + ", begin="
//				+ begin + ", aNum=" + aNum + ", data=" + data + ", news=" + news + "]";
//	}

	
	


	
	
	
}
