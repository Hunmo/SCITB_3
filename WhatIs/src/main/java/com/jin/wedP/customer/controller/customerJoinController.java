package com.jin.wedP.customer.controller;

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
@SessionAttributes("customer")//모델에 값을 넣을경우 섹션에서 그걸 이용가능
public class customerJoinController {

		private static final Logger logger = LoggerFactory.getLogger(customerJoinController.class);
	
		@Autowired
		CustomerDAO dao;
		
		@RequestMapping(value="joinForm", method=RequestMethod.GET)
		public String join(Model model){
			logger.info("가입 폼으로 이동~");
			
			Customer customer = new Customer();
			model.addAttribute("customer", customer); //빈객체 저장
			
			logger.info("가입 폼 이동 종료");
			
			return"customer/joinForm";
		}
		
		@RequestMapping(value="idCheck", method=RequestMethod.GET)
		public String idCheck(Model model){
			
			logger.info("ID 체크 폼으로 ㄱㄱ");
			
			//검색시도 확인 용도
			model.addAttribute("search",false);
			
			logger.info("ID 체크 폼 이동 종료");
			
			return"customer/idCheckForm";
		}
		
		@RequestMapping(value="Idsearch",method=RequestMethod.POST)
		public String idSearch(Model model,String searchId){
			logger.info("아이디 중복 검사 시작");
			
			
			Customer customer = dao.searchCustomerOne(searchId);
			
			
			model.addAttribute("searchId", searchId);
			
			model.addAttribute("searchResult", customer);
			
			//검색 시도의 여부 
			model.addAttribute("search", true);
			logger.info("아이디 중복 검사 종료");
			
			return "customer/idCheckForm";
		}
		
		@RequestMapping(value="join", method=RequestMethod.POST)
		public String join(Model model, 
					@ModelAttribute("customer") Customer customer){
				//기존 customer에 빈 객체를 저장한것을 가져와
				//새로 받은 값인 customer를 넣어주겠다는 의미
			logger.info("가입 시작");
			System.out.println(customer);
			int result = dao.joinCust(customer);
			
			if(result == 1){
				
				model.addAttribute("con", "가입이 되었습니다");
			}
			
			
			logger.info("가입 종료");
			
			return "redirect:joinComplete";
		}
		
		@RequestMapping(value="joinComplete", method=RequestMethod.GET)
		public String joinComplete(SessionStatus session,
				//사람이 인위적으로 joinComplete로 접속할 수 있어서 그것을 강제로 막기 위해 아래 것을 꼭 적어야한다.
				//이전 단계에서 customer을 가지고 있어야 다음부분이 실행된다. 그렇지 않으면 에러가 뜬다.
				@ModelAttribute("customer") Customer customer , Model model){
			
			logger.info("가입 결과 안내 폼 이동");
			//화면에 사용자 id를 띄우기 위한 용
			model.addAttribute("id", customer.getCustid());
			model.addAttribute("name", customer.getName());
			
			//session과 model관의 관계를 초기화 시켜주는 것.
			session.setComplete();
			
			logger.info("가입 결과 안내 폼 이동 종료");
		
		return "customer/joinComplete";	
		}
		
		
		
}
