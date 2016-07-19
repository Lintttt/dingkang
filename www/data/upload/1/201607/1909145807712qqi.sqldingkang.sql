/*
Navicat MySQL Data Transfer

Source Server         : admin_lin
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : dingkang

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-07-01 11:37:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dk_action
-- ----------------------------
DROP TABLE IF EXISTS `dk_action`;
CREATE TABLE `dk_action` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `objectType` varchar(30) NOT NULL DEFAULT '',
  `objectID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL,
  `project` mediumint(9) NOT NULL,
  `actor` varchar(30) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `comment` text NOT NULL,
  `extra` text NOT NULL,
  `read` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`objectID`,`product`,`project`,`action`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_action
-- ----------------------------
INSERT INTO `dk_action` VALUES ('1', 'user', '59', ',0,', '0', 'xiahaoqiang', 'logout', '2016-06-21 16:38:10', '', '', '0');
INSERT INTO `dk_action` VALUES ('2', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 16:38:31', '', '', '0');
INSERT INTO `dk_action` VALUES ('3', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-21 16:41:29', '', '', '0');
INSERT INTO `dk_action` VALUES ('4', 'user', '2', ',0,', '0', 'cxjun', 'login', '2016-06-21 16:41:37', '', '', '0');
INSERT INTO `dk_action` VALUES ('5', 'user', '2', ',0,', '0', 'cxjun', 'logout', '2016-06-21 16:41:41', '', '', '0');
INSERT INTO `dk_action` VALUES ('6', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 16:41:54', '', '', '0');
INSERT INTO `dk_action` VALUES ('7', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-21 16:44:15', '', '', '0');
INSERT INTO `dk_action` VALUES ('8', 'user', '2', ',0,', '0', 'cxjun', 'login', '2016-06-21 16:44:23', '', '', '0');
INSERT INTO `dk_action` VALUES ('9', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 16:58:41', '', '', '0');
INSERT INTO `dk_action` VALUES ('10', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-21 17:36:45', '', '', '0');
INSERT INTO `dk_action` VALUES ('11', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 17:36:47', '', '', '0');
INSERT INTO `dk_action` VALUES ('12', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-21 17:37:05', '', '', '0');
INSERT INTO `dk_action` VALUES ('13', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 17:37:07', '', '', '0');
INSERT INTO `dk_action` VALUES ('14', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-21 17:38:32', '', '', '0');
INSERT INTO `dk_action` VALUES ('15', 'user', '2', ',0,', '0', 'cxjun', 'login', '2016-06-21 17:38:42', '', '', '0');
INSERT INTO `dk_action` VALUES ('16', 'user', '2', ',0,', '0', 'cxjun', 'logout', '2016-06-21 17:38:50', '', '', '0');
INSERT INTO `dk_action` VALUES ('17', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 17:50:52', '', '', '0');
INSERT INTO `dk_action` VALUES ('18', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-21 17:51:20', '', '', '0');
INSERT INTO `dk_action` VALUES ('19', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 17:59:16', '', '', '0');
INSERT INTO `dk_action` VALUES ('20', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-21 17:59:23', '', '', '0');
INSERT INTO `dk_action` VALUES ('21', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-21 17:59:25', '', '', '0');
INSERT INTO `dk_action` VALUES ('22', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-22 10:03:02', '', '', '0');
INSERT INTO `dk_action` VALUES ('23', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-22 10:03:04', '', '', '0');
INSERT INTO `dk_action` VALUES ('24', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-22 14:43:48', '', '', '0');
INSERT INTO `dk_action` VALUES ('25', 'user', '2', ',0,', '0', 'cxjun', 'login', '2016-06-22 14:43:53', '', '', '0');
INSERT INTO `dk_action` VALUES ('26', 'user', '2', ',0,', '0', 'cxjun', 'logout', '2016-06-22 14:44:39', '', '', '0');
INSERT INTO `dk_action` VALUES ('27', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-22 14:44:41', '', '', '0');
INSERT INTO `dk_action` VALUES ('28', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-22 14:45:06', '', '', '0');
INSERT INTO `dk_action` VALUES ('29', 'user', '2', ',0,', '0', 'cxjun', 'login', '2016-06-22 14:45:11', '', '', '0');
INSERT INTO `dk_action` VALUES ('30', 'user', '2', ',0,', '0', 'cxjun', 'logout', '2016-06-22 14:45:32', '', '', '0');
INSERT INTO `dk_action` VALUES ('31', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-22 14:45:33', '', '', '0');
INSERT INTO `dk_action` VALUES ('32', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-22 15:17:14', '', '', '0');
INSERT INTO `dk_action` VALUES ('33', 'user', '3', ',0,', '0', 'test', 'login', '2016-06-22 15:17:19', '', '', '0');
INSERT INTO `dk_action` VALUES ('34', 'user', '3', ',0,', '0', 'test', 'logout', '2016-06-22 15:27:24', '', '', '0');
INSERT INTO `dk_action` VALUES ('35', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-22 15:27:27', '', '', '0');
INSERT INTO `dk_action` VALUES ('36', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-22 15:37:40', '', '', '0');
INSERT INTO `dk_action` VALUES ('37', 'user', '2', ',0,', '0', 'cxjun', 'login', '2016-06-22 15:37:46', '', '', '0');
INSERT INTO `dk_action` VALUES ('38', 'user', '2', ',0,', '0', 'cxjun', 'logout', '2016-06-22 15:43:15', '', '', '0');
INSERT INTO `dk_action` VALUES ('39', 'user', '2', ',0,', '0', 'cxjun', 'login', '2016-06-22 15:43:20', '', '', '0');
INSERT INTO `dk_action` VALUES ('40', 'user', '2', ',0,', '0', 'cxjun', 'logout', '2016-06-22 15:43:22', '', '', '0');
INSERT INTO `dk_action` VALUES ('41', 'user', '3', ',0,', '0', 'test', 'login', '2016-06-22 15:43:27', '', '', '0');
INSERT INTO `dk_action` VALUES ('42', 'user', '3', ',0,', '0', 'test', 'logout', '2016-06-22 15:43:32', '', '', '0');
INSERT INTO `dk_action` VALUES ('43', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-22 15:43:33', '', '', '0');
INSERT INTO `dk_action` VALUES ('44', 'user', '1', ',0,', '0', 'admin', 'logout', '2016-06-22 15:44:00', '', '', '0');
INSERT INTO `dk_action` VALUES ('45', 'user', '3', ',0,', '0', 'test', 'login', '2016-06-22 15:44:05', '', '', '0');
INSERT INTO `dk_action` VALUES ('46', 'user', '3', ',0,', '0', 'test', 'logout', '2016-06-22 15:56:59', '', '', '0');
INSERT INTO `dk_action` VALUES ('47', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-22 15:57:01', '', '', '0');
INSERT INTO `dk_action` VALUES ('48', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-28 17:45:24', '', '', '0');
INSERT INTO `dk_action` VALUES ('49', 'user', '1', ',0,', '0', 'admin', 'login', '2016-06-29 09:10:20', '', '', '0');

-- ----------------------------
-- Table structure for dk_block
-- ----------------------------
DROP TABLE IF EXISTS `dk_block`;
CREATE TABLE `dk_block` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `source` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `params` text NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `accountModuleOrder` (`account`,`module`,`order`),
  KEY `block` (`account`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_block
-- ----------------------------
INSERT INTO `dk_block` VALUES ('1', 'test', 'my', '最新动态', '', 'dynamic', '{}', '2', '6', '0');
INSERT INTO `dk_block` VALUES ('2', 'admin', 'my', '最新动态', '', 'dynamic', '', '2', '5', '0');

-- ----------------------------
-- Table structure for dk_branch
-- ----------------------------
DROP TABLE IF EXISTS `dk_branch`;
CREATE TABLE `dk_branch` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product` (`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_branch
-- ----------------------------

-- ----------------------------
-- Table structure for dk_bug
-- ----------------------------
DROP TABLE IF EXISTS `dk_bug`;
CREATE TABLE `dk_bug` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toTask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toStory` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `severity` tinyint(4) NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(30) NOT NULL DEFAULT '',
  `hardware` varchar(30) NOT NULL,
  `found` varchar(30) NOT NULL DEFAULT '',
  `steps` text NOT NULL,
  `status` enum('active','resolved','closed') NOT NULL DEFAULT 'active',
  `color` char(7) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `activatedCount` smallint(6) NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `openedBuild` varchar(255) NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `resolvedBy` varchar(30) NOT NULL DEFAULT '',
  `resolution` varchar(30) NOT NULL DEFAULT '',
  `resolvedBuild` varchar(30) NOT NULL DEFAULT '',
  `resolvedDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `duplicateBug` mediumint(8) unsigned NOT NULL,
  `linkBug` varchar(255) NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `caseVersion` smallint(6) NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL,
  `testtask` mediumint(8) unsigned NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bug` (`product`,`module`,`project`,`assignedTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_bug
-- ----------------------------

-- ----------------------------
-- Table structure for dk_build
-- ----------------------------
DROP TABLE IF EXISTS `dk_build`;
CREATE TABLE `dk_build` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(150) NOT NULL,
  `scmPath` char(255) NOT NULL,
  `filePath` char(255) NOT NULL,
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `builder` char(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`product`,`project`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_build
-- ----------------------------

-- ----------------------------
-- Table structure for dk_burn
-- ----------------------------
DROP TABLE IF EXISTS `dk_burn`;
CREATE TABLE `dk_burn` (
  `project` mediumint(8) unsigned NOT NULL,
  `date` date NOT NULL,
  `left` float NOT NULL,
  `consumed` float NOT NULL,
  PRIMARY KEY (`project`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_burn
-- ----------------------------

-- ----------------------------
-- Table structure for dk_case
-- ----------------------------
DROP TABLE IF EXISTS `dk_case`;
CREATE TABLE `dk_case` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(30) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `precondition` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `type` char(30) NOT NULL DEFAULT '1',
  `stage` varchar(255) NOT NULL,
  `howRun` varchar(30) NOT NULL,
  `scriptedBy` varchar(30) NOT NULL,
  `scriptedDate` date NOT NULL,
  `scriptStatus` varchar(30) NOT NULL,
  `scriptLocation` varchar(255) NOT NULL,
  `status` char(30) NOT NULL DEFAULT '1',
  `color` char(7) NOT NULL,
  `frequency` enum('1','2','3') NOT NULL DEFAULT '1',
  `order` tinyint(30) unsigned NOT NULL DEFAULT '0',
  `openedBy` char(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `lastEditedBy` char(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkCase` varchar(255) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`product`,`module`,`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_case
-- ----------------------------

-- ----------------------------
-- Table structure for dk_casestep
-- ----------------------------
DROP TABLE IF EXISTS `dk_casestep`;
CREATE TABLE `dk_casestep` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(3) unsigned NOT NULL DEFAULT '0',
  `desc` text NOT NULL,
  `expect` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `case` (`case`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_casestep
-- ----------------------------

-- ----------------------------
-- Table structure for dk_company
-- ----------------------------
DROP TABLE IF EXISTS `dk_company`;
CREATE TABLE `dk_company` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(120) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `fax` char(20) DEFAULT NULL,
  `address` char(120) DEFAULT NULL,
  `zipcode` char(10) DEFAULT NULL,
  `website` char(120) DEFAULT NULL,
  `backyard` char(120) DEFAULT NULL,
  `guest` enum('1','0') NOT NULL DEFAULT '0',
  `admins` char(255) DEFAULT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_company
-- ----------------------------
INSERT INTO `dk_company` VALUES ('1', '广州定康生物科技有限公司', '', '', '', '', 'http://www.genedenovo.com', '', '0', ',admin,', '0');

-- ----------------------------
-- Table structure for dk_config
-- ----------------------------
DROP TABLE IF EXISTS `dk_config`;
CREATE TABLE `dk_config` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `owner` char(30) NOT NULL DEFAULT '',
  `module` varchar(30) NOT NULL,
  `section` char(30) NOT NULL DEFAULT '',
  `key` char(30) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`owner`,`module`,`section`,`key`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_config
-- ----------------------------
INSERT INTO `dk_config` VALUES ('1', 'system', 'common', 'global', 'version', '8.2.2');
INSERT INTO `dk_config` VALUES ('2', 'system', 'common', 'global', 'flow', 'full');
INSERT INTO `dk_config` VALUES ('10', 'xiahaoqiang', 'common', 'global', 'novice', '');
INSERT INTO `dk_config` VALUES ('8', 'xiahaoqiang', 'tutorial', 'tasks', 'setting', 'createAccount,createProduct,createStory');
INSERT INTO `dk_config` VALUES ('46', 'admin', 'common', 'global', 'novice', '');
INSERT INTO `dk_config` VALUES ('12', 'admin', 'qa', '', 'homepage', 'index');
INSERT INTO `dk_config` VALUES ('39', 'cxjun', 'common', 'global', 'novice', '');
INSERT INTO `dk_config` VALUES ('35', 'cxjun', 'project', '', 'homepage', 'index');
INSERT INTO `dk_config` VALUES ('58', 'test', 'my', 'common', 'blockInited', '1');
INSERT INTO `dk_config` VALUES ('59', 'admin', 'my', 'common', 'blockInited', '1');
INSERT INTO `dk_config` VALUES ('47', 'system', 'common', 'global', 'community', 'na');
INSERT INTO `dk_config` VALUES ('56', 'system', 'common', 'global', 'sn', '0f14720fa64b71e5c0317c22500696e6');

-- ----------------------------
-- Table structure for dk_cron
-- ----------------------------
DROP TABLE IF EXISTS `dk_cron`;
CREATE TABLE `dk_cron` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(20) NOT NULL,
  `h` varchar(20) NOT NULL,
  `dom` varchar(20) NOT NULL,
  `mon` varchar(20) NOT NULL,
  `dow` varchar(20) NOT NULL,
  `command` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `buildin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL,
  `lastTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lastTime` (`lastTime`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_cron
-- ----------------------------
INSERT INTO `dk_cron` VALUES ('1', '*', '*', '*', '*', '*', '', '监控定时任务', 'zentao', '1', 'normal', '0000-00-00 00:00:00');
INSERT INTO `dk_cron` VALUES ('2', '30', '23', '*', '*', '*', 'moduleName=project&methodName=computeburn', '更新燃尽图', 'zentao', '1', 'normal', '0000-00-00 00:00:00');
INSERT INTO `dk_cron` VALUES ('3', '0', '1', '*', '*', '*', 'moduleName=report&methodName=remind', '每日任务提醒', 'zentao', '1', 'normal', '0000-00-00 00:00:00');
INSERT INTO `dk_cron` VALUES ('4', '*/5', '*', '*', '*', '*', 'moduleName=svn&methodName=run', '同步SVN', 'zentao', '1', 'stop', '0000-00-00 00:00:00');
INSERT INTO `dk_cron` VALUES ('5', '*/5', '*', '*', '*', '*', 'moduleName=git&methodName=run', '同步GIT', 'zentao', '1', 'stop', '0000-00-00 00:00:00');
INSERT INTO `dk_cron` VALUES ('6', '30', '0', '*', '*', '*', 'moduleName=backup&methodName=backup', '备份数据和附件', 'zentao', '1', 'normal', '0000-00-00 00:00:00');
INSERT INTO `dk_cron` VALUES ('7', '*/5', '*', '*', '*', '*', 'moduleName=mail&methodName=asyncSend', '异步发信', 'zentao', '1', 'normal', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for dk_customer
-- ----------------------------
DROP TABLE IF EXISTS `dk_customer`;
CREATE TABLE `dk_customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telphone` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `potential_business` varchar(100) DEFAULT NULL,
  `zone` varchar(100) DEFAULT NULL,
  `saler` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_customer
-- ----------------------------
INSERT INTO `dk_customer` VALUES ('1', 'LinTing', '男', '22', '1', '广州大学城', '154564132156', '45525487@qq.com', '1', '1', '1111', '广州', '1');
INSERT INTO `dk_customer` VALUES ('4', '啥的开发', '男', '4', '4', '4', '阿萨德', '4', ' 按时', '4', '4', '4', '4');
INSERT INTO `dk_customer` VALUES ('3130', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3132', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3136', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3138', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3139', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3141', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3146', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3147', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3148', '6', '男', '6', '6', '666666', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3149', '6', '男', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3157', '6', '女', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3171', '8', '男', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `dk_customer` VALUES ('3174', '8', '男', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `dk_customer` VALUES ('3176', '8', '男', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `dk_customer` VALUES ('3180', '8', '男', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `dk_customer` VALUES ('3183', '8', '男', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `dk_customer` VALUES ('3184', '8', '男', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `dk_customer` VALUES ('3185', '8', '男', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8');
INSERT INTO `dk_customer` VALUES ('3194', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3195', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3196', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3197', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3198', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3199', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3200', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3201', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3202', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3203', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3204', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3205', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3206', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3207', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3208', '9', '男', '9', '9', '99', '9', '9', '9', '9', '9', '99', '9');
INSERT INTO `dk_customer` VALUES ('3214', '8', '男', '8', '88', '8', '8', '88', '8', '88', '8', '88', '8');
INSERT INTO `dk_customer` VALUES ('3215', '5', '男', '55', '5', '55', '5', '55', '5', '55', '5', '5', '55');
INSERT INTO `dk_customer` VALUES ('3216', '6', '男', '6', '66', '6', '66', '6', '6', '66', '6', '6', '6');
INSERT INTO `dk_customer` VALUES ('3218', '6', '男', '66', '6', '6', '66', '6', '6', '66', '66', '6', '6');
INSERT INTO `dk_customer` VALUES ('3219', '4', '男', '4', '4', '44', '4', '4', '4', '4', '4', '4', '4');
INSERT INTO `dk_customer` VALUES ('3220', '7', '男', '77', '7', '7', '7', '7', '7', '7', '7', '7', '7');

-- ----------------------------
-- Table structure for dk_dept
-- ----------------------------
DROP TABLE IF EXISTS `dk_dept`;
CREATE TABLE `dk_dept` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `position` char(30) NOT NULL DEFAULT '',
  `function` char(255) NOT NULL DEFAULT '',
  `manager` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dept` (`parent`,`path`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_dept
-- ----------------------------
INSERT INTO `dk_dept` VALUES ('1', '市场部', '0', ',1,', '1', '10', '', '', 'admin');

-- ----------------------------
-- Table structure for dk_doc
-- ----------------------------
DROP TABLE IF EXISTS `dk_doc`;
CREATE TABLE `dk_doc` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL,
  `lib` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `views` smallint(5) unsigned NOT NULL,
  `addedBy` varchar(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `editedBy` varchar(30) NOT NULL,
  `editedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `doc` (`product`,`project`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_doc
-- ----------------------------

-- ----------------------------
-- Table structure for dk_doclib
-- ----------------------------
DROP TABLE IF EXISTS `dk_doclib`;
CREATE TABLE `dk_doclib` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_doclib
-- ----------------------------

-- ----------------------------
-- Table structure for dk_effort
-- ----------------------------
DROP TABLE IF EXISTS `dk_effort`;
CREATE TABLE `dk_effort` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user` char(30) NOT NULL DEFAULT '',
  `todo` enum('1','0') NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `begin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` enum('1','2','3') NOT NULL DEFAULT '1',
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_effort
-- ----------------------------

-- ----------------------------
-- Table structure for dk_express
-- ----------------------------
DROP TABLE IF EXISTS `dk_express`;
CREATE TABLE `dk_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expressNum` varchar(50) NOT NULL,
  `to_address` varchar(150) DEFAULT NULL,
  `sampleAmount` varchar(100) DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  `receiver` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telphone` varchar(30) DEFAULT NULL,
  `is_received` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_express
-- ----------------------------

-- ----------------------------
-- Table structure for dk_extension
-- ----------------------------
DROP TABLE IF EXISTS `dk_extension`;
CREATE TABLE `dk_extension` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `code` varchar(30) NOT NULL,
  `version` varchar(50) NOT NULL,
  `author` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `license` text NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'extension',
  `site` varchar(150) NOT NULL,
  `zentaoCompatible` varchar(100) NOT NULL,
  `installedTime` datetime NOT NULL,
  `depends` varchar(100) NOT NULL,
  `dirs` text NOT NULL,
  `files` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `extension` (`name`,`installedTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_extension
-- ----------------------------

-- ----------------------------
-- Table structure for dk_extract
-- ----------------------------
DROP TABLE IF EXISTS `dk_extract`;
CREATE TABLE `dk_extract` (
  `extractID` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` int(11) NOT NULL,
  `pj_id` int(11) NOT NULL,
  `extractType` varchar(100) DEFAULT NULL,
  `sampleAmount` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `trial_times` int(4) DEFAULT NULL,
  `seqType` varchar(50) DEFAULT NULL,
  `startTime` date DEFAULT NULL,
  `endTime` date DEFAULT NULL,
  `special_situation` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `saler` int(11) DEFAULT NULL,
  `detect_report` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`extractID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_extract
-- ----------------------------

-- ----------------------------
-- Table structure for dk_file
-- ----------------------------
DROP TABLE IF EXISTS `dk_file`;
CREATE TABLE `dk_file` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pathname` char(50) NOT NULL,
  `title` char(90) NOT NULL,
  `extension` char(30) NOT NULL,
  `size` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `objectType` char(30) NOT NULL,
  `objectID` mediumint(9) NOT NULL,
  `addedBy` char(30) NOT NULL DEFAULT '',
  `addedDate` datetime NOT NULL,
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extra` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `file` (`objectType`,`objectID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_file
-- ----------------------------

-- ----------------------------
-- Table structure for dk_group
-- ----------------------------
DROP TABLE IF EXISTS `dk_group`;
CREATE TABLE `dk_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `role` char(30) NOT NULL DEFAULT '',
  `desc` char(255) NOT NULL DEFAULT '',
  `acl` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_group
-- ----------------------------
INSERT INTO `dk_group` VALUES ('1', '管理员', 'admin', '系统管理员', '');
INSERT INTO `dk_group` VALUES ('2', '研发', 'dev', '研发人员', '');
INSERT INTO `dk_group` VALUES ('3', '测试', 'qa', '测试人员', '');
INSERT INTO `dk_group` VALUES ('4', '项目经理', 'pm', '项目经理', '');
INSERT INTO `dk_group` VALUES ('5', '产品经理', 'po', '产品经理', '');
INSERT INTO `dk_group` VALUES ('6', '研发主管', 'td', '研发主管', '');
INSERT INTO `dk_group` VALUES ('7', '产品主管', 'pd', '产品主管', '');
INSERT INTO `dk_group` VALUES ('8', '测试主管', 'qd', '测试主管', '');
INSERT INTO `dk_group` VALUES ('9', '高层管理', 'top', '高层管理', '');
INSERT INTO `dk_group` VALUES ('10', '其他', '', '其他', '');
INSERT INTO `dk_group` VALUES ('11', 'guest', 'guest', 'For guest', '');

-- ----------------------------
-- Table structure for dk_grouppriv
-- ----------------------------
DROP TABLE IF EXISTS `dk_grouppriv`;
CREATE TABLE `dk_grouppriv` (
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` char(30) NOT NULL DEFAULT '',
  `method` char(30) NOT NULL DEFAULT '',
  UNIQUE KEY `group` (`group`,`module`,`method`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_grouppriv
-- ----------------------------
INSERT INTO `dk_grouppriv` VALUES ('1', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('1', 'action', 'hideAll');
INSERT INTO `dk_grouppriv` VALUES ('1', 'action', 'hideOne');
INSERT INTO `dk_grouppriv` VALUES ('1', 'action', 'trash');
INSERT INTO `dk_grouppriv` VALUES ('1', 'action', 'undelete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'admin', 'checkDB');
INSERT INTO `dk_grouppriv` VALUES ('1', 'admin', 'checkWeak');
INSERT INTO `dk_grouppriv` VALUES ('1', 'admin', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'admin', 'safe');
INSERT INTO `dk_grouppriv` VALUES ('1', 'api', 'debug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('1', 'api', 'sql');
INSERT INTO `dk_grouppriv` VALUES ('1', 'backup', 'backup');
INSERT INTO `dk_grouppriv` VALUES ('1', 'backup', 'change');
INSERT INTO `dk_grouppriv` VALUES ('1', 'backup', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'backup', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'backup', 'restore');
INSERT INTO `dk_grouppriv` VALUES ('1', 'branch', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'branch', 'manage');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('1', 'company', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'checkBugFree');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'checkConfig');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'checkRedmine');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'convertBugFree');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'convertRedmine');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'execute');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'selectSource');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'setBugfree');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'setConfig');
INSERT INTO `dk_grouppriv` VALUES ('1', 'convert', 'setRedmine');
INSERT INTO `dk_grouppriv` VALUES ('1', 'cron', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'cron', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'cron', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'cron', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'cron', 'toggle');
INSERT INTO `dk_grouppriv` VALUES ('1', 'cron', 'turnon');
INSERT INTO `dk_grouppriv` VALUES ('1', 'custom', 'flow');
INSERT INTO `dk_grouppriv` VALUES ('1', 'custom', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'custom', 'restore');
INSERT INTO `dk_grouppriv` VALUES ('1', 'custom', 'set');
INSERT INTO `dk_grouppriv` VALUES ('1', 'dept', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'dept', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'dept', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'dept', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('1', 'dept', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('1', 'dev', 'api');
INSERT INTO `dk_grouppriv` VALUES ('1', 'dev', 'db');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'createLib');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'deleteLib');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'editLib');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'editor', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'editor', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'editor', 'extend');
INSERT INTO `dk_grouppriv` VALUES ('1', 'editor', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'editor', 'newPage');
INSERT INTO `dk_grouppriv` VALUES ('1', 'editor', 'save');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'deactivate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'erase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'install');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'obtain');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'structure');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'uninstall');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'upgrade');
INSERT INTO `dk_grouppriv` VALUES ('1', 'extension', 'upload');
INSERT INTO `dk_grouppriv` VALUES ('1', 'file', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('1', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'file', 'uploadImages');
INSERT INTO `dk_grouppriv` VALUES ('1', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('1', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('1', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'copy');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'manageMember');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'managePriv');
INSERT INTO `dk_grouppriv` VALUES ('1', 'group', 'manageView');
INSERT INTO `dk_grouppriv` VALUES ('1', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'batchDelete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'detect');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'reset');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'save');
INSERT INTO `dk_grouppriv` VALUES ('1', 'mail', 'test');
INSERT INTO `dk_grouppriv` VALUES ('1', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('1', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'close');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'order');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('1', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'batchedit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'close');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'computeBurn');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'importBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'importtask');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'manageMembers');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'manageProducts');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'order');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'putoff');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'start');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'suspend');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'unlinkMember');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('1', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'changeStatus');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('1', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('1', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('1', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('1', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('1', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('1', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('1', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('1', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchChangeBranch');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchChangePlan');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchChangeStage');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'batchReview');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'change');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'close');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'review');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('1', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('1', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'cancel');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'close');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'pause');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'restart');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'start');
INSERT INTO `dk_grouppriv` VALUES ('1', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'batchDelete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'confirmChange');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'createBug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'exportTemplet');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'import');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'linkCases');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'showImport');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'unlinkCase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'batchAssign');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'batchRun');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'close');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'linkcase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'runcase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'start');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'unlinkcase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('1', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('1', 'tree', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('1', 'tree', 'browseTask');
INSERT INTO `dk_grouppriv` VALUES ('1', 'tree', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'tree', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'tree', 'fix');
INSERT INTO `dk_grouppriv` VALUES ('1', 'tree', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('1', 'tree', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'create');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'unlock');
INSERT INTO `dk_grouppriv` VALUES ('1', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('2', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('2', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'build', 'create');
INSERT INTO `dk_grouppriv` VALUES ('2', 'build', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('2', 'build', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('2', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('2', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('2', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('2', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('2', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('2', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('2', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('2', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'computeBurn');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'importBug');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'importtask');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('2', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('2', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('2', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('2', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('2', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('2', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('2', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('2', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('2', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('2', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('2', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('2', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('2', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('2', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('2', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('2', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'cancel');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'close');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'create');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'pause');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'restart');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'start');
INSERT INTO `dk_grouppriv` VALUES ('2', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'create');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('2', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('2', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('2', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('3', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('3', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'build', 'create');
INSERT INTO `dk_grouppriv` VALUES ('3', 'build', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('3', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('3', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('3', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('3', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('3', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('3', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('3', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('3', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'computeBurn');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'importBug');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'importtask');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('3', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('3', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('3', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('3', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('3', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('3', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('3', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('3', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('3', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('3', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('3', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('3', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('3', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('3', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('3', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('3', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'cancel');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'close');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'create');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'pause');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'restart');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'start');
INSERT INTO `dk_grouppriv` VALUES ('3', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'confirmChange');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'create');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'createBug');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'exportTemplet');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'import');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'linkCases');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'showImport');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'unlinkCase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'batchAssign');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'batchRun');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'close');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'create');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'linkcase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'runcase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'start');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'unlinkcase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('3', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('3', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('4', 'action', 'hideAll');
INSERT INTO `dk_grouppriv` VALUES ('4', 'action', 'hideOne');
INSERT INTO `dk_grouppriv` VALUES ('4', 'action', 'trash');
INSERT INTO `dk_grouppriv` VALUES ('4', 'action', 'undelete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'admin', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'create');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('4', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('4', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'createLib');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'deleteLib');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'editLib');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'extension', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'extension', 'obtain');
INSERT INTO `dk_grouppriv` VALUES ('4', 'extension', 'structure');
INSERT INTO `dk_grouppriv` VALUES ('4', 'file', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('4', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'file', 'uploadImages');
INSERT INTO `dk_grouppriv` VALUES ('4', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('4', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('4', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('4', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('4', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('4', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'batchedit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'close');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'computeBurn');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'create');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'importBug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'importtask');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'manageMembers');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'manageProducts');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'order');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'putoff');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'start');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'suspend');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'unlinkMember');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('4', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('4', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('4', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('4', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('4', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('4', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('4', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('4', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('4', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('4', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('4', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('4', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('4', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('4', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('4', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('4', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('4', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'cancel');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'close');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'create');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'pause');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'restart');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'start');
INSERT INTO `dk_grouppriv` VALUES ('4', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testcase', 'createBug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'batchAssign');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'create');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('4', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('4', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('4', 'tree', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('4', 'tree', 'browseTask');
INSERT INTO `dk_grouppriv` VALUES ('4', 'tree', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('4', 'tree', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('4', 'tree', 'fix');
INSERT INTO `dk_grouppriv` VALUES ('4', 'tree', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('4', 'tree', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('4', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('5', 'action', 'hideAll');
INSERT INTO `dk_grouppriv` VALUES ('5', 'action', 'hideOne');
INSERT INTO `dk_grouppriv` VALUES ('5', 'action', 'trash');
INSERT INTO `dk_grouppriv` VALUES ('5', 'action', 'undelete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'admin', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('5', 'branch', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'branch', 'manage');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('5', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'createLib');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'deleteLib');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'editLib');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'extension', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'extension', 'obtain');
INSERT INTO `dk_grouppriv` VALUES ('5', 'extension', 'structure');
INSERT INTO `dk_grouppriv` VALUES ('5', 'file', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('5', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'file', 'uploadImages');
INSERT INTO `dk_grouppriv` VALUES ('5', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('5', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('5', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('5', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('5', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'close');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'order');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('5', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'batchedit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'close');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'computeBurn');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'importBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'importtask');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'manageMembers');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'manageProducts');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'order');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'putoff');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'start');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'suspend');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'unlinkMember');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('5', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'changeStatus');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('5', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('5', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('5', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('5', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('5', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('5', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('5', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('5', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchChangeBranch');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchChangePlan');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchChangeStage');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'batchReview');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'change');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'close');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'review');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('5', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('5', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('5', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('5', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('5', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('5', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('5', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testcase', 'createBug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('5', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('5', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('5', 'tree', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('5', 'tree', 'browseTask');
INSERT INTO `dk_grouppriv` VALUES ('5', 'tree', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('5', 'tree', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('5', 'tree', 'fix');
INSERT INTO `dk_grouppriv` VALUES ('5', 'tree', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('5', 'tree', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('5', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('6', 'action', 'hideAll');
INSERT INTO `dk_grouppriv` VALUES ('6', 'action', 'hideOne');
INSERT INTO `dk_grouppriv` VALUES ('6', 'action', 'trash');
INSERT INTO `dk_grouppriv` VALUES ('6', 'action', 'undelete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'admin', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'create');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('6', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('6', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'createLib');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'deleteLib');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'editLib');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'extension', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'extension', 'obtain');
INSERT INTO `dk_grouppriv` VALUES ('6', 'extension', 'structure');
INSERT INTO `dk_grouppriv` VALUES ('6', 'file', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('6', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'file', 'uploadImages');
INSERT INTO `dk_grouppriv` VALUES ('6', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('6', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('6', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('6', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('6', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('6', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'batchedit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'close');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'computeBurn');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'create');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'importBug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'importtask');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'manageMembers');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'manageProducts');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'order');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'putoff');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'start');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'suspend');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'unlinkMember');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('6', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('6', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('6', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('6', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('6', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('6', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('6', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('6', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('6', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('6', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('6', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('6', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('6', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('6', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('6', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('6', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('6', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'cancel');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'close');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'create');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'pause');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'restart');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'start');
INSERT INTO `dk_grouppriv` VALUES ('6', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'create');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('6', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('6', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('6', 'tree', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('6', 'tree', 'browseTask');
INSERT INTO `dk_grouppriv` VALUES ('6', 'tree', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('6', 'tree', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('6', 'tree', 'fix');
INSERT INTO `dk_grouppriv` VALUES ('6', 'tree', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('6', 'tree', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('6', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('7', 'action', 'hideAll');
INSERT INTO `dk_grouppriv` VALUES ('7', 'action', 'hideOne');
INSERT INTO `dk_grouppriv` VALUES ('7', 'action', 'trash');
INSERT INTO `dk_grouppriv` VALUES ('7', 'action', 'undelete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'admin', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('7', 'branch', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'branch', 'manage');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('7', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'createLib');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'deleteLib');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'editLib');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'extension', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'extension', 'obtain');
INSERT INTO `dk_grouppriv` VALUES ('7', 'extension', 'structure');
INSERT INTO `dk_grouppriv` VALUES ('7', 'file', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('7', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'file', 'uploadImages');
INSERT INTO `dk_grouppriv` VALUES ('7', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('7', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('7', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('7', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('7', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'close');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'create');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'order');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('7', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'create');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'manageProducts');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'batchUnlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'batchUnlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'changeStatus');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'create');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'linkBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('7', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('7', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('7', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('7', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('7', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('7', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('7', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('7', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchChangeBranch');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchChangePlan');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchChangeStage');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'batchReview');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'change');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'close');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'create');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'linkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'review');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'unlinkStory');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('7', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('7', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('7', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('7', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('7', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('7', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('7', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testcase', 'createBug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('7', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('7', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('7', 'tree', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('7', 'tree', 'browseTask');
INSERT INTO `dk_grouppriv` VALUES ('7', 'tree', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('7', 'tree', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('7', 'tree', 'fix');
INSERT INTO `dk_grouppriv` VALUES ('7', 'tree', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('7', 'tree', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('7', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('8', 'action', 'hideAll');
INSERT INTO `dk_grouppriv` VALUES ('8', 'action', 'hideOne');
INSERT INTO `dk_grouppriv` VALUES ('8', 'action', 'trash');
INSERT INTO `dk_grouppriv` VALUES ('8', 'action', 'undelete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'admin', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'batchConfirm');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'batchResolve');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'confirmBug');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'deleteTemplate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'resolve');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'saveTemplate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('8', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'build', 'create');
INSERT INTO `dk_grouppriv` VALUES ('8', 'build', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'build', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('8', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'createLib');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'deleteLib');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'editLib');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'extension', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'extension', 'obtain');
INSERT INTO `dk_grouppriv` VALUES ('8', 'extension', 'structure');
INSERT INTO `dk_grouppriv` VALUES ('8', 'file', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('8', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'file', 'uploadImages');
INSERT INTO `dk_grouppriv` VALUES ('8', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('8', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('8', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('8', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('8', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('8', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'importBug');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'importtask');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('8', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('8', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('8', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('8', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('8', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('8', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('8', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('8', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('8', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('8', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('8', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('8', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('8', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('8', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('8', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('8', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'assignTo');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'batchAssignTo');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'batchClose');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'cancel');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'close');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'create');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'pause');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'restart');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'start');
INSERT INTO `dk_grouppriv` VALUES ('8', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'batchDelete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'confirmChange');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'confirmStoryChange');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'create');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'createBug');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'exportTemplet');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'import');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'linkCases');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'showImport');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'unlinkCase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'batchAssign');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'batchRun');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'close');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'create');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'linkcase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'runcase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'start');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'unlinkcase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('8', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('8', 'tree', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('8', 'tree', 'browseTask');
INSERT INTO `dk_grouppriv` VALUES ('8', 'tree', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('8', 'tree', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('8', 'tree', 'fix');
INSERT INTO `dk_grouppriv` VALUES ('8', 'tree', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('8', 'tree', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('8', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('9', 'action', 'hideAll');
INSERT INTO `dk_grouppriv` VALUES ('9', 'action', 'hideOne');
INSERT INTO `dk_grouppriv` VALUES ('9', 'action', 'trash');
INSERT INTO `dk_grouppriv` VALUES ('9', 'action', 'undelete');
INSERT INTO `dk_grouppriv` VALUES ('9', 'admin', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('9', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'bug', 'export');
INSERT INTO `dk_grouppriv` VALUES ('9', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('9', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('9', 'company', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('9', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'dept', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'dept', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('9', 'dept', 'manageChild');
INSERT INTO `dk_grouppriv` VALUES ('9', 'dept', 'updateOrder');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'create');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'createLib');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'deleteLib');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'editLib');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'extension', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'extension', 'obtain');
INSERT INTO `dk_grouppriv` VALUES ('9', 'extension', 'structure');
INSERT INTO `dk_grouppriv` VALUES ('9', 'file', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('9', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('9', 'file', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('9', 'file', 'uploadImages');
INSERT INTO `dk_grouppriv` VALUES ('9', 'git', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('9', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('9', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('9', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'project');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'story');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('9', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'project');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('9', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'burnData');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'computeBurn');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('9', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'release', 'export');
INSERT INTO `dk_grouppriv` VALUES ('9', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('9', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('9', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('9', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('9', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('9', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('9', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('9', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('9', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('9', 'search', 'select');
INSERT INTO `dk_grouppriv` VALUES ('9', 'story', 'export');
INSERT INTO `dk_grouppriv` VALUES ('9', 'story', 'report');
INSERT INTO `dk_grouppriv` VALUES ('9', 'story', 'review');
INSERT INTO `dk_grouppriv` VALUES ('9', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('9', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'story', 'zeroCase');
INSERT INTO `dk_grouppriv` VALUES ('9', 'svn', 'apiSync');
INSERT INTO `dk_grouppriv` VALUES ('9', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('9', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('9', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('9', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('9', 'task', 'export');
INSERT INTO `dk_grouppriv` VALUES ('9', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('9', 'task', 'report');
INSERT INTO `dk_grouppriv` VALUES ('9', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testcase', 'export');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('9', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('9', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'create');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'deleteContacts');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'manageContacts');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'unlock');
INSERT INTO `dk_grouppriv` VALUES ('9', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'action', 'editComment');
INSERT INTO `dk_grouppriv` VALUES ('10', 'api', 'getModel');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'activate');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'batchChangeModule');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'close');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'create');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'linkBugs');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'unlinkBug');
INSERT INTO `dk_grouppriv` VALUES ('10', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('10', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('10', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('10', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('10', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'changePassword');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'editProfile');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'task');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('10', 'my', 'unbind');
INSERT INTO `dk_grouppriv` VALUES ('10', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('10', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('10', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('10', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('10', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('10', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('10', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('10', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('10', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('10', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('10', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('10', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('10', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('10', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('10', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('10', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('10', 'search', 'deleteQuery');
INSERT INTO `dk_grouppriv` VALUES ('10', 'search', 'saveQuery');
INSERT INTO `dk_grouppriv` VALUES ('10', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('10', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'task', 'deleteEstimate');
INSERT INTO `dk_grouppriv` VALUES ('10', 'task', 'editEstimate');
INSERT INTO `dk_grouppriv` VALUES ('10', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('10', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'batchCreate');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'batchEdit');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'batchFinish');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'create');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'delete');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'edit');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'export');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'finish');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'import2Today');
INSERT INTO `dk_grouppriv` VALUES ('10', 'todo', 'view');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('10', 'user', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'bug', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'bug', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'bug', 'report');
INSERT INTO `dk_grouppriv` VALUES ('11', 'bug', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'build', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'company', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'company', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('11', 'company', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'company', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'doc', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'doc', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'doc', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'file', 'download');
INSERT INTO `dk_grouppriv` VALUES ('11', 'git', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('11', 'git', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('11', 'group', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'index', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'misc', 'ping');
INSERT INTO `dk_grouppriv` VALUES ('11', 'my', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'product', 'all');
INSERT INTO `dk_grouppriv` VALUES ('11', 'product', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'product', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('11', 'product', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('11', 'product', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'product', 'roadmap');
INSERT INTO `dk_grouppriv` VALUES ('11', 'product', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'productplan', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'productplan', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'all');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'build');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'burn');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'doc');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'grouptask');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'kanban');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'story');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'task');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'team');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'testtask');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'tree');
INSERT INTO `dk_grouppriv` VALUES ('11', 'project', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'qa', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'release', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'release', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'report', 'bugAssign');
INSERT INTO `dk_grouppriv` VALUES ('11', 'report', 'bugCreate');
INSERT INTO `dk_grouppriv` VALUES ('11', 'report', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'report', 'productSummary');
INSERT INTO `dk_grouppriv` VALUES ('11', 'report', 'projectDeviation');
INSERT INTO `dk_grouppriv` VALUES ('11', 'report', 'workload');
INSERT INTO `dk_grouppriv` VALUES ('11', 'search', 'buildForm');
INSERT INTO `dk_grouppriv` VALUES ('11', 'search', 'buildQuery');
INSERT INTO `dk_grouppriv` VALUES ('11', 'story', 'tasks');
INSERT INTO `dk_grouppriv` VALUES ('11', 'story', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'svn', 'cat');
INSERT INTO `dk_grouppriv` VALUES ('11', 'svn', 'diff');
INSERT INTO `dk_grouppriv` VALUES ('11', 'task', 'recordEstimate');
INSERT INTO `dk_grouppriv` VALUES ('11', 'task', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testcase', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testcase', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testcase', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testcase', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testtask', 'browse');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testtask', 'cases');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testtask', 'groupCase');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testtask', 'index');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testtask', 'results');
INSERT INTO `dk_grouppriv` VALUES ('11', 'testtask', 'view');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'bug');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'dynamic');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'profile');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'project');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'story');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'task');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'testCase');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'testTask');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'todo');
INSERT INTO `dk_grouppriv` VALUES ('11', 'user', 'view');

-- ----------------------------
-- Table structure for dk_history
-- ----------------------------
DROP TABLE IF EXISTS `dk_history`;
CREATE TABLE `dk_history` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field` varchar(30) NOT NULL DEFAULT '',
  `old` text NOT NULL,
  `new` text NOT NULL,
  `diff` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_history
-- ----------------------------

-- ----------------------------
-- Table structure for dk_lang
-- ----------------------------
DROP TABLE IF EXISTS `dk_lang`;
CREATE TABLE `dk_lang` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `section` varchar(30) NOT NULL,
  `key` varchar(60) NOT NULL,
  `value` text NOT NULL,
  `system` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang` (`lang`,`module`,`section`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_lang
-- ----------------------------

-- ----------------------------
-- Table structure for dk_mailqueue
-- ----------------------------
DROP TABLE IF EXISTS `dk_mailqueue`;
CREATE TABLE `dk_mailqueue` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `toList` varchar(255) NOT NULL,
  `ccList` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `addedBy` char(30) NOT NULL,
  `addedDate` datetime NOT NULL,
  `sendTime` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'wait',
  `failReason` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sendTime` (`sendTime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_mailqueue
-- ----------------------------

-- ----------------------------
-- Table structure for dk_module
-- ----------------------------
DROP TABLE IF EXISTS `dk_module`;
CREATE TABLE `dk_module` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(60) NOT NULL DEFAULT '',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path` char(255) NOT NULL DEFAULT '',
  `grade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `short` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`root`,`type`,`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_module
-- ----------------------------

-- ----------------------------
-- Table structure for dk_product
-- ----------------------------
DROP TABLE IF EXISTS `dk_product`;
CREATE TABLE `dk_product` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `code` varchar(45) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'normal',
  `status` varchar(30) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `PO` varchar(30) NOT NULL,
  `QD` varchar(30) NOT NULL,
  `RD` varchar(30) NOT NULL,
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `createdBy` varchar(30) NOT NULL,
  `createdDate` datetime NOT NULL,
  `createdVersion` varchar(20) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order` (`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_product
-- ----------------------------

-- ----------------------------
-- Table structure for dk_productplan
-- ----------------------------
DROP TABLE IF EXISTS `dk_productplan`;
CREATE TABLE `dk_productplan` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `title` varchar(90) NOT NULL,
  `desc` text NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `plan` (`product`,`end`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_productplan
-- ----------------------------

-- ----------------------------
-- Table structure for dk_project
-- ----------------------------
DROP TABLE IF EXISTS `dk_project`;
CREATE TABLE `dk_project` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `isCat` enum('1','0') NOT NULL DEFAULT '0',
  `catID` mediumint(8) unsigned NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'sprint',
  `parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(90) NOT NULL,
  `code` varchar(45) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `days` smallint(5) unsigned NOT NULL,
  `status` varchar(10) NOT NULL,
  `statge` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `pri` enum('1','2','3','4') NOT NULL DEFAULT '1',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `openedVersion` varchar(20) NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` int(10) unsigned NOT NULL DEFAULT '0',
  `canceledBy` varchar(30) NOT NULL DEFAULT '',
  `canceledDate` int(10) unsigned NOT NULL DEFAULT '0',
  `PO` varchar(30) NOT NULL DEFAULT '',
  `PM` varchar(30) NOT NULL DEFAULT '',
  `QD` varchar(30) NOT NULL DEFAULT '',
  `RD` varchar(30) NOT NULL DEFAULT '',
  `team` varchar(30) NOT NULL,
  `acl` enum('open','private','custom') NOT NULL DEFAULT 'open',
  `whitelist` varchar(255) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project` (`parent`,`begin`,`end`,`status`,`order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_project
-- ----------------------------

-- ----------------------------
-- Table structure for dk_projectinfo
-- ----------------------------
DROP TABLE IF EXISTS `dk_projectinfo`;
CREATE TABLE `dk_projectinfo` (
  `projectID` int(11) NOT NULL AUTO_INCREMENT,
  `pj_number` varchar(50) DEFAULT NULL,
  `pj_name` varchar(100) NOT NULL,
  `customer` int(11) DEFAULT NULL,
  `saler` int(11) DEFAULT NULL,
  `support` int(11) DEFAULT NULL,
  `contract_file` varchar(150) DEFAULT NULL,
  `sign_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sampleAmount` varchar(100) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`projectID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_projectinfo
-- ----------------------------
INSERT INTO `dk_projectinfo` VALUES ('1', '1', '1', '11', '1', '1', '11', '0000-00-00', '0000-00-00', '1', '1', '1');

-- ----------------------------
-- Table structure for dk_projectproduct
-- ----------------------------
DROP TABLE IF EXISTS `dk_projectproduct`;
CREATE TABLE `dk_projectproduct` (
  `project` mediumint(8) unsigned NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`project`,`product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_projectproduct
-- ----------------------------

-- ----------------------------
-- Table structure for dk_projectstory
-- ----------------------------
DROP TABLE IF EXISTS `dk_projectstory`;
CREATE TABLE `dk_projectstory` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product` mediumint(8) unsigned NOT NULL,
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` smallint(6) NOT NULL DEFAULT '1',
  UNIQUE KEY `project` (`project`,`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_projectstory
-- ----------------------------

-- ----------------------------
-- Table structure for dk_release
-- ----------------------------
DROP TABLE IF EXISTS `dk_release`;
CREATE TABLE `dk_release` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` mediumint(8) unsigned NOT NULL,
  `name` char(30) NOT NULL DEFAULT '',
  `date` date NOT NULL,
  `stories` text NOT NULL,
  `bugs` text NOT NULL,
  `leftBugs` text NOT NULL,
  `desc` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'normal',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_release
-- ----------------------------

-- ----------------------------
-- Table structure for dk_report
-- ----------------------------
DROP TABLE IF EXISTS `dk_report`;
CREATE TABLE `dk_report` (
  `reportID` int(11) NOT NULL AUTO_INCREMENT,
  `deboard_time` date NOT NULL,
  `is_print` tinyint(1) DEFAULT NULL,
  `sp_id` int(11) NOT NULL,
  `data_receiver` varchar(20) DEFAULT NULL,
  `print_plateform` varchar(100) DEFAULT NULL,
  `print_process` varchar(100) DEFAULT NULL,
  `expressNum` varchar(50) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_report
-- ----------------------------

-- ----------------------------
-- Table structure for dk_sample
-- ----------------------------
DROP TABLE IF EXISTS `dk_sample`;
CREATE TABLE `dk_sample` (
  `sp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pj_id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `batch` int(4) DEFAULT NULL,
  `get_date` date NOT NULL,
  `expressNum` varchar(30) DEFAULT NULL,
  `sampleType` varchar(30) DEFAULT NULL,
  `telphone` varchar(30) DEFAULT NULL,
  `sampleinfo_name` varchar(30) DEFAULT NULL,
  `sampleinfo_sex` varchar(10) DEFAULT NULL,
  `sampleinfo_age` int(3) DEFAULT NULL,
  `sampleinfo_history` text,
  `position` varchar(30) DEFAULT NULL,
  `sampleinfo_id` varchar(50) DEFAULT NULL,
  `recorder` int(11) DEFAULT NULL,
  `menu_id` varchar(50) DEFAULT NULL,
  `back_address` varchar(150) DEFAULT NULL,
  `collect_date` date DEFAULT NULL,
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`sp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_sample
-- ----------------------------

-- ----------------------------
-- Table structure for dk_story
-- ----------------------------
DROP TABLE IF EXISTS `dk_story`;
CREATE TABLE `dk_story` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `product` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `branch` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plan` text NOT NULL,
  `source` varchar(20) NOT NULL,
  `sourceNote` varchar(255) NOT NULL,
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `type` varchar(30) NOT NULL DEFAULT '',
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `estimate` float unsigned NOT NULL,
  `status` enum('','changed','active','draft','closed') NOT NULL DEFAULT '',
  `color` char(7) NOT NULL,
  `stage` enum('','wait','planned','projected','developing','developed','testing','tested','verified','released') NOT NULL DEFAULT 'wait',
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `openedBy` varchar(30) NOT NULL DEFAULT '',
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL DEFAULT '',
  `assignedDate` datetime NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL DEFAULT '',
  `lastEditedDate` datetime NOT NULL,
  `reviewedBy` varchar(255) NOT NULL,
  `reviewedDate` date NOT NULL,
  `closedBy` varchar(30) NOT NULL DEFAULT '',
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `toBug` mediumint(9) NOT NULL,
  `childStories` varchar(255) NOT NULL,
  `linkStories` varchar(255) NOT NULL,
  `duplicateStory` mediumint(8) unsigned NOT NULL,
  `version` smallint(6) NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `story` (`product`,`module`,`status`,`assignedTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_story
-- ----------------------------

-- ----------------------------
-- Table structure for dk_storyspec
-- ----------------------------
DROP TABLE IF EXISTS `dk_storyspec`;
CREATE TABLE `dk_storyspec` (
  `story` mediumint(9) NOT NULL,
  `version` smallint(6) NOT NULL,
  `title` varchar(90) NOT NULL,
  `spec` text NOT NULL,
  `verify` text NOT NULL,
  UNIQUE KEY `story` (`story`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_storyspec
-- ----------------------------

-- ----------------------------
-- Table structure for dk_storystage
-- ----------------------------
DROP TABLE IF EXISTS `dk_storystage`;
CREATE TABLE `dk_storystage` (
  `story` mediumint(8) unsigned NOT NULL,
  `branch` mediumint(8) unsigned NOT NULL,
  `stage` varchar(50) NOT NULL,
  KEY `story` (`story`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_storystage
-- ----------------------------

-- ----------------------------
-- Table structure for dk_task
-- ----------------------------
DROP TABLE IF EXISTS `dk_task`;
CREATE TABLE `dk_task` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `story` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `storyVersion` smallint(6) NOT NULL DEFAULT '1',
  `fromBug` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `estimate` float unsigned NOT NULL,
  `consumed` float unsigned NOT NULL,
  `left` float unsigned NOT NULL,
  `deadline` date NOT NULL,
  `status` enum('wait','doing','done','pause','cancel','closed') NOT NULL DEFAULT 'wait',
  `color` char(7) NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `openedBy` varchar(30) NOT NULL,
  `openedDate` datetime NOT NULL,
  `assignedTo` varchar(30) NOT NULL,
  `assignedDate` datetime NOT NULL,
  `estStarted` date NOT NULL,
  `realStarted` date NOT NULL,
  `finishedBy` varchar(30) NOT NULL,
  `finishedDate` datetime NOT NULL,
  `canceledBy` varchar(30) NOT NULL,
  `canceledDate` datetime NOT NULL,
  `closedBy` varchar(30) NOT NULL,
  `closedDate` datetime NOT NULL,
  `closedReason` varchar(30) NOT NULL,
  `lastEditedBy` varchar(30) NOT NULL,
  `lastEditedDate` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `task` (`project`,`module`,`story`,`assignedTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_task
-- ----------------------------

-- ----------------------------
-- Table structure for dk_taskestimate
-- ----------------------------
DROP TABLE IF EXISTS `dk_taskestimate`;
CREATE TABLE `dk_taskestimate` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `left` float unsigned NOT NULL DEFAULT '0',
  `consumed` float unsigned NOT NULL,
  `account` char(30) NOT NULL DEFAULT '',
  `work` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `task` (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_taskestimate
-- ----------------------------

-- ----------------------------
-- Table structure for dk_team
-- ----------------------------
DROP TABLE IF EXISTS `dk_team`;
CREATE TABLE `dk_team` (
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `role` char(30) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `days` smallint(5) unsigned NOT NULL,
  `hours` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`project`,`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_team
-- ----------------------------

-- ----------------------------
-- Table structure for dk_testresult
-- ----------------------------
DROP TABLE IF EXISTS `dk_testresult`;
CREATE TABLE `dk_testresult` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `run` mediumint(8) unsigned NOT NULL,
  `case` mediumint(8) unsigned NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `caseResult` char(30) NOT NULL,
  `stepResults` text NOT NULL,
  `lastRunner` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testresult` (`case`,`version`,`run`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_testresult
-- ----------------------------

-- ----------------------------
-- Table structure for dk_testrun
-- ----------------------------
DROP TABLE IF EXISTS `dk_testrun`;
CREATE TABLE `dk_testrun` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `task` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `case` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `version` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `assignedTo` char(30) NOT NULL DEFAULT '',
  `lastRunner` varchar(30) NOT NULL,
  `lastRunDate` datetime NOT NULL,
  `lastRunResult` char(30) NOT NULL,
  `status` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task` (`task`,`case`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_testrun
-- ----------------------------

-- ----------------------------
-- Table structure for dk_testtask
-- ----------------------------
DROP TABLE IF EXISTS `dk_testtask`;
CREATE TABLE `dk_testtask` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(90) NOT NULL,
  `product` mediumint(8) unsigned NOT NULL,
  `project` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `build` char(30) NOT NULL,
  `owner` varchar(30) NOT NULL,
  `pri` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `mailto` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `report` text NOT NULL,
  `status` enum('blocked','doing','wait','done') NOT NULL DEFAULT 'wait',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `build` (`build`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_testtask
-- ----------------------------

-- ----------------------------
-- Table structure for dk_todo
-- ----------------------------
DROP TABLE IF EXISTS `dk_todo`;
CREATE TABLE `dk_todo` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `date` date NOT NULL,
  `begin` smallint(4) unsigned zerofill NOT NULL,
  `end` smallint(4) unsigned zerofill NOT NULL,
  `type` char(10) NOT NULL,
  `idvalue` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pri` tinyint(3) unsigned NOT NULL,
  `name` char(150) NOT NULL,
  `desc` text NOT NULL,
  `status` enum('wait','doing','done') NOT NULL DEFAULT 'wait',
  `private` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `todo` (`account`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_todo
-- ----------------------------

-- ----------------------------
-- Table structure for dk_user
-- ----------------------------
DROP TABLE IF EXISTS `dk_user`;
CREATE TABLE `dk_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `dept` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `account` char(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `role` char(10) NOT NULL DEFAULT '',
  `realname` char(30) NOT NULL DEFAULT '',
  `nickname` char(60) NOT NULL DEFAULT '',
  `commiter` varchar(100) NOT NULL,
  `avatar` char(30) NOT NULL DEFAULT '',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `gender` enum('f','m') NOT NULL DEFAULT 'f',
  `email` char(90) NOT NULL DEFAULT '',
  `skype` char(90) NOT NULL DEFAULT '',
  `qq` char(20) NOT NULL DEFAULT '',
  `yahoo` char(90) NOT NULL DEFAULT '',
  `gtalk` char(90) NOT NULL DEFAULT '',
  `wangwang` char(90) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(20) NOT NULL DEFAULT '',
  `address` char(120) NOT NULL DEFAULT '',
  `zipcode` char(10) NOT NULL DEFAULT '',
  `join` date NOT NULL DEFAULT '0000-00-00',
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `last` int(10) unsigned NOT NULL DEFAULT '0',
  `fails` tinyint(5) NOT NULL DEFAULT '0',
  `locked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ranzhi` char(30) NOT NULL DEFAULT '',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`),
  KEY `user` (`dept`,`email`,`commiter`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_user
-- ----------------------------
INSERT INTO `dk_user` VALUES ('1', '1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'po', 'admin', '', '', '', '0000-00-00', 'f', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '16', '::1', '1467162620', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `dk_user` VALUES ('2', '0', 'cxjun', 'e44f8cf63970db5c2df0a18153bcdf49', '', '军', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '7', '::1', '1466581400', '0', '0000-00-00 00:00:00', '', '0');
INSERT INTO `dk_user` VALUES ('3', '0', 'test', 'e44f8cf63970db5c2df0a18153bcdf49', 'others', '军', '', '', '', '0000-00-00', 'm', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '3', '::1', '1466581445', '0', '0000-00-00 00:00:00', '', '0');

-- ----------------------------
-- Table structure for dk_usercontact
-- ----------------------------
DROP TABLE IF EXISTS `dk_usercontact`;
CREATE TABLE `dk_usercontact` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `listName` varchar(60) NOT NULL,
  `userList` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_usercontact
-- ----------------------------

-- ----------------------------
-- Table structure for dk_usergroup
-- ----------------------------
DROP TABLE IF EXISTS `dk_usergroup`;
CREATE TABLE `dk_usergroup` (
  `account` char(30) NOT NULL DEFAULT '',
  `group` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `account` (`account`,`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_usergroup
-- ----------------------------
INSERT INTO `dk_usergroup` VALUES ('cxjun', '11');
INSERT INTO `dk_usergroup` VALUES ('test', '7');

-- ----------------------------
-- Table structure for dk_userquery
-- ----------------------------
DROP TABLE IF EXISTS `dk_userquery`;
CREATE TABLE `dk_userquery` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `module` varchar(30) NOT NULL,
  `title` varchar(90) NOT NULL,
  `form` text NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `query` (`account`,`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_userquery
-- ----------------------------

-- ----------------------------
-- Table structure for dk_usertpl
-- ----------------------------
DROP TABLE IF EXISTS `dk_usertpl`;
CREATE TABLE `dk_usertpl` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(30) NOT NULL,
  `type` char(30) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `public` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account` (`account`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dk_usertpl
-- ----------------------------

-- ----------------------------
-- Table structure for zt_plateform_detect
-- ----------------------------
DROP TABLE IF EXISTS `zt_plateform_detect`;
CREATE TABLE `zt_plateform_detect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_id` int(11) DEFAULT NULL,
  `plateform` varchar(100) DEFAULT NULL,
  `expressNum` varchar(50) DEFAULT NULL,
  `contact_man` varchar(20) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `machine_time` date DEFAULT NULL,
  `process_status` varchar(50) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `data_back_time` date DEFAULT NULL,
  `has_back_note` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt_plateform_detect
-- ----------------------------
