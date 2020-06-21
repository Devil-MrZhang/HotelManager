/*
Navicat MySQL Data Transfer

Source Server         : localhostMysql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : ssm_book

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-06-22 08:29:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_book`
-- ----------------------------
DROP TABLE IF EXISTS `tb_book`;
CREATE TABLE `tb_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(54) DEFAULT NULL,
  `author` varchar(54) DEFAULT NULL,
  `publicationdate` date DEFAULT NULL,
  `publication` varchar(150) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(54) DEFAULT NULL,
  `remark` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_book
-- ----------------------------
INSERT INTO `tb_book` VALUES ('1', '书名1', '作者1', '2018-03-04', '出版社1', '30', 'ajax.jpg', '描述');
INSERT INTO `tb_book` VALUES ('2', '书名2', '作者2', '2018-03-04', '出版社2', '30', 'android.jpg', '描述');
INSERT INTO `tb_book` VALUES ('3', '书名3', '作者3', '2018-03-04', '出版社3', '30', 'ee.jpg', '描述');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(18) DEFAULT NULL,
  `username` varchar(18) DEFAULT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginname` (`loginname`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'admin', 'admin', '1234567890', 'asd');
