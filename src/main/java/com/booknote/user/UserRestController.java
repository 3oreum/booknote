package com.booknote.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.booknote.common.EncryptUtils;
import com.booknote.user.bo.UserBO;
import com.booknote.user.entity.UserEntity;

@RequestMapping("/user")
@RestController
public class UserRestController {
	
	@Autowired
	private UserBO userBO;

	/**
	 * 중복 확인 API
	 * @param loginId
	 * @return
	 */
	// 중복 확인 API
	@RequestMapping("/is-duplicated-id")
	public Map<String, Object> isDuplicatedId(
			@RequestParam("loginId") String loginId){
		
		Map<String, Object> result = new HashMap<>();
		
		
		// DB 조회
		UserEntity userEntity = userBO.getUserEntityByLoginId(loginId);
		result.put("code", 200);
		
		if (userEntity != null) {
			result.put("isDuplicatedId", true);
		} else {
			result.put("isDuplicatedId", false);
		}
		
		
		return result;
	}
	
	/**
	 * 회원가입 API
	 * @param loginId
	 * @param password
	 * @param email
	 * @return
	 */
	// 회원가입 API 
	@PostMapping("/sign-up")
	public Map<String, Object> signUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("email") String email){
		
		// 비밀번호 해싱
		String hashedPassword = EncryptUtils.md5(password);
		
		// DB 인서트
		Integer id = userBO.addUser(loginId, hashedPassword, email);
		
		// 응답값 
		Map<String, Object> result = new HashMap<>();
		
		if (id == null) { // 실패
			result.put("code", 500);
			result.put("errorMessage", "회원가입에 실패했습니다.");
		} else { // 성공
			result.put("code", 200);
			result.put("result", "성공");
		}
		
		return result;
	}
	
	// 로그인 API
	@PostMapping("/sign-in")
	public Map<String, Object> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest request){
		
		// 비밀번호 해싱
		String hashedPassword = EncryptUtils.md5(password);
		
		// DB 조회
		UserEntity user = userBO.getUserEntityByLoginIdPassword(loginId, hashedPassword);
		
		// 응답값
		Map<String, Object> result = new HashMap<>();
		
		if (user != null) { // 아이디가 있다는 뜻 = 로그인 가능
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getId());
			session.setAttribute("userLoginId", user.getLoginId());
			session.setAttribute("userEmail", user.getEmail());
			
			result.put("code", 200);
			result.put("result", "성공");
		} else { // 로그인 불가
			result.put("code", 500);
			result.put("errorMessage", "아이디와 비밀번호를 다시 입력해 주세요.");
		}
		
		return result;
	}
}
