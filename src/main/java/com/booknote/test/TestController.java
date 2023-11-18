package com.booknote.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.booknote.student.mapper.StudentMapper;

@Controller
public class TestController {
	
	@Autowired
	private StudentMapper studentMapper;

	@RequestMapping("/test1")
	@ResponseBody
	public String test1() {
		return "Hello world";
	}
	
	@RequestMapping("/test2")
	@ResponseBody
	public Map<String, Object> test2(){
		Map<String, Object> map = new HashMap<>();
		map.put("asd", 22);
		map.put("ss", 3);
		map.put("qqq", 2);
		return map;
	}
	
	// src/main/webapp/WEB-INF/jsp
	@GetMapping("/test3")
	public String test3() {
		return "test/test";
	}
	
	@RequestMapping("/test4")
	@ResponseBody
	public List<Map<String, Object>> test4(){
		return studentMapper.selectStudentList();
	}
	
}
