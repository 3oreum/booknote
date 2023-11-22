package com.booknote.question.domain;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class Question {
	
	private int id;
	private int userId;
	private String title;
	private String content;
	private Date createdAt;
	private Date updatedAt;

}
