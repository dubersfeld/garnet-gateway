package com.dub.spring.utils;


import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.ExceptionTranslationFilter;
import org.springframework.security.web.savedrequest.RequestCache;

public class MyExceptionTranslationFilter 
						extends ExceptionTranslationFilter {

	public MyExceptionTranslationFilter(AuthenticationEntryPoint authenticationEntryPoint) {
		super(authenticationEntryPoint);
	}
	

	@Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) servletRequest;
		
		String requestURI = req.getRequestURI();
		
		HttpSession session = req.getSession();
		
		// save only if not authenticated yet
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("auth " + auth.getClass());
		
		if ((auth.getClass() == AnonymousAuthenticationToken.class) 
							&& !"/login".equals(requestURI)) {
			session.setAttribute("requestURI", requestURI);	
		} else {
			session.setAttribute("requestURI", "/");	
		}
			
		super.doFilter(servletRequest, servletResponse, filterChain);

	}
	
}
