package com.abc.Abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;



import com.abc.Abc.dto.Users;

public interface Userdao extends JpaRepository<Users,Integer> {
	
	Users findByUserName(String name);

}
