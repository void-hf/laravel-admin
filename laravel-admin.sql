/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : laravel-admin

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-09-08 21:08:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(200) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `add_time` int(11) DEFAULT NULL,
  `activity_des` text NOT NULL,
  `activity_img` varchar(200) NOT NULL,
  `is_pass` int(20) NOT NULL,
  `lat` float(30,10) NOT NULL,
  `lng` float(30,10) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `activity_address` varchar(255) NOT NULL,
  `sign_user_num` int(11) unsigned DEFAULT NULL,
  `introduction` varchar(255) NOT NULL,
  `introduction_title` varchar(255) NOT NULL,
  `integral_num` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '南山图书馆', '12:31:23', '12:31:21', '123123', '<p style=\"text-align: center;\"><img src=\"http://127.0.0.1:8000/uploads/ueditor/php/upload/file/20180906/1536228054487736.jpeg\" title=\"1536228054487736.jpeg\" alt=\"Bvlgari(宝格丽) B.Zero1系列18k玫瑰金单环戒指53#.jpg\"/>123123\r\n &nbsp; &nbsp; &nbsp; &nbsp;</p>', 'images/ec1a0ea84d88a7a6fe622647d7f6940f.jpg', '1', '21.9974899292', '113.0256271362', '12323______', '123123123', '1231', '1231231233123', '2123123123', '0', '0');
