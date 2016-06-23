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
	
	private double sum;
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
		sum=0;
		
		for(CartProduct c:list){
			sum=sum+c.getSummoney();
		}
	}

	public double getSum() {
		return sum;
	}

	public void setSum(double sum) {
		this.sum = sum;
	}
}
