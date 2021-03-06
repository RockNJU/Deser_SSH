package com.home.desert.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;



@SuppressWarnings("serial")
public class BaseAction extends ActionSupport implements SessionAware,  
ServletRequestAware, ServletResponseAware{

	private int limit; // 每页显示多少行
	private int start; // 开始行

	public HttpServletRequest   request;  
    public HttpServletResponse  response;  
    @SuppressWarnings("unchecked")  
    public Map session;  
  

	
	
	public void outJsonString(String str) {
		getResponse().setContentType("text/json;charset=UTF-8");
		outString(str);
	}

	public void outString(String str) {
		try {
			PrintWriter out = getResponse().getWriter();
			out.print(str);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	public void outListString(List list) {
		try {
			JSONArray jsonArray = new JSONArray();
			if (list.size() > 0) {
				jsonArray = JSONArray.fromObject(list);
			}
			String jsonString = "{total:" + list.size() + ",root:"
					+ jsonArray.toString() + "}";
			outString(jsonString);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * 
	 * 
	 * */
	
	@SuppressWarnings("rawtypes")
	public void outListJsonString(List list){
		try {
			
				JSONArray jsonArray = JSONArray.fromObject(list);
				//String jsonString = jsonArray.toString();
				//System.out.println("结果："+jsonString);
				//outString(jsonString);
				PrintWriter out = getResponse().getWriter();
				out.print(jsonArray);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void outObjectString(Object obj) {
		JSONObject josnobj = new JSONObject();
		if (obj != null) {
			josnobj = JSONObject.fromObject(obj);
		}
		String jsonString = josnobj.toString();
		//System.out.println("输出的对象数据："+jsonString);
		outString(jsonString);
	}

	public void outObjString(Object obj) {
		JSONArray jsonArray = new JSONArray();
		if (obj != null) {
			jsonArray = JSONArray.fromObject(obj);
		}
		String jsonString = "{success:true,data:" + jsonArray.toString() + "}";
		outString(jsonString);
	}

	
	@SuppressWarnings("unchecked")
	public void outTreeJsonList(List list){
		JSONArray jsonArray = new JSONArray();
		if (list.size() > 0) {
			jsonArray = JSONArray.fromObject(list);
		}
		outString(jsonArray.toString());
	}

	public void outXMLString(String xmlStr) {
		getResponse().setContentType("application/xml;charset=UTF-8");
		outString(xmlStr);
	}
	
	public void outError() {
		outString("{success:false,errors:'操作失败！'}");
	}

	/**
	 * 获得request
	 * 
	 * @return
	 */
	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	/**
	 * 获得response
	 * 
	 * @return
	 */
	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	/**
	 * 获得session
	 * 
	 * @return
	 */
	public HttpSession getSession() {
		return getRequest().getSession();
	}

	/**
	 * 获得servlet上下文
	 * 
	 * @return
	 */
	public ServletContext getServletContext() {
		return ServletActionContext.getServletContext();
	}

	public String getRealyPath(String path) {
		return getServletContext().getRealPath(path);
	}


	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}
    public void setSession(Map session) {  
        this.session = session;  
    }  
  
    public void setServletRequest(HttpServletRequest request) {  
       this.request = request;  
    }  
  
    public void setServletResponse(HttpServletResponse response) {  
       this.response = response;  
    }
	
}
