package com.abc.Abc.service.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class Security extends WebSecurityConfigurerAdapter {
	private PasswordEncoder passwordencoder;
	@Autowired
	UserDetailsService userservice;
	@Autowired
	UserDetailsService userdetail;

	@Autowired
	Security(PasswordEncoder encoder) {
		this.passwordencoder = encoder;
	}

	@Autowired
	Role roles;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.authorizeRequests()
				.antMatchers("/", "home", "/register", "registration", "/myreg", "/thankyou", "/search",
						"SearchUserNEW", "/sear", "SearchResultNEW", "/resources/**", "/css/**", "/js/**", "/images/**",
						"/password-email", "ForgetPassword", "/reset", "/profile", "/profile/{searchid}",
						"/Publicprofile", "/sendEmail")
				.permitAll().anyRequest().authenticated().and().formLogin().successHandler(roles).loginPage("/login")
				.permitAll().and().logout().logoutUrl("/logout")
				.logoutRequestMatcher(new AntPathRequestMatcher("/logout")).clearAuthentication(true)
				.invalidateHttpSession(true);

	}

	@Autowired
	AuthenticationProvider authProvider() {
		DaoAuthenticationProvider dao = new DaoAuthenticationProvider();
		dao.setPasswordEncoder(passwordencoder);
		dao.setUserDetailsService(userservice);

		return dao;
	}
}