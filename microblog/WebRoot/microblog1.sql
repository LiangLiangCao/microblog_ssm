/*
Navicat MySQL Data Transfer

Source Server         : MYSQL-ZX
Source Server Version : 50520
Source Host           : 127.0.0.1:3306
Source Database       : microblog1

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-12-19 21:59:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) NOT NULL AUTO_INCREMENT,
  `praise_topicId` int(10) NOT NULL,
  `praise_userId` int(10) NOT NULL,
  PRIMARY KEY (`praise_id`),
  KEY `fk_praise_user_id` (`praise_userId`),
  KEY `fk_praise_topic_id` (`praise_topicId`),
  CONSTRAINT `fk_praise_topic_id` FOREIGN KEY (`praise_topicId`) REFERENCES `topic` (`topic_id`),
  CONSTRAINT `fk_praise_user_id` FOREIGN KEY (`praise_userId`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(10) NOT NULL AUTO_INCREMENT,
  `topic_webtext` varchar(20) NOT NULL,
  `topic_userId` int(10) NOT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `topic_user_id` (`topic_userId`),
  CONSTRAINT `topic_user_id` FOREIGN KEY (`topic_userId`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;
