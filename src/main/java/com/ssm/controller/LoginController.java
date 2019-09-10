package com.ssm.controller;

import com.ssm.pojo.User;
import com.ssm.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/toLogin")
	public String toLogin() {
		return "login";
	}
	
	@RequestMapping(value = "toHome")
	public String toHome(User user, Model model) {
		
		String username = user.getUsername();
		String password = user.getPassword();
		
		User user2 = loginService.selectUserByUsername(username);
		//System.out.println(user2);
		model.addAttribute("user",user2);
		model.addAttribute("username",user2.getUsername());
		if (user2 == null){
			model.addAttribute("msg", "用户名不存在！");
			return "login";
		}else if (!user2.getPassword().equals(password)){
			model.addAttribute("msg", "用户名或密码错误！");
			return "login";
		}

		if(user2.getRoot() == 1){
/*			model.addAttribute("user",user);
			model.addAttribute("username",username);*/
			return "student";
		} else if(user2.getRoot() == 2){
			return "department";
		} else if(user2.getRoot() == 3){
			return "school";
		} else if(user2.getRoot() == 4){
			return "profess";
		} else{
			model.addAttribute("username", username);
			model.addAttribute("password", password);
			return "test";
		}

	}
	
}
