package com.jw.news.pojo;

import java.util.List;


public class Result {
	/**
	 * 结果的状态
	 * 1 : true;
	 * 0 : false;
	 */
	private int status;
	
	/**
	 * 结果的消息
	 * 提示信息
	 */
	private String message;
	
	/**
	 * 结果中的数据
	 */
	private Object data;

	
	
	public Result() {
	}


	public Result(int i, String string, List<News> newsList) {
		this.status=i;
		this.message=string;
		this.data=newsList;
	}
	
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
	
	
}
