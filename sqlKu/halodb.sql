/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.10-root-root
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : 192.168.0.10:3306
 Source Schema         : halodb

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 23/07/2019 16:43:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attachments
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_key` varchar(2047) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `height` int(11) NULL DEFAULT 0,
  `media_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` bigint(20) NOT NULL,
  `suffix` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumb_path` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` int(11) NULL DEFAULT 0,
  `width` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attachments
-- ----------------------------
INSERT INTO `attachments` VALUES (1, '2019-07-23 16:13:47', 0, '2019-07-23 16:13:47', 'upload/2019\\7\\pic logo-cbd432d2e2e4420d89dae4e435f575a8.png', 477, 'image/png', 'pic logo', 'upload/2019/7/pic logo-cbd432d2e2e4420d89dae4e435f575a8.png', 299268, 'png', 'upload/2019\\7\\pic logo-cbd432d2e2e4420d89dae4e435f575a8-thumbnail.png', 0, 866);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(11) NULL DEFAULT 0,
  `slug_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, '2019-07-23 16:29:33', 0, '2019-07-23 16:29:33', '', 'LC苦瓦罐', 0, 'lc');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `type` int(11) NOT NULL DEFAULT 0,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `content` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gravatar_md5` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `ip_address` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `is_admin` tinyint(4) NULL DEFAULT 0,
  `parent_id` bigint(20) NULL DEFAULT 0,
  `post_id` int(11) NOT NULL,
  `status` int(11) NULL DEFAULT 1,
  `top_priority` int(11) NULL DEFAULT 0,
  `user_agent` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (0, 1, '2019-07-23 16:10:38', 0, '2019-07-23 16:14:35', 'Halo Bot', 'https://github.com/halo-dev/halo', '欢迎使用 Halo，这是你的第一条评论。', 'i@ryanc.cc', '7cc7f29278071bd4dce995612d428834', '192.168.0.16', 0, 0, 1, 0, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36');
INSERT INTO `comments` VALUES (0, 2, '2019-07-23 16:14:45', 0, '2019-07-23 16:14:45', 'ahviplc', 'http://192.168.0.16:8090', '谢谢你！~LC', 'ahlc@sina.cn', '2b07490c66185aca39420725fd653a09', '192.168.0.16', 1, 1, 1, 0, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36');

-- ----------------------------
-- Table structure for journals
-- ----------------------------
DROP TABLE IF EXISTS `journals`;
CREATE TABLE `journals`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `likes` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of journals
-- ----------------------------
INSERT INTO `journals` VALUES (1, '2019-07-23 16:26:10', 0, '2019-07-23 16:26:10', '我是日志！~LC', 0);
INSERT INTO `journals` VALUES (2, '2019-07-23 16:30:43', 0, '2019-07-23 16:30:43', '我是速记！~LC', 0);

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `logo` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES (1, '2019-07-23 16:24:25', 0, '2019-07-23 16:24:25', '一加壹.Blogs LC  一加壹博客最Top', '', '一加壹.Blogs LC  一加壹博客最Top', '', 'http://oneplusone.vip/index.html');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `log_key` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (1, '2019-07-23 16:10:38', 0, '2019-07-23 16:10:38', '博客已成功初始化', NULL, '', 0);
INSERT INTO `logs` VALUES (2, '2019-07-23 16:11:23', 0, '2019-07-23 16:11:23', 'ahviplc', NULL, '', 25);
INSERT INTO `logs` VALUES (3, '2019-07-23 16:14:22', 0, '2019-07-23 16:14:22', 'ahviplc', NULL, '', 45);
INSERT INTO `logs` VALUES (4, '2019-07-23 16:29:52', 0, '2019-07-23 16:29:52', '一人一世界，一树一菩提', NULL, '', 15);
INSERT INTO `logs` VALUES (5, '2019-07-23 16:30:10', 0, '2019-07-23 16:30:10', '一人一世界，一树一菩提', NULL, '', 15);
INSERT INTO `logs` VALUES (6, '2019-07-23 16:35:50', 0, '2019-07-23 16:35:50', 'ahviplc', NULL, '', 25);
INSERT INTO `logs` VALUES (7, '2019-07-23 16:36:03', 0, '2019-07-23 16:36:03', 'ahviplc', NULL, '', 25);

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(11) NULL DEFAULT 0,
  `priority` int(11) NULL DEFAULT 0,
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '_self',
  `url` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, '2019-07-23 16:10:38', 0, '2019-07-23 16:10:38', '', '首页', 0, 1, '_self', '/');
INSERT INTO `menus` VALUES (2, '2019-07-23 16:10:38', 0, '2019-07-23 16:10:38', '', '归档', 0, 2, '_self', '/archives');
INSERT INTO `menus` VALUES (3, '2019-07-23 16:19:58', 0, '2019-07-23 16:22:41', '', 'LC', 0, 3, '_blank', 'http://www.oneplusone.vip');

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `option_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `option_value` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES (1, '2019-07-23 16:10:37', 0, '2019-07-23 16:10:37', 'blog_title', '一加一博客最Top By Halo');
INSERT INTO `options` VALUES (2, '2019-07-23 16:10:37', 0, '2019-07-23 16:10:37', 'blog_locale', 'zh');
INSERT INTO `options` VALUES (3, '2019-07-23 16:10:37', 0, '2019-07-23 16:10:37', 'birthday', '1563869437242');
INSERT INTO `options` VALUES (4, '2019-07-23 16:10:37', 0, '2019-07-23 16:10:37', 'is_installed', 'true');
INSERT INTO `options` VALUES (5, '2019-07-23 16:10:37', 0, '2019-07-23 16:10:37', 'blog_url', 'http://192.168.0.16:8090');
INSERT INTO `options` VALUES (6, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'email_ssl_port', '465');
INSERT INTO `options` VALUES (7, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'oss_qiniu_zone', 'auto');
INSERT INTO `options` VALUES (8, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'seo_spider_disabled', 'false');
INSERT INTO `options` VALUES (9, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'comment_new_notice', 'false');
INSERT INTO `options` VALUES (10, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'email_enabled', 'false');
INSERT INTO `options` VALUES (11, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'api_enabled', 'false');
INSERT INTO `options` VALUES (12, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'post_index_page_size', '10');
INSERT INTO `options` VALUES (13, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'email_protocol', 'smtp');
INSERT INTO `options` VALUES (14, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'comment_api_enabled', 'true');
INSERT INTO `options` VALUES (15, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'comment_new_need_check', 'true');
INSERT INTO `options` VALUES (16, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'comment_page_size', '10');
INSERT INTO `options` VALUES (17, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'comment_gravatar_default', 'mm');
INSERT INTO `options` VALUES (18, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'attachment_type', 'LOCAL');
INSERT INTO `options` VALUES (19, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'rss_page_size', '20');
INSERT INTO `options` VALUES (20, '2019-07-23 16:15:13', 0, '2019-07-23 16:39:58', 'theme', 'iissnan_next');
INSERT INTO `options` VALUES (21, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'comment_reply_notice', 'false');
INSERT INTO `options` VALUES (22, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'comment_pass_notice', 'false');
INSERT INTO `options` VALUES (23, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'post_summary_length', '150');
INSERT INTO `options` VALUES (24, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'blog_logo', 'http://192.168.0.16:8090/upload/2019/7/pic logo-cbd432d2e2e4420d89dae4e435f575a8.png');
INSERT INTO `options` VALUES (25, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'blog_favicon', 'http://192.168.0.16:8090/upload/2019/7/pic logo-cbd432d2e2e4420d89dae4e435f575a8.png');
INSERT INTO `options` VALUES (26, '2019-07-23 16:15:13', 0, '2019-07-23 16:15:13', 'blog_footer_info', 'By LC');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `take_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `team` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumbnail` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `url` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of photos
-- ----------------------------
INSERT INTO `photos` VALUES (1, '2019-07-23 16:25:49', 0, '2019-07-23 16:25:49', 'logo', '上海徐汇', 'logo', '2019-07-23 16:25:14', '', 'http://192.168.0.16:8090/upload/2019/7/pic%20logo-cbd432d2e2e4420d89dae4e435f575a8.png', 'http://192.168.0.16:8090/upload/2019/7/pic logo-cbd432d2e2e4420d89dae4e435f575a8.png');

