package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.mapper.TopicListSelectDao;
import com.entity.Topic;
import com.entity.User;
import com.service.TopicListSelectService;

@Service
public class TopicListSelectServiceImpl implements TopicListSelectService{
	
	@Resource
	public TopicListSelectDao topicListSelectDao;

	@Override
	public List<Topic> selectTopicList() {
		 
		 List<Topic> topicList = topicListSelectDao.selectTopicList();
		  
		 for(int i=0;i<topicList.size();i++){
			 int topicId = topicList.get(i).getTopicId();
			 int praiseCount = topicListSelectDao.getPraiseCount(topicId);
			 topicList.get(i).setPraiseCount(praiseCount);
			 
			 List<User> userNameList = topicListSelectDao.getPraiseName(topicId);
			 topicList.get(i).setUserList(userNameList); 
		 }
		 
		 
		 return topicList;
	}
	 
}
