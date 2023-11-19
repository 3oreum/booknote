package com.booknote.user.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.booknote.user.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Integer>{

	// 중복 확인
	public UserEntity findByLoginId(String loginId);
	
	// 로그인
	public UserEntity findByLoginIdAndPassword(String loginId, String password);
}
