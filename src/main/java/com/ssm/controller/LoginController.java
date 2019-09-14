package com.ssm.controller;

import com.ssm.pojo.User;
import com.ssm.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/toLogin")
	public String toLogin(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie:cookies){
			if("main".equals(cookie.getName())){
				User user2 = (User) request.getSession().getAttribute("user");
				if(user2.getRoot() == 1){
					return "student";
				} else if(user2.getRoot() == 2){
					return "department";
				} else if(user2.getRoot() == 3){
					return "school";
				} else if(user2.getRoot() == 4){
					return "profess";
				}
			}
		}
		return "login";
	}
	
	@RequestMapping(value = "toHome")
	public String toHome(User user, HttpServletRequest request,HttpServletResponse response) {
		
		String username = user.getUsername();
		String password = user.getPassword();
		HttpSession session = request.getSession();
		User user2 = loginService.selectUserByUsername(username);
		session.setAttribute("user",user2);
		session.setAttribute("username",user2.getUsername());
		if (user2 == null){
			session.setAttribute("msg", "用户名不存在！");
			return "login";
		}else if (!user2.getPassword().equals(password)){
			session.setAttribute("msg", "用户名或密码错误！");
			return "login";
		}
		else{
			Cookie cookie=new Cookie("main","true");
			cookie.setMaxAge(60);//设置cookie保存时间
			cookie.setPath(request.getContextPath()+"/toLogin");//该cookie仅对login请求有效，该处的值默认登录请求为toLogin，如果不是，需要修改
			response.addCookie(cookie);
		}

		if(user2.getRoot() == 1){
			return "student";
		} else if(user2.getRoot() == 2){
			return "department";
		} else if(user2.getRoot() == 3){
			return "school";
		} else if(user2.getRoot() == 4){
			return "profess";
		} else{
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			return "test";
		}

	}
	
}
