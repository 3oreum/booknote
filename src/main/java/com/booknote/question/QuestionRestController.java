package com.booknote.question;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.booknote.question.bo.QuestionBO;

@RestController
public class QuestionRestController {

	@Autowired
	private QuestionBO questionBO;
	
	// 문의글 남기기
	@PostMapping("/question/create")
	public Map<String, Object> create(
			@RequestParam("title") String title,
			@RequestParam("content") String content,
			HttpSession session){
		
		// session에 들어있는 userId 꺼내기 
		int userId = (int)session.getAttribute("userId");
		
		// DB 인서트
		questionBO.addQuestion(userId, title, content);
		
		
		// 응답값 
		Map<String, Object> result = new HashMap<>();
		result.put("code", 200);
		result.put("result", "성공");
		return result;
	}
}
