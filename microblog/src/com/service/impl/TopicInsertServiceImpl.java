package com.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.mapper.TopicInsertDao;
import com.dao.mapper.TopicListSelectDao;
import com.entity.Topic;
import com.service.TopicInsertService;

@Service
public class TopicInsertServiceImpl implements TopicInsertService {
	
	@Resource
	private TopicInsertDao topicInsertDao;
	
	@Resource
	public TopicListSelectDao topicListSelectDao;

	@Override
	public void insertTopic(Topic topic) {
		
		topicInsertDao.insertTopic(topic);

	}

	@Override
	public void deletePraiseByTopicId(int topicId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteTopic(int topicId) {
		int praiseCount = topicListSelectDao.getPraiseCount(topicId);
		if(praiseCount > 0){
			
			topicInsertDao.deletePraiseByTopicId(topicId);
			
		}
		
		topicInsertDao.deleteTopic(topicId);
		
	}
	
	

}
