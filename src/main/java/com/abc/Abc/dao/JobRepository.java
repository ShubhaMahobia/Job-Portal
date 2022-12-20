package com.abc.Abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.Abc.dto.Jobs;



public interface JobRepository extends JpaRepository <Jobs, Integer>{

	Jobs getByAuthor(String author);
}