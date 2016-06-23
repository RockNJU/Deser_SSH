package com.home.desert.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.home.desert.dao.BaseDao;
import com.home.desert.pogo.Product;
import com.home.desert.pubutil.StrItem;
import com.home.desert.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private BaseDao baseDao;
	
	@Override
	public List search(String condition) {
		StringBuffer hql = new StringBuffer(" from Product t");
		hql.append(condition);
		return baseDao.findByHql(hql.toString());
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<StrItem> getAllCategory() {
		String hql="select distinct new com.home.desert.pubutil.StrItem(p.category,p.category) from Product p";
		return baseDao.findByHql(hql);
	}

	@Override
	public Product getProductByID(int id) {
		String hql=" from Product p where p.id='"+id+"'";
		return (Product) baseDao.findObjectByHql(hql);
	}

}
