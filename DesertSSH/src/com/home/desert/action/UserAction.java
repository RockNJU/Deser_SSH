package com.home.desert.action;

import java.io.IOException;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;

import com.home.desert.pogo.Payrecord;
import com.home.desert.pogo.User;
import com.home.desert.pubutil.Constants;
import com.home.desert.pubutil.Item;
import com.home.desert.pubutil.Time;
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
	private String pwd;
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
	
	private String card_number;
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String payRecord(){
		System.out.println("  --*--*-*-");
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			if(user!=null){
				this.outListJsonString(userBiz.getPayrecord(user.getId()));
				
			}
			this.outListJsonString(userBiz.getPayrecord(1));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}

	public String recharge(){
		User user=(User) this.getSession().getAttribute(Constants.USERINFO);
		user.setBalance(user.getBalance()+money);
		user.setSum(user.getSum()+money);
		
		Time time=new Time();
		Payrecord pd=new Payrecord();
		pd.setCard_number(card_number);
		pd.setMoney(money);
		pd.setTime(time.getYMD());
		pd.setUserId(user.getId());
		userBiz.addPayrecord(pd);
		this.getSession().setAttribute(Constants.USERINFO, user);
		userBiz.updateUser(user);
		try {
			this.outObjectString(new Item("充值成功！",120));;
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	public String surePassWord(){
		
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			if(password==null){
				this.outObjectString(new Item("false",120));
			}
			
			if(password.equals(user.getPassword())){
				this.outObjectString(new Item("true",120));
			}else{
				this.outObjectString(new Item("fasle",120));
			}
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	
	public String modifyPassword(){
		
		try {
			User user=(User) this.getSession().getAttribute(Constants.USERINFO);
			
			if(password==null||pwd==null){
				this.outObjectString(new Item("密码不能为空",120));
			}
		
			if(!password.equals(pwd)){
				this.outObjectString(new Item("请确保密码一致",120));
			}
			
			user.setPassword(password);
			this.getSession().setAttribute(Constants.USERINFO, user);
			userBiz.updateUser(user);
			this.outObjectString(new Item("密码修改成功！",120));
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	
	public String updateInfo(){
		
		User user=(User) this.getSession().getAttribute(Constants.USERINFO);
		user.setName(name);
		user.setPhone(phone);
		user.setAddress(address);
		this.getSession().setAttribute(Constants.USERINFO, user);
		userBiz.updateUser(user);
		this.outObjectString(new Item("修改个人信息成功！",120));;
		
		try {
			outString("{'name':'hello'}");
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	

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
			
			if(userBiz.login(mail, password)!=null){
				this.getRequest().setAttribute("error", "当前邮箱已被注册，请使用其他邮箱。");
				return "error";
			}
			
			User user=new User();
			user.setName(name);
			user.setPassword(password);
			user.setMail(mail);
			user.setPhone(phone);
			this.getSession().setAttribute(Constants.USERINFO, user);
			
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
			
			User user=(User)this.getSession().getAttribute(Constants.USERINFO);
			if(user==null){
				return "error";
			}else{
				user.setAddress(address);
				user.setAge(age);
				user.setSex(sex);
				this.getSession().setAttribute(Constants.USERINFO, user);
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
			
			User user=(User)this.getSession().getAttribute(Constants.USERINFO);
			if(user==null){
				return "error";
			}else{
				user.setSum(money);
				user.setBalance(money);
				user.setState(UserState.ACTIVE);	//第三部充值以后激活用户。
				user.setRank(UserRank.COMMON_USER);
				this.getSession().setAttribute(Constants.USERINFO, user);
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

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	
	
}
