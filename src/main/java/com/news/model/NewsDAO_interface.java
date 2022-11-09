package com.news.model;

import java.util.List;

public interface NewsDAO_interface {
	public void insert(NewsVO newsVO);
    public void update(NewsVO newsVO);
    public void delete(Integer news_id);
    public NewsVO findByPrimaryKey(Integer news_id);
    public List<NewsVO> getAll();

}
