/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : laravel-admin

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 02/09/2018 22:35:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '主页', 'fa-bar-chart', '/', NULL, '2018-09-02 11:55:46');
INSERT INTO `admin_menu` VALUES (2, 0, 2, '用户管理', 'fa-tasks', NULL, NULL, '2018-09-02 11:45:51');
INSERT INTO `admin_menu` VALUES (3, 2, 3, '用户', 'fa-users', 'auth/users', NULL, '2018-09-02 11:41:14');
INSERT INTO `admin_menu` VALUES (4, 2, 4, '角色', 'fa-user', 'auth/roles', NULL, '2018-09-02 11:45:22');
INSERT INTO `admin_menu` VALUES (5, 2, 5, '权限', 'fa-ban', 'auth/permissions', NULL, '2018-09-02 11:45:30');
INSERT INTO `admin_menu` VALUES (6, 2, 6, '菜单', 'fa-bars', 'auth/menu', NULL, '2018-09-02 11:45:08');
INSERT INTO `admin_menu` VALUES (7, 2, 7, '日志', 'fa-history', 'auth/logs', NULL, '2018-09-02 11:45:39');
INSERT INTO `admin_menu` VALUES (8, 0, 0, '测试', 'fa-yc-square', NULL, '2018-09-02 11:58:31', '2018-09-02 11:58:31');
INSERT INTO `admin_menu` VALUES (9, 0, 0, '系统', 'fa-suitcase', NULL, '2018-09-02 12:31:24', '2018-09-02 12:31:24');
INSERT INTO `admin_menu` VALUES (11, 9, 0, '备份', 'fa-bars', 'backup', '2018-09-02 12:32:30', '2018-09-02 12:32:52');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:31:42', '2018-09-02 11:31:42');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:44', '2018-09-02 11:31:44');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:48', '2018-09-02 11:31:48');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:49', '2018-09-02 11:31:49');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:49', '2018-09-02 11:31:49');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:50', '2018-09-02 11:31:50');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:52', '2018-09-02 11:31:52');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:55', '2018-09-02 11:31:55');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:55', '2018-09-02 11:31:55');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:56', '2018-09-02 11:31:56');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:57', '2018-09-02 11:31:57');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:58', '2018-09-02 11:31:58');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:58', '2018-09-02 11:31:58');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:31:59', '2018-09-02 11:31:59');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:00', '2018-09-02 11:32:00');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:02', '2018-09-02 11:32:02');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:32:18', '2018-09-02 11:32:18');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:27', '2018-09-02 11:32:27');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:29', '2018-09-02 11:32:29');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:30', '2018-09-02 11:32:30');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:31', '2018-09-02 11:32:31');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:31', '2018-09-02 11:32:31');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:34', '2018-09-02 11:32:34');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:37', '2018-09-02 11:32:37');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:32:38', '2018-09-02 11:32:38');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:34:28', '2018-09-02 11:34:28');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:34:31', '2018-09-02 11:34:31');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:34:33', '2018-09-02 11:34:33');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:36:38', '2018-09-02 11:36:38');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 11:40:09', '2018-09-02 11:40:09');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:13', '2018-09-02 11:40:13');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:14', '2018-09-02 11:40:14');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:16', '2018-09-02 11:40:16');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:18', '2018-09-02 11:40:18');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:19', '2018-09-02 11:40:19');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:26', '2018-09-02 11:40:26');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:32', '2018-09-02 11:40:32');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:33', '2018-09-02 11:40:33');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:34', '2018-09-02 11:40:34');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:35', '2018-09-02 11:40:35');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:36', '2018-09-02 11:40:36');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:36', '2018-09-02 11:40:36');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:37', '2018-09-02 11:40:37');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:38', '2018-09-02 11:40:38');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:39', '2018-09-02 11:40:39');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:40', '2018-09-02 11:40:40');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:42', '2018-09-02 11:40:42');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:48', '2018-09-02 11:40:48');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:40:59', '2018-09-02 11:40:59');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:41:14', '2018-09-02 11:41:14');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:41:14', '2018-09-02 11:41:14');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:18', '2018-09-02 11:41:18');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-09-02 11:41:20', '2018-09-02 11:41:20');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:23', '2018-09-02 11:41:23');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:25', '2018-09-02 11:41:25');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:31', '2018-09-02 11:41:31');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:41:36', '2018-09-02 11:41:36');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:04', '2018-09-02 11:44:04');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:10', '2018-09-02 11:44:10');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:14', '2018-09-02 11:44:14');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:25', '2018-09-02 11:44:25');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:28', '2018-09-02 11:44:28');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:30', '2018-09-02 11:44:30');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:44:57', '2018-09-02 11:44:57');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:08', '2018-09-02 11:45:08');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:08', '2018-09-02 11:45:08');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:16', '2018-09-02 11:45:16');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:22', '2018-09-02 11:45:22');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:22', '2018-09-02 11:45:22');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:25', '2018-09-02 11:45:25');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:30', '2018-09-02 11:45:30');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:30', '2018-09-02 11:45:30');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:34', '2018-09-02 11:45:34');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:39', '2018-09-02 11:45:39');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:39', '2018-09-02 11:45:39');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:45:44', '2018-09-02 11:45:44');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:45:51', '2018-09-02 11:45:51');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:45:52', '2018-09-02 11:45:52');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:46:10', '2018-09-02 11:46:10');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:13', '2018-09-02 11:46:13');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:14', '2018-09-02 11:46:14');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:18', '2018-09-02 11:46:18');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:46:21', '2018-09-02 11:46:21');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:04', '2018-09-02 11:47:04');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:05', '2018-09-02 11:47:05');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:05', '2018-09-02 11:47:05');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:06', '2018-09-02 11:47:06');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:06', '2018-09-02 11:47:06');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:17', '2018-09-02 11:47:17');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:18', '2018-09-02 11:47:18');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:18', '2018-09-02 11:47:18');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:23', '2018-09-02 11:47:23');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:23', '2018-09-02 11:47:23');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:24', '2018-09-02 11:47:24');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:24', '2018-09-02 11:47:24');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:26', '2018-09-02 11:47:26');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:26', '2018-09-02 11:47:26');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:27', '2018-09-02 11:47:27');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:27', '2018-09-02 11:47:27');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:28', '2018-09-02 11:47:28');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:30', '2018-09-02 11:47:30');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:31', '2018-09-02 11:47:31');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:34', '2018-09-02 11:47:34');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:43', '2018-09-02 11:47:43');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:45', '2018-09-02 11:47:45');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:47:54', '2018-09-02 11:47:54');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:51:31', '2018-09-02 11:51:31');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:51:35', '2018-09-02 11:51:35');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:51:39', '2018-09-02 11:51:39');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:52:09', '2018-09-02 11:52:09');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:39', '2018-09-02 11:52:39');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:48', '2018-09-02 11:52:48');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:51', '2018-09-02 11:52:51');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:52:57', '2018-09-02 11:52:57');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:53:39', '2018-09-02 11:53:39');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:53:40', '2018-09-02 11:53:40');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:53:41', '2018-09-02 11:53:41');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:02', '2018-09-02 11:54:02');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:04', '2018-09-02 11:54:04');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:09', '2018-09-02 11:54:09');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:18', '2018-09-02 11:54:18');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:18', '2018-09-02 11:54:18');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/auth/permissions/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:23', '2018-09-02 11:54:23');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/auth/permissions/4', 'PUT', '127.0.0.1', '{\"slug\":\"auth.setting\",\"name\":\"\\u7528\\u6237\\u8bbe\\u7f6e\",\"http_method\":[\"GET\",\"PUT\",null],\"http_path\":\"\\/auth\\/setting\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 11:54:33', '2018-09-02 11:54:33');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:54:33', '2018-09-02 11:54:33');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/auth/permissions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:37', '2018-09-02 11:54:37');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/auth/permissions/3', 'PUT', '127.0.0.1', '{\"slug\":\"auth.login\",\"name\":\"\\u767b\\u9646\",\"http_method\":[null],\"http_path\":\"\\/auth\\/login\\r\\n\\/auth\\/logout\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 11:54:42', '2018-09-02 11:54:42');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:54:42', '2018-09-02 11:54:42');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:54:49', '2018-09-02 11:54:49');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/auth/permissions/1', 'PUT', '127.0.0.1', '{\"slug\":\"*\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\\u6743\\u9650\",\"http_method\":[null],\"http_path\":\"*\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 11:55:01', '2018-09-02 11:55:01');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 11:55:01', '2018-09-02 11:55:01');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:10', '2018-09-02 11:55:10');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:12', '2018-09-02 11:55:12');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:25', '2018-09-02 11:55:25');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:30', '2018-09-02 11:55:30');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:34', '2018-09-02 11:55:34');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:37', '2018-09-02 11:55:37');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:39', '2018-09-02 11:55:39');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:40', '2018-09-02 11:55:40');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4e3b\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 11:55:46', '2018-09-02 11:55:46');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:55:47', '2018-09-02 11:55:47');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:55:50', '2018-09-02 11:55:50');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:51', '2018-09-02 11:55:51');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:55:58', '2018-09-02 11:55:58');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6d4b\\u8bd5\",\"icon\":\"fa-yc-square\",\"uri\":null,\"roles\":[null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 11:58:30', '2018-09-02 11:58:30');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:58:31', '2018-09-02 11:58:31');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 11:58:34', '2018-09-02 11:58:34');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:58:35', '2018-09-02 11:58:35');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:59:41', '2018-09-02 11:59:41');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 11:59:43', '2018-09-02 11:59:43');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:00:00', '2018-09-02 12:00:00');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:00:03', '2018-09-02 12:00:03');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-02 12:28:05', '2018-09-02 12:28:05');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:10', '2018-09-02 12:28:10');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:12', '2018-09-02 12:28:12');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:28', '2018-09-02 12:28:28');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:34', '2018-09-02 12:28:34');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:36', '2018-09-02 12:28:36');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:28:52', '2018-09-02 12:28:52');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"slug\":\"backup\",\"name\":\"\\u5907\\u4efd\",\"http_method\":[\"GET\",null],\"http_path\":\"admin\\/backup\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/permissions\"}', '2018-09-02 12:29:19', '2018-09-02 12:29:19');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2018-09-02 12:29:19', '2018-09-02 12:29:19');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:29:25', '2018-09-02 12:29:25');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"fa-suitcase\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:31:24', '2018-09-02 12:31:24');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:31:25', '2018-09-02 12:31:25');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:31:48', '2018-09-02 12:31:48');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:31:48', '2018-09-02 12:31:48');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:31:53', '2018-09-02 12:31:53');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:31:55', '2018-09-02 12:31:55');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"\\/admin\\/backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:32:15', '2018-09-02 12:32:15');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:15', '2018-09-02 12:32:15');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":\"\\/admin\\/backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:32:30', '2018-09-02 12:32:30');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:30', '2018-09-02 12:32:30');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/auth/menu/10', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:32:35', '2018-09-02 12:32:35');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:35', '2018-09-02 12:32:35');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:39', '2018-09-02 12:32:39');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":\"admin\\/backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 12:32:43', '2018-09-02 12:32:43');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:44', '2018-09-02 12:32:44');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:48', '2018-09-02 12:32:48');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u5907\\u4efd\",\"icon\":\"fa-bars\",\"uri\":\"backup\",\"roles\":[\"1\",null],\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1\\/admin\\/auth\\/menu\"}', '2018-09-02 12:32:52', '2018-09-02 12:32:52');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:52', '2018-09-02 12:32:52');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-09-02 12:32:55', '2018-09-02 12:32:55');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:32:57', '2018-09-02 12:32:57');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"a08xwYBz8vTiKxoNxn8zhyVB63BEWitOu9Nu2zZ5\"}', '2018-09-02 12:33:05', '2018-09-02 12:33:05');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-02 12:33:14', '2018-09-02 12:33:14');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:33:16', '2018-09-02 12:33:16');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-09-02 12:38:36', '2018-09-02 12:38:36');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 12:38:37', '2018-09-02 12:38:37');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 13:38:03', '2018-09-02 13:38:03');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:12', '2018-09-02 13:38:12');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:14', '2018-09-02 13:38:14');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:15', '2018-09-02 13:38:15');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-09-02 13:38:22', '2018-09-02 13:38:22');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-09-02 14:32:30', '2018-09-02 14:32:30');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, '超级管理员权限', '*', '', '*', NULL, '2018-09-02 11:55:01');
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, '登陆', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, '2018-09-02 11:54:42');
INSERT INTO `admin_permissions` VALUES (4, '用户设置', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, '2018-09-02 11:54:33');
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '备份', 'backup', 'GET', 'admin/backup', '2018-09-02 12:29:19', '2018-09-02 12:29:19');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 11, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2018-09-02 11:26:22', '2018-09-02 11:26:22');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$H1/h2J9M/vGq58G7cHO9MOjoC5JvESGSv.15/w.utSK357hqW41zW', 'Administrator', NULL, NULL, '2018-09-02 11:26:22', '2018-09-02 11:26:22');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
