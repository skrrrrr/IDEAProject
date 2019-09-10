package com.ssm.pojo;

public class Student {
	private Integer stu_id;
	private Integer user_id;
	private String sno;
	private String name;
	private String idnumber;
	private String department;
	private String major;
	private String level;
	private String category;
	private String subject;
	private String grade;
	private String cultivate;
	private String tutor;
	private String title;
	public Integer getStu_id() {
		return stu_id;
	}
	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdnumber() {
		return idnumber;
	}
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getCultivate() {
		return cultivate;
	}
	public void setCultivate(String cultivate) {
		this.cultivate = cultivate;
	}
	public String getTutor() {
		return tutor;
	}
	public void setTutor(String tutor) {
		this.tutor = tutor;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "Student [stu_id=" + stu_id + ", usr_id=" + user_id + ", sno=" + sno + ", name=" + name + ", idnumber="
				+ idnumber + ", department=" + department + ", major=" + major + ", level=" + level + ", category="
				+ category + ", subject=" + subject + ", grade=" + grade + ", cultivate=" + cultivate + ", tutor="
				+ tutor + ", title=" + title + "]";
	}
	
}
