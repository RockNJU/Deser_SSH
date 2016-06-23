package com.home.desert.dto;

import java.io.Serializable;
import java.util.List;

import com.home.desert.pogo.Sorder;
import com.home.desert.pogo.OrderProduct;

public class MyOrder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8779705975727849372L;

	private List<OrderProduct> list;
	
	
	private int id;
	private String orderid;
	private int userid;
	
	private String shop;
	private String create_time;
	private String take_time;
	private String take_style;
	private String receipt;
	private double sum_money;
	
	

	private String customerName;
	private String phone;
	private String detailAddress;
	private String block;
	
	
	public MyOrder(Sorder order){
		
		this.phone=order.getPhone();
		this.detailAddress=order.getDetailAddress();
		this.block=order.getBlock();
		this.customerName=order.getCustomerName();
		this.id=order.getId();
		this.userid=order.getUserid();
		this.orderid=order.getOrderid();
		this.create_time=order.getCreate_time();
		this.take_time=order.getTake_time();
		this.take_style=order.getTake_style();
		this.receipt=order.getReceipt();
		this.sum_money=order.getSum_money();
		this.shop=order.getShop();
	}

	public List<OrderProduct> getList() {
		return list;
	}

	public void setList(List<OrderProduct> list) {
		this.list = list;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getShop() {
		return shop;
	}

	public void setShop(String shop) {
		this.shop = shop;
	}

	public String getCreate_time() {
		return create_time;
	}

	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}

	public String getTake_time() {
		return take_time;
	}

	public void setTake_time(String take_time) {
		this.take_time = take_time;
	}

	public String getTake_style() {
		return take_style;
	}

	public void setTake_style(String take_style) {
		this.take_style = take_style;
	}

	public String getReceipt() {
		return receipt;
	}

	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}

	public double getSum_money() {
		return sum_money;
	}

	public void setSum_money(double sum_money) {
		this.sum_money = sum_money;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getBlock() {
		return block;
	}

	public void setBlock(String block) {
		this.block = block;
	}
	
}
