package com.abc.Abc.service;

import java.util.List;

import com.abc.Abc.dto.AppliedJob;
import com.abc.Abc.dto.Jobs;
import com.abc.Abc.dto.Users;

public interface UserService {
	public void AddUserDetails(Users usr);
	public List<Users> showAllUser();
	public Users showUser(String userNamee);
	public void deleteData(int userId);
	public Users SearchUser(int d);
	public Users viewProfile( String username);
	public void SendEmail();
	public String addJobs(Jobs job);
	public List<Jobs> showJobs();
	public void addAppliedUser(AppliedJob applyjob);
	
	}
