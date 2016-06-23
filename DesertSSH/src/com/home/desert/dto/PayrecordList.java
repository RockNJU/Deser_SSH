package com.home.desert.dto;

import java.io.Serializable;
import java.util.List;

import com.home.desert.pogo.Payrecord;

public class PayrecordList implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Payrecord> list;
	public PayrecordList(){}
	public List<Payrecord> getList() {
		return list;
	}
	public void setList(List<Payrecord> list) {
		this.list = list;
	}
	
}
