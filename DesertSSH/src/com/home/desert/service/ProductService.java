package com.home.desert.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.home.desert.pubutil.StrItem;

@Service
public interface ProductService {
	@SuppressWarnings("rawtypes")
	public List search(String condition);
	public List<StrItem> getAllCategory();
}
