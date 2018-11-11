package com.udea.service;

import com.udea.model.User;
import com.udea.model.Login;
public interface UserService {
	
	void register(User user);
	  User validateUser(Login login);

}
