-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.45 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 xmcms 的数据库结构
DROP DATABASE IF EXISTS `xmcms`;
CREATE DATABASE IF NOT EXISTS `xmcms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `xmcms`;


-- 导出  表 xmcms.admin 结构
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `name` varchar(50) DEFAULT NULL COMMENT '管理员名称',
  `password` varchar(32) DEFAULT NULL COMMENT '密码 MD5加密',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员';

-- 正在导出表  xmcms.admin 的数据：~1 rows (大约)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminId`, `name`, `password`, `createTime`) VALUES
	(1, 'yunduanxing', '96e79218965eb72c92a549dd5a330112', '2012-08-08 00:00:00');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- 导出  表 xmcms.admin_folder 结构
DROP TABLE IF EXISTS `admin_folder`;
CREATE TABLE IF NOT EXISTS `admin_folder` (
  `adminId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  xmcms.admin_folder 的数据：~8 rows (大约)
DELETE FROM `admin_folder`;
/*!40000 ALTER TABLE `admin_folder` DISABLE KEYS */;
INSERT INTO `admin_folder` (`adminId`, `folderId`, `createTime`) VALUES
	(1, 1, '2014-10-29 20:48:42'),
	(1, 3, '2014-10-29 20:48:43'),
	(1, 4, '2014-10-29 20:48:44'),
	(1, 5, '2014-10-29 20:48:45'),
	(1, 2, '2014-10-29 20:48:46'),
	(1, 6, '2016-04-22 09:33:54'),
	(1, 7, '2016-04-22 09:34:21'),
	(1, 8, '2016-04-24 18:50:11');
/*!40000 ALTER TABLE `admin_folder` ENABLE KEYS */;


-- 导出  表 xmcms.article 结构
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `articleId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `folderId` bigint(20) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `adminId` bigint(20) DEFAULT '0' COMMENT '管理员ID',
  `picture` varchar(60) DEFAULT NULL,
  `title` varchar(200) DEFAULT '' COMMENT '文件名称',
  `summary` varchar(2000) DEFAULT NULL,
  `content` mediumtext COMMENT '文件内容',
  `viewCount` int(11) DEFAULT '0' COMMENT '浏览数',
  `commentCount` int(11) DEFAULT '0' COMMENT '评论数',
  `status` varchar(20) DEFAULT 'init' COMMENT '状态：0 隐藏 1 显示',
  `check` enum('yes','no','init') DEFAULT NULL,
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`articleId`),
  KEY `idx_folder` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='文件';

