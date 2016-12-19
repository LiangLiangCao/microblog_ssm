package com.dao.mapper;

import java.util.List;

import com.entity.Topic;
import com.entity.User;

public interface TopicListSelectDao {
	
	List<Topic> selectTopicList();
	
	int getPraiseCount(int topicId);
	
	List<User> getPraiseName(int topicId);

}
