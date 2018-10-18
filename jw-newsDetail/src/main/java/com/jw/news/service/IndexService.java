package com.jw.news.service;

import com.jw.news.pojo.Page;
import com.jw.news.pojo.Result;

public interface IndexService {

	Result getNewsByPage(Page page);

}
