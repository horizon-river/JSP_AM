package com.KoreaIT.java.am.service;

import java.sql.Connection;
import java.util.List;

import com.KoreaIT.java.am.dao.ArticleDao;
import com.KoreaIT.java.am.dto.Article;

public class ArticleService {
	private Connection conn;
	private ArticleDao articleDao;
	
	public ArticleService(Connection conn) {
		this.conn = conn;
		
		articleDao = new ArticleDao(conn);
	}
	
	public int getItemsInAPage() {
		return 10;
	}

	public int getForPrintListTotalPage() {
		
		int itemsInAPage = getItemsInAPage();		
		
		int totalCount = articleDao.getTotalCount();
		
		int totalPage = (int) Math.ceil((double)totalCount / itemsInAPage);
		
		return totalPage;
	}

	public List<Article> getForPrintArticleRows(int page) {

		int itemsInAPage = getItemsInAPage();
		
		int limitFrom = (page - 1) * itemsInAPage;
		
		List<Article> articles = articleDao.getForPrintArticleRows(limitFrom, itemsInAPage);
		
		return articles;
	}
	
}
