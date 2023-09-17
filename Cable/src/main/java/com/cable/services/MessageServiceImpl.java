//package com.cable.services;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.cable.entities.Message;
//import com.cable.entities.User;
//import com.cable.repositories.UserRepository;
//
//
//@Service
//public class MessageServiceImpl implements MessageService{
//	
//	@Autowired
//	private MessageRepository MessageRepo;
//	@Autowired
//	private UserRepository userRepo;
//
//
////	@Override
////	public List<Message> getMessagesByUser(String username) {
////		return MessageRepo.findByUser_Username(username);
////	}
////
////	@Override
////	public List<Message> getMessagesBy(int id) {
////		return MessageRepo.findBy_Id(id);
////	}
////	
////	@Override
////	public Message createMessage(Message Message,int id, String username) {
////		User user = userRepo.findByUsername(username);
////		if(user!=null && !=null) {
////			Message.setUser(user);
////			Message.set();
////			return MessageRepo.saveAndFlush(Message);
////		}
////		else {
////			return null;
////		}
////	}
//
//	@Override
//	public List<Message> getTaskMessagesByUser(String username) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public List<Message> getTaskMessagesByTask(int id) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//
//	@Override
//	public Message createTaskMessage(Message message, int id, String username) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	
//	
//}
