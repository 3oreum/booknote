package com.booknote.manager;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerController {

	@GetMapping("/manager/manager-set-view")
	public String managerSetView(Model model) {
		
		model.addAttribute("viewName", "manager/managerSet");
		return "template/layout";
	}
}
