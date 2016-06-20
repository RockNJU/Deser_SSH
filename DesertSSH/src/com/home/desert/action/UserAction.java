package com.home.desert.action;

import java.io.IOException;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;

import com.home.desert.pogo.User;
import com.home.desert.pubutil.Constants;
import com.home.desert.pubutil.Item;
import com.home.desert.pubutil.UserRank;
import com.home.desert.pubutil.UserState;
import com.home.desert.service.UserService;

public class UserAction extends BaseAction{
	@Autowired
	private UserService userBiz;

	private Integer id;
	private String number;
	private String name;
	private String sex;
	private String phone;
	private String address;
	private String password;
	private String state;
	private double balance;
	private double sum;
	private Integer point;
	private String rank;
	private String mail;
	private String enabled_date;
	private String register_date;
	private Integer age;
	private String area;
	
	private double money;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	public String sayHello(){
	
		User user=new User();
		user.setName("123");
		user.setPassword("123");
		user.setMail("1235");
		System.out.println("舱室注册用户结果："+userBiz.saveUser(user));
		System.out.println("测试是否会说hello！");
		try {
			outString("{'name':'hello'}");
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	public String registerStep1(){
		System.out.println("用户在进行测试，传进来的参数：  name: "+name+"   mail: "+mail);
		try {
			User user=new User();
			user.setName(name);
			user.setName(password);
			user.setMail(mail);
			user.setPhone(phone);
			session.put(Constants.USERINFO, user);
			return "step1";
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	public String registerStep2(){
		System.out.println("用户在进行测试注册的步骤2，传进来的参数：  address: "+address+"   sex: "+sex+"  age:"+age);
		try {
			
			User user=(User)session.get(Constants.USERINFO);
			if(user==null){
				return "error";
			}else{
				user.setAddress(address);
				user.setAge(age);
				user.setSex(sex);
				return "step2";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	public String registerStep3(){
		System.out.println("用户注册第三步，充值、，money  "+money);
		try {
			
			User user=(User)session.get(Constants.USERINFO);
			if(user==null){
				return "error";
			}else{
				user.setSum(money);
				user.setBalance(money);
				user.setState(UserState.ACTIVE);	//第三部充值以后激活用户。
				user.setRank(UserRank.COMMON_USER);
				userBiz.saveUser(user);
				this.getRequest().setAttribute("info", "您已注册成功，请登录！");
				return "step3";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	public String login(){
		User user=userBiz.login(mail, password);
		try {
			if(user==null){
				this.getRequest().setAttribute("info", "用户名或密码错误");
				return "input";
			}else{
				this.getSession().setAttribute(Constants.USERINFO, user);
				return "log_in";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
		
	public void setAddress(String address) {
		this.address = address;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public void setSum(double sum) {
		this.sum = sum;
	}

	public void setPoint(Integer point) {
		this.point = point;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public void setEnabled_date(String enabled_date) {
		this.enabled_date = enabled_date;
	}

	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public void setUserBiz(UserService userBiz) {
		this.userBiz = userBiz;
	}

	public void setMoney(double money) {
		this.money = money;
	}
	
	
}