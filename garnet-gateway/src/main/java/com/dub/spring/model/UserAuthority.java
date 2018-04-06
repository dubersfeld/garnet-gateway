package com.dub.spring.model;


import org.springframework.security.core.GrantedAuthority;

public class UserAuthority implements GrantedAuthority {
   	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2456780476039263541L;
	
	private String authority;

    public UserAuthority() { }

    public UserAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String getAuthority() {
        return this.authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
    
}