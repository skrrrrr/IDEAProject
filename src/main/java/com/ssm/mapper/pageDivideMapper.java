package com.ssm.mapper;

import com.ssm.pojo.PageInfo;
import com.ssm.pojo.Student;

import java.util.List;
import java.util.Map;

public interface pageDivideMapper {
    List<Student> selectStudentByPage(PageInfo pageInfo);
    int getStudentCount();
}
