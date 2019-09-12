package com.ssm.service;

import com.ssm.mapper.PaperInfoMapper;
import com.ssm.mapper.StudentMapper;
import com.ssm.pojo.Papers;
import com.ssm.pojo.Student;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
public class SubmitInfoService {

    private PaperInfoMapper paperInfoMapper;
    private StudentMapper studentMapper;

    public List<Papers> selectAllPapers(){
        return paperInfoMapper.selectAllPapers();
    }

    public Papers selectPaperByUserId(Integer user_id){
        return paperInfoMapper.selectPaperByUserId(user_id);
    }

    public void deletePaper(Integer user_id){
        paperInfoMapper.deletePaper(user_id);
    }

    public void acceptPaper(){
        paperInfoMapper.acceptPaper();
    }

    public void rejectPaper(){
        paperInfoMapper.rejectPaper();
    }

    public void addPaper(Integer pid,Integer stu_id,String title,String status){
        paperInfoMapper.addPaper(pid,stu_id,title,status);
    }

    public Student searchStudentInfoById(Integer user_id){

        return studentMapper.searchStudentInfoById(user_id);
    }

}
