package com.jin.wedP.customer.vo;

public class Customer {
	
	private String custid; //고객 아이디
	private String pass; //비밀번호
	private String name; //이름
	private int age; //나이
	private String email; //이메일
	private String address; //주소
	public Customer() {
		super();
	}
	
	public Customer(String custid, String pass, String name, int age, String email, String address) {
		super();
		this.custid = custid;
		this.pass = pass;
		this.name = name;
		this.age = age;
		this.email = email;
		this.address = address;
	}
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Customer [custid=" + custid + ", pass=" + pass + ", name=" + name + ", age=" + age + ", email=" + email
				+ ", address=" + address + "]";
	}
	
	
}
