package com.cable.entities;

import java.time.LocalDateTime;

import javax.persistence.*;

@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String username;

	private String password;

	private String avatar;
	
	private LocalDateTime timestamp;

}
