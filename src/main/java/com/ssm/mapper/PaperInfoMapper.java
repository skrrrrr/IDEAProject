package com.ssm.mapper;

import com.ssm.pojo.Papers;

import java.util.List;

public interface PaperInfoMapper {

    public List<Papers> selectAllPapers();

    public Papers selectPaperByUserId(Integer user_id);

    public void deletePaper(Integer user_id);

    public void acceptPaper();

    public void rejectPaper();

    public void addPaper(Integer pid,Integer stu_id,String title,String status);


}
