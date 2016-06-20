package com.home.desert.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.home.desert.pubutil.*;

public class SecurityFilter implements Filter {
	@SuppressWarnings("unused")
	private FilterConfig filterCon = null;
	
	public void init(FilterConfig config) throws ServletException {
		filterCon = config;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		Object userInfo =  httpRequest.getSession().getAttribute(Constants.USERINFO);
		String str=httpRequest.getRequestURL().toString();
		/*
		if(userInfo==null){//此处已修改为相反的，以后记得修改回来
			if(str.indexOf("/login.jsp")==-1){
				httpResponse.sendRedirect(httpRequest.getContextPath()+"/login.jsp");
			}else{
				filterChain .doFilter(request, response);
			}
		}else{
			filterChain .doFilter(request, response);		
		}*/
		filterChain .doFilter(request, response);
	}

	public void destroy() {
		filterCon = null;
	}
}
