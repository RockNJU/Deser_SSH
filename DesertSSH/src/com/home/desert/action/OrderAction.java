package com.home.desert.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.home.desert.pogo.CartProduct;
import com.home.desert.pogo.User;
import com.home.desert.pubutil.Constants;
import com.home.desert.pubutil.Item;
import com.home.desert.service.OrderService;

/**
 * @author zucewei
 * @see实现订单提交，商品加入的action;
 * */

public class OrderAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1148828719130213282L;
	
	@Autowired
	OrderService orderBiz;
	
	private int spid;
	private int id;
	private double sum_money;
	private int num;
	private double realPrice;
	
	
	public String addProductToCart(){
		//System.out.println("添加商品至购物车------>");
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
	
	public String addUpProductToCart(){
		System.out.println("添加商品至购物车------>  cartId:  "+id);
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			orderBiz.addUpProductToCart(id,1, 1);
			this.outObjectString(new Item("添加商品至购物车成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}
	
	public String minusProductToCart(){
		System.out.println("较少商品至购物车------cartID  >  "+id );
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			orderBiz.minusProductInCart(id, user.getId(),1);
			this.outObjectString(new Item("较少购物车商品成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}

	
	public String deleteProductInChart(){
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			orderBiz.deleteProductInCart(id);
			this.outObjectString(new Item("较少购物车商品成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}
	
	public String cartProductList(){
		//System.out.println("<-------获取用户购物车的商品------>");
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			List<CartProduct> list=orderBiz.getCartProductByUserId(1);
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

	public void setId(int id) {
		this.id = id;
	}
	
	

}
