package com.abc.Abc;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.abc.Abc.dao.Userdao;
import com.abc.Abc.dto.Users;
import com.abc.Abc.service.UserService;
@SpringBootTest
class AbcApplicationTests {
	@Autowired
	Userdao udao;
	@Autowired
	UserService userservice;
																							
	@Test
	void contextLoads() {
	}	
	@Test
	void  Register() {
		
//		**---SAVING---**
		Users u = new Users();
		u.setUserName("test");
		u.setEmail("Test@gmail.com");
		u.setFirst_name("TestF");
		u.setLast_name("TestL");
		u.setPhone(123456);
		u.setPassword("123456");
		u.setCountry("TestCountry");
		userservice.AddUserDetails(u);
		System.out.println("Data Is saved successfully");
		System.out.println(u);
		}

	@Test
	void deleteData() {
		userservice.deleteData(21);								//Testing for delete data
		System.out.println("Data is deleted successfully");
	}
	
	
	@Test
	void SearchUser() {
		Users actualResult = udao.findByUserName("sam");
		assertThat(actualResult).isNotNull();					//Testing for search User
		System.out.println("Data retreived successfully");
	}
	
	
	@Test
	void showAll() {
		userservice.showAllUser();								//Testing for Show all User method
		System.out.println(" All Data will be displayed succesfully");
	}
}
	
	
	
	
	


