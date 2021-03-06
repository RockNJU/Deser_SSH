package com.home.desert.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.home.desert.pogo.Product;
import com.home.desert.pubutil.Constants;
import com.home.desert.pubutil.StrItem;
import com.home.desert.service.ProductService;

@SuppressWarnings("serial")
public class ProductAction extends BaseAction{
	@Autowired
	ProductService productBiz;
	
	private String category;
	private String price;
	private String num;
	private String sortType;//排序的方式
	private String search;
	
	private String prefer;
	
	private int id;
	
	public ProductAction(){
		super();
	}
	
	
	/**
	 * @author zucewei
	 * @return 所有商品的可销售商品信息。
	 * */
	
	public String singleProduct(){
		System.out.println("单个商品   搜索："+search);
		try {
			Product p=productBiz.getProductByID(id);
			this.getSession().setAttribute(Constants.DESERT, p);
			return "single";
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	public String searchProduct(){
		try {
			Product p=productBiz.getProductByID(id);
		//	this.getRequest().;
			this.getRequest().setAttribute("search", search);
			return "category";
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	public String  preferProduct(){
		try {
			Product p=productBiz.getProductByID(id);
		//	this.getRequest().;
			this.getRequest().setAttribute("prefer", prefer);
			return "category";
		} catch (Exception e) {
			e.printStackTrace();
			this.outError();
		}
		return null;
	}
	
	
	public String findProductByParams(){
	//	System.out.println("--->测试获取分类。"+productBiz.getAllCategory().size());
		
		if(prefer!=null&&!prefer.equals("")){
			if(prefer.equals("top")){
				
				sortType="num";
				num="desc";
				prefer=null;
			}
		}
		
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
			if (category!=null&&!"".equals(category)&&!category.equals("all")){
				wheres.append(" and t.category='");
				wheres.append(category);
				wheres.append("'");
			}
			
			if(prefer!=null&&!prefer.equals("")){
				wheres.append(" and t.prefer='");
				wheres.append(prefer);
				wheres.append("'");
			}
			
			if(sortType==null||sortType.equals("")||sortType.equals("num")){
				if(num.equals("desc")){
					System.out.println("*-*-*-投票---");
					wheres.append("  order by t.count desc");
				}else if (num.equals("esc")){
					wheres.append("  order by t.count ");
				}
			}else if(sortType.equals("price")){
				if(price.equals("desc")){
					wheres.append("  order by t.price desc");
				}else{
					wheres.append("  order by t.price ");
				}
				
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
	
	/**
	 * @author zucewei
	 * @return 所有商品的分类种类 的类别名
	 * */
	public String categoryList(){
		try {
			List<StrItem> list=productBiz.getAllCategory();
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


	public void setId(int id) {
		this.id = id;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public void setPrefer(String prefer) {
		this.prefer = prefer;
	}
	
	
}
