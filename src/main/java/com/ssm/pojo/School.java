package com.ssm.pojo;

public class School {
	public Integer user_id;
	public String school;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	@Override
	public String toString() {
		return "School [user_id=" + user_id + ", school=" + school + "]";
	}
	
}
