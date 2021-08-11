package com.logos.controller;

import com.logos.domain.Student;
import com.logos.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentService service;

    @RequestMapping("/add.do")
    public ModelAndView addStudent(@RequestParam(value = "rname",required = true)String name,@RequestParam(value = "rage",required = true) int age){
        ModelAndView mv = new ModelAndView();
        int numb = service.addStudent(name, age);
        String news = "注册失败！";
        if (numb>0) {
            news = "["+name+"]注册成功！";
        }
        mv.addObject("news",news);
        mv.setViewName("result");
        return mv;
    }

    @RequestMapping("/find.do")
    @ResponseBody
    public List<Student> findStudent(){
        return service.findStudent();
    }
}
