package com.abc.Abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.Abc.dto.Emails;

public interface EmailRepo extends JpaRepository <Emails, Integer>{

}

