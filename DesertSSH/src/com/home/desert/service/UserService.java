package com.home.desert.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.home.desert.pogo.User;

@Service
public interface UserService {
	public boolean saveUser(User user);
	public boolean updateUser(User user);
	public User login(String mail,String password);
}
