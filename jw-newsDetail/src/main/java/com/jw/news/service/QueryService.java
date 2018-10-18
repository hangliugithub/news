package com.jw.news.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.elasticsearch.action.search.SearchResponse;
//import org.elasticsearch.client.transport.TransportClient;
//import org.elasticsearch.index.query.Operator;
//import org.elasticsearch.index.query.QueryBuilder;
//import org.elasticsearch.index.query.QueryBuilders;
//import org.elasticsearch.search.SearchHit;
//import org.elasticsearch.search.SearchHits;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jw.news.config.PageUtil;
import com.jw.news.pojo.News;
import com.jw.news.pojo.Page;
import com.jw.news.pojo.Result;

@Service
public class QueryService {
	//利用TransportClient从索引文件搜索doc
//	@Autowired
//	private TransportClient client;
	
	@Autowired
	private PageUtil pageUtil;
/*
 * 直接利用关键字查询title中的关键字
 */
	public Result serach( Page page, String key) {
		Result result = new Result();
			/*if(page.getCurrentPage()==0){
				page.setCurrentPage(1);
			}
			//定义rows 一页显示的条目数
			Integer rows = 20;
			QueryBuilder query = QueryBuilders.matchQuery("news_title", key).operator(Operator.AND); 
			SearchResponse response = client.prepareSearch("jw_news").setQuery(query).setFrom((page.getCurrentPage()-1)*rows).setSize(rows).get();
			//封装查询结果
			SearchHits hits = response.getHits();
			//打桩hits 的数量
			page.setPageSize(pageUtil.getPageSize());
			page.setTotalCount((int)hits.totalHits);
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
			
			System.out.println("总共多少条命中"+hits.totalHits);
			List<News> newsList = new ArrayList<News>();
			for(SearchHit hit:hits){
				News news = new News();
				news.setNewsId((int)hit.getSource().get("news_id"));
				news.setNewsImage((String) hit.getSource().get("news_image"));
				news.setNewsCategory((String) hit.getSource().get("news_category"));
				news.setNewsTitle((String)hit.getSource().get("news_title"));
				news.setNewsText((String) hit.getSource().get("news_text"));
//				news.setNewsScore((Float) hit.getSource().get("newsScore"));
				newsList.add(news);
			}
			page.setData(newsList)
			result.setData(page);
			result.setStatus(200);
			result.setMessage("es search");*/
			List<News> newsList = new ArrayList<News>();
			News news= new News();
			news.setNewsId(3);
			news.setNewsCategory("热门");
			news.setNewsImage("http://www.inamge.com");
			news.setNewsTitle("文章标题");
			news.setNewsText("文章内容");
			newsList.add(news);
			page.setTotalCount(1);
			page.setPageSize(3);
			page.setTotalCount(1);
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
			
			page.setData(newsList);
			result.setData(page);
			result.setStatus(200);
			result.setMessage("es search");
			return result;

	}

}
