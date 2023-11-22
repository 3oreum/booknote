package com.booknote.user.bo;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest // 얘가 없으면 순수한 자바가 됨 . 얘가 있어야 Spring boot를 기동
class UserBOTest {

	@Autowired
	UserBO userBO;
	
	@Transactional // rollback
	@Test
	void 유저추가테스트() {
		userBO.addUser("afff", "aaaa", "aaa@aaa.com");
	}

}
