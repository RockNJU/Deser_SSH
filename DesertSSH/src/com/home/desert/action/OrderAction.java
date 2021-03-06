package com.home.desert.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.home.desert.dto.CartList;
import com.home.desert.dto.MyOrder;
import com.home.desert.pogo.CartProduct;
import com.home.desert.pogo.OrderProduct;
import com.home.desert.pogo.Sorder;
import com.home.desert.pogo.User;
import com.home.desert.pubutil.Constants;
import com.home.desert.pubutil.Item;
import com.home.desert.pubutil.Time;
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
	
	private String djid;
	private String idlist;
	
	
	private String take_style;
	private String block;
	private String detailAddress;
	private String name;
	private String phone;
	private String shop;
	
	
	public String submitOrder(){
		
		
		try {
			CartList cartList=(CartList) this.getSession().getAttribute("cpList");
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
//			Sorder order=new Sorder();
//			
//			Time time=new Time();
//			order.setCreate_time(time.getYMD());
//			order.setTake_style(take_style);
			//order.set
			//String take_style,String take_time,String block,String phone,String address,String shop,String custome
			orderBiz.submibOrder(user.getId(), take_style, "2016-06-27",block,phone,
					detailAddress,shop,name, cartList.getList());
		
			this.outObjectString(new Item("添加商品至购物车成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}
	
	
	public String buyNow(){
		//立即购买
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			orderBiz.addProductToCart(spid,user.getId(),1);
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return "buyNow";
		
		
	}
	
	public String orderConfirm(){
		System.out.println("订单确认啦啦啦啦。 idlist:"+idlist);
		try {
			String list[]=idlist.split("-");
			
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			orderBiz.addProductToCart(spid,user.getId(), num);
			
			List<CartProduct> cpList=new ArrayList<>();
			
			String hql;
			
			for(String id:list){
				System.out.println("id:"+id);
				 hql=" from CartProduct cp where cp.id='"+id+"'";
				 cpList.add(orderBiz.queryCartProduct(hql));
			}
			
			CartList cl=new CartList(cpList);
			getSession().setAttribute("cpList", cl);
		//	System.out.println("单据的大小："+cpList.size()+"  ././"+cpList.get(0).getName());
			return "order";
			//this.outObjectString(new Item("添加商品至购物车成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}
	
	
	public String addProductToCart(){
		System.out.println("添加商品至购物车------>"+spid);
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			orderBiz.addProductToCart(spid,user.getId(), num);
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
			orderBiz.addUpProductToCart(id,user.getId(), 1);
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
			this.outObjectString(new Item("较少购物车商品成功！",120));
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
	//	System.out.println("<-------获取用户购物车的商品------>   +  "+ myOrderList(1).size());
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
	
	
	public String orderListOutDate(){
		System.out.println("获取历史订单");
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			List<MyOrder> list=myOrderList(user.getId(),"out");
			this.outListJsonString(list);
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}
	
	
	public String orderListInDate(){
		System.out.println("获取当前订单。");
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			if(user!=null){
				List<MyOrder> list=myOrderList(user.getId(),"in");
				this.outListJsonString(list);
			}else{
				List<MyOrder> list=myOrderList(1,"in");
				this.outListJsonString(list);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}
	
	
	public String removeOrder(){
		try {
			orderBiz.removeOrder(Integer.parseInt(djid));
			this.outObjectString(new Item("较少购物车商品成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		
		return null;
	}
	

	@SuppressWarnings("unchecked")
	private List<MyOrder> myOrderList(int userid,String type){
		List<MyOrder> list;
		if(type.equals("in")){
			list=orderBiz.getOrderInTime(userid);
		}else{
			list=orderBiz.getOrderOutTime(userid);
		}
		if(list==null){
			list=new ArrayList<>();
		}
		
		List<MyOrder> result=new ArrayList<>();
		String hql;
		List<OrderProduct> opList;
		for(MyOrder o:list){
			hql=" from OrderProduct op where op.orderid='"+o.getOrderid()+"'";
			//System.out.println("查询语句："+hql);
			opList=orderBiz.query(hql);
			System.out.println("获取");
			o.setList(opList);
			result.add(o);
		}
		
		return result;
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

	public String getDjid() {
		return djid;
	}

	public void setDjid(String djid) {
		this.djid = djid;
	}

	public void setIdlist(String idlist) {
		this.idlist = idlist;
	}



	public void setNum(int num) {
		this.num = num;
	}



	public void setTake_style(String take_style) {
		this.take_style = take_style;
	}



	public void setBlock(String block) {
		this.block = block;
	}



	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}



	public void setName(String name) {
		this.name = name;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public void setShop(String shop) {
		this.shop = shop;
	}



	public OrderService getOrderBiz() {
		return orderBiz;
	}



	public int getSpid() {
		return spid;
	}



	public int getId() {
		return id;
	}



	public double getSum_money() {
		return sum_money;
	}



	public int getNum() {
		return num;
	}



	public double getRealPrice() {
		return realPrice;
	}



	public String getIdlist() {
		return idlist;
	}



	public String getTake_style() {
		return take_style;
	}



	public String getBlock() {
		return block;
	}



	public String getDetailAddress() {
		return detailAddress;
	}



	public String getName() {
		return name;
	}



	public String getPhone() {
		return phone;
	}



	public String getShop() {
		return shop;
	}
	
	
	
	

}
