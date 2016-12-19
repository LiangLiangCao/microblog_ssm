package com.dao.mapper;

import com.entity.Topic;

public interface TopicInsertDao {
	
	void insertTopic(Topic topic);
	
	void deleteTopic(int topicId);
	
	void deletePraiseByTopicId(int topicId);
	
}
