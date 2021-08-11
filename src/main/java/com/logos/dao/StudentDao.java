package com.logos.dao;

import com.logos.domain.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {
    List<Student> findStudent();
    int addStudent(@Param("name") String name,@Param("age") int age);
}
