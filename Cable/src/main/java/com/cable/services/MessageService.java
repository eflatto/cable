package com.cable.services;

import java.util.List;

import com.cable.entities.Message;

public interface MessageService {

	List<Message> getTaskMessagesByUser(String username);
	
	List<Message> getTaskMessagesByTask(int id);
	
	Message createTaskMessage(Message message, int id, String username);
}
