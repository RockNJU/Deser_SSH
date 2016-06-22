package com.home.desert.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.home.desert.dao.BaseDao;
import com.home.desert.pogo.CartProduct;
import com.home.desert.pogo.Order;
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
	public void submibOrder(int userId, String take_style, String take_time,List<Integer> cartIDList) {
		Order order=new Order();
		int id=baseDao.getLargestNumId("Order");
		Time time=new Time();
		String orderId="YMD"+time.getYMD()+(id+1);
		order.setOrderid(orderId);
		order.setUserid(userId);
		order.setCreate_time(time.getYMD());
		order.setReceipt("否");
		order.setTake_time(take_time);
		order.setTake_style(take_style);
		
		double sum_money=0;
		List<OrderProduct> list=new ArrayList<>();
		
		for(int cartId:cartIDList){
			CartProduct cp=(CartProduct) baseDao.findObjectByHql(" from CartProduct c where c.id='"+cartId+"'");
			if(cp!=null){
				sum_money=sum_money+cp.getSummoney();
				list.add(new OrderProduct(orderId,cp));
			}
		}
		
		order.setSum_money(sum_money);
		baseDao.save(order);
		baseDao.save(list);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CartProduct> getCartProductByUserId(int userid) {
		String hql=" from CartProduct cp where cp.userid='"+userid+"' order by cp.id desc";
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

}