-- ----------------------------
-- Table structure for post_categories
-- ----------------------------
DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE `post_categories`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NULL DEFAULT NULL,
  `post_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of post_categories
-- ----------------------------
INSERT INTO `post_categories` VALUES (1, '2019-07-23 16:29:48', 0, '2019-07-23 16:29:48', 1, 2);

-- ----------------------------
-- Table structure for post_tags
-- ----------------------------
DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of post_tags
-- ----------------------------
INSERT INTO `post_tags` VALUES (1, '2019-07-23 16:29:48', 0, '2019-07-23 16:29:48', 2, 1);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `type` int(11) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_from` int(11) NULL DEFAULT 0,
  `disallow_comment` int(11) NULL DEFAULT 0,
  `edit_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `format_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `likes` bigint(20) NULL DEFAULT 0,
  `original_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `status` int(11) NULL DEFAULT 1,
  `summary` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `thumbnail` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `top_priority` int(11) NULL DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `visits` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (0, 1, '2019-07-23 16:10:38', 0, '2019-07-23 16:10:38', 0, 0, '2019-07-23 16:10:38', '<h2 id=\"hello-halo\">Hello Halo!</h2>\n<p>感谢使用 <a href=\"https://github.com/halo-dev/halo\">Halo</a> 进行创作，请删除该文章开始吧！</p>\n', 0, '## Hello Halo!\n\n感谢使用 [Halo](https://github.com/halo-dev/halo) 进行创作，请删除该文章开始吧！', '', 0, '', '', '', 'Hello Halo', 0, 'hello-halo', 3);
INSERT INTO `posts` VALUES (0, 2, '2019-07-23 16:28:18', 0, '2019-07-23 16:30:14', 0, 0, '2019-07-23 16:30:14', '<blockquote>\n<p>我是一篇文章</p>\n</blockquote>\n<h5 id=\"一人一世界一树一菩提lc\">一人一世界，一树一菩提！~LC</h5>\n<p><a href=\"http://oneplusone.vip/index.html\">一加壹.Blogs LC  一加壹博客最Top</a></p>\n', 0, '> 我是一篇文章\n\n##### 一人一世界，一树一菩提！~LC\n\n[一加壹.Blogs LC  一加壹博客最Top](http://oneplusone.vip/index.html)', '', 0, '', '', 'http://192.168.0.16:8090/upload/2019/7/pic logo-cbd432d2e2e4420d89dae4e435f575a8.png', '一人一世界，一树一菩提', 0, '一人一世界，一树一菩提', 2);

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, '2019-07-23 16:29:44', 0, '2019-07-23 16:29:44', 'LC 博客', 'lc-');

-- ----------------------------
-- Table structure for theme_settings
-- ----------------------------
DROP TABLE IF EXISTS `theme_settings`;
CREATE TABLE `theme_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `setting_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `theme_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `setting_value` varchar(10239) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NULL DEFAULT 0,
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `description` varchar(1023) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `email` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `expire_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '2019-07-23 16:10:37', 0, '2019-07-23 16:14:22', 'http://192.168.0.16:8090/upload/2019/7/pic logo-cbd432d2e2e4420d89dae4e435f575a8.png', '一人一世界，一树一菩提！~LC', 'ahlc@sina.cn', '2019-07-23 16:10:37', 'ahviplc', '$2a$10$Y7STEdcv9ouvzreiDbmqlO0MyYpOglsbaxAvGGEYh.ZYOZIfJlWwe', 'ahviplc');

SET FOREIGN_KEY_CHECKS = 1;
