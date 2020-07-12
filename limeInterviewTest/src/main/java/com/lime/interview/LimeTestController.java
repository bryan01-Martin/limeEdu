package com.lime.interview;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LimeTestController {
	
	Logger logger = LoggerFactory.getLogger(LimeTestController.class);
	
	
	@RequestMapping(value = "/interviewTest.do")
	public String interviewTest(HttpServletRequest request) {
		return "interviewTest";
	}
	
	
	
}
