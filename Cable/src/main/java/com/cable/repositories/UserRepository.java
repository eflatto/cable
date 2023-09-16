package com.cable.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cable.entities.User;

public interface UserRepository extends JpaRepository<User, Integer> {
	User findByUserId(int userId);
	User findByUsername(String username);
}
