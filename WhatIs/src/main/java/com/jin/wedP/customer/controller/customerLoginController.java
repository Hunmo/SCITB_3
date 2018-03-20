package com.jin.wedP.customer.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jin.wedP.customer.DAO.CustomerDAO;
import com.jin.wedP.customer.vo.Customer;

@Controller
@RequestMapping(value="customer")
public class customerLoginController {

	private static final Logger logger = LoggerFactory.getLogger(customerLoginController.class);
	
	@Autowired
	CustomerDAO dao;
	
	@RequestMapping(value="loginForm", method=RequestMethod.GET)
	public String loginForm(){
		logger.info("로그인 폼으로 이동");
		
		
		logger.info("로그인 폼으로 종료");
	return "customer/loginForm";	
	}
	
	@RequestMapping(value="login" , method=RequestMethod.POST)
	public String login(Customer customer, HttpSession session,Model model){
		logger.info("로그인 시작");
		System.out.println(customer);
		Customer cust = dao.loginCustomer(customer);
		System.out.println(cust);
		
		if(cust == null){
			
			model.addAttribute("error", "아이디 또는 비밀번호가 없습니다");
			
			return "customer/loginForm";
			
		}
		
		
		session.setAttribute("custId", cust.getCustid());
		session.setAttribute("custName", cust.getName());
		
		
		logger.info("로그인 종료");
		
		return "redirect:/";
	}
	
	@RequestMapping(value="logOut" , method=RequestMethod.GET)
	public String logOut(HttpSession session){
		logger.info("로그아웃 시작");
		
		session.invalidate();
		
		logger.info("로그아웃 종료");
		
		return "redirect:/";
	}
}
