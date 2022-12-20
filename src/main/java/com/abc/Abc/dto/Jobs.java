package com.abc.Abc.dto;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
public class Jobs {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int job_Id;
	
	@NotBlank(message="Name cannot be left blank")
	@Size(min=3, message="Name should have more than 3 charcters")
	private String author;
	
	@Email(message="Please enter a Valid Email")
	@NotBlank(message="Email cannot be left blank")
	private String email;
	
	@NotBlank(message="Company name cannot be left blank")
	private String company;
	
	@Min(value=1, message="Please mention Salary")
	private int salary;
	
	@Min(value=1, message="Please mention working hours")
	private int working_hours;
	
	@NotBlank(message="Select the Job Title")
	private String job_Title;
	
	@NotBlank(message="Please fill the details of the job")
	private String details;
	
	public Jobs() {	
		
	}

	public int getJob_Id() {
		return job_Id;
	}

	public void setJob_Id(int job_Id) {
		this.job_Id = job_Id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getWorking_hours() {
		return working_hours;
	}

	public void setWorking_hours(int working_hours) {
		this.working_hours = working_hours;
	}

	public String getJob_Title() {
		return job_Title;
	}

	public void setJob_Title(String job_Title) {
		this.job_Title = job_Title;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}


	@Override
	public String toString() {
		return "Jobs [job_Id=" + job_Id + ", author=" + author + ", email=" + email + ", company=" + company
				+ ", salary=" + salary + ", working_hours=" + working_hours + ", job_Title=" + job_Title + ", details="
				+ details + "]";
	}

	public Jobs(int job_Id,
			@NotBlank(message = "Name cannot be left blank") @Size(min = 3, message = "Name should have more then 3 charcters") String author,
			@Email @NotBlank(message = "Email cannot be left blank") String email,
			@NotBlank(message = "Company name cannot be left blank") String company,
			@NotBlank(message = "Please mention Salary") int salary,
			@NotBlank(message = "Please mention working hours") int working_hours,
			@NotBlank(message = "Select the Job Title") String job_Title,
			@NotBlank(message = "Please fill the details of the job") String details) {
		super();
		this.job_Id = job_Id;
		this.author = author;
		this.email = email;
		this.company = company;
		this.salary = salary;
		this.working_hours = working_hours;
		this.job_Title = job_Title;
		this.details = details;
	}

	
	
}
