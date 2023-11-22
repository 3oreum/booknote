package com.booknote.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.booknote.question.bo.QuestionBO;
import com.booknote.question.domain.Question;
import com.booknote.question.entity.QuestionEntity;

@Controller
public class ServiceController {
	
	@Autowired
	private QuestionBO questionBO;
	

	// 고객센터 화면 
	@GetMapping("/service/list-view")
	public String serviceListView(
			@RequestParam(value = "Id" , required = false) Integer questionId,
			Model model, 
			HttpSession session) {
		
		Integer userId = (Integer)session.getAttribute("userId");
		
		//int userId = (int)session.getAttribute("userId");
		//List<Question> questionList = questionBO.getQuestionByUserId(questionId, userId);
		List<QuestionEntity> questionList = questionBO.getQuestionByQuestionId(questionId, userId);
		
		
		//List<Question> questionList = questionBO.getQuestionListByUserId(userId);
		//List<QuestionEntity> questionList = questionBO.getQuestionList();
		
		model.addAttribute("questionList", questionList);
		model.addAttribute("viewName", "service/serviceList");
		return "template/layout";
	}
}
