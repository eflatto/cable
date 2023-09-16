package com.cable.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.*;

public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@OneToOne
	@JoinColumn(name = "user_id")
	private int userId;
	
	private boolean enabled;
	
	private String role;

	private String username;

	private String password;

	private String avatar;
	
	@OneToOne
	@JoinColumn(name = "created_at")
	private LocalDateTime createdAt;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", enabled=" + enabled + ", role=" + role + ", username=" + username
				+ ", password=" + password + ", avatar=" + avatar + ", createdAt=" + createdAt + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(avatar, createdAt, enabled, password, role, userId, username);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(avatar, other.avatar) && Objects.equals(createdAt, other.createdAt)
				&& enabled == other.enabled && Objects.equals(password, other.password)
				&& Objects.equals(role, other.role) && userId == other.userId
				&& Objects.equals(username, other.username);
	}
}
