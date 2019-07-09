/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : ssmm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-07-09 12:14:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for r_ssm_system_roleinfo
-- ----------------------------
DROP TABLE IF EXISTS `r_ssm_system_roleinfo`;
CREATE TABLE `r_ssm_system_roleinfo` (
  `role_id` int(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_ssm_system_roleinfo
-- ----------------------------
INSERT INTO `r_ssm_system_roleinfo` VALUES ('1', '关羽', '普通用户');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('2', '张飞', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('3', '陈子龙', '普通用户');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('4', '赵云', '管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('5', '刘备', '管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('21', '笑笑3', '普通用户');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('40', '韩信ff', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('58', ' 11', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('59', ' 22', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('60', ' 33', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('61', ' 44', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('62', ' 55', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('63', ' 66', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('67', ' 11', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('68', ' 22', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('69', ' 1122', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('70', ' sd', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('71', '中华', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('72', ' dff', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('73', ' fsdfsd', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('74', ' fdsgfgdf', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('75', ' sdfgdfg', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('77', ' hgfjgfh', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('78', ' gjghjgf', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('79', ' gfjdghddfg', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('80', ' fghfdghdf', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('81', ' uyru', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('82', ' ryurytu', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('83', ' iuyiyu', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('84', ' ryutryu', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('85', ' tyutyu', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('87', ' ddfsd', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('89', 'asdf', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('91', ' 吊死扶伤', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('98', ' 但是', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('99', ' 吊死扶伤', '超级管理员');
INSERT INTO `r_ssm_system_roleinfo` VALUES ('103', ' dvsdvs', '超级管理员');

-- ----------------------------
-- Table structure for t_ssm_system_module
-- ----------------------------
DROP TABLE IF EXISTS `t_ssm_system_module`;
CREATE TABLE `t_ssm_system_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_pid` int(11) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `is_leaf` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1可用  2不可用',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ssm_system_module
-- ----------------------------
INSERT INTO `t_ssm_system_module` VALUES ('1', null, '信息管理', null, 'icon fa  fa-address-card-o ', '1', '0', '1');
INSERT INTO `t_ssm_system_module` VALUES ('2', null, '流程管理', '', 'icon fa fa-superpowers', '1', '0', '1');
INSERT INTO `t_ssm_system_module` VALUES ('3', null, '财务管理', null, 'icon fa fa-university ', '1', '0', '1');
INSERT INTO `t_ssm_system_module` VALUES ('4', null, '我的工作台', null, 'icon fa  fa-window-maximize', '1', '0', '1');
INSERT INTO `t_ssm_system_module` VALUES ('5', null, '报表', null, 'icon fa fa-bar-chart ', '1', '0', '1');
INSERT INTO `t_ssm_system_module` VALUES ('6', null, '系统管理', null, 'icon fa fa-cog ', '1', '0', '1');
INSERT INTO `t_ssm_system_module` VALUES ('7', '6', '组织管理', null, 'fa fa-circle-thin ', '2', '1', '1');
INSERT INTO `t_ssm_system_module` VALUES ('8', '6', '用户管理', null, 'fa fa-circle-thin ', '2', '1', '1');
INSERT INTO `t_ssm_system_module` VALUES ('9', '6', '角色管理', null, 'fa fa-circle-thin ', '2', '1', '1');
INSERT INTO `t_ssm_system_module` VALUES ('10', '6', '下载中心', null, 'fa fa-circle-thin ', '2', '1', '1');
INSERT INTO `t_ssm_system_module` VALUES ('11', '6', '公告管理', null, 'fa fa-circle-thin ', '2', '1', '1');
INSERT INTO `t_ssm_system_module` VALUES ('12', '6', '通讯录', null, 'fa fa-circle-thin ', '2', '1', '1');
INSERT INTO `t_ssm_system_module` VALUES ('13', '6', '字典管理', null, 'fa fa-circle-thin ', '2', '1', '1');

-- ----------------------------
-- Table structure for t_ssm_system_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_ssm_system_userinfo`;
CREATE TABLE `t_ssm_system_userinfo` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `birth` varchar(30) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1可用  2不可用',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ssm_system_userinfo
-- ----------------------------
INSERT INTO `t_ssm_system_userinfo` VALUES ('1', 'chenzilong', null, '111111', null, null, null, null, null, null, '1');
INSERT INTO `t_ssm_system_userinfo` VALUES ('279', 'sdfsdfs', null, 'sdfs', null, null, null, null, null, null, '1');
INSERT INTO `t_ssm_system_userinfo` VALUES ('299', '111', null, '111', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('300', '222', null, '222', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('301', '4444', null, '4444', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('302', '5555', null, '5555', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('303', '1111', null, '1111', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('304', '2222', null, '2222', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('305', '3333', null, '33333', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('306', '555', null, '444', null, null, null, null, null, null, '1');
INSERT INTO `t_ssm_system_userinfo` VALUES ('307', '555', null, '555', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('308', '6666', null, '6666', null, null, null, null, null, null, '0');
INSERT INTO `t_ssm_system_userinfo` VALUES ('309', '7777', null, '7777', null, null, null, null, null, null, '1');
INSERT INTO `t_ssm_system_userinfo` VALUES ('310', 'xxxxxxxxx', null, 'xxxxxxxxxx', null, null, null, null, null, null, '1');
INSERT INTO `t_ssm_system_userinfo` VALUES ('311', 'aaaaaaaaaaaa', null, 'aaaaaaaaaaaaaaa', null, null, null, null, null, null, '1');
