package com.abc.Abc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.Abc.dto.AppliedJob;



@Repository
public interface AppliedJobRepository extends JpaRepository<AppliedJob , Integer>{

}
