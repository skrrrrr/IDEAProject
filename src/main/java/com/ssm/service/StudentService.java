package com.ssm.service;

import com.ssm.mapper.StudentMapper;
import com.ssm.pojo.Student;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentService {

    @Autowired
    private StudentMapper studentMapper;

    public void addStudent(String sno,String name,String idnumber,String department,
                           String major,String level,String category,String subject,
                           String grade,String cultivate,String tutor)
    {
        studentMapper.addStudent(sno, name, idnumber, department, major, level, category, subject, grade, cultivate, tutor);
    }

    public Student StudentInfo()
    {
        return studentMapper.StudentInfo();
    }

    public Student searchStudentInfoById(Integer user_id){
        return studentMapper.searchStudentInfoById(user_id);
    }

}
