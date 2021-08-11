package com.logos.service.impl;

import com.logos.dao.StudentDao;
import com.logos.domain.Student;
import com.logos.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao studentDao;
    @Override
    public List<Student> findStudent() {
        return studentDao.findStudent();
    }

    @Override
    public int addStudent(String name, int age) {
        return studentDao.addStudent(name,age);
    }
}
