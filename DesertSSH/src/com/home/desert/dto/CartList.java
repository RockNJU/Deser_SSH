package com.home.desert.dto;

import java.io.Serializable;
import java.util.List;

import com.home.desert.pogo.CartProduct;

public class CartList implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<CartProduct> list;
	
	public CartList(List<CartProduct> list){
		this.list=list;
	}
	
	public CartList(){
		
	}

	public List<CartProduct> getList() {
		return list;
	}

	public void setList(List<CartProduct> list) {
		this.list = list;
	}
}
