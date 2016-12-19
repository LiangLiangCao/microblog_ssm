package com.service;

import com.entity.Topic;

public interface TopicInsertService {
	
	void insertTopic(Topic topic);
	
	void deleteTopic(int topicId);
	
	void deletePraiseByTopicId(int topicId);

}
