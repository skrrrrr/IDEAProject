package com.ssm.pojo;

public class Judge {
	private Integer jid;
	private String email;
	private String name;
	private String patt;
	private String direction;
	private String unit;
	private String address;
	private String postalcode;
	private String phone;
	private Integer isTutor;
	public Integer getJid() {
		return jid;
	}
	public void setJid(Integer jid) {
		this.jid = jid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPatt() {
		return patt;
	}
	public void setPatt(String patt) {
		this.patt = patt;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostalcode() {
		return postalcode;
	}
	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getIsTutor() {
		return isTutor;
	}
	public void setIsTutor(Integer isTutor) {
		this.isTutor = isTutor;
	}
	@Override
	public String toString() {
		return "Judge [jid=" + jid + ", email=" + email + ", name=" + name + ", patt=" + patt + ", direction="
				+ direction + ", unit=" + unit + ", address=" + address + ", postalcode=" + postalcode + ", phone="
				+ phone + ", isTutor=" + isTutor + "]";
	}
	
}
