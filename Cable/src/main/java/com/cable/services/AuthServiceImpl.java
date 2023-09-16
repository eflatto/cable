package com.cable.services;

import javax.persistence.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cable.entities.User;
import com.cable.repositories.UserRepository;

public class AuthServiceImpl implements AuthService {
	@PersistenceContext
	private EntityManager em;

	@Autowired
	private PasswordEncoder encoder;

	@Autowired
	private UserRepository userRepo;
	
	@Override
	public User register(User user) {
		String encrypted = encoder.encode(user.getPassword());
		user.setPassword(encrypted);
		user.setEnabled(true);
		user.setRole("user");
		return userRepo.saveAndFlush(user);
	}

	@Override
	public User getUserByUsername(String username) {
		return userRepo.findByUsername(username);
	}
}
