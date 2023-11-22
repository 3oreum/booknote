package com.booknote.question.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booknote.question.domain.Question;
import com.booknote.question.entity.QuestionEntity;
import com.booknote.question.mapper.QuestionMapper;
import com.booknote.question.repository.QuestionRepository;
import com.booknote.user.entity.UserEntity;

@Service
public class QuestionBO {

	@Autowired
	private QuestionMapper questionMapper;
	
	@Autowired
	private QuestionRepository questionRepository;
	
	// 문의글 남기기 
	public void addQuestion(int userId, String title, String content) {
		questionMapper.insertQuestion(userId, title, content);
	}
	
	public List<Question> getQuestionListByUserId(int userId){
		return questionMapper.selectQuestionListByUserId(userId);
	}
	
	public List<QuestionEntity> getQuestionList() {
		return questionRepository.findAllByOrderByIdDesc();
	}
	
	// 문의글 불러오기
	public List<Question> getQuestionByUserId(Integer questionId, int userId) {
		return questionMapper.selectQuestionByUserId(questionId, userId);
		}
	
	public List<QuestionEntity> getQuestionByQuestionId(Integer questionId, int userId) {
		return questionRepository.findAllByOrderByIdDesc();
		}
}