INSERT INTO `activity` VALUES ('2', '新华活动', '00:30:00', '12:31:21', null, '<p>1231231213213</p>', 'images/94ec825d6f5484cb7ad98212b864d33e.jpg', '1', '22.5334873199', '114.0470123291', '1597800561_', '2233', null, '123123123', '2123123', '2', '0');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '主页', 'fa-bar-chart', '/', null, '2018-09-02 11:55:46');
INSERT INTO `admin_menu` VALUES ('2', '0', '2', '用户管理', 'fa-tasks', null, null, '2018-09-02 11:45:51');
INSERT INTO `admin_menu` VALUES ('3', '2', '3', '用户', 'fa-users', 'auth/users', null, '2018-09-02 11:41:14');
INSERT INTO `admin_menu` VALUES ('4', '2', '4', '角色', 'fa-user', 'auth/roles', null, '2018-09-02 11:45:22');
INSERT INTO `admin_menu` VALUES ('5', '2', '5', '权限', 'fa-ban', 'auth/permissions', null, '2018-09-02 11:45:30');
INSERT INTO `admin_menu` VALUES ('6', '2', '6', '菜单', 'fa-bars', 'auth/menu', null, '2018-09-02 11:45:08');
INSERT INTO `admin_menu` VALUES ('7', '2', '7', '日志', 'fa-history', 'auth/logs', null, '2018-09-02 11:45:39');
INSERT INTO `admin_menu` VALUES ('8', '0', '0', '基地管理', 'fa-yc-square', null, '2018-09-02 11:58:31', '2018-09-06 07:25:20');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', '系统', 'fa-suitcase', null, '2018-09-02 12:31:24', '2018-09-02 12:31:24');
INSERT INTO `admin_menu` VALUES ('11', '9', '0', '备份', 'fa-bars', 'backup', '2018-09-02 12:32:30', '2018-09-02 12:32:52');
INSERT INTO `admin_menu` VALUES ('12', '8', '0', '分类管理', 'fa-bars', '/category', '2018-09-06 02:29:30', '2018-09-06 07:25:37');
INSERT INTO `admin_menu` VALUES ('13', '8', '0', '基地活动管理', 'fa-bars', '/activity', '2018-09-06 07:35:47', '2018-09-06 07:35:47');
INSERT INTO `admin_menu` VALUES ('14', '0', '0', '答题管理', 'fa-bars', null, '2018-09-06 18:37:11', '2018-09-06 18:37:11');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_operation_log_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:31:42', '2018-09-02 11:31:42');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:44', '2018-09-02 11:31:44');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:48', '2018-09-02 11:31:48');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:49', '2018-09-02 11:31:49');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:49', '2018-09-02 11:31:49');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:50', '2018-09-02 11:31:50');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:52', '2018-09-02 11:31:52');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:55', '2018-09-02 11:31:55');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:55', '2018-09-02 11:31:55');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:56', '2018-09-02 11:31:56');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:57', '2018-09-02 11:31:57');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:58', '2018-09-02 11:31:58');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:58', '2018-09-02 11:31:58');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:59', '2018-09-02 11:31:59');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:00', '2018-09-02 11:32:00');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:02', '2018-09-02 11:32:02');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:32:18', '2018-09-02 11:32:18');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:27', '2018-09-02 11:32:27');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:29', '2018-09-02 11:32:29');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:30', '2018-09-02 11:32:30');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:31', '2018-09-02 11:32:31');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:31', '2018-09-02 11:32:31');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:34', '2018-09-02 11:32:34');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:37', '2018-09-02 11:32:37');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:38', '2018-09-02 11:32:38');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:34:28', '2018-09-02 11:34:28');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:34:31', '2018-09-02 11:34:31');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:34:33', '2018-09-02 11:34:33');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:36:38', '2018-09-02 11:36:38');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:40:09', '2018-09-02 11:40:09');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:13', '2018-09-02 11:40:13');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:14', '2018-09-02 11:40:14');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:16', '2018-09-02 11:40:16');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:18', '2018-09-02 11:40:18');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:19', '2018-09-02 11:40:19');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:26', '2018-09-02 11:40:26');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:32', '2018-09-02 11:40:32');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:33', '2018-09-02 11:40:33');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:34', '2018-09-02 11:40:34');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:35', '2018-09-02 11:40:35');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:36', '2018-09-02 11:40:36');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:36', '2018-09-02 11:40:36');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:37', '2018-09-02 11:40:37');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:38', '2018-09-02 11:40:38');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:39', '2018-09-02 11:40:39');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:40', '2018-09-02 11:40:40');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:42', '2018-09-02 11:40:42');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:48', '2018-09-02 11:40:48');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:59', '2018-09-02 11:40:59');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:41:14', '2018-09-02 11:41:14');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:41:14', '2018-09-02 11:41:14');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:18', '2018-09-02 11:41:18');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-09-02 11:41:20', '2018-09-02 11:41:20');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:23', '2018-09-02 11:41:23');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:25', '2018-09-02 11:41:25');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:31', '2018-09-02 11:41:31');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:36', '2018-09-02 11:41:36');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:04', '2018-09-02 11:44:04');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:10', '2018-09-02 11:44:10');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:14', '2018-09-02 11:44:14');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:25', '2018-09-02 11:44:25');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:28', '2018-09-02 11:44:28');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:30', '2018-09-02 11:44:30');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:57', '2018-09-02 11:44:57');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:08', '2018-09-02 11:45:08');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:08', '2018-09-02 11:45:08');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:16', '2018-09-02 11:45:16');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:22', '2018-09-02 11:45:22');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:22', '2018-09-02 11:45:22');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:25', '2018-09-02 11:45:25');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:30', '2018-09-02 11:45:30');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:30', '2018-09-02 11:45:30');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:34', '2018-09-02 11:45:34');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:39', '2018-09-02 11:45:39');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:39', '2018-09-02 11:45:39');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:44', '2018-09-02 11:45:44');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:51', '2018-09-02 11:45:51');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:52', '2018-09-02 11:45:52');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:46:10', '2018-09-02 11:46:10');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:13', '2018-09-02 11:46:13');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:14', '2018-09-02 11:46:14');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:18', '2018-09-02 11:46:18');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:21', '2018-09-02 11:46:21');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:04', '2018-09-02 11:47:04');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:05', '2018-09-02 11:47:05');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:05', '2018-09-02 11:47:05');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:06', '2018-09-02 11:47:06');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:06', '2018-09-02 11:47:06');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:17', '2018-09-02 11:47:17');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:18', '2018-09-02 11:47:18');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:18', '2018-09-02 11:47:18');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:23', '2018-09-02 11:47:23');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:23', '2018-09-02 11:47:23');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:24', '2018-09-02 11:47:24');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:24', '2018-09-02 11:47:24');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:26', '2018-09-02 11:47:26');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:26', '2018-09-02 11:47:26');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:27', '2018-09-02 11:47:27');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:27', '2018-09-02 11:47:27');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:28', '2018-09-02 11:47:28');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:30', '2018-09-02 11:47:30');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:31', '2018-09-02 11:47:31');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:34', '2018-09-02 11:47:34');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:43', '2018-09-02 11:47:43');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:45', '2018-09-02 11:47:45');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:54', '2018-09-02 11:47:54');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:51:31', '2018-09-02 11:51:31');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:51:35', '2018-09-02 11:51:35');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:51:39', '2018-09-02 11:51:39');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:52:09', '2018-09-02 11:52:09');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:39', '2018-09-02 11:52:39');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:48', '2018-09-02 11:52:48');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:51', '2018-09-02 11:52:51');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:57', '2018-09-02 11:52:57');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:53:39', '2018-09-02 11:53:39');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:53:40', '2018-09-02 11:53:40');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:53:41', '2018-09-02 11:53:41');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:02', '2018-09-02 11:54:02');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:04', '2018-09-02 11:54:04');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:09', '2018-09-02 11:54:09');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:18', '2018-09-02 11:54:18');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:18', '2018-09-02 11:54:18');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:23', '2018-09-02 11:54:23');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/permissions/4', 'PUT', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"\\u7528\\u6237\\u8bbe\\u7f6e\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/auth\\/setting\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 11:54:33', '2018-09-02 11:54:33');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:54:33', '2018-09-02 11:54:33');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/permissions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:37', '2018-09-02 11:54:37');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/permissions/3', 'PUT', '127.0.0.1', '{\"slug\":\"auth.login\",\"name\":\"\\u767b\\u9646\",\"http_method\":[null],\"http_path\":\"\\/auth\\/login\\r\\n\\/auth\\/logout\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 11:54:42', '2018-09-02 11:54:42');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:54:42', '2018-09-02 11:54:42');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:49', '2018-09-02 11:54:49');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"slug\":\"*\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\\u6743\\u9650\",\"http_method\":[null],\"http_path\":\"*\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 11:55:01', '2018-09-02 11:55:01');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:55:01', '2018-09-02 11:55:01');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:10', '2018-09-02 11:55:10');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:12', '2018-09-02 11:55:12');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:25', '2018-09-02 11:55:25');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:30', '2018-09-02 11:55:30');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:34', '2018-09-02 11:55:34');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:37', '2018-09-02 11:55:37');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:39', '2018-09-02 11:55:39');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:40', '2018-09-02 11:55:40');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e3b\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:55:46', '2018-09-02 11:55:46');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:55:47', '2018-09-02 11:55:47');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:55:50', '2018-09-02 11:55:50');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:51', '2018-09-02 11:55:51');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:58', '2018-09-02 11:55:58');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-yc-square\",\"uri\":null,\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 11:58:30', '2018-09-02 11:58:30');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:58:31', '2018-09-02 11:58:31');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:58:34', '2018-09-02 11:58:34');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:58:35', '2018-09-02 11:58:35');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:59:41', '2018-09-02 11:59:41');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:59:43', '2018-09-02 11:59:43');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:00:00', '2018-09-02 12:00:00');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:00:03', '2018-09-02 12:00:03');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-02 12:28:05', '2018-09-02 12:28:05');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:10', '2018-09-02 12:28:10');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:12', '2018-09-02 12:28:12');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:28', '2018-09-02 12:28:28');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:34', '2018-09-02 12:28:34');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:36', '2018-09-02 12:28:36');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:52', '2018-09-02 12:28:52');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"backup\",\"name\":\"\\u5907\\u4efd\",\"http_method\":[\"GET\",null],\"http_path\":\"admin\\/backup\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 12:29:19', '2018-09-02 12:29:19');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 12:29:19', '2018-09-02 12:29:19');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:29:25', '2018-09-02 12:29:25');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"fa-suitcase\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:31:24', '2018-09-02 12:31:24');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:31:25', '2018-09-02 12:31:25');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:31:48', '2018-09-02 12:31:48');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:31:48', '2018-09-02 12:31:48');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:31:53', '2018-09-02 12:31:53');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:31:55', '2018-09-02 12:31:55');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"\\/admin\\/backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:32:15', '2018-09-02 12:32:15');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:15', '2018-09-02 12:32:15');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":\"\\/admin\\/backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:32:30', '2018-09-02 12:32:30');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:30', '2018-09-02 12:32:30');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/menu/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:32:35', '2018-09-02 12:32:35');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:35', '2018-09-02 12:32:35');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:39', '2018-09-02 12:32:39');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":\"admin\\/backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 12:32:43', '2018-09-02 12:32:43');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:44', '2018-09-02 12:32:44');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:48', '2018-09-02 12:32:48');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":\"backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 12:32:52', '2018-09-02 12:32:52');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:52', '2018-09-02 12:32:52');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:55', '2018-09-02 12:32:55');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:57', '2018-09-02 12:32:57');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:33:05', '2018-09-02 12:33:05');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-02 12:33:14', '2018-09-02 12:33:14');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:33:16', '2018-09-02 12:33:16');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-02 12:38:36', '2018-09-02 12:38:36');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:38:37', '2018-09-02 12:38:37');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 13:38:03', '2018-09-02 13:38:03');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:12', '2018-09-02 13:38:12');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:14', '2018-09-02 13:38:14');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:15', '2018-09-02 13:38:15');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:22', '2018-09-02 13:38:22');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 14:32:30', '2018-09-02 14:32:30');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:14:52', '2018-09-06 02:14:52');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:15:02', '2018-09-06 02:15:02');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:15:03', '2018-09-06 02:15:03');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:21:54', '2018-09-06 02:21:54');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:21:55', '2018-09-06 02:21:55');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:21:56', '2018-09-06 02:21:56');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:21:56', '2018-09-06 02:21:56');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:21:58', '2018-09-06 02:21:58');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:29:09', '2018-09-06 02:29:09');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:29:12', '2018-09-06 02:29:12');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"post\",\"icon\":\"fa-bars\",\"uri\":\"\\/post\",\"roles\":[\"1\",null],\"_token\":\"L1Hy0RM8AX0B0CbObFlz26rj14lXdeLCVJtZ7AoE\"}', '2018-09-06 02:29:30', '2018-09-06 02:29:30');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 02:29:30', '2018-09-06 02:29:30');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 02:29:34', '2018-09-06 02:29:34');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:32:26', '2018-09-06 02:32:26');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:33:02', '2018-09-06 02:33:02');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:34:22', '2018-09-06 02:34:22');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:34:26', '2018-09-06 02:34:26');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:34:29', '2018-09-06 02:34:29');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:34:31', '2018-09-06 02:34:31');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:35:06', '2018-09-06 02:35:06');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:35:23', '2018-09-06 02:35:23');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:35:32', '2018-09-06 02:35:32');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:38:27', '2018-09-06 02:38:27');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/post', 'GET', '127.0.0.1', '[]', '2018-09-06 02:40:27', '2018-09-06 02:40:27');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:40:33', '2018-09-06 02:40:33');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:41:11', '2018-09-06 02:41:11');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:41:11', '2018-09-06 02:41:11');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:41:38', '2018-09-06 02:41:38');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:41:41', '2018-09-06 02:41:41');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:41:41', '2018-09-06 02:41:41');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:42:54', '2018-09-06 02:42:54');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:42:57', '2018-09-06 02:42:57');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:42:57', '2018-09-06 02:42:57');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:52:29', '2018-09-06 02:52:29');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:52:32', '2018-09-06 02:52:32');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:52:34', '2018-09-06 02:52:34');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:52:35', '2018-09-06 02:52:35');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:53:50', '2018-09-06 02:53:50');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 02:53:52', '2018-09-06 02:53:52');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 02:53:53', '2018-09-06 02:53:53');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:22', '2018-09-06 03:04:22');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"L1Hy0RM8AX0B0CbObFlz26rj14lXdeLCVJtZ7AoE\"}', '2018-09-06 03:04:24', '2018-09-06 03:04:24');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:35', '2018-09-06 03:04:35');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:36', '2018-09-06 03:04:36');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:38', '2018-09-06 03:04:38');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:40', '2018-09-06 03:04:40');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:44', '2018-09-06 03:04:44');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:48', '2018-09-06 03:04:48');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-09-06 03:04:48', '2018-09-06 03:04:48');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:04:50', '2018-09-06 03:04:50');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:14:13', '2018-09-06 03:14:13');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:14:15', '2018-09-06 03:14:15');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:14:15', '2018-09-06 03:14:15');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:14:27', '2018-09-06 03:14:27');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:14:29', '2018-09-06 03:14:29');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:14:29', '2018-09-06 03:14:29');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:14:36', '2018-09-06 03:14:36');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:14:37', '2018-09-06 03:14:37');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:14:38', '2018-09-06 03:14:38');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:15:00', '2018-09-06 03:15:00');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:15:01', '2018-09-06 03:15:01');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:15:01', '2018-09-06 03:15:01');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:15:04', '2018-09-06 03:15:04');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:15:04', '2018-09-06 03:15:04');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:15:11', '2018-09-06 03:15:11');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:15:14', '2018-09-06 03:15:14');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:15:16', '2018-09-06 03:15:16');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 03:15:16', '2018-09-06 03:15:16');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:15:57', '2018-09-06 03:15:57');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:17:19', '2018-09-06 03:17:19');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:17:21', '2018-09-06 03:17:21');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:17:21', '2018-09-06 03:17:21');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:17:42', '2018-09-06 03:17:42');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:17:43', '2018-09-06 03:17:43');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:17:43', '2018-09-06 03:17:43');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:18:42', '2018-09-06 03:18:42');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:18:43', '2018-09-06 03:18:43');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:18:44', '2018-09-06 03:18:44');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:18:44', '2018-09-06 03:18:44');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:19:46', '2018-09-06 03:19:46');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:19:49', '2018-09-06 03:19:49');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:19:49', '2018-09-06 03:19:49');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:22:21', '2018-09-06 03:22:21');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 03:22:23', '2018-09-06 03:22:23');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 03:22:23', '2018-09-06 03:22:23');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 05:59:55', '2018-09-06 05:59:55');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 05:59:57', '2018-09-06 05:59:57');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 05:59:59', '2018-09-06 05:59:59');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:00', '2018-09-06 06:00:00');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:01', '2018-09-06 06:00:01');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:05', '2018-09-06 06:00:05');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:07', '2018-09-06 06:00:07');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:08', '2018-09-06 06:00:08');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:09', '2018-09-06 06:00:09');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:10', '2018-09-06 06:00:10');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:11', '2018-09-06 06:00:11');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:12', '2018-09-06 06:00:12');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:12', '2018-09-06 06:00:12');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:13', '2018-09-06 06:00:13');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:13', '2018-09-06 06:00:13');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:00:17', '2018-09-06 06:00:17');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:03:20', '2018-09-06 06:03:20');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:03:23', '2018-09-06 06:03:23');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:03:44', '2018-09-06 06:03:44');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:03:46', '2018-09-06 06:03:46');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:03:49', '2018-09-06 06:03:49');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"brand\",\"icon\":\"fa-bars\",\"uri\":\"\\/brand\",\"roles\":[\"1\",null],\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2018-09-06 06:04:02', '2018-09-06 06:04:02');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:04:03', '2018-09-06 06:04:03');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:04:04', '2018-09-06 06:04:04');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/brand', 'GET', '127.0.0.1', '[]', '2018-09-06 06:04:41', '2018-09-06 06:04:41');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:04:54', '2018-09-06 06:04:54');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:04:57', '2018-09-06 06:04:57');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:04:57', '2018-09-06 06:04:57');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:05:26', '2018-09-06 06:05:26');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:05:28', '2018-09-06 06:05:28');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:05:28', '2018-09-06 06:05:28');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:06:09', '2018-09-06 06:06:09');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:06:15', '2018-09-06 06:06:15');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:06:49', '2018-09-06 06:06:49');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:07:01', '2018-09-06 06:07:01');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/brand/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:03', '2018-09-06 06:07:03');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:07:03', '2018-09-06 06:07:03');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:08', '2018-09-06 06:07:08');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/brand/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:12', '2018-09-06 06:07:12');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:07:13', '2018-09-06 06:07:13');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:15', '2018-09-06 06:07:15');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/brand/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:23', '2018-09-06 06:07:23');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:07:23', '2018-09-06 06:07:23');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/brand/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 06:07:26', '2018-09-06 06:07:26');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/brand/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 06:07:27', '2018-09-06 06:07:27');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/brand/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 06:07:27', '2018-09-06 06:07:27');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/brand/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 06:07:27', '2018-09-06 06:07:27');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:33', '2018-09-06 06:07:33');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:35', '2018-09-06 06:07:35');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:36', '2018-09-06 06:07:36');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/brand/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:37', '2018-09-06 06:07:37');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"per_page\":\"10\"}', '2018-09-06 06:07:38', '2018-09-06 06:07:38');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/brand/16', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:07:42', '2018-09-06 06:07:42');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"per_page\":\"10\"}', '2018-09-06 06:07:42', '2018-09-06 06:07:42');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:17:30', '2018-09-06 06:17:30');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:17:31', '2018-09-06 06:17:31');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:17:36', '2018-09-06 06:17:36');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:17:39', '2018-09-06 06:17:39');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:19:08', '2018-09-06 06:19:08');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:19:10', '2018-09-06 06:19:10');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/post', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:26:38', '2018-09-06 06:26:38');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:26:38', '2018-09-06 06:26:38');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:26:40', '2018-09-06 06:26:40');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:26:41', '2018-09-06 06:26:41');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/brand', 'GET', '127.0.0.1', '[]', '2018-09-06 06:27:08', '2018-09-06 06:27:08');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/brand', 'GET', '127.0.0.1', '[]', '2018-09-06 06:27:42', '2018-09-06 06:27:42');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:27:44', '2018-09-06 06:27:44');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:27:58', '2018-09-06 06:27:58');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"1\"}', '2018-09-06 06:28:03', '2018-09-06 06:28:03');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null}', '2018-09-06 06:28:06', '2018-09-06 06:28:06');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"id\":null}', '2018-09-06 06:28:24', '2018-09-06 06:28:24');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 06:30:05', '2018-09-06 06:30:05');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:30:11', '2018-09-06 06:30:11');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:30:17', '2018-09-06 06:30:17');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"brand\",\"icon\":\"fa-bars\",\"uri\":\"\\/category\",\"roles\":[\"1\",null],\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2018-09-06 06:30:24', '2018-09-06 06:30:24');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:30:24', '2018-09-06 06:30:24');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 06:30:27', '2018-09-06 06:30:27');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:30:27', '2018-09-06 06:30:27');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:30:37', '2018-09-06 06:30:37');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5206\\u7c7b\",\"icon\":\"fa-bars\",\"uri\":\"\\/category\",\"roles\":[\"1\",null],\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2018-09-06 06:30:45', '2018-09-06 06:30:45');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:30:45', '2018-09-06 06:30:45');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:30:57', '2018-09-06 06:30:57');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:30:58', '2018-09-06 06:30:58');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:30:58', '2018-09-06 06:30:58');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:31:39', '2018-09-06 06:31:39');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:31:43', '2018-09-06 06:31:43');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:31:43', '2018-09-06 06:31:43');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 06:34:39', '2018-09-06 06:34:39');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:34:42', '2018-09-06 06:34:42');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:34:48', '2018-09-06 06:34:48');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:34:48', '2018-09-06 06:34:48');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:34:54', '2018-09-06 06:34:54');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 06:34:58', '2018-09-06 06:34:58');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/category/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 06:35:00', '2018-09-06 06:35:00');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/category/9', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:35:17', '2018-09-06 06:35:17');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:35:18', '2018-09-06 06:35:18');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:35:20', '2018-09-06 06:35:20');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:35:25', '2018-09-06 06:35:25');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:35:25', '2018-09-06 06:35:25');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:35:52', '2018-09-06 06:35:52');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:35:55', '2018-09-06 06:35:55');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:44:31', '2018-09-06 06:44:31');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:44:31', '2018-09-06 06:44:31');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:45:17', '2018-09-06 06:45:17');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:45:18', '2018-09-06 06:45:18');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:45:19', '2018-09-06 06:45:19');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:45:27', '2018-09-06 06:45:27');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:45:28', '2018-09-06 06:45:28');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:45:28', '2018-09-06 06:45:28');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:45:33', '2018-09-06 06:45:33');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:45:39', '2018-09-06 06:45:39');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:45:39', '2018-09-06 06:45:39');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:45:42', '2018-09-06 06:45:42');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 06:46:04', '2018-09-06 06:46:04');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:46:06', '2018-09-06 06:46:06');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/category', 'POST', '127.0.0.1', '{\"name\":\"JewelryTool\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 06:46:11', '2018-09-06 06:46:11');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 06:46:11', '2018-09-06 06:46:11');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:46:15', '2018-09-06 06:46:15');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:46:16', '2018-09-06 06:46:16');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:46:58', '2018-09-06 06:46:58');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:47:00', '2018-09-06 06:47:00');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:47:01', '2018-09-06 06:47:01');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:49:00', '2018-09-06 06:49:00');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:49:02', '2018-09-06 06:49:02');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:49:04', '2018-09-06 06:49:04');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:49:05', '2018-09-06 06:49:05');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:49:29', '2018-09-06 06:49:29');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:49:31', '2018-09-06 06:49:31');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:49:32', '2018-09-06 06:49:32');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 06:50:25', '2018-09-06 06:50:25');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:28', '2018-09-06 06:50:28');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:50:30', '2018-09-06 06:50:30');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-09-06 06:50:30', '2018-09-06 06:50:30');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:50:31', '2018-09-06 06:50:31');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-09-06 06:50:31', '2018-09-06 06:50:31');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:50:32', '2018-09-06 06:50:32');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-09-06 06:50:33', '2018-09-06 06:50:33');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 06:50:35', '2018-09-06 06:50:35');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-09-06 06:50:37', '2018-09-06 06:50:37');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-09-06 06:50:51', '2018-09-06 06:50:51');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:52', '2018-09-06 06:50:52');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:53', '2018-09-06 06:50:53');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:54', '2018-09-06 06:50:54');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:54', '2018-09-06 06:50:54');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:55', '2018-09-06 06:50:55');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:55', '2018-09-06 06:50:55');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:56', '2018-09-06 06:50:56');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:57', '2018-09-06 06:50:57');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:58', '2018-09-06 06:50:58');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:50:59', '2018-09-06 06:50:59');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:51:01', '2018-09-06 06:51:01');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:51:02', '2018-09-06 06:51:02');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:51:05', '2018-09-06 06:51:05');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:51:13', '2018-09-06 06:51:13');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/category/16', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:51:22', '2018-09-06 06:51:22');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 06:51:23', '2018-09-06 06:51:23');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:51:31', '2018-09-06 06:51:31');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/category/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:51:53', '2018-09-06 06:51:53');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 06:51:53', '2018-09-06 06:51:53');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 06:52:26', '2018-09-06 06:52:26');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/category/16', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:52:27', '2018-09-06 06:52:27');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:52:32', '2018-09-06 06:52:32');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/category/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:52:34', '2018-09-06 06:52:34');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:52:37', '2018-09-06 06:52:37');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 06:53:06', '2018-09-06 06:53:06');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:53:08', '2018-09-06 06:53:08');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/category/1', 'PUT', '127.0.0.1', '{\"name\":\"JewelryTool\",\"sort_val\":\"12.2\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category?_sort%5Bcolumn%5D=sort_val&_sort%5Btype%5D=desc\"}', '2018-09-06 06:55:50', '2018-09-06 06:55:50');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 06:55:51', '2018-09-06 06:55:51');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:56:06', '2018-09-06 06:56:06');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:56:07', '2018-09-06 06:56:07');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/category/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:56:11', '2018-09-06 06:56:11');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/category/16', 'PUT', '127.0.0.1', '{\"name\":\"\\u81ea\\u7136\\u63a8\\u83502\",\"sort_val\":\"11\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category?_sort%5Bcolumn%5D=sort_val&_sort%5Btype%5D=desc\"}', '2018-09-06 06:56:20', '2018-09-06 06:56:20');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/category/16/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 06:56:20', '2018-09-06 06:56:20');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/category/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:56:30', '2018-09-06 06:56:30');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:56:31', '2018-09-06 06:56:31');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 06:57:25', '2018-09-06 06:57:25');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/category/16', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:57:27', '2018-09-06 06:57:27');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:57:29', '2018-09-06 06:57:29');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 06:59:15', '2018-09-06 06:59:15');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/category/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:16', '2018-09-06 06:59:16');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:18', '2018-09-06 06:59:18');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:20', '2018-09-06 06:59:20');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:21', '2018-09-06 06:59:21');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/category/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:22', '2018-09-06 06:59:22');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:24', '2018-09-06 06:59:24');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:24', '2018-09-06 06:59:24');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:27', '2018-09-06 06:59:27');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/category/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:29', '2018-09-06 06:59:29');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:30', '2018-09-06 06:59:30');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:31', '2018-09-06 06:59:31');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:32', '2018-09-06 06:59:32');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:34', '2018-09-06 06:59:34');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:38', '2018-09-06 06:59:38');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:39', '2018-09-06 06:59:39');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:41', '2018-09-06 06:59:41');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/category/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:43', '2018-09-06 06:59:43');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 06:59:44', '2018-09-06 06:59:44');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 07:00:02', '2018-09-06 07:00:02');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/category/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:03', '2018-09-06 07:00:03');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:06', '2018-09-06 07:00:06');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/category/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:07', '2018-09-06 07:00:07');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:09', '2018-09-06 07:00:09');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 07:00:26', '2018-09-06 07:00:26');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 07:00:28', '2018-09-06 07:00:28');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:30', '2018-09-06 07:00:30');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/category/1', 'PUT', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\\u4eba\\u65872\",\"sort_val\":\"12.2\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category?_sort%5Bcolumn%5D=sort_val&_sort%5Btype%5D=desc\"}', '2018-09-06 07:00:34', '2018-09-06 07:00:34');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 07:00:34', '2018-09-06 07:00:34');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:37', '2018-09-06 07:00:37');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/category/1', 'PUT', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\\u4eba\\u6587\",\"sort_val\":\"12.2\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category?_sort%5Bcolumn%5D=sort_val&_sort%5Btype%5D=desc\"}', '2018-09-06 07:00:39', '2018-09-06 07:00:39');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 07:00:39', '2018-09-06 07:00:39');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:44', '2018-09-06 07:00:44');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:00:47', '2018-09-06 07:00:47');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:02:18', '2018-09-06 07:02:18');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/category', 'GET', '127.0.0.1', '{\"id\":null,\"category_name\":\"\\u5386\\u53f2\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:02:29', '2018-09-06 07:02:29');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/category', 'GET', '127.0.0.1', '{\"id\":null,\"category_name\":\"\\u5386\\u53f2\"}', '2018-09-06 07:02:47', '2018-09-06 07:02:47');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/category', 'GET', '127.0.0.1', '{\"id\":null,\"category_name\":\"\\u5386\\u53f2\"}', '2018-09-06 07:02:53', '2018-09-06 07:02:53');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/category', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:02:54', '2018-09-06 07:02:54');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/category', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\",\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:02:56', '2018-09-06 07:02:56');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/category', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\",\"_sort\":{\"column\":\"sort_val\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:02:56', '2018-09-06 07:02:56');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/category', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\",\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:02:57', '2018-09-06 07:02:57');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/category', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:02:58', '2018-09-06 07:02:58');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/category', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5386\\u53f2\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:02:58', '2018-09-06 07:02:58');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:03:01', '2018-09-06 07:03:01');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:03:09', '2018-09-06 07:03:09');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:03:09', '2018-09-06 07:03:09');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:03:13', '2018-09-06 07:03:13');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"category_name\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc\"}', '2018-09-06 07:03:15', '2018-09-06 07:03:15');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:03:15', '2018-09-06 07:03:15');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:04:19', '2018-09-06 07:04:19');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"category_name\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category?category_name=%E5%8E%86%E5%8F%B2&id=\"}', '2018-09-06 07:04:25', '2018-09-06 07:04:25');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:04:26', '2018-09-06 07:04:26');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"category_name\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:05:05', '2018-09-06 07:05:05');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:05:05', '2018-09-06 07:05:05');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:05:15', '2018-09-06 07:05:15');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:05:17', '2018-09-06 07:05:17');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/category/6', 'PUT', '127.0.0.1', '{\"category_name\":\"\\u79d1\\u6280\\u521b\\u65b0\",\"sort_val\":\"1\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 07:05:18', '2018-09-06 07:05:18');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:05:18', '2018-09-06 07:05:18');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/category/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:05:21', '2018-09-06 07:05:21');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/category/16', 'PUT', '127.0.0.1', '{\"category_name\":\"\\u70ed\\u95e8\\u63a8\\u83502\",\"sort_val\":\"11\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 07:05:24', '2018-09-06 07:05:24');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:05:25', '2018-09-06 07:05:25');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/category/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:05:28', '2018-09-06 07:05:28');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/category/16', 'PUT', '127.0.0.1', '{\"category_name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort_val\":\"11\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 07:05:30', '2018-09-06 07:05:30');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:05:31', '2018-09-06 07:05:31');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:05:48', '2018-09-06 07:05:48');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:05:56', '2018-09-06 07:05:56');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"category_name\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 07:05:58', '2018-09-06 07:05:58');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:05:58', '2018-09-06 07:05:58');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"1123\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:06:07', '2018-09-06 07:06:07');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:06:07', '2018-09-06 07:06:07');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"1123\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:06:11', '2018-09-06 07:06:11');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:06:11', '2018-09-06 07:06:11');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"1123\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:06:16', '2018-09-06 07:06:16');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:06:16', '2018-09-06 07:06:16');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:06:32', '2018-09-06 07:06:32');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:07:55', '2018-09-06 07:07:55');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:07:58', '2018-09-06 07:07:58');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:07:59', '2018-09-06 07:07:59');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"category_name\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 07:08:01', '2018-09-06 07:08:01');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/category/create', 'GET', '127.0.0.1', '[]', '2018-09-06 07:08:01', '2018-09-06 07:08:01');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"category_name\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:22:53', '2018-09-06 07:22:53');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:22:53', '2018-09-06 07:22:53');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/category/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:22:57', '2018-09-06 07:22:57');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/category/17', 'PUT', '127.0.0.1', '{\"category_name\":\"\\u963f\\u8428\\u5fb7\\u7fa4\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 07:23:03', '2018-09-06 07:23:03');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:23:03', '2018-09-06 07:23:03');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/category/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:23:08', '2018-09-06 07:23:08');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:23:08', '2018-09-06 07:23:08');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:23:11', '2018-09-06 07:23:11');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/category', 'POST', '127.0.0.1', '{\"category_name\":\"\\u5206\\u7c7b\\u540d\\u79f0\",\"sort_val\":\"13.3\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/category\"}', '2018-09-06 07:23:22', '2018-09-06 07:23:22');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/category', 'GET', '127.0.0.1', '[]', '2018-09-06 07:23:22', '2018-09-06 07:23:22');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/category/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:23:28', '2018-09-06 07:23:28');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:23:29', '2018-09-06 07:23:29');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:23:51', '2018-09-06 07:23:51');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:23:52', '2018-09-06 07:23:52');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:23:57', '2018-09-06 07:23:57');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:08', '2018-09-06 07:24:08');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:10', '2018-09-06 07:24:10');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:16', '2018-09-06 07:24:16');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:24', '2018-09-06 07:24:24');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:27', '2018-09-06 07:24:27');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:28', '2018-09-06 07:24:28');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:29', '2018-09-06 07:24:29');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:30', '2018-09-06 07:24:30');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:31', '2018-09-06 07:24:31');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:31', '2018-09-06 07:24:31');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:41', '2018-09-06 07:24:41');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:43', '2018-09-06 07:24:43');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:44', '2018-09-06 07:24:44');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:46', '2018-09-06 07:24:46');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:47', '2018-09-06 07:24:47');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:52', '2018-09-06 07:24:52');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:53', '2018-09-06 07:24:53');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:53', '2018-09-06 07:24:53');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:55', '2018-09-06 07:24:55');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:24:58', '2018-09-06 07:24:58');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u57fa\\u5730\\u7ba1\\u7406\",\"icon\":\"fa-yc-square\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2018-09-06 07:25:20', '2018-09-06 07:25:20');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 07:25:20', '2018-09-06 07:25:20');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:25:31', '2018-09-06 07:25:31');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/category\",\"roles\":[\"1\",null],\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2018-09-06 07:25:37', '2018-09-06 07:25:37');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 07:25:37', '2018-09-06 07:25:37');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:18', '2018-09-06 07:33:18');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:21', '2018-09-06 07:33:21');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:26', '2018-09-06 07:33:26');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:27', '2018-09-06 07:33:27');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:28', '2018-09-06 07:33:28');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:28', '2018-09-06 07:33:28');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:28', '2018-09-06 07:33:28');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:29', '2018-09-06 07:33:29');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:33', '2018-09-06 07:33:33');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:34', '2018-09-06 07:33:34');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:35', '2018-09-06 07:33:35');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:37', '2018-09-06 07:33:37');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:37', '2018-09-06 07:33:37');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:38', '2018-09-06 07:33:38');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:38', '2018-09-06 07:33:38');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:39', '2018-09-06 07:33:39');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:58', '2018-09-06 07:33:58');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:58', '2018-09-06 07:33:58');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:59', '2018-09-06 07:33:59');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:33:59', '2018-09-06 07:33:59');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:34:00', '2018-09-06 07:34:00');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:34:39', '2018-09-06 07:34:39');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:34:54', '2018-09-06 07:34:54');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u57fa\\u5730\\u6d3b\\u52a8\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/activity\",\"roles\":[\"1\",null],\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:35:47', '2018-09-06 07:35:47');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 07:35:47', '2018-09-06 07:35:47');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 07:35:50', '2018-09-06 07:35:50');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 07:40:57', '2018-09-06 07:40:57');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:41:02', '2018-09-06 07:41:02');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 07:42:14', '2018-09-06 07:42:14');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:43', '2018-09-06 07:43:43');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:46', '2018-09-06 07:43:46');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:47', '2018-09-06 07:43:47');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:48', '2018-09-06 07:43:48');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:49', '2018-09-06 07:43:49');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"100\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:51', '2018-09-06 07:43:51');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:52', '2018-09-06 07:43:52');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:43:52', '2018-09-06 07:43:52');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\",\"_export_\":\"page:1\"}', '2018-09-06 07:43:56', '2018-09-06 07:43:56');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\"}', '2018-09-06 07:46:44', '2018-09-06 07:46:44');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:46:51', '2018-09-06 07:46:51');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:46:59', '2018-09-06 07:46:59');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\"}', '2018-09-06 07:47:03', '2018-09-06 07:47:03');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:04', '2018-09-06 07:47:04');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:06', '2018-09-06 07:47:06');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:07', '2018-09-06 07:47:07');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 07:47:09', '2018-09-06 07:47:09');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"per_page\":\"20\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"asc\"}}', '2018-09-06 07:47:11', '2018-09-06 07:47:11');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:15', '2018-09-06 07:47:15');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:35', '2018-09-06 07:47:35');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:49', '2018-09-06 07:47:49');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:49', '2018-09-06 07:47:49');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:50', '2018-09-06 07:47:50');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:47:52', '2018-09-06 07:47:52');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 07:47:57', '2018-09-06 07:47:57');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-06 07:54:09', '2018-09-06 07:54:09');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:54:13', '2018-09-06 07:54:13');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:54:14', '2018-09-06 07:54:14');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:54:16', '2018-09-06 07:54:16');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:54:18', '2018-09-06 07:54:18');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:54:19', '2018-09-06 07:54:19');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:54:20', '2018-09-06 07:54:20');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 07:54:21', '2018-09-06 07:54:21');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 07:54:35', '2018-09-06 07:54:35');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 07:55:15', '2018-09-06 07:55:15');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 07:55:36', '2018-09-06 07:55:36');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:01:23', '2018-09-06 08:01:23');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:01:24', '2018-09-06 08:01:24');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 08:02:19', '2018-09-06 08:02:19');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:02:19', '2018-09-06 08:02:19');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\"}', '2018-09-06 08:03:32', '2018-09-06 08:03:32');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:03:32', '2018-09-06 08:03:32');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:03:35', '2018-09-06 08:03:35');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 08:03:58', '2018-09-06 08:03:58');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:03:58', '2018-09-06 08:03:58');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\"}', '2018-09-06 08:04:02', '2018-09-06 08:04:02');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:04:02', '2018-09-06 08:04:02');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:04:05', '2018-09-06 08:04:05');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-06 08:04:53', '2018-09-06 08:04:53');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"activity_name\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 08:05:00', '2018-09-06 08:05:00');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-06 08:05:00', '2018-09-06 08:05:00');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-06 08:05:14', '2018-09-06 08:05:14');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"activity_name\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\"}', '2018-09-06 08:05:21', '2018-09-06 08:05:21');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-06 08:05:21', '2018-09-06 08:05:21');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:43', '2018-09-06 08:05:43');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:46', '2018-09-06 08:05:46');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:49', '2018-09-06 08:05:49');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:50', '2018-09-06 08:05:50');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:51', '2018-09-06 08:05:51');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:52', '2018-09-06 08:05:52');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:53', '2018-09-06 08:05:53');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:54', '2018-09-06 08:05:54');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:05:56', '2018-09-06 08:05:56');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:06:02', '2018-09-06 08:06:02');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:06:14', '2018-09-06 08:06:14');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:06:15', '2018-09-06 08:06:15');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:06:22', '2018-09-06 08:06:22');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:06:23', '2018-09-06 08:06:23');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:07:23', '2018-09-06 08:07:23');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 08:07:31', '2018-09-06 08:07:31');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:07:31', '2018-09-06 08:07:31');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:08:28', '2018-09-06 08:08:28');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:33', '2018-09-06 08:08:33');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:34', '2018-09-06 08:08:34');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:36', '2018-09-06 08:08:36');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:37', '2018-09-06 08:08:37');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:38', '2018-09-06 08:08:38');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:38', '2018-09-06 08:08:38');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:40', '2018-09-06 08:08:40');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:52', '2018-09-06 08:08:52');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:54', '2018-09-06 08:08:54');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:55', '2018-09-06 08:08:55');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:55', '2018-09-06 08:08:55');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:56', '2018-09-06 08:08:56');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:56', '2018-09-06 08:08:56');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:08:58', '2018-09-06 08:08:58');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:00', '2018-09-06 08:09:00');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:01', '2018-09-06 08:09:01');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:02', '2018-09-06 08:09:02');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:02', '2018-09-06 08:09:02');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:05', '2018-09-06 08:09:05');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:06', '2018-09-06 08:09:06');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:07', '2018-09-06 08:09:07');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:07', '2018-09-06 08:09:07');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:10', '2018-09-06 08:09:10');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:10', '2018-09-06 08:09:10');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:11', '2018-09-06 08:09:11');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:13', '2018-09-06 08:09:13');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:17', '2018-09-06 08:09:17');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:19', '2018-09-06 08:09:19');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:24', '2018-09-06 08:09:24');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:09:25', '2018-09-06 08:09:25');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:12:10', '2018-09-06 08:12:10');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:12:12', '2018-09-06 08:12:12');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:12:42', '2018-09-06 08:12:42');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 08:30:15', '2018-09-06 08:30:15');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:30:17', '2018-09-06 08:30:17');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 08:35:42', '2018-09-06 08:35:42');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 08:35:43', '2018-09-06 08:35:43');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:35:45', '2018-09-06 08:35:45');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:35:51', '2018-09-06 08:35:51');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:35:52', '2018-09-06 08:35:52');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:35:53', '2018-09-06 08:35:53');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:35:54', '2018-09-06 08:35:54');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:36:01', '2018-09-06 08:36:01');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:36:01', '2018-09-06 08:36:01');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:38:41', '2018-09-06 08:38:41');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:38:43', '2018-09-06 08:38:43');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:38:43', '2018-09-06 08:38:43');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:42:54', '2018-09-06 08:42:54');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:42:57', '2018-09-06 08:42:57');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:43:33', '2018-09-06 08:43:33');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:43:59', '2018-09-06 08:43:59');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"_token\":\"Larse49L5HnfrkuX3a2LTiVsqFNUDCUtZsDZLFCo\",\"_method\":\"PUT\"}', '2018-09-06 08:44:08', '2018-09-06 08:44:08');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:44:09', '2018-09-06 08:44:09');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:44:27', '2018-09-06 08:44:27');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:44:29', '2018-09-06 08:44:29');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:44:31', '2018-09-06 08:44:31');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:44:43', '2018-09-06 08:44:43');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:44:44', '2018-09-06 08:44:44');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 08:45:21', '2018-09-06 08:45:21');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:45:23', '2018-09-06 08:45:23');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:48:31', '2018-09-06 08:48:31');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:50:07', '2018-09-06 08:50:07');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:50:38', '2018-09-06 08:50:38');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:51:25', '2018-09-06 08:51:25');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 08:51:28', '2018-09-06 08:51:28');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:53:00', '2018-09-06 08:53:00');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:53:29', '2018-09-06 08:53:29');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:56:25', '2018-09-06 08:56:25');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"_token\":\"hxV1CpQP9loF47MNWF7j9MpnSPcJBYNa2vacXvJI\",\"_method\":\"PUT\"}', '2018-09-06 08:56:39', '2018-09-06 08:56:39');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:56:40', '2018-09-06 08:56:40');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:56:42', '2018-09-06 08:56:42');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:56:55', '2018-09-06 08:56:55');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 08:59:57', '2018-09-06 08:59:57');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:01:36', '2018-09-06 09:01:36');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:04:33', '2018-09-06 09:04:33');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:07:54', '2018-09-06 09:07:54');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:08:06', '2018-09-06 09:08:06');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/activity/1', 'GET', '127.0.0.1', '[]', '2018-09-06 09:08:38', '2018-09-06 09:08:38');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"activity_name\",\"start_time\":\"00:00:00\",\"end_time\":\"00:00:00\",\"activity_des\":\"<p>213123123123<\\/p>\",\"_token\":\"hxV1CpQP9loF47MNWF7j9MpnSPcJBYNa2vacXvJI\"}', '2018-09-06 09:08:45', '2018-09-06 09:08:45');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/activity/1', 'GET', '127.0.0.1', '[]', '2018-09-06 09:08:45', '2018-09-06 09:08:45');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:08:48', '2018-09-06 09:08:48');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:08:53', '2018-09-06 09:08:53');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:08:55', '2018-09-06 09:08:55');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:08:56', '2018-09-06 09:08:56');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:10:10', '2018-09-06 09:10:10');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:10:46', '2018-09-06 09:10:46');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:11:06', '2018-09-06 09:11:06');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:11:23', '2018-09-06 09:11:23');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:13:51', '2018-09-06 09:13:51');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:14:09', '2018-09-06 09:14:09');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:14:15', '2018-09-06 09:14:15');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:15:30', '2018-09-06 09:15:30');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:15:51', '2018-09-06 09:15:51');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p style=\\\"text-align: center;\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:16:08', '2018-09-06 09:16:08');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:16:09', '2018-09-06 09:16:09');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p style=\\\"text-align: center;\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"phone\":\"12323123___\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:16:22', '2018-09-06 09:16:22');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:16:22', '2018-09-06 09:16:22');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:19:30', '2018-09-06 09:19:30');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:25:20', '2018-09-06 09:25:20');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"aqeqweqweqwewqqweqweqwe\",\"introduction\":\"asdasdadadasdadasdadsasdadasda\",\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:25:33', '2018-09-06 09:25:33');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:25:33', '2018-09-06 09:25:33');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:26:09', '2018-09-06 09:26:09');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":null,\"introduction\":null,\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:26:11', '2018-09-06 09:26:11');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:26:11', '2018-09-06 09:26:11');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":null,\"introduction\":null,\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:26:54', '2018-09-06 09:26:54');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:26:54', '2018-09-06 09:26:54');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":null,\"introduction\":null,\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:27:37', '2018-09-06 09:27:37');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:27:37', '2018-09-06 09:27:37');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:27:45', '2018-09-06 09:27:45');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 09:27:45', '2018-09-06 09:27:45');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:27:50', '2018-09-06 09:27:50');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:28:53', '2018-09-06 09:28:53');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:28:55', '2018-09-06 09:28:55');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/activity/1', 'GET', '127.0.0.1', '[]', '2018-09-06 09:28:59', '2018-09-06 09:28:59');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:29:01', '2018-09-06 09:29:01');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"off\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:29:09', '2018-09-06 09:29:09');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 09:29:09', '2018-09-06 09:29:09');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:29:10', '2018-09-06 09:29:10');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 09:29:15', '2018-09-06 09:29:15');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\"}', '2018-09-06 09:29:18', '2018-09-06 09:29:18');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 09:29:18', '2018-09-06 09:29:18');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:29:20', '2018-09-06 09:29:20');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:29:48', '2018-09-06 09:29:48');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:29:51', '2018-09-06 09:29:51');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p style=\\\"text-align: center;\\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"aKtifn6nbIL7LfvKBV1noo3lguX4KsjSs5Y2EJ6I\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 09:29:59', '2018-09-06 09:29:59');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 09:29:59', '2018-09-06 09:29:59');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:30:00', '2018-09-06 09:30:00');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:30:04', '2018-09-06 09:30:04');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:30:05', '2018-09-06 09:30:05');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:30:06', '2018-09-06 09:30:06');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:31:00', '2018-09-06 09:31:00');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:31:14', '2018-09-06 09:31:14');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:31:15', '2018-09-06 09:31:15');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:31:15', '2018-09-06 09:31:15');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:31:17', '2018-09-06 09:31:17');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 09:45:29', '2018-09-06 09:45:29');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:45:31', '2018-09-06 09:45:31');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:45:34', '2018-09-06 09:45:34');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 09:45:35', '2018-09-06 09:45:35');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 17:47:31', '2018-09-06 17:47:31');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 17:53:08', '2018-09-06 17:53:08');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536227706418046.jpeg\\\" title=\\\"1536227706418046.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) \\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630750#.jpg\\\"\\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"8tAyX39rBrOylNu99gB3SUOmHobmMQZlx2mRgLVI\",\"_method\":\"PUT\"}', '2018-09-06 17:55:51', '2018-09-06 17:55:51');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 17:55:52', '2018-09-06 17:55:52');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536227706418046.jpeg\\\" title=\\\"1536227706418046.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) \\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630750#.jpg\\\"\\/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"8tAyX39rBrOylNu99gB3SUOmHobmMQZlx2mRgLVI\",\"_method\":\"PUT\"}', '2018-09-06 17:56:38', '2018-09-06 17:56:38');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 17:56:38', '2018-09-06 17:56:38');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:00:38', '2018-09-06 18:00:38');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"8tAyX39rBrOylNu99gB3SUOmHobmMQZlx2mRgLVI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 18:00:59', '2018-09-06 18:00:59');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 18:00:59', '2018-09-06 18:00:59');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:01:01', '2018-09-06 18:01:01');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:01:07', '2018-09-06 18:01:07');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:01:11', '2018-09-06 18:01:11');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 18:12:15', '2018-09-06 18:12:15');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"is_pass\":\"on\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"phone\":\"12323______\",\"_token\":\"8tAyX39rBrOylNu99gB3SUOmHobmMQZlx2mRgLVI\",\"_method\":\"PUT\"}', '2018-09-06 18:12:33', '2018-09-06 18:12:33');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 18:12:33', '2018-09-06 18:12:33');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:12:37', '2018-09-06 18:12:37');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:12:42', '2018-09-06 18:12:42');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:12:45', '2018-09-06 18:12:45');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:12:45', '2018-09-06 18:12:45');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:12:47', '2018-09-06 18:12:47');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 18:12:49', '2018-09-06 18:12:49');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 18:15:00', '2018-09-06 18:15:00');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 18:15:54', '2018-09-06 18:15:54');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 18:16:15', '2018-09-06 18:16:15');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:30', '2018-09-06 18:16:30');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:31', '2018-09-06 18:16:31');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:33', '2018-09-06 18:16:33');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:37', '2018-09-06 18:16:37');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:45', '2018-09-06 18:16:45');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:46', '2018-09-06 18:16:46');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:47', '2018-09-06 18:16:47');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:48', '2018-09-06 18:16:48');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:49', '2018-09-06 18:16:49');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:50', '2018-09-06 18:16:50');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:16:50', '2018-09-06 18:16:50');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:29:39', '2018-09-06 18:29:39');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:29:42', '2018-09-06 18:29:42');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:29:51', '2018-09-06 18:29:51');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:29:51', '2018-09-06 18:29:51');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:29:52', '2018-09-06 18:29:52');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:29:53', '2018-09-06 18:29:53');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:29:57', '2018-09-06 18:29:57');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"category_name\":\"\\u5357\\u5c71\"}', '2018-09-06 18:30:08', '2018-09-06 18:30:08');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"id\":null,\"category_name\":\"\\u5357\\u5c71\"}', '2018-09-06 18:30:47', '2018-09-06 18:30:47');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5357\\u5c71\",\"id\":null,\"activity_name\":\"\\u5357\\u5c71\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:30:51', '2018-09-06 18:30:51');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5357\\u5c71\",\"_pjax\":\"#pjax-container\",\"id\":null,\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\"}', '2018-09-06 18:30:57', '2018-09-06 18:30:57');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"category_name\":\"\\u5357\\u5c71\",\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:30:58', '2018-09-06 18:30:58');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:12', '2018-09-06 18:31:12');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:12', '2018-09-06 18:31:12');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:13', '2018-09-06 18:31:13');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:13', '2018-09-06 18:31:13');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:15', '2018-09-06 18:31:15');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:15', '2018-09-06 18:31:15');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:16', '2018-09-06 18:31:16');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:16', '2018-09-06 18:31:16');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:18', '2018-09-06 18:31:18');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:51', '2018-09-06 18:31:51');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:31:52', '2018-09-06 18:31:52');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:14', '2018-09-06 18:36:14');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:17', '2018-09-06 18:36:17');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:20', '2018-09-06 18:36:20');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:21', '2018-09-06 18:36:21');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:23', '2018-09-06 18:36:23');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:34', '2018-09-06 18:36:34');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:36', '2018-09-06 18:36:36');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:36', '2018-09-06 18:36:36');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:37', '2018-09-06 18:36:37');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:36:42', '2018-09-06 18:36:42');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7b54\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"8tAyX39rBrOylNu99gB3SUOmHobmMQZlx2mRgLVI\"}', '2018-09-06 18:37:11', '2018-09-06 18:37:11');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 18:37:11', '2018-09-06 18:37:11');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-06 18:38:10', '2018-09-06 18:38:10');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:38:12', '2018-09-06 18:38:12');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:38:14', '2018-09-06 18:38:14');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:41:10', '2018-09-06 18:41:10');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:41:14', '2018-09-06 18:41:14');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:41:15', '2018-09-06 18:41:15');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:41:17', '2018-09-06 18:41:17');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:41:34', '2018-09-06 18:41:34');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 18:41:47', '2018-09-06 18:41:47');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 19:27:01', '2018-09-06 19:27:01');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:27:03', '2018-09-06 19:27:03');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 19:27:03', '2018-09-06 19:27:03');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 19:32:26', '2018-09-06 19:32:26');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-06 19:32:28', '2018-09-06 19:32:28');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"is_pass\":\"off\",\"lat\":\"39.740986355883564\",\"lng\":\"116.30882263183594\",\"phone\":\"12323______\",\"integral_num\":\"0\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"_token\":\"tGXrgaQubKC2fJz52nM8ualR37lSDsXD5298UpXA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 19:33:46', '2018-09-06 19:33:46');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 19:33:47', '2018-09-06 19:33:47');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:33:49', '2018-09-06 19:33:49');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"is_pass\":\"off\",\"lat\":\"27.571895193637438\",\"lng\":\"120.60751050710678\",\"phone\":\"12323______\",\"integral_num\":\"0\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"_token\":\"tGXrgaQubKC2fJz52nM8ualR37lSDsXD5298UpXA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 19:34:28', '2018-09-06 19:34:28');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 19:34:28', '2018-09-06 19:34:28');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:34:30', '2018-09-06 19:34:30');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"lat\":\"22.62668736215304\",\"lng\":\"113.81516218185425\",\"phone\":\"12323______\",\"integral_num\":\"0\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"_token\":\"tGXrgaQubKC2fJz52nM8ualR37lSDsXD5298UpXA\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-06 19:36:08', '2018-09-06 19:36:08');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-06 19:36:08', '2018-09-06 19:36:08');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:36:10', '2018-09-06 19:36:10');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:06', '2018-09-06 19:46:06');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:07', '2018-09-06 19:46:07');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:08', '2018-09-06 19:46:08');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:09', '2018-09-06 19:46:09');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:09', '2018-09-06 19:46:09');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:10', '2018-09-06 19:46:10');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:11', '2018-09-06 19:46:11');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:12', '2018-09-06 19:46:12');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:12', '2018-09-06 19:46:12');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:13', '2018-09-06 19:46:13');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:16', '2018-09-06 19:46:16');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:17', '2018-09-06 19:46:17');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:18', '2018-09-06 19:46:18');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:19', '2018-09-06 19:46:19');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:28', '2018-09-06 19:46:28');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 19:46:28', '2018-09-06 19:46:28');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 19:49:08', '2018-09-06 19:49:08');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 20:24:52', '2018-09-06 20:24:52');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:24:54', '2018-09-06 20:24:54');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:24:58', '2018-09-06 20:24:58');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:00', '2018-09-06 20:25:00');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:01', '2018-09-06 20:25:01');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:02', '2018-09-06 20:25:02');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:06', '2018-09-06 20:25:06');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:07', '2018-09-06 20:25:07');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:09', '2018-09-06 20:25:09');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:12', '2018-09-06 20:25:12');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:13', '2018-09-06 20:25:13');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:14', '2018-09-06 20:25:14');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:18', '2018-09-06 20:25:18');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"activity_name\":\"\\u5357\\u5c71\"}', '2018-09-06 20:25:31', '2018-09-06 20:25:31');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"activity_name\":\"\\u5357\\u5c712\"}', '2018-09-06 20:25:34', '2018-09-06 20:25:34');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":null,\"activity_name\":\"\\u5357\\u5c71\"}', '2018-09-06 20:25:38', '2018-09-06 20:25:38');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:58', '2018-09-06 20:25:58');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:58', '2018-09-06 20:25:58');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:59', '2018-09-06 20:25:59');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:25:59', '2018-09-06 20:25:59');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:26:03', '2018-09-06 20:26:03');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:26:04', '2018-09-06 20:26:04');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 20:26:05', '2018-09-06 20:26:05');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-06 21:50:51', '2018-09-06 21:50:51');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:50:55', '2018-09-06 21:50:55');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:50:56', '2018-09-06 21:50:56');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:50:57', '2018-09-06 21:50:57');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:50:59', '2018-09-06 21:50:59');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:50:59', '2018-09-06 21:50:59');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:02', '2018-09-06 21:51:02');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:19', '2018-09-06 21:51:19');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:21', '2018-09-06 21:51:21');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:25', '2018-09-06 21:51:25');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:38', '2018-09-06 21:51:38');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:39', '2018-09-06 21:51:39');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:39', '2018-09-06 21:51:39');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:40', '2018-09-06 21:51:40');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:41', '2018-09-06 21:51:41');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:44', '2018-09-06 21:51:44');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:45', '2018-09-06 21:51:45');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:46', '2018-09-06 21:51:46');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:50', '2018-09-06 21:51:50');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:52', '2018-09-06 21:51:52');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:52', '2018-09-06 21:51:52');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:53', '2018-09-06 21:51:53');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:55', '2018-09-06 21:51:55');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:56', '2018-09-06 21:51:56');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:51:59', '2018-09-06 21:51:59');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:00', '2018-09-06 21:52:00');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:05', '2018-09-06 21:52:05');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:06', '2018-09-06 21:52:06');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:07', '2018-09-06 21:52:07');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:08', '2018-09-06 21:52:08');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:08', '2018-09-06 21:52:08');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:10', '2018-09-06 21:52:10');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-06 21:52:14', '2018-09-06 21:52:14');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 21:52:16', '2018-09-06 21:52:16');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"sort_val\",\"type\":\"asc\"}}', '2018-09-06 21:52:17', '2018-09-06 21:52:17');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"sort_val\",\"type\":\"desc\"}}', '2018-09-06 21:52:18', '2018-09-06 21:52:18');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2018-09-06 21:52:19', '2018-09-06 21:52:19');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-07 09:17:00', '2018-09-07 09:17:00');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:02', '2018-09-07 09:17:02');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:04', '2018-09-07 09:17:04');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:07', '2018-09-07 09:17:07');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:12', '2018-09-07 09:17:12');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:13', '2018-09-07 09:17:13');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:14', '2018-09-07 09:17:14');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:14', '2018-09-07 09:17:14');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:15', '2018-09-07 09:17:15');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:16', '2018-09-07 09:17:16');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:16', '2018-09-07 09:17:16');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:18', '2018-09-07 09:17:18');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:19', '2018-09-07 09:17:19');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:20', '2018-09-07 09:17:20');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:21', '2018-09-07 09:17:21');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:22', '2018-09-07 09:17:22');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:23', '2018-09-07 09:17:23');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:25', '2018-09-07 09:17:25');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:25', '2018-09-07 09:17:25');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:28', '2018-09-07 09:17:28');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:28', '2018-09-07 09:17:28');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:29', '2018-09-07 09:17:29');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:30', '2018-09-07 09:17:30');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:31', '2018-09-07 09:17:31');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:33', '2018-09-07 09:17:33');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":[\"4\",\"1\",\"4\",null],\"_token\":\"rwoY6azqG3En9xZVGrV9eeGDj5ahSlObghcmpQdj\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/roles\"}', '2018-09-07 09:17:39', '2018-09-07 09:17:39');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-09-07 09:17:39', '2018-09-07 09:17:39');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:41', '2018-09-07 09:17:41');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:41', '2018-09-07 09:17:41');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:45', '2018-09-07 09:17:45');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:46', '2018-09-07 09:17:46');
INSERT INTO `admin_operation_log` VALUES ('1019', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:48', '2018-09-07 09:17:48');
INSERT INTO `admin_operation_log` VALUES ('1020', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:49', '2018-09-07 09:17:49');
INSERT INTO `admin_operation_log` VALUES ('1021', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:49', '2018-09-07 09:17:49');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:53', '2018-09-07 09:17:53');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:17:55', '2018-09-07 09:17:55');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:19:51', '2018-09-07 09:19:51');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:19:51', '2018-09-07 09:19:51');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:19:52', '2018-09-07 09:19:52');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:19:52', '2018-09-07 09:19:52');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 09:19:53', '2018-09-07 09:19:53');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-07 16:02:03', '2018-09-07 16:02:03');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:02:07', '2018-09-07 16:02:07');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:02:09', '2018-09-07 16:02:09');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-07 16:06:37', '2018-09-07 16:06:37');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:06:40', '2018-09-07 16:06:40');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:06:41', '2018-09-07 16:06:41');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:06:42', '2018-09-07 16:06:42');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:06:44', '2018-09-07 16:06:44');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:06:44', '2018-09-07 16:06:44');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:06:47', '2018-09-07 16:06:47');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:07:05', '2018-09-07 16:07:05');
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:07:07', '2018-09-07 16:07:07');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:07:08', '2018-09-07 16:07:08');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:07:10', '2018-09-07 16:07:10');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:07:11', '2018-09-07 16:07:11');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:07:13', '2018-09-07 16:07:13');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:08:21', '2018-09-07 16:08:21');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:08:23', '2018-09-07 16:08:23');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:08:26', '2018-09-07 16:08:26');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:08:28', '2018-09-07 16:08:28');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:36', '2018-09-07 16:09:36');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:38', '2018-09-07 16:09:38');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:40', '2018-09-07 16:09:40');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:41', '2018-09-07 16:09:41');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:43', '2018-09-07 16:09:43');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:44', '2018-09-07 16:09:44');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:46', '2018-09-07 16:09:46');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:54', '2018-09-07 16:09:54');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:55', '2018-09-07 16:09:55');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/activity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:09:57', '2018-09-07 16:09:57');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:10:03', '2018-09-07 16:10:03');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:49:25', '2018-09-07 16:49:25');
INSERT INTO `admin_operation_log` VALUES ('1061', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:49:25', '2018-09-07 16:49:25');
INSERT INTO `admin_operation_log` VALUES ('1062', '1', 'admin/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:49:28', '2018-09-07 16:49:28');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:49:29', '2018-09-07 16:49:29');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-07 16:49:30', '2018-09-07 16:49:30');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-08 09:20:46', '2018-09-08 09:20:46');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 09:20:49', '2018-09-08 09:20:49');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 09:20:50', '2018-09-08 09:20:50');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 09:20:53', '2018-09-08 09:20:53');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-09-08 20:07:34', '2018-09-08 20:07:34');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:07:37', '2018-09-08 20:07:37');
INSERT INTO `admin_operation_log` VALUES ('1071', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:07:39', '2018-09-08 20:07:39');
INSERT INTO `admin_operation_log` VALUES ('1072', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u57fa\\u5730\",\"start_time\":\"00:05:02\",\"end_time\":\"12:30:35\",\"is_pass\":\"on\",\"lat\":\"22.547281616852977\",\"lng\":\"114.04249548912048\",\"phone\":\"159720_____\",\"integral_num\":\"0\",\"introduction_title\":null,\"introduction\":\"\\u8bf7\\u6c42\\u7fc1\\u7fa4\\u7fc1\\u7fa4\\u65e0\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><strong><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180908\\/1536408553308074.png\\\" title=\\\"1536408553308074.png\\\" alt=\\\"1535439990.jpg\\\" width=\\\"597\\\" height=\\\"309\\\"\\/><\\/strong><br\\/><\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-08 20:09:22', '2018-09-08 20:09:22');
INSERT INTO `admin_operation_log` VALUES ('1073', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:09:23', '2018-09-08 20:09:23');
INSERT INTO `admin_operation_log` VALUES ('1074', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u57fa\\u5730\",\"start_time\":\"00:05:02\",\"end_time\":\"12:30:35\",\"is_pass\":\"on\",\"lat\":\"22.547281616852977\",\"lng\":\"114.04249548912048\",\"phone\":\"159720_____\",\"integral_num\":\"0\",\"introduction_title\":\"aqeqweqweqwewqqweqweqwe\",\"introduction\":\"\\u8bf7\\u6c42\\u7fc1\\u7fa4\\u7fc1\\u7fa4\\u65e0\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><strong><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180908\\/1536408553308074.png\\\" title=\\\"1536408553308074.png\\\" alt=\\\"1535439990.jpg\\\" width=\\\"597\\\" height=\\\"309\\\"\\/><\\/strong><br\\/><\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\"}', '2018-09-08 20:09:56', '2018-09-08 20:09:56');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:09:56', '2018-09-08 20:09:56');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u57fa\\u5730\",\"start_time\":\"00:05:02\",\"end_time\":\"12:30:35\",\"is_pass\":\"on\",\"lat\":\"22.547281616852977\",\"lng\":\"114.04249548912048\",\"phone\":\"159720_____\",\"integral_num\":\"0\",\"introduction_title\":\"aqeqweqweqwewqqweqweqwe\",\"introduction\":\"\\u8bf7\\u6c42\\u7fc1\\u7fa4\\u7fc1\\u7fa4\\u65e0\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><strong><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180908\\/1536408553308074.png\\\" title=\\\"1536408553308074.png\\\" alt=\\\"1535439990.jpg\\\" width=\\\"597\\\" height=\\\"309\\\"\\/><\\/strong><br\\/><\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\"}', '2018-09-08 20:10:18', '2018-09-08 20:10:18');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:10:18', '2018-09-08 20:10:18');
INSERT INTO `admin_operation_log` VALUES ('1078', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u57fa\\u5730\",\"start_time\":\"00:05:02\",\"end_time\":\"12:30:35\",\"is_pass\":\"on\",\"lat\":\"22.547281616852977\",\"lng\":\"114.04249548912048\",\"phone\":\"159720_____\",\"integral_num\":\"0\",\"introduction_title\":\"aqeqweqweqwewqqweqweqwe\",\"introduction\":\"\\u8bf7\\u6c42\\u7fc1\\u7fa4\\u7fc1\\u7fa4\\u65e0\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><strong><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180908\\/1536408553308074.png\\\" title=\\\"1536408553308074.png\\\" alt=\\\"1535439990.jpg\\\" width=\\\"597\\\" height=\\\"309\\\"\\/><\\/strong><br\\/><\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\"}', '2018-09-08 20:10:37', '2018-09-08 20:10:37');
INSERT INTO `admin_operation_log` VALUES ('1079', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:10:37', '2018-09-08 20:10:37');
INSERT INTO `admin_operation_log` VALUES ('1080', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u57fa\\u5730\",\"start_time\":\"00:05:02\",\"end_time\":\"12:30:35\",\"is_pass\":\"on\",\"lat\":\"22.54997677339611\",\"lng\":\"114.01176542043686\",\"phone\":\"159720_____\",\"integral_num\":\"6\",\"introduction_title\":\"aqeqweqweqwewqqweqweqwe\",\"introduction\":\"\\u8bf7\\u6c42\\u7fc1\\u7fa4\\u7fc1\\u7fa4\\u65e0\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><strong><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180908\\/1536408553308074.png\\\" title=\\\"1536408553308074.png\\\" alt=\\\"1535439990.jpg\\\" width=\\\"597\\\" height=\\\"309\\\"\\/><\\/strong><br\\/><\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\"}', '2018-09-08 20:10:57', '2018-09-08 20:10:57');
INSERT INTO `admin_operation_log` VALUES ('1081', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:10:57', '2018-09-08 20:10:57');
INSERT INTO `admin_operation_log` VALUES ('1082', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:12:52', '2018-09-08 20:12:52');
INSERT INTO `admin_operation_log` VALUES ('1083', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:12:56', '2018-09-08 20:12:56');
INSERT INTO `admin_operation_log` VALUES ('1084', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:18:21', '2018-09-08 20:18:21');
INSERT INTO `admin_operation_log` VALUES ('1085', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:18:46', '2018-09-08 20:18:46');
INSERT INTO `admin_operation_log` VALUES ('1086', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:30:26', '2018-09-08 20:30:26');
INSERT INTO `admin_operation_log` VALUES ('1087', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:30:28', '2018-09-08 20:30:28');
INSERT INTO `admin_operation_log` VALUES ('1088', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-08 20:30:28', '2018-09-08 20:30:28');
INSERT INTO `admin_operation_log` VALUES ('1089', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-08 20:31:30', '2018-09-08 20:31:30');
INSERT INTO `admin_operation_log` VALUES ('1090', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:31:32', '2018-09-08 20:31:32');
INSERT INTO `admin_operation_log` VALUES ('1091', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-08 20:31:51', '2018-09-08 20:31:51');
INSERT INTO `admin_operation_log` VALUES ('1092', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '[]', '2018-09-08 20:32:28', '2018-09-08 20:32:28');
INSERT INTO `admin_operation_log` VALUES ('1093', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"activity_address\":\"123123\",\"lat\":\"22\",\"lng\":\"113\",\"phone\":\"12323______\",\"integral_num\":\"0\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\",\"_method\":\"PUT\"}', '2018-09-08 20:32:37', '2018-09-08 20:32:37');
INSERT INTO `admin_operation_log` VALUES ('1094', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-08 20:32:37', '2018-09-08 20:32:37');
INSERT INTO `admin_operation_log` VALUES ('1095', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:32:40', '2018-09-08 20:32:40');
INSERT INTO `admin_operation_log` VALUES ('1096', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"activity_address\":\"123123123\",\"lat\":\"22\",\"lng\":\"113\",\"phone\":\"12323______\",\"integral_num\":\"0\",\"introduction_title\":\"2123123123\",\"introduction\":\"1231231233123\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-08 20:32:47', '2018-09-08 20:32:47');
INSERT INTO `admin_operation_log` VALUES ('1097', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-08 20:32:47', '2018-09-08 20:32:47');
INSERT INTO `admin_operation_log` VALUES ('1098', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:32:49', '2018-09-08 20:32:49');
INSERT INTO `admin_operation_log` VALUES ('1099', '1', 'admin/activity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:32:52', '2018-09-08 20:32:52');
INSERT INTO `admin_operation_log` VALUES ('1100', '1', 'admin/activity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:32:54', '2018-09-08 20:32:54');
INSERT INTO `admin_operation_log` VALUES ('1101', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u6d3b\\u52a8\",\"start_time\":\"00:30:00\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"activity_address\":\"2233\",\"lat\":\"22.533487933024745\",\"lng\":\"114.04701232910156\",\"phone\":\"1597800561_\",\"integral_num\":\"2\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p>1231231213213<\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-08 20:33:39', '2018-09-08 20:33:39');
INSERT INTO `admin_operation_log` VALUES ('1102', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:33:40', '2018-09-08 20:33:40');
INSERT INTO `admin_operation_log` VALUES ('1103', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u6d3b\\u52a8\",\"start_time\":\"00:30:00\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"activity_address\":\"2233\",\"lat\":\"22.533487933024745\",\"lng\":\"114.04701232910156\",\"phone\":\"1597800561_\",\"integral_num\":\"2\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p>1231231213213<\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\"}', '2018-09-08 20:34:44', '2018-09-08 20:34:44');
INSERT INTO `admin_operation_log` VALUES ('1104', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:34:45', '2018-09-08 20:34:45');
INSERT INTO `admin_operation_log` VALUES ('1105', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u6d3b\\u52a8\",\"start_time\":\"00:30:00\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"activity_address\":\"2233\",\"lat\":\"22.533487933024745\",\"lng\":\"114.04701232910156\",\"phone\":\"1597800561_\",\"integral_num\":\"2\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p>1231231213213<\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\"}', '2018-09-08 20:35:00', '2018-09-08 20:35:00');
INSERT INTO `admin_operation_log` VALUES ('1106', '1', 'admin/activity/create', 'GET', '127.0.0.1', '[]', '2018-09-08 20:35:00', '2018-09-08 20:35:00');
INSERT INTO `admin_operation_log` VALUES ('1107', '1', 'admin/activity', 'POST', '127.0.0.1', '{\"activity_name\":\"\\u65b0\\u534e\\u6d3b\\u52a8\",\"start_time\":\"00:30:00\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"activity_address\":\"2233\",\"lat\":\"22.533487933024745\",\"lng\":\"114.04701232910156\",\"phone\":\"1597800561_\",\"integral_num\":\"2\",\"introduction_title\":\"2123123\",\"introduction\":\"123123123\",\"activity_des\":\"<p>1231231213213<\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\"}', '2018-09-08 20:35:08', '2018-09-08 20:35:08');
INSERT INTO `admin_operation_log` VALUES ('1108', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-08 20:35:08', '2018-09-08 20:35:08');
INSERT INTO `admin_operation_log` VALUES ('1109', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 20:35:17', '2018-09-08 20:35:17');
INSERT INTO `admin_operation_log` VALUES ('1110', '1', 'admin/activity/1', 'PUT', '127.0.0.1', '{\"activity_name\":\"\\u5357\\u5c71\\u56fe\\u4e66\\u9986\",\"start_time\":\"12:31:23\",\"end_time\":\"12:31:21\",\"is_pass\":\"on\",\"activity_address\":\"123123123\",\"lat\":\"21.997490222554177\",\"lng\":\"113.02562713623047\",\"phone\":\"12323______\",\"integral_num\":\"0\",\"introduction_title\":\"2123123123\",\"introduction\":\"1231231233123\",\"activity_des\":\"<p style=\\\"text-align: center;\\\"><img src=\\\"http:\\/\\/127.0.0.1:8000\\/uploads\\/ueditor\\/php\\/upload\\/file\\/20180906\\/1536228054487736.jpeg\\\" title=\\\"1536228054487736.jpeg\\\" alt=\\\"Bvlgari(\\u5b9d\\u683c\\u4e3d) B.Zero1\\u7cfb\\u521718k\\u73ab\\u7470\\u91d1\\u5355\\u73af\\u6212\\u630753#.jpg\\\"\\/>123123\\r\\n &nbsp; &nbsp; &nbsp; &nbsp;<\\/p>\",\"_token\":\"BUfXNpGwEPU7cSHGTUneCEmZzFEYPdrCY7LsCqRr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/activity\"}', '2018-09-08 20:35:22', '2018-09-08 20:35:22');
INSERT INTO `admin_operation_log` VALUES ('1111', '1', 'admin/activity', 'GET', '127.0.0.1', '[]', '2018-09-08 20:35:22', '2018-09-08 20:35:22');
INSERT INTO `admin_operation_log` VALUES ('1112', '1', 'admin/activity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-08 21:07:32', '2018-09-08 21:07:32');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_permissions_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', '超级管理员权限', '*', '', '*', null, '2018-09-02 11:55:01');
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', '登陆', 'auth.login', '', '/auth/login\r\n/auth/logout', null, '2018-09-02 11:54:42');
INSERT INTO `admin_permissions` VALUES ('4', '用户设置', 'auth.setting', 'GET,PUT', '/auth/setting', null, '2018-09-02 11:54:33');
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '备份', 'backup', 'GET', 'admin/backup', '2018-09-02 12:29:19', '2018-09-02 12:29:19');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_roles_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-09-02 11:26:22', '2018-09-02 11:26:22');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '11', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '12', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '13', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '14', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('1', '4', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admin_users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$H1/h2J9M/vGq58G7cHO9MOjoC5JvESGSv.15/w.utSK357hqW41zW', 'Administrator', null, null, '2018-09-02 11:26:22', '2018-09-02 11:26:22');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `sort_val` float(20,1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '历史人文', '12.2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `category` VALUES ('6', '科技创新', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `category` VALUES ('9', '自然环保', '12.3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `category` VALUES ('16', '热门推荐', '11.0', '0000-00-00 00:00:00', '2018-09-06 07:05:31');

-- ----------------------------
-- Table structure for category_activity
-- ----------------------------
DROP TABLE IF EXISTS `category_activity`;
CREATE TABLE `category_activity` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_activity
-- ----------------------------
INSERT INTO `category_activity` VALUES ('2', '27', '1', '123132');
INSERT INTO `category_activity` VALUES ('4', '28', '9', '123132');
INSERT INTO `category_activity` VALUES ('10', '33', '1', '1535772531');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `add_time` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '15', '12313123123', 'add', '1535613905', '31', '0');
INSERT INTO `comment` VALUES ('2', '15', '12313123123', 'add', '1535613916', '31', '0');
INSERT INTO `comment` VALUES ('3', '15', '12313123123', 'add', '1535613916', '31', '0');
INSERT INTO `comment` VALUES ('4', '15', '12313123123', 'add', '1535613916', '31', '0');
INSERT INTO `comment` VALUES ('12', '15', '12313123123', 'add', '1535616025', '31', '0');
INSERT INTO `comment` VALUES ('13', '14', '12313123123', 'add', '1535616056', '0', '1');
INSERT INTO `comment` VALUES ('14', '14', '12313123123', 'add', '1535616087', '0', '2');
INSERT INTO `comment` VALUES ('15', '14', '12313123123', 'add', '1535616092', '0', '3');
INSERT INTO `comment` VALUES ('16', '14', '12313123123', 'add', '1535616136', '0', '4');
INSERT INTO `comment` VALUES ('18', '14', '12313123123', 'add', '1535621103', '32', '0');
INSERT INTO `comment` VALUES ('19', '14', '12313123123', 'add', '1535621120', '32', '0');
INSERT INTO `comment` VALUES ('20', '14', '12313123123', 'add', '1535621164', '0', '12');
INSERT INTO `comment` VALUES ('21', '14', '12313123123', 'add', '1535621165', '0', '12');
INSERT INTO `comment` VALUES ('22', '14', '12313123123', 'add', '1535621257', '0', '12');
INSERT INTO `comment` VALUES ('23', '15', '1asdasd', '标', '1536147115', '104', '0');
INSERT INTO `comment` VALUES ('24', '15', '1asdasd', '标', '1536147144', '0', '3');
INSERT INTO `comment` VALUES ('25', '15', '1asdasd', '标', '1536147345', '0', '1');
INSERT INTO `comment` VALUES ('26', '15', '1asdasd', '标', '1536147349', '0', '2');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2018_09_06_022442_create_posts_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject

_name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------

-- ----------------------------
-- Table structure for subject_option
-- ----------------------------
DROP TABLE IF EXISTS `subject_option`;
CREATE TABLE `subject_option` (
  `id` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `fraction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject_option
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123123', '12312', '3123', '123123', '2018-08-16 10:25:58', '2018-09-05 10:26:02', '123123123', '123321', '1233123');

-- ----------------------------
-- Table structure for user_activity
-- ----------------------------
DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `is_pass` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_activity
-- ----------------------------
INSERT INTO `user_activity` VALUES ('18', '1', '1', '1', '0', '1536404359');

-- ----------------------------
-- Table structure for user_apply
-- ----------------------------
DROP TABLE IF EXISTS `user_apply`;
CREATE TABLE `user_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apply` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `add_time` int(11) NOT NULL,
  `repetition_period` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_apply
-- ----------------------------

-- ----------------------------
-- Table structure for user_integral
-- ----------------------------
DROP TABLE IF EXISTS `user_integral`;
CREATE TABLE `user_integral` (
  `id` int(11) NOT NULL,
  `activity_id` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `integral_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_integral
-- ----------------------------

-- ----------------------------
-- Table structure for user_sign
-- ----------------------------
DROP TABLE IF EXISTS `user_sign`;
CREATE TABLE `user_sign` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `sign` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  `is_pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_sign
-- ----------------------------

-- ----------------------------
-- Table structure for user_volunteer
-- ----------------------------
DROP TABLE IF EXISTS `user_volunteer`;
CREATE TABLE `user_volunteer` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_pass` int(11) NOT NULL,
  `repetition_period` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_volunteer
-- ----------------------------
