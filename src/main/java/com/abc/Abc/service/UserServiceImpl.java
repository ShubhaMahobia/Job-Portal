package com.abc.Abc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.abc.Abc.dao.AppliedJobRepository;
import com.abc.Abc.dao.JobRepository;
import com.abc.Abc.dao.Userdao;
import com.abc.Abc.dto.AppliedJob;
import com.abc.Abc.dto.Jobs;
import com.abc.Abc.dto.Users;

@Service("userService")
public class UserServiceImpl implements UserService {
	private PasswordEncoder passwordencoder;
	@Autowired
	Userdao Udao;
	Users user;
	@Autowired
	private JavaMailSender emailsender;
	@Autowired
	private JobRepository jobrepo;
	@Autowired
	AppliedJobRepository applyrepo;

	List<Users> userDetails = new ArrayList<Users>();

	@Override
	public void AddUserDetails(Users us) {
		// TODO Auto-generated method stub
		us.setRole("USER");
		us.setPassword(passwordencoder.encode(us.getPassword()));
		Udao.save(us);
	}

	@Autowired
	public UserServiceImpl(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder = encoder;
	}

	@Override
	public List<Users> showAllUser() {
		List<Users> database = Udao.findAll();
		return database;
	}

	@Override
	public void deleteData(int id) {
		Udao.deleteById(id);
	}

	@Override
	public Users SearchUser(int id) {

		Optional<Users> myData = Udao.findById(id);
		Users p = myData.get();
		return p;

	}

	@Override
	public Users showUser(String name) {
		// TODO Auto-generated method stub
		user = Udao.findByUserName(name);

		return user;

	}

	@Override
	public Users viewProfile(String username) {
		Users usr = Udao.findByUserName(username);
		return usr;
	}

	@Override
	public void SendEmail() {

		String to = "mahobiashubham4@gmail.com";
		String subject = "test";
		String text = "Hey Welcome  ";
		String from = "abcjob15@gmail.com";
		// TODO Auto-generated method stub
		SimpleMailMessage messagee = new SimpleMailMessage();
		messagee.setFrom(from);
		messagee.setTo(to);
		messagee.setText(text);
		messagee.setSubject("new mail");
		emailsender.send(messagee);
		System.out.println("Mail Send...");

	}

	@Override
	public String addJobs(Jobs job) {
		jobrepo.save(job);
		return "Job Added";
	}

	@Override
	public List<Jobs> showJobs() {
		List<Jobs> jobList = jobrepo.findAll();
		return jobList;
	}

	@Override
	public void addAppliedUser(AppliedJob applyjob) {
		// TODO Auto-generated method stub
		applyrepo.save(applyjob);
	}
}
