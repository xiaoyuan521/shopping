/*
Navicat MySQL Data Transfer

Source Server         : wangcyTest
Source Server Version : 50156
Source Host           : 192.168.196.10:3307
Source Database       : lemon

Target Server Type    : MYSQL
Target Server Version : 50156
File Encoding         : 65001

Date: 2016-11-29 16:08:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `brands`
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `brand_id` int(3) NOT NULL DEFAULT '0',
  `brand_name` varchar(20) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` timestamp NOT NULL DEFAULT '2016-11-11 00:00:00',
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES ('1', '小米', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('2', '戴尔', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('3', '三星', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('4', '华为', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('5', '苹果', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('6', '佳能', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('7', 'LG', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('8', '双飞燕', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('9', '雷蛇', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `brands` VALUES ('99', '其它', '2016-11-17 13:24:55', '2016-11-11 00:00:00');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `image_name` varchar(50) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` timestamp NOT NULL DEFAULT '2016-11-11 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '推荐分类', null, '', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('2', '手机', null, '', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('3', '笔记本', null, '', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('4', 'DIY硬件', null, '', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('5', '数码相机', null, '', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('6', '智能家电', null, '', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('7', '其它', null, '', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('8', '智能手机', '1', 'smart_phone.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('9', '游戏笔记本', '1', 'game_notebook.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('10', '主机', '1', 'host.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('11', '单反相机', '1', 'slr_camera.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('12', '电视', '1', 'television.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('13', '智能手机', '2', 'smart_phone.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('14', '商务手机', '2', 'business_phone', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('15', '相机手机', '2', 'camera_phone.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('16', '老人手机', '2', 'old_man_phone.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('17', '音乐手机', '2', 'music_mobile_phone.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('18', '视频手机', '2', 'video_phone.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('19', '游戏手机', '2', 'game_phone.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('20', '商务笔记本', '3', 'business_notebook', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('21', '游戏笔记本', '3', 'game_notebook.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('22', '经济笔记本', '3', 'economic_notebook.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('23', '时尚笔记本', '3', 'fashion_notebook.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('24', '主机', '4', 'host.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('25', '键盘', '4', 'keyboard.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('26', '鼠标', '4', 'mouse.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('27', '显示器', '4', 'monitor.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('28', '机箱', '4', 'chassis.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('29', '散热器', '4', 'radiator.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('30', 'CPU', '4', 'cpu.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('31', '显卡', '4', 'graphics.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('32', '主板', '4', 'mainboard.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('33', '内存', '4', 'memory.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('34', '硬盘', '4', 'hard_disk.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('35', '电源', '4', 'power_supply.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('36', '单反相机', '5', 'slr_camera.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('37', '微单相机', '5', 'micro_single_camera.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('38', '运动相机', '5', 'motion_camera.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('39', '电视', '6', 'television.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('40', '冰箱', '6', 'refrigerator.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('41', '洗衣机', '6', 'washing_machine.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('42', '热水器', '6', 'heater.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('43', '空调', '6', 'air_conditioner.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('44', '购物卡', '7', 'shopping_card.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');
INSERT INTO `categories` VALUES ('45', '代金券', '7', 'cash_coupon.png', '2016-11-21 16:13:45', '2016-11-11 00:00:00');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(10) NOT NULL,
  `brand_id` int(3) NOT NULL,
  `spec` int(10) NOT NULL,
  `spec_unit` enum('寸','L','mL','g','kg','G') NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `stock` int(10) NOT NULL DEFAULT '0',
  `description` varchar(200) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_time` timestamp NOT NULL DEFAULT '2016-11-11 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '小米5黑色陶瓷尊享版', '2699.00', '8', '1', '128', 'g', '1.jpg', '1', '小米黑科技，没有想不到，只有抢不到', '2016-11-29 10:31:57', '2016-11-11 00:00:00');
INSERT INTO `products` VALUES ('2', '荣耀V8', '2660.00', '1', '4', '64', 'g', '2.jpg', '298', '荣耀品质的又一次飞跃(呵呵)', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `products` VALUES ('3', '三星GalaxyNote7', '5688.00', '1', '3', '64', 'g', '3.jpg', '1000', '炸！', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `products` VALUES ('4', 'iPhone5钻石版', '99999999.99', '1', '5', '64', 'g', '4.jpg', '1', '由24K金、白钻和稀有黑钻组合制成，Home键由一枚26卡黑钻打造而成，其余机身含600颗白钻、蓝宝石玻璃屏幕以及重135g的24K黄金', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `products` VALUES ('5', '小米笔记本', '2999.00', '2', '1', '13', '寸', '5.png', '0', '全球最高配，全球最低价，限量抢购，你懂的', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `products` VALUES ('6', 'DELL灵越14R', '3999.00', '2', '2', '14', '寸', '6.jpg', '308', '超高性价比，良心产品，安利一波', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `products` VALUES ('7', '三星900X3K-K07', '6699.00', '2', '3', '13', '寸', '7.jpg', '500000', '电池爆炸威力赶超GalaxyNote7，附赠平安保险一份', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
INSERT INTO `products` VALUES ('8', 'Luvaglio', '6791900.00', '2', '99', '17', '寸', '8.jpg', '1', '大理石、真皮和天然木材，高昂金属和多组菱形钻石以及开关上镶嵌的稀有颜色的钻石', '2016-11-17 13:24:55', '2016-11-11 00:00:00');
