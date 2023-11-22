package com.booknote;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.mybatis.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.util.ObjectUtils;

@SpringBootTest // 얘가 없으면 순수한 자바가 됨 . 얘가 있어야 Spring boot를 기동
class BooknoteApplicationTests {
	
	Logger logger = (Logger) LoggerFactory.getLogger(this.getClass());

	//@Test 
	void contextLoads() {
	}
	
	//@Test
	void 더하기테스트() {
		logger.debug("###### 더하기 테스트 수행");
		int a = 10;
		int b = 20;
		assertEquals(30, a + b);
	}
	
	@Test
	void 검사테스트() {
		// String str = null;
		 String str = "";
		if (ObjectUtils.isEmpty(str)) { // null 또는 비어있는지 확인 가능 
				logger.info("#### str은 null 또는 비어있다. ####");
		}
		
		// List<Integer> list = null;
		List<Integer> list = new ArrayList<>();
		if (ObjectUtils.isEmpty(list)) { // null or [] 비어있다
			logger.info("#### list는 null이거나 비어있다. #####");
		}
	}
}
