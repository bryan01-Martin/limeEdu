package com.lime.interview;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lime.interview.service.TestDBService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class limeTestController {
	
	private static final Logger logger = LoggerFactory.getLogger(limeTestController.class);
	
	@Autowired
	TestDBService testDBService;
	
	@RequestMapping(value = "/interviewTest.do")
	public String interviewTest(HttpServletRequest request) {
		return "interviewTest";
	}
	
	@RequestMapping(value = "/testDb.do")
	public String testDb(HttpServletRequest request) throws Exception {
		
		testDBService.testABC();
		return "";
	}
	
	
}
