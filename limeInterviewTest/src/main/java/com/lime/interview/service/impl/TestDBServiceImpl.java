package com.lime.interview.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lime.interview.service.TestDBService;

@Service("testDB")
public class TestDBServiceImpl implements TestDBService {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public Map<String, Object> testABC() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		
		sqlSession.selectOne("Test.test");
		return map;
	}
}
