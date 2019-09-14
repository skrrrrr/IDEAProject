package com.ssm.controller;

import com.ssm.pojo.PageInfo;
import com.ssm.service.pageDivideService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class pageDivideController {
    @Autowired
    private pageDivideService pageDivideService;

    @RequestMapping("studentByPage")
    public String studentByPage(HttpServletRequest request) {
        int pageNumber = 1;
        int pageSize = 10;
        String pageNumberStr = request.getParameter("pageNumber");
        String pageSizeStr = request.getParameter("pageSize");
        if (pageNumberStr != null) {
            pageNumber = Integer.parseInt(pageNumberStr);
        }
        if (pageSizeStr != null) {
            pageSize = Integer.parseInt(pageSizeStr);
        }
        PageInfo pageInfo=pageDivideService.selectStudentByPage(pageNumber, pageSize);
        request.setAttribute("pageInfo", pageInfo);
        return "testPage_csf";
    }
}
