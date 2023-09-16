package com.cable.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.cable.entities.User;
import com.cable.repositories.UserRepository;

@Service
public class AuthServiceImpl implements AuthService {


	@Autowired
	private PasswordEncoder encoder;

	@Autowired
	private UserRepository userRepo;
	
	@Override
	public User register(User user) {
		String encrypted = encoder.encode(user.getPassword());
		user.setPassword(encrypted);
//		user.setEnabled(true);
//		user.setRole("user");
		return userRepo.saveAndFlush(user);
	}

	@Override
	public User getUserByUsername(String username) {
		return userRepo.findByUsername(username);
	}
}
