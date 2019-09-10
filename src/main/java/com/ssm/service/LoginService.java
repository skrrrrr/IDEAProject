package com.ssm.service;

import com.ssm.mapper.LoginMapper;
import com.ssm.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	@Autowired
	private LoginMapper loginMapper;
	
	public User selectUserByUsername(String username) {

		return loginMapper.selectUserByUsername(username);
	}

	public User selectUserById(Integer id) {

		return loginMapper.selectUserById(id);
	}
}
