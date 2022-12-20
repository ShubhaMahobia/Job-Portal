package com.abc.Abc.dto;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AppliedJob {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int appliedId;
	@Column
	private int jobId;
	@Column
	private long userId;
	
	public AppliedJob() {
		
	}

	public int getAppliedId() {
		return appliedId;
	}

	public void setAppliedId(int appliedId) {
		this.appliedId = appliedId;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "AppliedJob [appliedId=" + appliedId + ", jobId=" + jobId + ", userId=" + userId + "]";
	}

	public AppliedJob(int appliedId, int jobId, long userId) {
		super();
		this.appliedId = appliedId;
		this.jobId = jobId;
		this.userId = userId;
	}

	
}
