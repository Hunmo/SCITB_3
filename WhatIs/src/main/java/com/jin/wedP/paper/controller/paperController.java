package com.jin.wedP.paper.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping(value="paper")
public class paperController {

	private static final Logger logger = LoggerFactory.getLogger(paperController.class);
	
	
	@RequestMapping(value="listForm", method=RequestMethod.GET)
	public String listForm(){
		logger.info("페이어 페이지로 이동 시작");
		
		
		logger.info("페이어 페이지로 이동 종료");
		return "paper/list3";
	}
	
	@RequestMapping(value="clickImg", method=RequestMethod.GET)
	public String clickImg(){
		logger.info("이미지 클릭 시작");
		
		
		logger.info("이미지 클릭 종료");
		return "paper/list3";
	}
	
}
