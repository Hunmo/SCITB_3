package com.jin.wedP.customer.DAO;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jin.wedP.customer.vo.Customer;


@Repository
public class CustomerDAO {

	private static final Logger logger = LoggerFactory.getLogger(CustomerDAO.class);
	
	@Autowired
	SqlSession sqlSession;
	
	//회원 정보 가져오기
	public Customer searchCustomerOne(String custid){
		
		Customer result =null;
		
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		
		try {
			result = mapper.searchCustomerOne(custid);
			
		} catch (Exception e) {
			
		}
		
		return result;
	}
	
	//가입하기
	public int joinCust(Customer customer){
		
		int result = 0;
		
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		
		try {
			result = mapper.joinCust(customer);
			
		} catch (Exception e) {
			
		}
		
		return result;
	}
	
	//로그인
	public Customer loginCustomer(Customer customer){
		
		Customer result =null;
		
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		
		try {
			result = mapper.loginCustomer(customer);
			
		} catch (Exception e) {
			
		}
		
		return result;
	}
	
	//회원 수정
	public int updateCustomer(Customer customer){
		int result = 0;
		
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		
		try {
			result = mapper.updateCustomer(customer);
			
		} catch (Exception e) {
			
		}
		
		return result;
	}
}
