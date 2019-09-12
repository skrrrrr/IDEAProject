package com.ssm.controller;

import com.ssm.mapper.LoginMapper;
import com.ssm.mapper.StudentMapper;
import com.ssm.pojo.Student;
import com.ssm.pojo.User;
import com.ssm.service.LoginService;
import com.ssm.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class studentController {

    @Autowired
    private LoginService loginService;
    @Autowired
    private StudentService studentService;


    @RequestMapping(value = "studentInfo")
    public String StudentControl(Student student ,User user, Model model)
    {

        Integer user_id = user.getUser_id();

        Student student1 = studentService.searchStudentInfoById(user_id);
        User user1 = loginService.selectUserById(user_id);


        model.addAttribute("user1",user1);
        model.addAttribute("student1",student1);

        return "studentInfo";
    }


}
