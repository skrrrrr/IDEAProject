package com.ssm.service;

import com.ssm.mapper.pageDivideMapper;
import com.ssm.pojo.PageInfo;
import com.ssm.pojo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class pageDivideService {
    @Autowired
    private pageDivideMapper pageDivideMapper;

    public PageInfo selectStudentByPage(int pageNumber, int pageSize) {
        PageInfo pageInfo = new PageInfo();
        pageInfo.setPageNumber(pageNumber);
        pageInfo.setPageSize(pageSize);
        pageInfo.setPageStart((pageNumber - 1) * pageSize);
        int count = pageDivideMapper.getStudentCount();
        pageInfo.setTotalNumber(count % pageSize == 0 ? count / pageSize : count /pageSize + 1);
        List<Student> students = pageDivideMapper.selectStudentByPage(pageInfo);
        pageInfo.setList(students);
        return pageInfo;
    }
}