-- 正在导出表  xmcms.article 的数据：~8 rows (大约)
DELETE FROM `article`;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`articleId`, `folderId`, `path`, `adminId`, `picture`, `title`, `summary`, `content`, `viewCount`, `commentCount`, `status`, `check`, `createTime`, `updateTime`) VALUES
	(9, 1, '1', 1, 'upload/2016/04/25/d66999dcb6bf405e9ea62f72856dbdc5.jpg', '云端行旅游平台', '云端行旅游平台电子商务', '<p><img src="http://localhost:8080/xmcms/upload/image/20160425/1461572509218040163.jpg" title="1461572509218040163.jpg" alt="grids-img3.jpg"/>云端行旅游平台电子商务</p>', 0, 0, 'display', 'yes', '2016-04-22 00:00:00', '2016-04-22 09:37:32'),
	(10, 1, '1', 1, '', '智慧景区系统', '智慧景区系统', '<p>智慧景区系统</p>', 0, 0, 'display', 'yes', '2016-04-22 00:00:00', '2016-04-22 09:37:59'),
	(11, 1, '1', 1, 'upload/2016/04/22/b2a76d1b0af6425d967608d52b231999.jpg', '景区电子地图导航', '景区电子地图导航', '<p>景区电子地图导航</p>', 0, 0, 'display', 'yes', '2016-04-22 00:00:00', '2016-04-22 09:38:28'),
	(12, 2, '2', 1, 'upload/2016/04/22/0944199fe63446278b51b80f3040eeca.jpg', '景区推荐1', '景区推荐1', '<p>景区推荐1</p>', 0, 0, 'display', 'yes', '2016-04-22 00:00:00', '2016-04-22 09:39:00'),
	(13, 2, '2', 1, 'upload/2016/04/22/407847e550744f0db884df5ac66dbbf8.jpg', '景区推荐2', '景区推荐2', '<p>景区推荐2</p>', 0, 0, 'display', 'yes', '2016-04-22 00:00:00', '2016-04-22 09:39:13'),
	(14, 2, '2', 1, 'upload/2016/04/22/89e22c409ecb4aa8a0d4b31b2e9881ad.jpg', '景区推荐3', '景区推荐', '<p>景区推荐景区推荐景区推荐景区推荐景区推荐景区推荐</p>', 0, 0, 'display', 'yes', '2016-04-22 00:00:00', '2016-04-22 09:40:29'),
	(15, 7, '7', 1, '', '关于我们', '关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们', '<p>关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们关于我们</p>', 0, 0, 'display', 'yes', '2016-04-22 00:00:00', '2016-04-22 09:41:03'),
	(16, 8, '8', 1, 'upload/2016/04/25/9ffc74af883b494b9f1380d3775827a0.jpg', '联系我们', '联系我们联系我们', '<p>联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们联系我们</p><p><img src="http://localhost:8080/xmcms/upload/image/20160425/1461572391948023300.jpg" title="1461572391948023300.jpg" alt="grids-img3.jpg"/></p>', 0, 0, 'display', 'yes', '2016-04-24 00:00:00', '2016-04-24 19:18:55');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;


-- 导出  表 xmcms.comment 结构
DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `commentId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `fatherId` bigint(20) DEFAULT NULL COMMENT '父评论ID',
  `kindId` bigint(20) DEFAULT NULL,
  `kind` varchar(45) DEFAULT NULL COMMENT '文件ID',
  `name` varchar(45) DEFAULT NULL COMMENT '评论者',
  `email` varchar(45) DEFAULT NULL COMMENT '评论者邮件地址',
  `url` varchar(200) DEFAULT NULL COMMENT '评论者网址',
  `phone` bigint(20) DEFAULT NULL,
  `content` text COMMENT '内容',
  `ip` varchar(45) DEFAULT NULL COMMENT 'Ip',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`commentId`),
  KEY `idx_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='评论';

-- 正在导出表  xmcms.comment 的数据：~0 rows (大约)
DELETE FROM `comment`;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;


