package com.cable.entities;

import java.time.LocalDateTime;

import javax.persistence.*;

@Entity
public class Message {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@OneToOne
	@JoinColumn(name = "channel_id")
	private int channelID;

	@OneToOne
	@JoinColumn(name = "message_id")
	private int messageID;
	
	@OneToOne
	@JoinColumn(name = "message_text")
	private String messageText;
	
	private LocalDateTime timestamp;
}
