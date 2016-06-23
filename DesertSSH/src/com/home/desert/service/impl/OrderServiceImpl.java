package com.home.desert.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.home.desert.dao.BaseDao;
import com.home.desert.dto.MyOrder;
import com.home.desert.pogo.CartProduct;
import com.home.desert.pogo.Sorder;
import com.home.desert.pogo.User;
import com.home.desert.pogo.OrderProduct;
import com.home.desert.pogo.Product;
import com.home.desert.pubutil.Time;
import com.home.desert.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	BaseDao baseDao;
	
	@Override
	public void addProductToCart(int spid,int userId, int num) {
		Product pd=(Product) baseDao.findObjectByHql("from Product p where p.id='"+spid+"'");
		String hql=" from CartProduct cp where cp.spid='"+spid+"' and cp.userid='"+userId+"'";
		CartProduct cp=(CartProduct) baseDao.findObjectByHql(hql);
		
		if(cp==null){
			if(pd!=null){
				CartProduct cartProduct=new CartProduct(userId,pd.getPrice(),num,pd);
				baseDao.save(cartProduct);
			}
		}else{
			if(pd!=null){
				cp.setCount(cp.getCount()+num);
				cp.setRealPrice(pd.getPrice());
				cp.setSummoney(cp.getCount()*cp.getRealPrice());
				baseDao.update(cp);
			}
		}
		
	}

	@Override
	public void submibOrder(int userId, String take_style, String take_time,String block,
			String phone,String address,String shop,String custome,List<CartProduct> cartList) {
		Sorder order=new Sorder();
		int id=baseDao.getLargestNumId("Order");
		Time time=new Time();
		String orderId="YMD"+time.getYMD()+(id+1);
		order.setOrderid(orderId);
		order.setPhone(phone);
		order.setCustomerName(custome);
		order.setBlock(block);
		order.setDetailAddress(address);
		order.setShop(shop);
		
		order.setUserid(userId);
		order.setCreate_time(time.getYMD());
		order.setReceipt("否");
		order.setTake_time(take_time);
		order.setTake_style(take_style);
		
		double sum_money=0;
		List<OrderProduct> list=new ArrayList<>();
		
		for(CartProduct cp:cartList){
			
				sum_money=sum_money+cp.getSummoney();
				baseDao.save(new OrderProduct(orderId,cp));
				baseDao.delete(cp);
		}
		
		order.setSum_money(sum_money);
		baseDao.save(order);
		
		User user=(User) baseDao.findObjectByHql(" from User u where u.id='"+userId+"'");
		if(user!=null){
			user.setBalance(user.getBalance()-sum_money);
			baseDao.update(user);
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CartProduct> getCartProductByUserId(int userid) {
		String hql=" from CartProduct cp where cp.userid='"+userid+"' order by cp.id ";
		return baseDao.findByHql(hql);
	}

	@Override
	public void minusProductInCart(int id, int userId, int num) {
		
		String hql=" from CartProduct cp where cp.id='"+id+"' and cp.userid='"+userId+"'";
		CartProduct cp=(CartProduct) baseDao.findObjectByHql(hql);
		
		if(cp==null){
			return;
		}else{
				cp.setCount(cp.getCount()-num);
				if(cp.getCount()<0){
					cp.setCount(0);
				}
				cp.setSummoney(cp.getCount()*cp.getRealPrice());
				baseDao.update(cp);
			
		}
	}

	@Override
	public void addUpProductToCart(int id, int userId, int num) {
		String hql=" from CartProduct cp where cp.id='"+id+"' and cp.userid='"+userId+"'";
		System.out.println(" 增加购物车语句。："+hql);
		CartProduct cp=(CartProduct) baseDao.findObjectByHql(hql);
		
		if(cp==null){
			return;
		}else{
				cp.setCount(cp.getCount()+num);
				if(cp.getCount()<0){
					cp.setCount(0);
				}
				cp.setSummoney(cp.getCount()*cp.getRealPrice());
				baseDao.update(cp);
			
		}
	}

	@Override
	public void deleteProductInCart(int id) {
		String hql="from CartProduct c where c.id='"+id+"'";
		CartProduct cp=(CartProduct) baseDao.findObjectByHql(hql);
		if(cp!=null){
			baseDao.delete(cp);
		}
	}

	@SuppressWarnings("unused")
	@Override
	public List<MyOrder> getOrderInTime(int userid) {
		Time time=new Time();
		String hql="from Sorder o where o.take_time>='"+time.getYMD()+"'";
		List<Sorder> orderList=baseDao.findByHql(hql);
		List<MyOrder> list=new ArrayList<>();
		String hql1;
		MyOrder myorder;
		for(Sorder o:orderList){
			 myorder=new MyOrder(o);
			list.add(myorder);
		}
		
		return list;
	}
	
	@Override
	public List query(String hql){
		return baseDao.findByHql(hql);
	}

	@Override
	public List<MyOrder> getOrderOutTime(int userid) {
		Time time=new Time();
		String hql="from Sorder o where o.take_time<'"+time.getYMD()+"'";
		List<Sorder> orderList=baseDao.findByHql(hql);
		List<MyOrder> list=new ArrayList<>();
		String hql1;
		MyOrder myorder;
		for(Sorder o:orderList){
			 myorder=new MyOrder(o);
			list.add(myorder);
		}
		
		return list;
	}

	@Override
	public void removeOrder(int id) {
		String hql=" from Sorder so where so.id='"+id+"'"; 
		Sorder order=(Sorder) baseDao.findObjectByHql(hql);
		
		List<OrderProduct> opList=baseDao.findByHql("from OrderProduct op where op.orderid='"+order.getOrderid()+"'");
		for(OrderProduct o:opList){
			baseDao.delete(o);
		}
		
		baseDao.delete(order);
	}

	@Override
	public CartProduct queryCartProduct(String hql) {
		// TODO Auto-generated method stub
		return (CartProduct) baseDao.findObjectByHql(hql);
	}

}
