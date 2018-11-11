package com.udea.dao;

import com.udea.model.User;
import com.udea.model.Login;
public interface UserDao {
	
	void register(User user);
	  User validateUser(Login login);

}
