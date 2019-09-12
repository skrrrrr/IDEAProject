package com.ssm.controller;

import com.ssm.mapper.StudentMapper;
import com.ssm.pojo.Papers;
import com.ssm.pojo.Student;
import com.ssm.pojo.User;
import com.ssm.service.StudentService;
import com.ssm.service.SubmitInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SubmitInfoController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private SubmitInfoService submitInfoService;


    @RequestMapping(value = "submitInfo")
    public String Submit(Model model, User user, Student student, Papers papers){

        Integer user_id = user.getUser_id();
        //System.out.println(user_id);
        Student student1 = studentService.searchStudentInfoById(user_id);
        //System.out.println(student1);
        model.addAttribute("student",student1);
        model.addAttribute("user",user);

        return "submitInfo";
    }
}
