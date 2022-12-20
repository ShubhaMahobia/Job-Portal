package com.abc.Abc.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.abc.Abc.dao.AppliedJobRepository;
import com.abc.Abc.dao.JobRepository;
import com.abc.Abc.dao.Userdao;
import com.abc.Abc.dto.AppliedJob;
import com.abc.Abc.dto.Emails;
import com.abc.Abc.dto.Jobs;
import com.abc.Abc.dto.Users;
import com.abc.Abc.service.EmailService;
import com.abc.Abc.service.UserService;

@Controller
public class MainController {

	@Autowired
	UserService userService;

	List<Users> userDetailzzz = new ArrayList<Users>();
	Users user;
	@Autowired

	EmailService emailservice;
	@Autowired

	JobRepository jobrepo;
	@Autowired

	AppliedJobRepository applyrepo;
	@Autowired
	Userdao udao;

	

	@GetMapping(value = "/")
	public String home() {
		return "Home";
	}

	

	@GetMapping(value = "/show")
	public ModelAndView showUser() {
		List<Users> userDetailzzz = userService.showAllUser();
		System.out.println(userDetailzzz);
		return new ModelAndView("ShowAll", "testv", userDetailzzz);
	}
	

	@GetMapping(value = "/thankyou")
	public String thankyou() {
		return "thankYou";
	}



	@GetMapping(value = "/search")
	public String membersearch(@ModelAttribute("searchd") Users userId) {

		return "SearchUserNEW";
	}

	@PostMapping(value = "/sear")
	public ModelAndView membesearch(@ModelAttribute("searchd") Users username) {
		String searchname = username.getUserName();
		Users mm = userService.showUser(searchname);

		System.out.println(mm);

		return new ModelAndView("SearchResult", "udata", mm);

	}


	@GetMapping(value = "/deleteUser")
	public String del() {
		return "DelUser";

	}

	@GetMapping(value = "/delete/{searchid}")
	public String DeleteUser(@PathVariable("searchid") Integer userId) {
		if(userId==82) {
			return "ADMIN_DEL";
		}
		else
		userService.deleteData(userId);
		return "redirect:/deleteUser";
	}

	@GetMapping(value = "/User")
	public String HomeUser() {
		return "Home(User)";
	}

	
	@GetMapping(value = "/dashboard")
	public String dash() {

		return "Admin";

	}

	
	@GetMapping(value = "/update/{searchid}")
	public ModelAndView updatePage(@PathVariable("searchid") Integer id) {

		Users p = userService.SearchUser(id);
		System.out.println(p);
		return new ModelAndView("UpdateProfile", "searchView", p);

	}

	@GetMapping(value = "/update/dataupdate")
	public String updateData

	(@RequestParam("userid") int id, @RequestParam("userName") String name, @RequestParam("password") String pass,
			@RequestParam("first_name") String Fname, @RequestParam("last_name") String Lname,
			@RequestParam("Country") String Country, @RequestParam("email") String eeemail,
			@RequestParam("phone") long phn

	) {

		System.out.println(id + name + pass + Fname + Lname + Country + eeemail + phn);

		Users user = new Users(id, name, pass, Fname, Lname, Country, eeemail, phn, null);
		userService.AddUserDetails(user);

		return "redirect:/show";

	}

	

	@GetMapping(value = "/register")
	public String myRegisterPage(@ModelAttribute("userData") Users us) {

		return "Registration";

	}

	@PostMapping(value = "/myreg")
	public String addRegisterPage(@ModelAttribute("userData") Users us) {
		userService.AddUserDetails(us);
		return "redirect:/thankyou";

	}

	
	@GetMapping(value = "/login")
	public String loginpage() {

		return "Login";

	}

	@GetMapping(value = "/profile")
	public ModelAndView profilePage(Model model, Principal principal) {

		final String currentUser = principal.getName();

		Users u = userService.viewProfile(currentUser);

		return new ModelAndView("Profile", "usr", u);

	}

	@GetMapping(value = "/contact")
	public String contact() {

		return "Contact";
	}


