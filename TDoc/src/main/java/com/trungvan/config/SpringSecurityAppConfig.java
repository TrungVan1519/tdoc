//package com.trungvan.config;
//
//import javax.sql.DataSource;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.builders.WebSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//@Configuration
//@EnableWebSecurity
//public class SpringSecurityAppConfig extends WebSecurityConfigurerAdapter {
//	
//	@Autowired
//	private DataSource dataSource;
//	
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.jdbcAuthentication().dataSource(dataSource)
//        .usersByUsernameQuery("SELECT username, password, enabled FROM user WHERE username = ?")
//        .authoritiesByUsernameQuery("SELECT username, role FROM user WHERE username = ?");
//	}
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		
//		http.authorizeRequests().antMatchers("/user/**").hasAnyRole("USER", "VIP")
//								.antMatchers("/admin/**").hasRole("ADMIN")
//			.and()
//			.formLogin().loginPage("/login/loginController").loginProcessingUrl("/loginView")
//						.usernameParameter("username").passwordParameter("password")
//						.defaultSuccessUrl("/user/list-user")
//						.failureUrl("/login/loginController?error=The account not exists in DB")
//			.and()
//			.exceptionHandling().accessDeniedPage("/login/loginController?error=Don't have enough authorities")
//			.and()
//			.logout()
//			.permitAll();
//	}
//	
//	@Override
//	public void configure(WebSecurity web) throws Exception {
//		web.ignoring().antMatchers("/source/**")
//		   .and()
//		   .ignoring().antMatchers("/source-image/**");
//	}
//}
//
