package com.logos.service;

import com.logos.domain.Student;

import java.util.List;

public interface StudentService {
    List<Student> findStudent();
    int addStudent(String name,int age);
}
