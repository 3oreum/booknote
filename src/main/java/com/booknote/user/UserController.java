package com.booknote.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {

	/**
	 * 로그인 화면 
	 * @param model
	 * @return
	 */
	// 로그인 화면 
	@GetMapping("/sign-in-view")
	public String signInView(Model model) {
		model.addAttribute("viewName", "user/signIn");
		return "template/layout";
	}
	
	/**
	 * 회원가입 화면
	 * @param model
	 * @return
	 */
	// 회원가입
	@GetMapping("/sign-up-view")
	public String signUpView(Model model) {
		model.addAttribute("viewName", "user/signUp");
		return "template/layout";
	}
	
	// 내 정보
	@GetMapping("/user-data-view")
	public String userDataView(Model model) {
		model.addAttribute("viewName", "user/userData");
		return "template/layout";
	}
	
	// 로그아웃 
	@RequestMapping("/sign-out")
	public String signOut(HttpSession session) {
		session.removeAttribute("loginId");
		session.removeAttribute("userLoginId");
		session.removeAttribute("userEmail");
		session.removeAttribute("userType");
		
		
		return "redirect:/user/sign-in-view";
	}
	
}
