package com.wintelia.admin.adminFilters;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.wintelia.admin.adminEntity.MemberModel;

public class MyHandleInteroptor implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String url = request.getRequestURI();
		System.out.println("事前控制" + url);
		if (url.indexOf("login") >= 0 || url.indexOf("error") >= 0)
			return true;
		HttpSession session = request.getSession();
		MemberModel member = (MemberModel) session.getAttribute("currentuser");
		if (member == null) {
			response.sendRedirect("login");
			return false;
		} else {
			return true;
		}
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

}
