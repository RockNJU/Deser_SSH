package com.home.desert.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.home.desert.dto.MyOrder;
import com.home.desert.pogo.CartProduct;

@Service
public interface OrderService {
	/**
	 * @author zucewei
	 * @see向购物车中添加商品
	 * */
	public void addProductToCart(int spid,int userId,int num);
	
	public void addUpProductToCart(int id,int userId,int num);
	
	public void minusProductInCart(int id,int userId,int num);
	
	public void deleteProductInCart(int id);
	
	/**
	 * @author zucewei
	 * @param userid=用户编号，take_style=用户的取货方式，take_time=用户的预订时间,cartIDList=需要提交的购物车商品id
	 * 
	 * */
	
	public void submibOrder(int userId,String take_style,String take_time,String block,String phone,String address,String shop,String custome,List<CartProduct> cartList);
	
	public List<CartProduct> getCartProductByUserId(int userid);
	
	public List<MyOrder> getOrderInTime(int userid);
	public List<MyOrder> getOrderOutTime(int userid);
	
	public List query(String hql);
	
	public CartProduct queryCartProduct(String hql);
	
	
	public void removeOrder(int id);
	
}
