package com.ssm.pojo;

public class Departments {
	private Integer user_id;
	private String department;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	@Override
	public String toString() {
		return "Departments [user_id=" + user_id + ", department=" + department + "]";
	}
	
}
