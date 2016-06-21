package com.home.desert.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.home.desert.pogo.CartProduct;
import com.home.desert.pogo.User;
import com.home.desert.pubutil.Constants;
import com.home.desert.pubutil.Item;
import com.home.desert.service.OrderService;

public class OrderAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1148828719130213282L;
	
	@Autowired
	OrderService orderBiz;
	
	private int spid;
	private double sum_money;
	private int num;
	private double realPrice;
	
	
	public String addProductToCart(){
		System.out.println("添加商品至购物车------>");
		try {
			//User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			orderBiz.addProductToCart(spid,1, num);
			this.outObjectString(new Item("添加商品至购物车成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}

	
	public String cartProductList(){
		System.out.println("<-------获取用户购物车的商品------>");
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			List<CartProduct> list=orderBiz.getCartProductByUserId(user.getId());
			this.outListJsonString(list);
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}

	public void setOrderBiz(OrderService orderBiz) {
		this.orderBiz = orderBiz;
	}


	public void setSpid(int spid) {
		this.spid = spid;
	}


	public void setSum_money(double sum_money) {
		this.sum_money = sum_money;
	}


	public void setRealPrice(double realPrice) {
		this.realPrice = realPrice;
	}
	
	

}
