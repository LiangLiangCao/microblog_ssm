package com.entity;

import java.util.List;

public class Topic {
	
	private int topicId;
	private String topicWebtext;
	private int topicUserId;
	
	private User user;
	private int praiseCount;
	
	private List<User> userList;
	
	public List<User> getUserList() {
		return userList;
	}
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	public int getPraiseCount() {
		return praiseCount;
	}
	public void setPraiseCount(int praiseCount) {
		this.praiseCount = praiseCount;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	public String getTopicWebtext() {
		return topicWebtext;
	}
	public void setTopicWebtext(String topicWebtext) {
		this.topicWebtext = topicWebtext;
	}
	public int getTopicUserId() {
		return topicUserId;
	}
	public void setTopicUserId(int topicUserId) {
		this.topicUserId = topicUserId;
	}  
}
