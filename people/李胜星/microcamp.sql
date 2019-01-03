/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : microcamp

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-03 14:38:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(9) NOT NULL,
  `admin_password` varchar(15) CHARACTER SET latin1 NOT NULL,
  `admin_email` varchar(20) CHARACTER SET latin1 NOT NULL,
  `admin_image` int(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'zhangxiao', '123456', '313314324242@qq.com', '2131165285');
INSERT INTO `admin` VALUES ('2', 'lixiaosi', '123456', '13138103810@qq.com', '2131165285');

-- ----------------------------
-- Table structure for `adudit`
-- ----------------------------
DROP TABLE IF EXISTS `adudit`;
CREATE TABLE `adudit` (
  `adudit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `shop_id` int(10) NOT NULL,
  `shop_state` varchar(20) NOT NULL,
  PRIMARY KEY (`adudit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adudit
-- ----------------------------
INSERT INTO `adudit` VALUES ('1', '1', '1', 'daishenhe');
INSERT INTO `adudit` VALUES ('2', '3', '3', 'daishenhe');
INSERT INTO `adudit` VALUES ('3', '2', '2', 'success');
INSERT INTO `adudit` VALUES ('4', '4', '4', 'success');
INSERT INTO `adudit` VALUES ('5', '5', '5', 'success');
INSERT INTO `adudit` VALUES ('6', '6', '6', 'success');
INSERT INTO `adudit` VALUES ('7', '7', '7', 'success');
INSERT INTO `adudit` VALUES ('8', '8', '8', 'success');
INSERT INTO `adudit` VALUES ('9', '1', '9', 'daishenhe');
INSERT INTO `adudit` VALUES ('10', '1', '10', 'daishenhe');
INSERT INTO `adudit` VALUES ('11', '1', '11', 'daishenhe');
INSERT INTO `adudit` VALUES ('12', '1', '12', 'daishenhe');
INSERT INTO `adudit` VALUES ('13', '1', '14', 'daishenhe');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `evaluation_id` int(11) NOT NULL,
  `comment_content` int(11) NOT NULL,
  `comment_time` datetime NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `evaluation`
-- ----------------------------
DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE `evaluation` (
  `evaluation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `evaluation_contet` varchar(50) NOT NULL,
  `evaluation_image` int(11) DEFAULT NULL,
  `evaluation_time` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for `msg`
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `sender` varchar(11) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('1', '1', '1', 'user');

-- ----------------------------
-- Table structure for `msg_detail`
-- ----------------------------
DROP TABLE IF EXISTS `msg_detail`;
CREATE TABLE `msg_detail` (
  `msg_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `msg_content` varchar(50) NOT NULL,
  `msg_time` datetime NOT NULL,
  `sender` varchar(5) NOT NULL,
  PRIMARY KEY (`msg_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg_detail
-- ----------------------------
INSERT INTO `msg_detail` VALUES ('1', '1', '舒服舒服', '2018-12-26 18:47:19', '0');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_state` varchar(20) NOT NULL,
  `order_time` datetime NOT NULL,
  `order_price` double NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', 'finish', '2018-12-19 19:28:11', '11', '1');
INSERT INTO `order` VALUES ('2', '2', 'finish', '2018-12-26 19:29:16', '20', '1');

-- ----------------------------
-- Table structure for `order1`
-- ----------------------------
DROP TABLE IF EXISTS `order1`;
CREATE TABLE `order1` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_state` varchar(20) NOT NULL,
  `order_time` datetime NOT NULL,
  `order_price` double NOT NULL,
  `shop_id` int(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order1
-- ----------------------------
INSERT INTO `order1` VALUES ('1', '1', 'payment', '2018-12-12 08:43:38', '200', '1');
INSERT INTO `order1` VALUES ('2', '1', 'payment', '2018-12-11 08:44:00', '100', '1');
INSERT INTO `order1` VALUES ('3', '1', 'finish', '2018-12-19 19:30:04', '111', '1');
INSERT INTO `order1` VALUES ('4', '2', 'appraise', '2018-12-20 19:30:42', '212', '1');

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `specification_id` int(10) NOT NULL,
  `order_detail_message` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1', '1', '1', '7', '1', 'etgge');
INSERT INTO `order_detail` VALUES ('2', '1', '1', '1', '2', 'ewewgt');
INSERT INTO `order_detail` VALUES ('3', '2', '1', '1', '3', 'etgeg');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_image` int(11) NOT NULL,
  `product_type` varchar(10) NOT NULL,
  `product_num` int(11) NOT NULL,
  `product_description` varchar(50) NOT NULL,
  `product_sale_num` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '1', '商品已', '2131165305', '蛋糕', '20', '官方说法是', '0000000001');
INSERT INTO `products` VALUES ('2', '1', '尚品二', '2131165285', '蛋糕', '30', '舒服舒服', '0000000002');
INSERT INTO `products` VALUES ('3', '1', '商品三', '2131165285', '捣年糕', '30', '水电费等方式', '0000000002');
INSERT INTO `products` VALUES ('4', '1', 'aa', '2131165295', 'aa', '22', 'aa', '0000000000');
INSERT INTO `products` VALUES ('5', '1', 'qq', '2131165295', 'aa', '11', 'qqqqq', '0000000000');
INSERT INTO `products` VALUES ('6', '1', 'qq', '2131165295', 'qq', '22', 'qqqqqq', '0000000000');
INSERT INTO `products` VALUES ('7', '1', 'qq', '2131165295', 'qq', '22', 'qqqqqq', '0000000000');
INSERT INTO `products` VALUES ('8', '1', 'qq', '2131165295', 'qq', '22', 'qqqqqq', '0000000000');
INSERT INTO `products` VALUES ('9', '1', 'qq', '2131165295', 'qq', '22', 'qqqqqq', '0000000000');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(10) NOT NULL,
  `shop_image` int(11) NOT NULL,
  `shop_description` varchar(30) DEFAULT NULL,
  `shop_address` varchar(15) NOT NULL,
  `identy_image` int(11) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '多啦', '2131165305', '部好货，都在这里', '河北师范大学', '2131165305');
INSERT INTO `shop` VALUES ('2', '多啦口袋', '2131165305', '全部好货，都在这里', '河北师范大学新校区诚朴园', '2131165285');
INSERT INTO `shop` VALUES ('3', '小手大拇指', '2131165285', '物美价廉，物超所值', '河北师范大学新校区崇实园', '2131165285');
INSERT INTO `shop` VALUES ('4', '越洋代购', '2131165285', '海外代购', '河北师范大学新校区留学生公寓', '2131165285');
INSERT INTO `shop` VALUES ('5', 'FLYWORLD', '2131165285', '漂亮的衣服首饰应有尽有', '河北师范大学新校区诚朴园', '2131165285');
INSERT INTO `shop` VALUES ('6', '淘小丫', '2131165285', '主要售卖鹦鹉', '河北师范大学新校区启智园', '2131165285');
INSERT INTO `shop` VALUES ('7', '全球飞购', '2131165285', '全球代购', '河北师范大学新校区诚朴园', '2131165285');
INSERT INTO `shop` VALUES ('8', '奢欧享美', '2131165285', '低调的奢华', '河北师范大学新校区崇实园', '2131165285');
INSERT INTO `shop` VALUES ('9', 'xingxing', '2131165375', 'sewbduiwf', 'neoirfnre', '2131165374');
INSERT INTO `shop` VALUES ('10', '', '2131165375', '', '', '2131165374');
INSERT INTO `shop` VALUES ('11', 'jijaia', '2131165375', '就啊的哦', '啊擦啊方法', '2131165374');
INSERT INTO `shop` VALUES ('12', '点卡代码', '2131165375', '啊啊大', '发生方式', '2131165374');
INSERT INTO `shop` VALUES ('13', 'bdgd ', '2131165375', 'dghhd', 'ddgdgd', '2131165374');
INSERT INTO `shop` VALUES ('14', '324', '2131165375', '24', '24', '2131165374');

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `shoppingcart_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shoppingcart_num` int(11) NOT NULL,
  PRIMARY KEY (`shoppingcart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for `shoppingcart_detail`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart_detail`;
CREATE TABLE `shoppingcart_detail` (
  `shoppingcart_detail_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shoppingcart_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_count` int(11) NOT NULL,
  `specification_id` int(10) NOT NULL,
  PRIMARY KEY (`shoppingcart_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `specification`
-- ----------------------------
DROP TABLE IF EXISTS `specification`;
CREATE TABLE `specification` (
  `specification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `specification_content` varchar(50) NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `specification_num` int(11) NOT NULL,
  PRIMARY KEY (`specification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specification
-- ----------------------------
INSERT INTO `specification` VALUES ('1', '黑色耳机粉色线', '55.00', '1', '2');
INSERT INTO `specification` VALUES ('2', '黑色耳机金色线', '55.00', '1', '2');
INSERT INTO `specification` VALUES ('3', '黑色耳机', '50.00', '1', '4');
INSERT INTO `specification` VALUES ('4', 'qq', '11.00', '9', '22');
INSERT INTO `specification` VALUES ('5', '请求', '11.00', '8', '22');
INSERT INTO `specification` VALUES ('6', 'qq', '11.00', '7', '11');
INSERT INTO `specification` VALUES ('7', 'qq', '11.00', '6', '11');

-- ----------------------------
-- Table structure for `super_admin`
-- ----------------------------
DROP TABLE IF EXISTS `super_admin`;
CREATE TABLE `super_admin` (
  `super_admin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `super_admin_name` varchar(20) NOT NULL,
  `super_admin_password` varchar(15) NOT NULL,
  `super_admin_email` varchar(20) NOT NULL,
  PRIMARY KEY (`super_admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of super_admin
-- ----------------------------
INSERT INTO `super_admin` VALUES ('1', 'zhangsan', '123456', '1946109049@qq.com');
INSERT INTO `super_admin` VALUES ('2', '李四', '123456', '1946109049@qq.com');
INSERT INTO `super_admin` VALUES ('3', '王五', '123456', '1901391039@qq.com');
INSERT INTO `super_admin` VALUES ('4', '口碑', '123456', '1901391039@qq.com');
INSERT INTO `super_admin` VALUES ('5', '溜溜', '123456', '123567667@qq.com');
INSERT INTO `super_admin` VALUES ('6', 'joy', '12345678', '894186@qq.com');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_tel` varchar(11) CHARACTER SET latin1 NOT NULL,
  `user_image` int(11) DEFAULT NULL,
  `user_name` varchar(5) DEFAULT NULL,
  `user_password` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `user_address` varchar(30) DEFAULT NULL,
  `user_email` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `shop_id` int(10) DEFAULT NULL,
  `user_elogin` int(10) unsigned zerofill NOT NULL,
  `shoppcart_id` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '42424224242', '2131165305', '张三', '123456', '河北师范大学新校区', '1345678542@qq.com', '1', '0000000001', '0000000001');
INSERT INTO `user` VALUES ('2', '18473647583', '2131165305', '李四', '1234546', '河北师范大学新校区', '1345678542@qq.com', '0', '0000000001', '0000000002');
INSERT INTO `user` VALUES ('3', '19876548392', '2131165305', '王五', '123344', '河北师范大学新校区', '1345678542@qq.com', '0', '0000000001', '0000000003');
INSERT INTO `user` VALUES ('4', '85749399423', '2131165305', '溜溜', '1234556', '河北师范大学新校区', '1345678542@qq.com', '4', '0000000001', '0000000004');
INSERT INTO `user` VALUES ('5', '24244557689', '2131165305', '陈琦', '2233455', '河北师范大学新校区', '1345678542@qq.com', '0', '0000000001', '0000000005');
INSERT INTO `user` VALUES ('6', '66654457688', '2131165305', '王玖', '3345566', '河北师范大学新校区', '1345678542@qq.com', '6', '0000000001', '0000000006');
INSERT INTO `user` VALUES ('7', '5555555555', '2131165305', '流云', '345656', '河北师范大学新校区', '1345678542@qq.com', '7', '0000000001', '0000000007');
INSERT INTO `user` VALUES ('8', '44444444444', '2131165305', '南宫', '345566', '河北师范大学新校区', '1345678542@qq.com', '8', '0000000001', '0000000008');
