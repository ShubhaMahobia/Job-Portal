package com.abc.Abc.service.security;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
@Component
public class Role implements AuthenticationSuccessHandler{
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		//Role=== ROLE_USER==dashBoard 
		//Role === ROLE_ADMIN == UserHome page
		
		Collection<? extends GrantedAuthority> auth=authentication.getAuthorities();
		String myurl=null;
		for(GrantedAuthority my:auth) {
			System.out.println("roles is "+my);
			if(my.getAuthority().equals("ADMIN")) {
				

				myurl="/dashboard";
				break;
			}else if(my.getAuthority().equals("USER")) {
				
				myurl="/User";
				break;
			}
		}
		System.out.println(myurl);
		new DefaultRedirectStrategy()
		.sendRedirect(request, response, myurl);
		
	}
}