package com.home.desert.pogo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * @author zucewei
 * @see 表示订单 的实体bean
 * 
 * */

@SuppressWarnings("serial")
@Entity
@Table(name="order_product")
@NamedQuery(name="OrderProduct.findAll", query="SELECT op from OrderProduct op")
public class OrderProduct implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String orderid;		//购物车商品所属的用户编号
	
	private int spid;		//购买商品的商品编号
	private String name;
	private String category;
	private String img;
	private String img2;
	private String img3;
	private double realPrice;		//购买商品的实际价格。
	private double discount;
	private double count;	//购买的数量
	private double summoney;  //此次购买的商品的总价。
	
	
	public OrderProduct(){
		
	}
	public OrderProduct(String orderid,CartProduct p){
		this.orderid=orderid;
		this.realPrice=p.getRealPrice();
		this.count=p.getCount();
		this.summoney=p.getSummoney();
		
		this.spid=p.getSpid();
		this.name=p.getName();
		this.category=p.getCategory();
		this.img=p.getImg();
		this.img2=p.getImg2();
		this.img3=p.getImg3();
		this.discount=p.getDiscount();
		
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public int getSpid() {
		return spid;
	}

	public void setSpid(int spid) {
		this.spid = spid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public double getRealPrice() {
		return realPrice;
	}

	public void setRealPrice(double realPrice) {
		this.realPrice = realPrice;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public double getCount() {
		return count;
	}

	public void setCount(double count) {
		this.count = count;
	}

	public double getSummoney() {
		return summoney;
	}

	public void setSummoney(double summoney) {
		this.summoney = summoney;
	}
}
