package com.booknote.question.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.booknote.question.domain.Question;

@Repository
public interface QuestionMapper {

	public void insertQuestion(
			@Param("userId") int userId, 
			@Param("title") String title, 
			@Param("content") String content);
	
	public List<Question> selectQuestionListByUserId(int userId);
	
	public List<Question> selectQuestionByUserId(
			@Param("questionId") Integer questionId,
			@Param("userId") int userId);
}
