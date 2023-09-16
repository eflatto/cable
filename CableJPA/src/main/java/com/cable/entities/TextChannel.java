package com.cable.entities;

import java.time.LocalDateTime;

import javax.persistence.*;

public class TextChannel {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@OneToOne
	@JoinColumn(name = "channel_id")
	private int channelId;
	
	@OneToOne
	@JoinColumn(name = "channel_name")
	private String channelName;
	
	@OneToOne
	@JoinColumn(name = "created_at")
	private LocalDateTime createdAt;
}
