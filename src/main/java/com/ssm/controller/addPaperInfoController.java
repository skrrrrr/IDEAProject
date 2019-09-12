package com.ssm.controller;

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
public class addPaperInfoController {

    @Autowired
    private StudentService studentService;
    @Autowired
    private SubmitInfoService submitInfoService;

    @RequestMapping(value = "SubmitPaperInfo")
    public String Submit(Model model, Student student,Integer studentId ,String paperTitle,String tutorName, Papers papers){

        Integer user_id = studentId;
        Student student1 = studentService.searchStudentInfoById(user_id);
        Integer pid = student1.getPid();
        System.out.println(student1);
        System.out.println(pid+paperTitle+studentId);
        //submitInfoService.addPaper(pid,studentId,paperTitle,"wait");
        Papers papers1 = submitInfoService.selectPaperByUserId(user_id);
        System.out.println(papers1);
        return "submitPDF";
    }

}
