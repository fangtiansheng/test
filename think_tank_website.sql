/*
 Navicat Premium Data Transfer

 Source Server         : New-message
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : 172.28.17.77:3306
 Source Schema         : thinktank_shangjian_backend

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 25/03/2022 14:29:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for think_tank_website
-- ----------------------------
DROP TABLE IF EXISTS `think_tank_website`;
CREATE TABLE `think_tank_website` (
  `id` int NOT NULL AUTO_INCREMENT,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `create_time` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `language` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `language_ch` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '智库语言',
  `region` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `abbreviation` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '智库缩写',
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '智库详情',
  `history` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '历史沿革及重要成就',
  `important_person` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '重要人物',
  `research_areas` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '研究领域',
  `research_center` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '研究中心（部门）',
  `research_project` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '研究项目（计划）',
  `research_product` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '研究产品',
  `background` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '背景',
  `is_confirm` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否确认',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `website` (`website`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2720 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `thinktank_shangjian_backend`.`think_tank_website`(`id`, `website`, `name`, `icon`, `desc`, `create_time`, `language`, `language_ch`, `region`, `type`, `url`, `abbreviation`, `detail`, `history`, `important_person`, `research_areas`, `research_center`, `research_project`, `research_product`, `background`, `is_confirm`) VALUES (167, 'Hispanic American Center for Economic Research (HACER)', 'Hispanic American Center for Economic Research (HACER)', 'think_tank/icon/20190916644a2fe0-d869-11e9-a590-dd5f7f462db2', '', '2020-01-09 18:54:29.000000', 'Campinas) (Portuguese,Condensed version,English,En', '土耳其语，英语', '美国', '智库', 'http://www.hacer.org/', 'HACER', '', '', '', '', '', '', '', '', 0);