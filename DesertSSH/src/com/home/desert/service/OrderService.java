package com.home.desert.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.home.desert.pogo.CartProduct;

@Service
public interface OrderService {
	/**
	 * @author zucewei
	 * @see向购物车中添加商品
	 * */
	public void addProductToCart(int spid,int userId,int num);
	
	/**
	 * @author zucewei
	 * @param userid=用户编号，take_style=用户的取货方式，take_time=用户的预订时间,cartIDList=需要提交的购物车商品id
	 * 
	 * */
	
	public void submibOrder(int userId,String take_style,String take_time,List<Integer> cartIDList);
	
	public List<CartProduct> getCartProductByUserId(int userid);
	
}
