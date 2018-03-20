package com.jin.wedP.customer.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.jin.wedP.customer.DAO.CustomerDAO;
import com.jin.wedP.customer.vo.Customer;



@Controller
@RequestMapping(value="customer")
@SessionAttributes("loginedCust")
public class customerupdateController {

	private static final Logger logger = LoggerFactory.getLogger(customerupdateController.class);
	
	@Autowired
	CustomerDAO dao;
	
	@RequestMapping(value="updateForm", method=RequestMethod.GET)
	public String updateForm(HttpSession session, Model model){
		
		logger.info("수정 폼으로 이동");
		
		String custid = (String)session.getAttribute("custId");
		//수정폼으로 이동시 기존에 등록된 값을 보여주기위함
		Customer cust = dao.searchCustomerOne(custid);
		
		model.addAttribute("loginedCust", cust);
		
		logger.info("수정 폼으로 이동 종료");
		return "customer/updateForm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(@ModelAttribute("loginedCust") Customer customer, Model model){
					//기존 저장된 값에 새로운 값을 넣겠다는 의미
		logger.info("수정 시작");
		System.out.println(customer);
		int result = dao.updateCustomer(customer);
		
		if(result == 0){
			
			model.addAttribute("error", "수정 실패~");
			System.out.println("여기요?");
			return "customer/updateForm";
		}
		
		logger.info("수정 종료");
		
		return "redirect:updateComplete";
	}
	
	@RequestMapping(value="updateComplete", method=RequestMethod.GET)
	public String updateComplete(@ModelAttribute("loginedCust") Customer customer,SessionStatus status
			,HttpSession session){
					
		logger.info("수정 완료 페이지 시작");
		
		
		session.setAttribute("custName", customer.getName());
		
		status.setComplete();
		logger.info("수정 완료 페이지 종료");
		
		return "customer/updateComplete";
	}
}
