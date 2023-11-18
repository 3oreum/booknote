package com.booknote.book;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {

	
	// 메인 페이지
	@GetMapping("/book/booknote-view")
	public String booknotetView(Model model) {
		
		model.addAttribute("viewName", "book/booknote");
		return "template/layout";
	}
}
