package com.booknote.question.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.booknote.question.entity.QuestionEntity;

@Repository
public interface QuestionRepository  extends JpaRepository<QuestionEntity, Integer>{

	public List<QuestionEntity> findAllByOrderByIdDesc();
	
	
	//public List<QuestionEntity> findAllByOrderByUserIdAndQuestionIdDesc(Integer questionId, int userId);
}