	@GetMapping(value = "/profile/{searchid}")
	public ModelAndView viewProfile(Model model, Principal principal) {

		final String currentUser = principal.getName();

		Users u = userService.viewProfile(currentUser);

		return new ModelAndView("SearchResult", "usr", u);

	}

	@GetMapping(value = "/password-email")
	public String passworde() {

		return "ForgetPassword";
	}

	@GetMapping(value = "/reset")
	public String reset() {

		return "ResetPassword";
	}

	@GetMapping(value = "/test")
	public String test() {

		return "Test";
	}

	@GetMapping(value = "/sendEmail")
	public String sendEmail(@ModelAttribute("emails") Emails email) {
		return "SendEmail";
	}

	@PostMapping(value = "/sendEmails")
	public String submitEmail(@Valid @ModelAttribute("emails") Emails email, BindingResult results) {

		String reciever_emails = email.getReciever_emails();
		String email_subject = email.getSubject();
		String content = email.getContent();
		if (results.hasErrors()) {
			return "SendEmail";
		} else {
			String status = emailservice.sendEmail(email);
			System.out.printf(reciever_emails + " " + email_subject + " " + content + "\n" + status);
			emailservice.addEmail(email);
			return "EmailSentSuccess";
		}

	}

	@GetMapping(value = "/createjobs")
	public String createJobs(@ModelAttribute("jobData") Jobs job) {
		return "CreateJob";
	}

	@PostMapping(value = "/submitJob")
	public String saveJob(@Valid @ModelAttribute("jobData") Jobs job, BindingResult results) {
		if (results.hasErrors()) {
			return "Test";
		} else {
			userService.addJobs(job);
			return "Thankyoujob";
		}
	}

	@GetMapping(value = "/viewjobs")
	public ModelAndView viewJobs() {
		userService.showJobs();
		List<Jobs> showJobs = userService.showJobs();
		System.out.println("jobs are " + showJobs);
		return new ModelAndView("Test", "showJobs", showJobs);
	}

	@GetMapping(value = "/viewjobsUser")
	public ModelAndView ViewJobsUser() {
		userService.showJobs();
		List<Jobs> showJobs = userService.showJobs();
		System.out.println("jobs are " + showJobs);
		return new ModelAndView("ViewJobsUser", "showJobs", showJobs);
	}

	@GetMapping(value = "/jobDetails/{job_Id}")
	public String ViewJobsDetails(@PathVariable int job_Id, ModelMap model) {
		Jobs job = jobrepo.getById(job_Id);
		String authorname = job.getAuthor();
		int id = job.getJob_Id();
		System.out.println("name of the job author is " + authorname + " id is " + id);
		System.out.println("jobs for user are " + job);
		model.addAttribute("job", job);
		return "ViewJobDetails";
	}

	@GetMapping(value = "/deletejob/{job_Id}")
	public String deleteJob(@PathVariable int job_Id, Principal principal, Model model) {
		jobrepo.deleteById(job_Id);
		System.out.println("The job id to be deleted is " + "another id" + job_Id);

		String userName = principal.getName();
		Users useer = udao.findByUserName(userName);
		System.out.println(useer);
		model.addAttribute("userName", useer);
		return "ViewJob";
	}

	@GetMapping(value = "/jobDetailsUser/{job_Id}")
	public String JobsDetailsUser(@PathVariable int job_Id, ModelMap model) {
		Jobs job = jobrepo.getById(job_Id);
		String authorname = job.getAuthor();
		int id = job.getJob_Id();
		System.out.println("name of the job author is " + authorname + " id is " + id);
		System.out.println("jobs for user are " + job);
		model.addAttribute("job", job);
		return "ViewJobDetailsUser";
	}

	@PostMapping(value = "/addjobseeker")
	public String saveJobSeekers(AppliedJob apply, Principal princi, Jobs jobses) {

		String name = princi.getName();
		Users u = udao.findByUserName(name);
		System.out.println("User in the registered job are " + u);

		Long id = (long) u.getUserid();
		apply.setUserId(id);

		int job_id = jobses.getJob_Id();
		apply.setJobId(job_id);

		System.out.println("the id of the loged in user is " + id + " job id is " + job_id);
		applyrepo.save(apply);
		return "ThankyouappliedJob";
	}

}
