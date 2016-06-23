package com.home.desert.pogo;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

@SuppressWarnings("serial")
@Entity
@NamedQuery(name="Sorder.findAll", query="SELECT o FROM Sorder o")
public class Sorder implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String orderid;
	private int userid;
	
	private String shop;
	
	/*creaet_time varchar(255),
	take_time varchar(255),take_style varchar(255),
	receipt varchar(255) default '否',sum_money double default '0'*/
	
	private String create_time;
	private String take_time;
	private String take_style;
	private String receipt;
	private double sum_money;
	
	private String customerName;
	private String phone;
	private String detailAddress;
	private String block;
	
	public Sorder(){
		
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
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
