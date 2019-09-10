package com.ssm.pojo;

import com.mysql.fabric.xmlrpc.base.Data;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Results {
	private Integer pid;
	private Integer jid;
	private String score1;
	private String score2;
	private String score3;
	private String score4;
	private String sum;
	private String familiar;
	private String suggest;
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Data modify_date;
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getJid() {
		return jid;
	}
	public void setJid(Integer jid) {
		this.jid = jid;
	}
	public String getScore1() {
		return score1;
	}
	public void setScore1(String score1) {
		this.score1 = score1;
	}
	public String getScore2() {
		return score2;
	}
	public void setScore2(String score2) {
		this.score2 = score2;
	}
	public String getScore3() {
		return score3;
	}
	public void setScore3(String score3) {
		this.score3 = score3;
	}
	public String getScore4() {
		return score4;
	}
	public void setScore4(String score4) {
		this.score4 = score4;
	}
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}
	public String getFamiliar() {
		return familiar;
	}
	public void setFamiliar(String familiar) {
		this.familiar = familiar;
	}
	public String getSuggest() {
		return suggest;
	}
	public void setSuggest(String suggest) {
		this.suggest = suggest;
	}
	public Data getModify_date() {
		return modify_date;
	}
	public void setModify_date(Data modify_date) {
		this.modify_date = modify_date;
	}
	@Override
	public String toString() {
		return "Results [pid=" + pid + ", jid=" + jid + ", score1=" + score1 + ", score2=" + score2 + ", score3="
				+ score3 + ", score4=" + score4 + ", sum=" + sum + ", familiar=" + familiar + ", suggest=" + suggest
				+ ", modify_date=" + modify_date + "]";
	}
	
}
