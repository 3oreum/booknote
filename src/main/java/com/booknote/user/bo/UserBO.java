package com.booknote.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booknote.user.entity.UserEntity;
import com.booknote.user.mapper.UserMapper;
import com.booknote.user.repository.UserRepository;

@Service
public class UserBO {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserMapper userMapper;

	// 중복 확인
	public UserEntity getUserEntityByLoginId(String loginId) {
		return userRepository.findByLoginId(loginId);
	}
	
	// 회원가입
	public Integer addUser(String loginId, String password, String email) {
		UserEntity userEntity = userRepository.save(
				UserEntity.builder()
				.loginId(loginId)
				.password(password)
				.email(email)
				.build());
		
		return userEntity == null ? null : userEntity.getId();
	}
	
	// 로그인
	public UserEntity getUserEntityByLoginIdPassword(String loginId, String password) {
		return userRepository.findByLoginIdAndPassword(loginId, password);
	}
	
	// 비밀번호 변경 
	public void updatePassword(int userId, String userLoginId, String password, String newPassowrd) {
		
		 userMapper.updatePassword(userId, userLoginId, password, newPassowrd);
	}

	
}
