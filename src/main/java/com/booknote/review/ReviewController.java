package com.booknote.review;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReviewController {
	
	// 리뷰 상세 페이지
	@GetMapping("/review/review-detail-view")
	public String reviewView(Model model) {
		
		model.addAttribute("viewName", "review/review");
		return "template/layout";
	}
}
