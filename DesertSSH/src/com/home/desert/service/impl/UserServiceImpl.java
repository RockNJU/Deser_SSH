package com.home.desert.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.home.desert.dao.BaseDao;
import com.home.desert.pogo.User;
import com.home.desert.pubutil.Time;
import com.home.desert.pubutil.UserRank;
import com.home.desert.pubutil.UserState;
import com.home.desert.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private BaseDao baseDao;
		
	
	/**
	 * @author zucewei
	 * @param 用于用户注册，初始时，用户等级为普通用户。
	 * */
	@Override
	public boolean saveUser(User user) {
		//user.setId(2);
		baseDao.save(user);
		return true;
	}

	/**
	 * @author zucewei
	 * @see更新用户
	 * 
	 * */
	@Override
	public boolean updateUser(User user) {
		baseDao.update(user);
		return true;
	}

	@Override
	public User login(String mail, String password) {
		String hql=" from User u where u.mail='"+mail+"' and u.password='"+password+"'";
		return (User) baseDao.findObjectByHql(hql);
	}
	
	
	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

}
