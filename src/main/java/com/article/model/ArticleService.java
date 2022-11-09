package com.article.model;

import java.util.List;

public class ArticleService {
	
	private ArticleDAO_interface dao;
	
	public ArticleService() {
		dao = new ArticleJDBCDAO();
	}
	
	public ArticleVO addArticle(Integer mem_id, Integer sort_id, String article_title, String article_content) {
		ArticleVO articleVO = new ArticleVO();
		articleVO.setMem_id(mem_id);
		articleVO.setSort_id(sort_id);
		articleVO.setArticle_title(article_title);
		articleVO.setArticle_content(article_content);
		dao.insert(articleVO);
		
		return articleVO;
	}
	
	public ArticleVO updateArticle(Integer article_id, Integer sort_id, String article_title, String article_content, Integer article_status, Integer article_like, Integer article_dislike, Integer mem_id) {
		ArticleVO articleVO = new ArticleVO();
		articleVO.setArticle_id(article_id);
		articleVO.setSort_id(sort_id);
		articleVO.setArticle_title(article_title);
		articleVO.setArticle_content(article_content);
		articleVO.setArticle_status(article_status);
		articleVO.setArticle_like(article_like);
		articleVO.setArticle_dislike(article_dislike);
		articleVO.setMem_id(mem_id);
		dao.update(articleVO);
		return articleVO;
	}
	
	public void deleteArticle(Integer article_id) {
		dao.delete(article_id);
	}

	public ArticleVO getOneArticle(Integer article_id) {
		return dao.findByPrimaryKey(article_id);
	}
	
	public List<ArticleVO> getAll() {
		return dao.getAll();
	}

}
