package com.booknote.user.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

	public void updatePassword(
			@Param("userId") int userId, 
			@Param("userLoginId") String userLoginId, 
			@Param("password") String password, 
			@Param("newPassowrd") String newPassowrd);
}
