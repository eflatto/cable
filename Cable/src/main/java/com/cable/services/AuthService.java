package com.cable.services;

import com.cable.entities.User;

public interface AuthService {
	public User register(User user);
	public User getUserByUsername(String username);
}
