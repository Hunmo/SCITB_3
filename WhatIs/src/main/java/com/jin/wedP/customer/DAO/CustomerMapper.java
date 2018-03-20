package com.jin.wedP.customer.DAO;

import com.jin.wedP.customer.vo.Customer;


public interface CustomerMapper {
	
	//회원정보 검색
	public Customer searchCustomerOne(String custid);
	
	//회원등록
	public int joinCust(Customer customer);
	
	//로그인
	public Customer loginCustomer(Customer customer);
	
	//회원 수정
	public int updateCustomer(Customer customer);
	
}
