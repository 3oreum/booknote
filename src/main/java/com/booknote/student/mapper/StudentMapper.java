package com.booknote.student.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface StudentMapper {

	public List<Map<String, Object>> selectStudentList();
}
