package com.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Topic;
import com.entity.User;
import com.service.TopicInsertService;

@Controller
@RequestMapping("/topic")
public class TopicControl { 
	
	@Resource
	private TopicInsertService topicInsertService;
	
	@RequestMapping("/insertTopic")
	public String insertTopic(Topic topic, HttpServletRequest request){
		
		HttpSession session = request.getSession(false);
		
		if(session != null){
			
			User user = (User)session.getAttribute("loginUser");
			
			topic.setTopicUserId(user.getUserId());
			 
			topicInsertService.insertTopic(topic);
			 
		}
		
		return "forward:/topicList/select";
		
	}
	
	@RequestMapping("/deleteTopic")
	public String deleteTopic(int topicId){
		
		topicInsertService.deleteTopic(topicId);
		   
		return "forward:/topicList/select";
		
	}

}
