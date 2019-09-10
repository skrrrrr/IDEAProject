package com.ssm.mapper;

import com.ssm.pojo.User;

public interface LoginMapper {
	
	// 通过用户名查询用户
	public User selectUserByUsername(String username);
	public User selectUserById(Integer id);

}
