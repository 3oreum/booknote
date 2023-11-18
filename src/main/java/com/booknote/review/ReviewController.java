package com.booknote.review;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReviewController {

	@GetMapping("/review/review-detail-view")
	public String reviewView(Model model) {
		model.addAttribute("viewName", "review/review");
		return "template/layout";
	}
}
