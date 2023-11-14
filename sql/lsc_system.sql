/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 127.0.0.1:3306
 Source Schema         : lsc_system

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 03/11/2023 22:11:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for system_customer
-- ----------------------------
DROP TABLE IF EXISTS `system_customer`;
CREATE TABLE `system_customer`  (
  `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '顾客的用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录ip',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_customer
-- ----------------------------

-- ----------------------------
-- Table structure for system_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `system_dict_data`;
CREATE TABLE `system_dict_data`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典键值',
  `dict_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典类型',
  `status` tinyint(4) NOT NULL COMMENT '状态（0正常 1停用）',
  `creator` bigint(20) NOT NULL,
  `creator_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` bigint(20) NOT NULL,
  `updater_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_dict_data
-- ----------------------------
INSERT INTO `system_dict_data` VALUES (1, '支付宝', '1', 'pay_type', 1, 1, '2023-09-16 04:42:00', 1, '2023-09-16 04:42:00', b'0');
INSERT INTO `system_dict_data` VALUES (2, '微信', '2', 'pay_type', 1, 1, '2023-09-16 04:42:24', 1, '2023-09-16 04:42:24', b'0');
INSERT INTO `system_dict_data` VALUES (3, '积分', '3', 'pay_type', 1, 1, '2023-09-16 04:42:43', 1, '2023-09-16 04:42:43', b'0');
INSERT INTO `system_dict_data` VALUES (4, '已支付', '1', 'pay_status', 1, 1, '2023-09-16 04:43:19', 1, '2023-09-16 04:43:19', b'0');
INSERT INTO `system_dict_data` VALUES (5, '未支付', '2', 'pay_status', 1, 1, '2023-09-16 04:43:42', 1, '2023-09-16 04:43:42', b'0');
INSERT INTO `system_dict_data` VALUES (6, '已取消', '3', 'pay_status', 1, 1, '2023-09-16 04:44:04', 1, '2023-09-16 04:44:04', b'0');
INSERT INTO `system_dict_data` VALUES (7, '已完成', '1', 'order_status', 1, 1, '2023-09-16 04:46:09', 1, '2023-09-16 04:46:09', b'0');
INSERT INTO `system_dict_data` VALUES (8, '进行中', '2', 'order_status', 1, 1, '2023-09-16 04:47:11', 1, '2023-09-16 04:47:11', b'0');
INSERT INTO `system_dict_data` VALUES (9, '待处理', '3', 'order_status', 1, 1, '2023-09-16 04:47:34', 1, '2023-09-16 04:47:34', b'0');
INSERT INTO `system_dict_data` VALUES (10, '开启', '1', 'common_status', 1, 1, '2023-09-16 04:51:10', 1, '2023-09-16 04:51:10', b'0');
INSERT INTO `system_dict_data` VALUES (11, '关闭', '0', 'common_status', 1, 1, '2023-09-16 04:51:32', 1, '2023-09-16 04:51:32', b'0');
INSERT INTO `system_dict_data` VALUES (12, '上架', '1', 'product_status', 1, 1, '2023-09-16 04:56:29', 1, '2023-09-16 04:56:29', b'0');
INSERT INTO `system_dict_data` VALUES (13, '下架', '0', 'product_status', 1, 1, '2023-09-16 04:56:52', 1, '2023-09-16 04:56:52', b'0');
INSERT INTO `system_dict_data` VALUES (14, '已售完', '2', 'product_status', 1, 1, '2023-09-16 04:57:26', 1, '2023-09-16 04:57:26', b'0');
INSERT INTO `system_dict_data` VALUES (15, '空闲', '0', 'table_status', 1, 1, '2023-09-16 04:59:50', 1, '2023-09-16 04:59:50', b'0');
INSERT INTO `system_dict_data` VALUES (16, '有客', '1', 'table_status', 1, 1, '2023-09-16 05:00:21', 1, '2023-09-16 05:00:21', b'0');
INSERT INTO `system_dict_data` VALUES (17, '已预定', '2', 'table_status', 1, 1, '2023-09-16 05:00:49', 1, '2023-09-16 05:00:49', b'0');
INSERT INTO `system_dict_data` VALUES (18, '男', '1', 'common_sex', 1, 1, '2023-10-12 09:35:06', 1, '2023-10-12 09:35:06', b'0');
INSERT INTO `system_dict_data` VALUES (19, '女', '2', 'common_sex', 1, 1, '2023-10-12 09:35:32', 1, '2023-10-12 09:35:32', b'0');

-- ----------------------------
-- Table structure for system_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `system_dict_type`;
CREATE TABLE `system_dict_type`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `creator` bigint(20) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater` bigint(20) NOT NULL,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_dict_type
-- ----------------------------
INSERT INTO `system_dict_type` VALUES (1, '订单状态', 'order_status', 1, 1, '2023-09-21 12:05:58', 1, '2023-09-19 12:06:01', b'0');
INSERT INTO `system_dict_type` VALUES (2, '支付状态', 'pay_status', 1, 1, '2023-09-16 04:31:17', 1, '2023-09-16 04:31:17', b'0');
INSERT INTO `system_dict_type` VALUES (3, '支付方式', 'pay_type', 1, 1, '2023-09-16 04:32:02', 1, '2023-09-16 04:32:02', b'0');
INSERT INTO `system_dict_type` VALUES (4, '系统通用状态', 'common_status', 1, 1, '2023-09-16 04:49:17', 1, '2023-09-16 04:49:17', b'0');
INSERT INTO `system_dict_type` VALUES (5, '商品状态', 'product_status', 1, 1, '2023-09-16 04:56:01', 1, '2023-09-16 04:56:01', b'0');
INSERT INTO `system_dict_type` VALUES (6, '餐桌状态', 'table_status', 1, 1, '2023-09-16 04:59:09', 1, '2023-09-16 04:59:09', b'0');
INSERT INTO `system_dict_type` VALUES (7, '性别', 'common_sex', 1, 1, '2023-10-12 05:01:03', 1, '2023-10-12 05:01:03', b'0');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单的id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名',
  `path` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '路由跳转路径',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图标',
  `permissions` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '权限分为3种 1管理员 2商户 3顾客，用来获取不同的菜单',
  `sort` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '这个是为了不同页面加载不同菜单，1后台首页 2进入店铺...',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES (1, 0, '店铺总览', 'overview', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (2, 0, '食品', '', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (3, 2, '菜品', 'dishes', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (4, 2, '库存', 'inventory', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (5, 0, '就餐', '', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (6, 5, '餐桌信息', 'seat', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (7, 5, '订单', 'order', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (8, 0, '明细', 'detail', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (9, 0, '分店', 'subclass', '\'Fold\'', '2', '2');
INSERT INTO `system_menu` VALUES (10, 0, '审核', 'audit', '\'Fold\'', '1', '1');
INSERT INTO `system_menu` VALUES (11, 0, '个人信息', 'person', '\'Fold\'', '2', '1');
INSERT INTO `system_menu` VALUES (12, 0, '我的店铺', 'home', '\'Fold\'', '2', '1');
INSERT INTO `system_menu` VALUES (13, 0, '开新店', 'open', '\'Fold\'', '2', '1');

-- ----------------------------
-- Table structure for system_merchant
-- ----------------------------
DROP TABLE IF EXISTS `system_merchant`;
CREATE TABLE `system_merchant`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `real_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '店主真实姓名',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电话号码',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `id_card_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证照片',
  `id_card` varchar(25) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL COMMENT '身份证',
  `sex` tinyint(1) UNSIGNED NULL DEFAULT 1 COMMENT '性别  0女 1男',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '账号状态 0停用 1正常',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '对应menu表的permissions',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登录ip',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否删除 0没1删',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_merchant
-- ----------------------------
INSERT INTO `system_merchant` VALUES (1, '林某', '1', '$2a$10$4i/zO70zlfBBP8slBhP2ROTj5eC0hZ76k7ohWbDyygbQydEL2aq1e', 'http://127.0.0.1:9000/linmourscanorder/idCard/1.png', '350181200401281895', 1, 1, '2', 'http://127.0.0.1:9000/linmourscanorder/avatar/1.jpeg', NULL, '2023-07-18 04:58:28', '2023-10-14 12:48:00', 0);
INSERT INTO `system_merchant` VALUES (2, '1', '2', '$2a$10$4i/zO70zlfBBP8slBhP2ROTj5eC0hZ76k7ohWbDyygbQydEL2aq1e', '', '1', 1, 1, '1', '1', NULL, '2023-07-22 04:10:51', '2023-07-22 04:10:51', 0);

-- ----------------------------
-- Table structure for system_shop
-- ----------------------------
DROP TABLE IF EXISTS `system_shop`;
CREATE TABLE `system_shop`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '店铺名称',
  `certificate` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '经营许可证等证书',
  `intro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '店铺简介',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '店铺状态 0停用 1正常',
  `audit_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '审核状态 0未通过 1通过 2审核中',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '分店 0表示主店',
  `merchant_id` bigint(20) UNSIGNED NOT NULL COMMENT '店主',
  `business_status` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '营业状态 0休息中1经营中',
  `business_hours` time NOT NULL COMMENT '营业时间',
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '店铺位置',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_shop
-- ----------------------------
INSERT INTO `system_shop` VALUES (1, '老八汉堡店', 'https://img1.baidu.com/it/u=786428236,1216875947&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=698', '老八关门弟子开的店，主打就是秘制小汉堡', 1, 0, 0, 1, 1, '04:03:03', '福建福州', '2023-07-21 07:02:56', '2023-07-21 07:02:56', 0);
INSERT INTO `system_shop` VALUES (2, '大碗宽面店', 'https://img1.baidu.com/it/u=786428236,1216875947&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=698,https://img0.baidu.com/it/u=1795519782,3861097435&fm=253&fmt=auto&app=138&f=JPEG?w=694&h=500', '由吴亦凡大师在收监前唯一传承人所开，味道好极了', 1, 0, 0, 1, 0, '00:00:00', '福建厦门', '2023-07-21 07:09:15', '2023-07-21 07:09:15', 0);
INSERT INTO `system_shop` VALUES (3, '自营店', '1', '....', 1, 0, 0, 1, 1, '00:00:00', '北京中关村', '2023-07-22 03:47:05', '2023-07-22 03:47:05', 0);
INSERT INTO `system_shop` VALUES (4, '老7烤面筋', '1', '老八分店', 1, 0, 1, 2, 1, '00:00:00', '东北', '2023-07-22 04:16:32', '2023-07-22 04:16:32', 0);

SET FOREIGN_KEY_CHECKS = 1;
