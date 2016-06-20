package com.home.desert.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.home.desert.pogo.Product;
import com.home.desert.service.ProductService;

@SuppressWarnings("serial")
public class ProductAction extends BaseAction{
	@Autowired
	ProductService productBiz;
	
	private String category;
	private String price;
	private String sortType;//排序的方式
	private String search;
	
	public ProductAction(){
		super();
	}
	
	public String findProductByParams(){
		try {
			StringBuffer wheres = new StringBuffer(" where 1=1");
			
			if(search!=null&&!"".equals(search)){
				wheres.append(" and (t.category like '%");
				wheres.append(search);
				wheres.append("%'");
				wheres.append(" or t.name like '%");
				wheres.append(search);
				wheres.append("%')");
			}
			if (category!=null&&!"".equals(category)){
				wheres.append(" and t.category='");
				wheres.append(category);
				wheres.append("'");
			}
			@SuppressWarnings("unchecked")
			List<Product> list=(List<Product>)productBiz.search(wheres.toString());
			this.outListJsonString(list);
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	
	public void setProductBiz(ProductService productBiz) {
		this.productBiz = productBiz;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public void setSortType(String sortType) {
		this.sortType = sortType;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	
}
