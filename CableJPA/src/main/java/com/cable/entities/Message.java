package com.cable.entities;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Message {


		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;

		private String content;

		@ManyToOne
		@JoinColumn(name = "sender_id")
		private User sender;

		@ManyToOne
		@JoinColumn(name = "reciever_id")
		private User reciever;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}

		public User getSender() {
			return sender;
		}

		public void setSender(User sender) {
			this.sender = sender;
		}

		public User getReciever() {
			return reciever;
		}

		public void setReciever(User reciever) {
			this.reciever = reciever;
		}

		@Override
		public String toString() {
			return "Message [id=" + id + ", content=" + content + ", sender=" + sender + ", reciever=" + reciever + "]";
		}

}