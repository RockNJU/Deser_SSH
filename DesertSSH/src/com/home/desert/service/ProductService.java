package com.home.desert.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ProductService {
	@SuppressWarnings("rawtypes")
	public List search(String condition);
}
