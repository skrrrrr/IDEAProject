package com.ssm.pojo;

public class Papers {
	private Integer pid;
	private Integer stu_id;
	private Integer status;
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
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Papers [pid=" + pid + ", stu_id=" + stu_id + ", status=" + status + "]";
	}
}
