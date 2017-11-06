package org.blacksw.dto;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class Criteria {
	
	protected int page;
	protected int total;
		
	
	
	public Criteria(int page) {
		if(page <= 0) {
			page = 1;
		}
		
		this.page = page;
	}
	
	public Criteria() {	
		this(1);
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page <= 0) {
			page = 1;
		}
		this.page = page;
	}

	public int getSkip() {
		return (this.page -1) * 10 ;
	}
	

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", total=" + total + "]";
	}
	
}
