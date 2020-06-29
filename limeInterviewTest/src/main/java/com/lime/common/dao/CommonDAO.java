package com.lime.common.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commonDAO")
public class CommonDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	
}
