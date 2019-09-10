package com.ssm.mapper;

import com.ssm.pojo.Student;

public interface StudentMapper {

    public Student addStudent(String sno,String name,String idnumber,String department,
                              String major,String level,String category,String subject,
                              String grade,String cultivate,String tutor);
    public Student StudentInfo();

    public Student searchStudentInfoById(Integer user_id);

}
