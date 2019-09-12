package com.ssm.pojo;

public class Papers {
	private Integer pid = null;
	private Integer stu_id = null;
	private String status = null;
	private String title = null;
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getStu_id() {
		return stu_id;
	}
	public void setStu_id(Integer stu_id) {
		this.stu_id = stu_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Papers [pid=" + pid + ", stu_id=" + stu_id + ", status=" + status + ", title" + title +"]";
	}
}
