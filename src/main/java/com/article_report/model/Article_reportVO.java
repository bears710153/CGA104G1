package com.article_report.model;

import java.sql.Date;

public class Article_reportVO implements java.io.Serializable{
	private Integer afrep_id;
	private Integer article_id;
	private Integer mem_id;
	private String afrep_content;
	private Integer afrep_status;
	private Integer afrep_result;
	private Integer emp_id;
	private Date afrep_date;
	
	public Integer getAfrep_id() {
		return afrep_id;
	}
	public void setAfrep_id(Integer afrep_id) {
		this.afrep_id = afrep_id;
	}
	public Integer getArticle_id() {
		return article_id;
	}
	public void setArticle_id(Integer article_id) {
		this.article_id = article_id;
	}
	public Integer getMem_id() {
		return mem_id;
	}
	public void setMem_id(Integer mem_id) {
		this.mem_id = mem_id;
	}
	public String getAfrep_content() {
		return afrep_content;
	}
	public void setAfrep_content(String afrep_content) {
		this.afrep_content = afrep_content;
	}
	public Integer getAfrep_status() {
		return afrep_status;
	}
	public void setAfrep_status(Integer afrep_status) {
		this.afrep_status = afrep_status;
	}
	public Integer getAfrep_result() {
		return afrep_result;
	}
	public void setAfrep_result(Integer afrep_result) {
		this.afrep_result = afrep_result;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public Date getAfrep_date() {
		return afrep_date;
	}
	public void setAfrep_date(Date afrep_date) {
		this.afrep_date = afrep_date;
	}
	

}