-- 导出  表 xmcms.config 结构
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `key` varchar(45) NOT NULL COMMENT 'Key',
  `value` varchar(45) DEFAULT NULL COMMENT '值',
  `description` text COMMENT '描述',
  `createTime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='网站配置';

-- 正在导出表  xmcms.config 的数据：~6 rows (大约)
DELETE FROM `config`;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`key`, `value`, `description`, `createTime`) VALUES
	('xm_headline_image_height', '420', '首页头图的高（px）', '2012-08-08 00:00:00'),
	('xm_headline_image_width', '858', '首页头图的宽（px）', '2012-08-08 00:00:00'),
	('xm_seo_headline', 'XMCMS是用Java开发的内容管理系统', '网站口号', '2012-08-08 00:00:00'),
	('xm_seo_title', 'XMCMS', '网站名称', '2012-08-08 00:00:00'),
	('xm_static', 'false', '是否启用全站静态化', '2012-08-08 00:00:00'),
	('xm_template', 'ydx', '模板', '2012-08-08 00:00:00');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- 导出  表 xmcms.folder 结构
DROP TABLE IF EXISTS `folder`;
CREATE TABLE IF NOT EXISTS `folder` (
  `folderId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '目录ID',
  `fatherId` bigint(20) NOT NULL DEFAULT '0' COMMENT '父亲Id，用于构建目录树',
  `ename` varchar(45) NOT NULL COMMENT '英文名',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '中文名',
  `path` varchar(200) NOT NULL DEFAULT '' COMMENT '路径',
  `content` text,
  `level` tinyint(4) DEFAULT '1' COMMENT '层级',
  `sort` tinyint(4) DEFAULT '0' COMMENT '排序',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `count` int(11) DEFAULT '0' COMMENT '文件数',
  `status` varchar(20) DEFAULT 'hidden' COMMENT '状态：0 隐藏 1 现实',
  `check` enum('yes','no') DEFAULT 'no',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `idx_ename` (`ename`) USING BTREE,
  KEY `idx_status` (`fatherId`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='目录';

-- 正在导出表  xmcms.folder 的数据：~5 rows (大约)
DELETE FROM `folder`;
/*!40000 ALTER TABLE `folder` DISABLE KEYS */;
INSERT INTO `folder` (`folderId`, `fatherId`, `ename`, `name`, `path`, `content`, `level`, `sort`, `width`, `height`, `count`, `status`, `check`, `createTime`, `updateTime`) VALUES
	(1, 0, 'service', '服务业务', '1', '', 1, 1, 0, 0, 0, 'display', 'no', '2014-10-29 18:37:39', NULL),
	(2, 0, 'scenic', '景区推荐', '2', '', 1, 2, 0, 0, 0, 'display', 'no', '2014-10-29 18:38:02', NULL),
	(6, 0, 'news', '公司新闻', '6', '', 1, 3, 0, 0, 0, 'display', 'no', '2016-04-22 09:33:54', NULL),
	(7, 0, 'about', '关于我们', '7', '', 1, 4, 0, 0, 0, 'display', 'no', '2016-04-22 09:34:21', NULL),
	(8, 0, 'contact', '联系我们', '8', '', 1, 5, 0, 0, 0, 'display', 'no', '2016-04-24 18:50:11', NULL);
/*!40000 ALTER TABLE `folder` ENABLE KEYS */;


-- 导出  表 xmcms.guestbook 结构
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE IF NOT EXISTS `guestbook` (
  `guestbookId` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `reply` varchar(2000) DEFAULT NULL,
  `status` enum('display','hidden','init') DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `replyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`guestbookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  xmcms.guestbook 的数据：~0 rows (大约)
DELETE FROM `guestbook`;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;


-- 导出  表 xmcms.headline 结构
DROP TABLE IF EXISTS `headline`;
CREATE TABLE IF NOT EXISTS `headline` (
  `headlineId` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`headlineId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  xmcms.headline 的数据：~3 rows (大约)
DELETE FROM `headline`;
/*!40000 ALTER TABLE `headline` DISABLE KEYS */;
INSERT INTO `headline` (`headlineId`, `name`, `picture`, `url`, `sort`, `createTime`) VALUES
	(1, '头图1', 'upload/2016/04/22/ccf6706625434b4a811e5bb463328a60.jpg', 'list', 0, '2016-04-03 00:43:22'),
	(2, '头图2', 'upload/2016/04/22/680e416d01b44520939d9b118c3ab855.jpg', 'list2', 1, '2016-04-03 00:43:53'),
	(3, '', 'upload/2016/04/22/a5f8ca651afd4b43ad13243d99949ec5.jpg', '', 0, '2016-04-22 09:36:33');
/*!40000 ALTER TABLE `headline` ENABLE KEYS */;


-- 导出  表 xmcms.media 结构
DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `mediaId` bigint(20) NOT NULL AUTO_INCREMENT,
  `kindId` bigint(20) DEFAULT '0',
  `name` varchar(200) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`mediaId`),
  KEY `idx_kind` (`kind`,`kindId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 ROW_FORMAT=COMPACT;

-- 正在导出表  xmcms.media 的数据：~0 rows (大约)
DELETE FROM `media`;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;


-- 导出  表 xmcms.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `openId` bigint(20) DEFAULT NULL COMMENT '公共用户ID，只有是师说，QQ，微博等其它网站登录时才有。',
  `type` varchar(20) DEFAULT NULL COMMENT '帐号类型：0 本站 1 师说 2 QQ 3 微博',
  `name` varchar(45) DEFAULT NULL COMMENT '用户名',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户';

-- 正在导出表  xmcms.user 的数据：~0 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
