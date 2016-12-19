package com.control;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Topic;
import com.entity.User;
import com.service.TopicListSelectService;

@Controller
@RequestMapping("/topicList")
public class TopicListSelectControl {
	
	@Resource
	private TopicListSelectService topicListSelectService;
	
	@RequestMapping("/select")
	public String selectTopicList(Model model){
		
		List<Topic> topicList = topicListSelectService.selectTopicList();
		 
		model.addAttribute("topicList", topicList);
		
		
		return "jsp/main"; 
	}

}
