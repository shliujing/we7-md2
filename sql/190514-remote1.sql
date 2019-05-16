-- MySQL dump 10.13  Distrib 5.7.23, for osx10.9 (x86_64)
--
-- Host: 101.132.181.177    Database: mengda
-- ------------------------------------------------------
-- Server version	5.6.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ims_account`
--

DROP TABLE IF EXISTS `ims_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account`
--

LOCK TABLES `ims_account` WRITE;
/*!40000 ALTER TABLE `ims_account` DISABLE KEYS */;
INSERT INTO `ims_account` VALUES (1,1,'uRr8qvQV',1,0,0,0),(2,2,'OX5i7Sim',4,0,0,0);
/*!40000 ALTER TABLE `ims_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_phoneapp`
--

DROP TABLE IF EXISTS `ims_account_phoneapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_phoneapp`
--

LOCK TABLES `ims_account_phoneapp` WRITE;
/*!40000 ALTER TABLE `ims_account_phoneapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_phoneapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_webapp`
--

DROP TABLE IF EXISTS `ims_account_webapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_webapp`
--

LOCK TABLES `ims_account_webapp` WRITE;
/*!40000 ALTER TABLE `ims_account_webapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_webapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wechats`
--

DROP TABLE IF EXISTS `ims_account_wechats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wechats`
--

LOCK TABLES `ims_account_wechats` WRITE;
/*!40000 ALTER TABLE `ims_account_wechats` DISABLE KEYS */;
INSERT INTO `ims_account_wechats` VALUES (1,1,'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP','',4,'we7team','','','','','','','','',0,'','',1,'','');
/*!40000 ALTER TABLE `ims_account_wechats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wxapp`
--

DROP TABLE IF EXISTS `ims_account_wxapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wxapp`
--

LOCK TABLES `ims_account_wxapp` WRITE;
/*!40000 ALTER TABLE `ims_account_wxapp` DISABLE KEYS */;
INSERT INTO `ims_account_wxapp` VALUES (2,2,'i1p1GgHDC6GGVIZHzbhHBiNs0gg1pbG1','oxiILGyQvnvZvWLjqTZMUpTrZWB99GJylPgrVpiBmmd',1,'','gh_599f6442e255','wxf9c6940d828e7ea3','1578bfff06cf77e96113e820f40c8f58','蒙大教育','');
/*!40000 ALTER TABLE `ims_account_wxapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_category`
--

DROP TABLE IF EXISTS `ims_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_category`
--

LOCK TABLES `ims_article_category` WRITE;
/*!40000 ALTER TABLE `ims_article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_news`
--

DROP TABLE IF EXISTS `ims_article_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_news`
--

LOCK TABLES `ims_article_news` WRITE;
/*!40000 ALTER TABLE `ims_article_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_notice`
--

DROP TABLE IF EXISTS `ims_article_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_notice`
--

LOCK TABLES `ims_article_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_unread_notice`
--

DROP TABLE IF EXISTS `ims_article_unread_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_unread_notice`
--

LOCK TABLES `ims_article_unread_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_unread_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_unread_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_attachment_group`
--

DROP TABLE IF EXISTS `ims_attachment_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_attachment_group`
--

LOCK TABLES `ims_attachment_group` WRITE;
/*!40000 ALTER TABLE `ims_attachment_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_attachment_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_basic_reply`
--

DROP TABLE IF EXISTS `ims_basic_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_basic_reply`
--

LOCK TABLES `ims_basic_reply` WRITE;
/*!40000 ALTER TABLE `ims_basic_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_basic_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_business`
--

DROP TABLE IF EXISTS `ims_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_business`
--

LOCK TABLES `ims_business` WRITE;
/*!40000 ALTER TABLE `ims_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_attachment`
--

DROP TABLE IF EXISTS `ims_core_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_attachment`
--

LOCK TABLES `ims_core_attachment` WRITE;
/*!40000 ALTER TABLE `ims_core_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cache`
--

DROP TABLE IF EXISTS `ims_core_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cache`
--

LOCK TABLES `ims_core_cache` WRITE;
/*!40000 ALTER TABLE `ims_core_cache` DISABLE KEYS */;
INSERT INTO `ims_core_cache` VALUES ('setting','a:10:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";s:0:\"\";s:7:\"cloudip\";a:0:{}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:18:\"module_receive_ban\";a:0:{}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}}'),('system_frame','a:10:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:3:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"phoneapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:11:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:53:\"./index.php?c=module&a=manage-system&system_welcome=1\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=5\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=6\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:4:\"site\";a:8:{s:5:\"title\";s:12:\"站点管理\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:4:\"help\";a:9:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}}'),('userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('module_receive_enable','a:0:{}'),('we7::site_store_buy_1','a:0:{}'),('we7:module_info:basic','a:31:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/basic/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:news','a:31:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:54:\"https://md.iamlj.com/addons/news/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:music','a:31:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/music/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:userapi','a:31:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:143:\"自定义接口又称第三方接口，可以让开发者更方便的接入RubySn0w系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"https://md.iamlj.com/addons/userapi/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:recharge','a:31:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/recharge/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:custom','a:31:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/custom/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:images','a:31:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/images/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:video','a:31:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/video/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:voice','a:31:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/voice/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:chats','a:31:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/chats/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:wxcard','a:31:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/wxcard/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:store','a:31:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:20:\"http://www.baidu.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/store/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('unisetting:1','a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}'),('uniaccount:1','a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:61:\"https://md.iamlj.com/attachment/headimg_1.jpg?time=1556718804\";s:6:\"qrcode\";s:60:\"https://md.iamlj.com/attachment/qrcode_1.jpg?time=1556718804\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:module:all_uninstall','a:2:{s:6:\"expire\";i:1557420178;s:4:\"data\";a:7:{s:13:\"cloud_m_count\";N;s:7:\"modules\";N;s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;s:12:\"webapp_count\";i:0;s:14:\"phoneapp_count\";i:0;s:13:\"welcome_count\";i:0;}}'),('we7:unimodules::','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:all_cloud_upgrade_module:','a:2:{s:6:\"expire\";i:1556720604;s:4:\"data\";a:0:{}}'),('we7:uni_group','a:2:{i:2;a:9:{s:2:\"id\";s:1:\"2\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:4:\"tech\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:0:\"\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:1:{i:0;s:8:\"hr_album\";}}i:1;a:9:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:2:\"N;\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}'),('we7:user_modules:1','a:13:{i:0;s:8:\"hr_album\";i:1;s:5:\"store\";i:2;s:6:\"wxcard\";i:3;s:5:\"chats\";i:4;s:5:\"voice\";i:5;s:5:\"video\";i:6;s:6:\"images\";i:7;s:6:\"custom\";i:8;s:8:\"recharge\";i:9;s:7:\"userapi\";i:10;s:5:\"music\";i:11;s:4:\"news\";i:12;s:5:\"basic\";}'),('unisetting:2','a:0:{}'),('uniaccount:2','a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"i1p1GgHDC6GGVIZHzbhHBiNs0gg1pbG1\";s:14:\"encodingaeskey\";s:43:\"oxiILGyQvnvZvWLjqTZMUpTrZWB99GJylPgrVpiBmmd\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:15:\"gh_599f6442e255\";s:3:\"key\";s:18:\"wxf9c6940d828e7ea3\";s:6:\"secret\";s:32:\"1578bfff06cf77e96113e820f40c8f58\";s:4:\"name\";s:12:\"蒙大教育\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxf9c6940d828e7ea3\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:66:\"https://a.chinajinglu.com/attachment/headimg_2.jpg?time=1557412893\";s:6:\"qrcode\";s:65:\"https://a.chinajinglu.com/attachment/qrcode_2.jpg?time=1557412893\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:lastaccount:oJ0X7','a:1:{s:5:\"wxapp\";i:2;}'),('we7:$cache_last_account_type','s:5:\"wxapp\";'),('we7:2:site_store_buy_4','a:0:{}'),('we7:unimodules:2:1','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:wxapp_version:1','a:16:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:3:\"1.0\";s:11:\"description\";s:5:\"1.0.3\";s:7:\"modules\";a:1:{i:0;a:38:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/hr_album/icon.jpg?v=1556718813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:8:\"shortcut\";N;s:7:\"account\";N;s:12:\"cover_entrys\";a:0:{}s:12:\"defaultentry\";N;s:7:\"newicon\";N;}}s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1556719643\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}'),('we7:unimodules:2:','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('accesstoken:wxe7bc1c3c7a9ff198','a:2:{s:5:\"token\";s:136:\"21_FDPoAsbmiix-i-c-ROvos0iLaX0h2uSBmHmMvLE7Pm7fvg-x5sQfIbGcM2wpF41dkWxEr6-prQ0_ebm2SCoM4UUFXi4X0p3M6SAK0PX6swmL8nP8o62wqO9jO-sZGChAIAHOK\";s:6:\"expire\";i:1557417228;}'),('we7:module_setting:2:hr_album','a:7:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:6:\"module\";s:8:\"hr_album\";s:7:\"enabled\";s:1:\"1\";s:8:\"settings\";s:985:\"a:20:{s:9:\"spacename\";N;s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:13:\" 蒙大教育\";s:8:\"deftitle\";N;s:8:\"baseskin\";N;s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:0;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:0;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"7iwhgo8Q80SKa3owzd8IhmmP9a5RoQmCfq5Pa0v0\";s:9:\"secretkey\";s:40:\"IQ4Ug2fNCh1mXRWHYVQgwf-ZWfJ5vtgWuS5BGhTF\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:25:\"https://c.chinajinglu.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";N;s:8:\"sharepic\";N;s:4:\"kfbg\";N;s:6:\"morebg\";N;s:6:\"ishare\";N;s:5:\"isico\";N;s:8:\"wxyellow\";N;s:5:\"ispay\";N;s:6:\"dsdesc\";N;s:5:\"llads\";N;s:4:\"iskf\";N;s:7:\"paydesc\";N;s:10:\"list_style\";N;s:10:\"templateid\";N;}\";s:8:\"shortcut\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";}'),('we7:lastaccount:uA9ZO','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:ty7yZ','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:2:site_store_buy_6','i:0;'),('accesstoken:wxf9c6940d828e7ea3','a:2:{s:5:\"token\";s:136:\"21_POe6wYDEBX3V-Lc5aQ6oEeUOeSD3lC0Ti8i3v_bQ4xvB0zOgEdIuiIaacl2W-XwnimabsDY_g4yvP-l1datG6xQoLGVkvrDluhi1AIFebMSSzDg4RzyWKgWHM7IPAVhAAAJUP\";s:6:\"expire\";i:1557705814;}'),('we7:module_info:hr_album','a:31:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:63:\"https://a.chinajinglu.com/addons/hr_album/icon.jpg?v=1557543723\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:lastaccount:smVmX','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:hey6n','a:1:{s:5:\"wxapp\";i:2;}'),('we7:lastaccount:j3wQ1','a:1:{s:5:\"wxapp\";i:2;}'),('we7:lastaccount:o5WTU','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:ELLLy','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:D6pP9','a:1:{s:5:\"wxapp\";i:2;}'),('we7:permission:2:5','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}'),('we7:permission:2:7','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}');
/*!40000 ALTER TABLE `ims_core_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron`
--

DROP TABLE IF EXISTS `ims_core_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron`
--

LOCK TABLES `ims_core_cron` WRITE;
/*!40000 ALTER TABLE `ims_core_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron_record`
--

DROP TABLE IF EXISTS `ims_core_cron_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron_record`
--

LOCK TABLES `ims_core_cron_record` WRITE;
/*!40000 ALTER TABLE `ims_core_cron_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_job`
--

DROP TABLE IF EXISTS `ims_core_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_job`
--

LOCK TABLES `ims_core_job` WRITE;
/*!40000 ALTER TABLE `ims_core_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_menu`
--

DROP TABLE IF EXISTS `ims_core_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_menu`
--

LOCK TABLES `ims_core_menu` WRITE;
/*!40000 ALTER TABLE `ims_core_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_paylog`
--

DROP TABLE IF EXISTS `ims_core_paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_paylog`
--

LOCK TABLES `ims_core_paylog` WRITE;
/*!40000 ALTER TABLE `ims_core_paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_performance`
--

DROP TABLE IF EXISTS `ims_core_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_performance`
--

LOCK TABLES `ims_core_performance` WRITE;
/*!40000 ALTER TABLE `ims_core_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_queue`
--

DROP TABLE IF EXISTS `ims_core_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_queue`
--

LOCK TABLES `ims_core_queue` WRITE;
/*!40000 ALTER TABLE `ims_core_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_refundlog`
--

DROP TABLE IF EXISTS `ims_core_refundlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_refundlog`
--

LOCK TABLES `ims_core_refundlog` WRITE;
/*!40000 ALTER TABLE `ims_core_refundlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_refundlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_resource`
--

DROP TABLE IF EXISTS `ims_core_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_resource`
--

LOCK TABLES `ims_core_resource` WRITE;
/*!40000 ALTER TABLE `ims_core_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sendsms_log`
--

DROP TABLE IF EXISTS `ims_core_sendsms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sendsms_log`
--

LOCK TABLES `ims_core_sendsms_log` WRITE;
/*!40000 ALTER TABLE `ims_core_sendsms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_sendsms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sessions`
--

DROP TABLE IF EXISTS `ims_core_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sessions`
--

LOCK TABLES `ims_core_sessions` WRITE;
/*!40000 ALTER TABLE `ims_core_sessions` DISABLE KEYS */;
INSERT INTO `ims_core_sessions` VALUES ('87578b57182275a5af4ad8763b3b94ef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EGLL\";i:1557762851;}',1557766451),('bcafc5628c3118ae6de30f1358f2909f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ep9v\";i:1557762816;}',1557766416),('7170a953e78da8e6d5e7983f36a15282',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ewzl\";i:1557762816;}',1557766416),('6faa782f2980c3e0ad8f21b2a6b49b43',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C6ep\";i:1557762745;}',1557766345),('d5e442761985eb2310d51e498b5a47fb',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A5A9\";i:1557762745;}',1557766345),('9ca85a2ff619d219a5eca2ae7c4478fc',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d2tl\";i:1557762745;}',1557766345),('1a2b400fb7ab0d8c65b6409799a74f6c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zwwe\";i:1557762745;}',1557766345),('7e5dffc580cb9048250e8e3c0e33f41b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A3vC\";i:1557762686;}',1557766286),('a158cfe295755d23c1823b374bf5fdef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G330\";i:1557762686;}',1557766286),('27f9709bc9bc24e7208ba2a2f426e669',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f383\";i:1557762743;}',1557766343),('47ce1e9f4bdc50b08e40bc76e6e97150',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R70i\";i:1557762743;}',1557766343),('86783eaca22056514afed68da859992a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D223\";i:1557762743;}',1557766343),('a35172bf3fa1841e029e28facac41c4b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cx1F\";i:1557763656;}',1557767256),('40df402543bb919d489c6f610983a7c8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SSdp\";i:1557763656;}',1557767256),('2060ab589cb9f49cd50956aa9b6a4180',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D700\";i:1557763650;}',1557767250),('5e333d80685e752686b22bfa0ac3ba52',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i7S9\";i:1557763656;}',1557767256),('031f6836330b6e6b8571840834757c87',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kdC3\";i:1557763647;}',1557767247),('954c3266f1dee94f0f9bbd14305cdd93',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GtWQ\";i:1557763642;}',1557767242),('881d76f890be604709b6ef1d3dbd58ac',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o3lW\";i:1557763642;}',1557767242),('776e0e7ec5346bca853b4f1393514376',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xbo9\";i:1557763645;}',1557767245),('c5f5a0efb4cb957bf1def71823a3ac3a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XhKR\";i:1557763642;}',1557767242),('3707fab25fb19111b70ef777dd8c58e6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qxzu\";i:1557763637;}',1557767237),('a81d11411eabc4bf43fb9881c9ab5309',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KXXZ\";i:1557763637;}',1557767237),('074d7cfd99e4a6ce3de3e6a9c305985f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h11c\";i:1557763642;}',1557767242),('acd2c5910732b4b62ef388a1734953ef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vPhm\";i:1557763637;}',1557767237),('30f64cd7eef16d74057e509b771bf55e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wa4g\";i:1557763633;}',1557767233),('d951b2edf220dbcc008e9cff2d99e0e3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kOFV\";i:1557763635;}',1557767235),('651cf0837dfd13142f689566c34cdad1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A6s6\";i:1557763637;}',1557767237),('16761e72052403099b611cf66c4f3c21',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PdBi\";i:1557763634;}',1557767234),('719cde1006cadc37ed9137c885107c2c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CPQB\";i:1557763628;}',1557767228),('46a3e5a20326f764aff743888be8c803',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AMrz\";i:1557763628;}',1557767228),('2a70ac714cc0a036eefb8db48060225b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"er8Z\";i:1557763634;}',1557767234),('e52c029077e2b9e943ca0fa9badacd12',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b1pg\";i:1557763628;}',1557767228),('2dbdbedbc304b1fad8053d3fd259f203',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ojja\";i:1557763624;}',1557767224),('79c41c9d09094a3a9de99759c9f498ac',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Es71\";i:1557763627;}',1557767227),('dea03b932250a652f116a283ca3f644f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RdM4\";i:1557763628;}',1557767228),('72eadce41a18d145e40cc79caa6bd17c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z41F\";i:1557763621;}',1557767221),('97753711faf749b478af71a58ebc5222',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LSo6\";i:1557763610;}',1557767210),('36560886b27b774bef8be9c01e56ddbd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q5L7\";i:1557763611;}',1557767211),('48c013abb46d67c93fa5964bc9859c61',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C7TT\";i:1557763620;}',1557767220),('3b53b2a5575deed7112417ef10ef307d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uQbv\";i:1557763610;}',1557767210),('60b29317199ba8de5bd9450779ec78f4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bxnR\";i:1557763585;}',1557767185),('d7ca2f20191bbd22243189d916d07792',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rdb1\";i:1557763585;}',1557767185),('fa5ed668eb93fc1f3a94f6b255bb8666',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ql15\";i:1557763585;}',1557767185),('0350fc836984d2e804e8d7f3cb892aaf',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W7D7\";i:1557763582;}',1557767182),('e67f16a48b91db0eeab25581f3097060',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nuAu\";i:1557763582;}',1557767182),('9079cc194bda59d0062e0d2ab537fb62',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bm01\";i:1557763582;}',1557767182),('88cfb6a5c0fb2f1b7d7773c1b7854ff6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YNzn\";i:1557763576;}',1557767176),('a8d547a41845001ca04b2a5b927efb86',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nUST\";i:1557763575;}',1557767175),('40aa005f9283d36d9abeeed56d5e67f5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uBvC\";i:1557763575;}',1557767175),('25261e8c31bcd82cfea84b613a7fdac1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a618\";i:1557763575;}',1557767175),('3b81b0b9d9756c148ac8998a693913e9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZzL9\";i:1557763570;}',1557767170),('7b76ae368c5c9e395c2f75737fd905ad',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uVXf\";i:1557763565;}',1557767165),('c01c62ae7519b0c63d1b6998e639c40f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c1v9\";i:1557763565;}',1557767165),('bf977d57e3fac90e8b22de1c6a4f86da',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k7ck\";i:1557763565;}',1557767165),('5ff415678c224596f7f7a7751f2a6ac5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zrvl\";i:1557763565;}',1557767165),('c2b29c1fe77340fc6db39a17847c9487',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MuRc\";i:1557763556;}',1557767156),('1721ca92d64eff37ea3a1d6025b47568',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l43O\";i:1557763556;}',1557767156),('46a3818906b70de7fd601c59e31a7c0e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l4qG\";i:1557763556;}',1557767156),('8f3e797f734ac18ba1bb355da8134c69',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uKhm\";i:1557763549;}',1557767149),('f5dd754272b175075b8e70bf2ece09c9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q48L\";i:1557763549;}',1557767149),('e49d52d30ae2b68a83814b80fbd2e27c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GcYi\";i:1557763549;}',1557767149),('7e6ecc619c1fa57238699ef8ed7d717b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OIy7\";i:1557763549;}',1557767149),('8014cca9036082c23b1935ade39bd1a3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kyeZ\";i:1557763542;}',1557767142),('c149350d69a715b3d290fcf89d39b50e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JEpi\";i:1557763519;}',1557767119),('e15d4b3c7f649655622d9d175f96c26b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bd0F\";i:1557763519;}',1557767119),('dd190f5af8a7b316b52478884b1a0b4f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IRsE\";i:1557763542;}',1557767142),('beebecd723c0b851cdbefa42fa722317',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X6W7\";i:1557763519;}',1557767119),('c909f0d8c223a82750fbc4acf1bc9801',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UYmY\";i:1557763514;}',1557767114),('1d3c3bf18092485bd397c64410d3fee2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bQ8Q\";i:1557763518;}',1557767118),('ebef0be07af5080eea37f5e2e93b382f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t46a\";i:1557763514;}',1557767114),('9f60ffe97e43ef57a84c5f370575a154',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v507\";i:1557763514;}',1557767114),('3b219163fcc269048bbf5847a2be1fa8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wnF6\";i:1557763513;}',1557767113),('1b116a13dc48eddc15f61edb771acc87',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xVFi\";i:1557762426;}',1557766026),('4af1fab25b917879c23b48c0250a5644',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dTL5\";i:1557762426;}',1557766026),('e331ce7b96176abf1ef520e97700ae93',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mLn6\";i:1557762562;}',1557766162),('273dcd97e512796c012c8f0844c5f25d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vg89\";i:1557762641;}',1557766241),('7d7230e539aee96282fd3e94be4f8f41',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rRm6\";i:1557762641;}',1557766241),('c8cbca16543c6b66b5813b3a933b3704',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ha0O\";i:1557762641;}',1557766241),('84d96ec216b4a71cc2a2fe2ed2809ffd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nGll\";i:1557762646;}',1557766246),('6feb85e7122d17a18cbaa36fd58c5ea2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mdtw\";i:1557762646;}',1557766246),('b3832c6fa7f85afd2325167b7dff8c5d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YEAW\";i:1557762646;}',1557766246),('6cf01597fd740deed127bc0ba36516c7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b1Qj\";i:1557762646;}',1557766246),('c1ba20afe84d05a0cf2e2aa26f9d8b72',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DNeC\";i:1557762674;}',1557766274),('a82f21a6c7e0ec52755e852cf0ee8e75',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SPy6\";i:1557762678;}',1557766278),('34cf533ce6739bab2d88b48e750c912a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QE77\";i:1557762678;}',1557766278),('f5f326252737b2668debe23c16629b89',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AmVD\";i:1557762678;}',1557766278),('4fe827d480f8b229ac292880802254ad',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MVcV\";i:1557762678;}',1557766278),('b1a4e797bcec29bc6cc9fd5a1d265f3d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P6jl\";i:1557762682;}',1557766282),('0af9e82566bbbe6bfa256cb53f15a722',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Je9J\";i:1557762682;}',1557766282),('3719102d782c79be52060d3242e18ea4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BPhp\";i:1557762683;}',1557766283),('32b742abc6d1f3a6e961489d07e8e3eb',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zYQs\";i:1557762685;}',1557766285),('d41309c5ee3688e6cc1f9af58532c0c2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hiEx\";i:1557762685;}',1557766285),('25da5675c969acd4724c36c7a0048540',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wn82\";i:1557762686;}',1557766286),('058ae35bbe2d08f8d4afab93987fb363',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wy0z\";i:1557762686;}',1557766286),('b1357cb3331f6a739fcde2138098a139',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PkSW\";i:1557763512;}',1557767112),('30d31e55245f2e30b17c80c94053c5ca',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T1pi\";i:1557763512;}',1557767112),('382df818abb195476fcddbcd7252d084',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qDgp\";i:1557763511;}',1557767111),('a6bbb5c20b669a839037fea3b9e64f48',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A08J\";i:1557763511;}',1557767111),('340db71fb8ee332680a9ddf5f526c777',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eikR\";i:1557763511;}',1557767111),('ded2303e74214c1992c5cfdaac2f93c3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jBBG\";i:1557763511;}',1557767111),('5bf514c84976dc6f7f5ef00b1133df60',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JvkG\";i:1557763505;}',1557767105),('e3e8b8119f1c0a9aa5d7cc64257137e2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tzXN\";i:1557763044;}',1557766644),('90516907fd6f4f3adf8c9d47af4c912f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OfZQ\";i:1557763047;}',1557766647),('c535c4865c0d1d157c72ff38ff47247b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f9Uy\";i:1557763047;}',1557766647),('b58387011ba1468caf04b4a782dc1db1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KXhl\";i:1557763047;}',1557766647),('d31cfe6ce81958790c14f7c725e0c376',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n2J2\";i:1557763047;}',1557766647),('24681d6b1ce839cf7a668dadf8d75564',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oW6j\";i:1557763051;}',1557766651),('b1f7106f70e418e3baeb28d1a6e2aea9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QECf\";i:1557763051;}',1557766651),('475b035336f388592d16103a8fe8da60',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pVRn\";i:1557763052;}',1557766652),('6c96412e90aebb72752f9af722c39fbb',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lggS\";i:1557763053;}',1557766653),('4a33d9158635d844ca342318552ea3f6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"te48\";i:1557763053;}',1557766653),('3459812896891b370d0a5a3383c1ee43',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z39f\";i:1557763053;}',1557766653),('6a54d843b23fca912daf1b161d5cf31f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IhIT\";i:1557763059;}',1557766659),('d50c5d0a8e36b39d636f74f0e7892ddf',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"irPs\";i:1557763059;}',1557766659),('3f727b00fe3a297e5fbcfe05301cf2ef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oXjl\";i:1557763059;}',1557766659),('c884ee3aa72a735ea1ea655a5693b104',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z3f9\";i:1557763082;}',1557766682),('0ce6fc6574659de6aa53104ba8d1a976',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u062\";i:1557763082;}',1557766682),('f609f315740ab0ebc97d1997c91893d7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"urm7\";i:1557763082;}',1557766682),('79fbe723b3eee58e1134d78ca070adc6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nBj7\";i:1557763084;}',1557766684),('5398dcf6282917f5c6447c5635b3a997',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bwIo\";i:1557763088;}',1557766688),('bf65c713d0a8646fb9bdf06f3dfaa882',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BRqn\";i:1557763088;}',1557766688),('f4e002d783f0ed9dbf3bc63b691d72a2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ceju\";i:1557763088;}',1557766688),('3ae5f6a6c820ca4665b966ce6d9b9e43',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cz5Z\";i:1557763098;}',1557766698),('399bc82ebf27ffaad02d428a2db1208b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X6YB\";i:1557763098;}',1557766698),('d9599e32d8f2663935de28b6d6b7c546',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j3c8\";i:1557763098;}',1557766698),('d5e41a7a8a46f8335f5d6872fd3d5372',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Je27\";i:1557763504;}',1557767104),('9246619461629ec842cbaa248e450e6d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n82m\";i:1557763504;}',1557767104),('cd9c83422ccca12b53b82ab858f30cb7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jpZm\";i:1557763504;}',1557767104),('5917ce6f15b75046c849a34aea64150c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DgAA\";i:1557763474;}',1557767074),('37921aa85699416f2f94819827eda34b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NR9N\";i:1557763474;}',1557767074),('6639092fd39339d202e02616b82e6a42',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QH4r\";i:1557763474;}',1557767074),('10af741be9d79c18890e385c0a455e8e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qhXo\";i:1557763462;}',1557767062),('0167a4bbd1ca8d2a1661c53fba9b5236',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M3vj\";i:1557763462;}',1557767062),('7c4e759fb2e74fa4da1518f93a5db86c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I9SY\";i:1557763462;}',1557767062),('f0c8a8f4033f0d55e49d96565ff2ddf3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sN7S\";i:1557763452;}',1557767052),('ff703b0d08eb5611188c3f5ef9848821',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ty9R\";i:1557763452;}',1557767052),('4612dc3df7198ced4d1a0c99a76aa34b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zV6v\";i:1557763452;}',1557767052),('9ada98b693a8e888d041804615e25ab2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HFZ7\";i:1557763435;}',1557767035),('3163f7bb29cfa8ab45403654042d576c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q6A7\";i:1557763435;}',1557767035),('54d038e90046797fa95f16d2193e6b11',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D3P8\";i:1557763435;}',1557767035),('a8f7f94ea66a943ee6270e0a2ea25dab',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BBHc\";i:1557763435;}',1557767035),('c5e0b16447e1876b077fa7779705ebbd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mLJC\";i:1557763435;}',1557767035),('d429c3940c615d7c39d2bb71b741f46b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B483\";i:1557763435;}',1557767035),('f88c4f3db98f0de4ab4667b24a410086',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fddi\";i:1557763434;}',1557767034),('2f7fc2cb0991cf47f4ef9eb8d3f3981a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ip4U\";i:1557762377;}',1557765977),('22d4a4ea72ef2c2feb3bc337252b8d56',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wrV9\";i:1557762386;}',1557765986),('46f6f4c9fd32a0058fd8e52549fdc418',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j11G\";i:1557762421;}',1557766021),('134f076c70641955db8677bab5f75216',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vy2W\";i:1557762422;}',1557766022),('f59af237048a3925455b709006a047f0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rphz\";i:1557762426;}',1557766026),('75374bf7477560e1a5288188d4bc46f9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v7Z2\";i:1557762426;}',1557766026),('701c89a1796b9e091cbccb6983848f30',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZmXN\";i:1557763433;}',1557767033),('9c2c621fd485d099b0407c831219763c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I4Db\";i:1557763433;}',1557767033),('8e9b35a089f5ddaf6fc07c16193a6a25',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nZ8G\";i:1557763432;}',1557767032),('6d34edd190a6b2e8accf542de02a9c15',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vjCR\";i:1557763432;}',1557767032),('a7e787cef86ec3000b89fb440c888800',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lyYl\";i:1557763432;}',1557767032),('033b80283ab9e1fcc23c0b9d793ade83',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wmID\";i:1557763428;}',1557767028),('54f97573485598507635374f4086e856',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F8R5\";i:1557763428;}',1557767028),('664a35ce8f5882f394e454c2a2fdac33',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q4vh\";i:1557763428;}',1557767028),('38607e26a7e2deea0cca15d004bd4a5f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y0HC\";i:1557763428;}',1557767028),('8b58fc6c8865ff71b63cc25aec8e4c1a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vvE5\";i:1557763422;}',1557767022),('8874e6561c7a874108c7671de8e55d1b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lMLI\";i:1557763422;}',1557767022),('eff43fe4012ee0dbe227e7986cf964cf',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JRrF\";i:1557763422;}',1557767022),('ea40af2d627ba5eeac58be0d2cd15b46',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FhtZ\";i:1557763416;}',1557767016),('9c78e4329ff548e3d897300744cccf57',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o5kk\";i:1557763414;}',1557767014),('c2f57a94c92d1f02475a30bd61b04d34',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kk9v\";i:1557763414;}',1557767014),('2be92fc700027d21c4067b7ab1ff16fd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qm7Q\";i:1557763414;}',1557767014),('b6396a985a42ea3e4490b6c85561e6ab',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I7Le\";i:1557763367;}',1557766967),('ba4ae33a27fbd04ff2cde8259bca35ae',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TVVF\";i:1557763366;}',1557766966),('c7d254dd8254e1b31e4f678481641c0d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KN25\";i:1557763366;}',1557766966),('5a4ed6eb7b683adab084933f231e7b8d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U310\";i:1557763362;}',1557766962),('189f6f76ed71510e3feff30749fa6a87',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LEii\";i:1557763362;}',1557766962),('5dee9271a78a281f5599a3a4251f61a7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eJou\";i:1557763362;}',1557766962),('14988de91db6fa990331df85dcc4a612',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jnO3\";i:1557763346;}',1557766946),('b442f594bff2d1dce8781a41ff743a21',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z0I8\";i:1557763346;}',1557766946),('c838e3159bf8b3afe549dbd1dac2f3ef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m5aQ\";i:1557763343;}',1557766943),('e6b841346138826b9bb26b4a7fbfe0fc',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p1Ne\";i:1557763346;}',1557766946),('3c40e349a187dc1cbb11d886c990ce99',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JRi0\";i:1557763343;}',1557766943),('88a41b09ba5643ca38e3a1b03617eaf7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LU5S\";i:1557763343;}',1557766943),('8f32bf370218825975c2810989d894b6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W8O0\";i:1557763339;}',1557766939),('b952804f5a15dee8cf3c51c8c6d4b0d4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g3kT\";i:1557763343;}',1557766943),('7859e9bd4d28926dbf37e859172de155',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FZFf\";i:1557763339;}',1557766939),('b7237d9d1f7d200264ea4fd82ac35372',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bc6V\";i:1557763339;}',1557766939),('eef748f37cb0e47867af47f3919905cd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dwia\";i:1557763339;}',1557766939),('cae61c7487b4717c4741b69532b9fbee',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gzfg\";i:1557763339;}',1557766939),('29d9a914096d55b9b1946c17a82bc7ec',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rv2Q\";i:1557763313;}',1557766913),('318e4cfbfc3e491c3381a3b620605b5b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QcPz\";i:1557763302;}',1557766902),('0c92a1651a3fc2e3a2190907dbc96e89',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cWZA\";i:1557763302;}',1557766902),('983325b915524443ee6198d9706d88ed',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sey0\";i:1557763298;}',1557766898),('70a2b79de16989be20e13719c17f2a6c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SlCl\";i:1557763298;}',1557766898),('162dfb4cf22a959ee491c5eba6ea26d5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NaXE\";i:1557763298;}',1557766898),('9ef04d9ff22916d0694f630485e2712b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S84d\";i:1557763292;}',1557766892),('32c6fb1159d60ffa4f9a509bf4d09e6f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f5ep\";i:1557763292;}',1557766892),('c1dc26b9c8eb4cfd0c1fd17508bd9981',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f7kg\";i:1557763292;}',1557766892),('d29b4d659ca582813121091c62ebb06a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rtb0\";i:1557763256;}',1557766856),('aabd1e34e33f64841950b005624b884d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M6Uu\";i:1557763256;}',1557766856),('baa80b83737fe7d6ac38808fe322aaf2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A8aE\";i:1557763256;}',1557766856),('80d6a5791529ed3a69926828a12d1070',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mM8A\";i:1557763248;}',1557766848),('302c0d2fc8aa0e2b45cc9b143af4866c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EdgD\";i:1557763248;}',1557766848),('4cecdb49be121cb7f79450e94b595e52',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uyz7\";i:1557763248;}',1557766848),('6864f02ec43843da087349639925a4a0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vgbI\";i:1557763231;}',1557766831),('c6d65ec19961d982a771f36fdc10a3a0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rc62\";i:1557763231;}',1557766831),('df7ddaa79093aa76e834a285916b8db7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wSS0\";i:1557763231;}',1557766831),('2c3f2287ac2c38adb54a961e97e01216',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wJZz\";i:1557763192;}',1557766792),('cd200356df6f4cde89dab853d74d5ebb',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wSKk\";i:1557763192;}',1557766792),('c7c7a1743f302e4118ebad928d5201ba',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mbhz\";i:1557763192;}',1557766792),('9fabfd9975c8f517f9d41226fb3fef5b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y4DS\";i:1557763183;}',1557766783),('0fe3046835eb9895a046aa94bbe21d12',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TLVZ\";i:1557763183;}',1557766783),('4d8f644e4ee93831eb6e0f445f8ee1af',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h5aK\";i:1557763178;}',1557766778),('be02c7714bed2af6e70d748ac93065a3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NiHh\";i:1557763183;}',1557766783),('9056705f750a9104377502e2945662af',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vk55\";i:1557763178;}',1557766778),('baaa3e382633f047c4f3b0d8bc7e29c7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e88z\";i:1557763178;}',1557766778),('4304c8d6f7177eac182f6683d54105e7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s32T\";i:1557763175;}',1557766775),('be454c476026c915c1a57d01166a7937',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B8Vu\";i:1557763176;}',1557766776),('40952e3b6133e37926134cca8a50acd9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HlgA\";i:1557763175;}',1557766775),('5c639e63ae640cd50448fa8768d302a4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zW1B\";i:1557763174;}',1557766774),('48ef7aa4a9a8841ff1a10b8e2d101953',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e8Oh\";i:1557763174;}',1557766774),('23360e2756facda098f727ca85593c86',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pPjx\";i:1557763174;}',1557766774),('c01ab9426a6330ffffc86298c53121af',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"plqQ\";i:1557763167;}',1557766767),('90839eae9ce474c7893b9867094524a5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rxbT\";i:1557763167;}',1557766767),('2767852e2bc95388e8477b2d16aa2d61',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OWHy\";i:1557763167;}',1557766767),('3872a789f1b8236405af38ff56e02ac2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GRn1\";i:1557763167;}',1557766767),('12fbd271f1b565c5a0baa18fb240a9b3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZRri\";i:1557763166;}',1557766766),('4206bc9da9125c1b9dd0e04d6103655a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W5qk\";i:1557763161;}',1557766761),('2e0c3eaa7167fb7227055e53299bc50f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QEM8\";i:1557763158;}',1557766758),('81346df1e7933a09fffe887352e9cfc2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SyXb\";i:1557763158;}',1557766758),('2dfd7a30cf56af7a65c5101d80a8a714',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J8wq\";i:1557763158;}',1557766758),('5372c4c7b35269a5c0d6e9868eddbeb9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G1U7\";i:1557763157;}',1557766757),('a20d8d63315871f0d7395c3c5a463a73',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NU8D\";i:1557763156;}',1557766756),('e0f4d641ce327c1b0847201bba84480b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JraA\";i:1557763156;}',1557766756),('c69f15a5b52ae1e9364f7805c1f78c2f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cr5k\";i:1557763154;}',1557766754),('6cec2b57b3e57276bb5becda488c9c35',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RdaZ\";i:1557763154;}',1557766754),('7c1dae61bb577546ef3628b6032a7e18',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sOOh\";i:1557763154;}',1557766754),('b2053b3ca5350890f960191ecb82c77b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W29G\";i:1557763154;}',1557766754),('0f6d379c0707b62cc35ef9195de06a09',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"caoo\";i:1557763134;}',1557766734),('385361b0de67e02ef6ee544731ea98ae',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YNnu\";i:1557763133;}',1557766733),('4f63e0a6bbec2ae7d5887acda2f4b166',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sp0J\";i:1557763133;}',1557766733),('5daf12f894046e4c76ecd830569ebf6c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WNFc\";i:1557763132;}',1557766732),('efab63993147687214f593492b9c0899',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z5Py\";i:1557763132;}',1557766732),('36408a572946fadcaeddb2427f1153e1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SC1L\";i:1557763124;}',1557766724),('aa45ea4ba3749137241398eaafbdd16d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WCNI\";i:1557763124;}',1557766724),('e5518879394a7a6b05438c8648ee8703',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UKIi\";i:1557763124;}',1557766724),('d6e3e5db1f8def4b405f6f55a142d02d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rz2V\";i:1557763104;}',1557766704),('a7a0e3eee088bca356cc27c1c7d60376',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MGRL\";i:1557763104;}',1557766704),('3cbcea7e3e36c7ef6497479dcfa34474',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bbmn\";i:1557763104;}',1557766704),('e42aaf6005e2567530144578c0d23c83',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t03F\";i:1557763102;}',1557766702),('03e221bee6cd67bc053c282fb993c945',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QOYl\";i:1557763099;}',1557766699),('9637cc26c108f3cc5dddbc546760244e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MWNO\";i:1557763044;}',1557766644),('cadd72ca0992a53c52a6058631dab763',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"muJT\";i:1557763044;}',1557766644),('66c233b26b70248fc16965d77e7e9bd5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tgzG\";i:1557763029;}',1557766629),('31c69e9323a4c2bc35a826291600a518',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cGst\";i:1557763029;}',1557766629),('10d0c21a30d4006442f2b06e37f3799f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LLto\";i:1557762954;}',1557766554),('c2cad9b8668dbedf0bb2d6e7724faf40',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K61X\";i:1557763029;}',1557766629),('8c68b69046954d72920ab2c8bf2efc83',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qt2w\";i:1557762954;}',1557766554),('41533b0f17c98cfb8e62ba7926ec81ea',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X1wE\";i:1557762954;}',1557766554),('99283a313b45afb0f8a92e32f26b11bd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GzOk\";i:1557762951;}',1557766551),('fea5bb3d0098d695fa01b85cb15cbc63',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oK26\";i:1557762951;}',1557766551),('c8be235490ebb2d42108f39094fe303e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C388\";i:1557762951;}',1557766551),('fa14e59d4d2bfde1a9229101803d6957',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zq5f\";i:1557762946;}',1557766546),('d408814482cf7e78341650bd216f5f4c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dj5L\";i:1557762946;}',1557766546),('856df89ef5364e8542714a218b7698bf',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kF3M\";i:1557762946;}',1557766546),('da9b04a686eea0db21c5d1b5c5e27a15',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xkjh\";i:1557762945;}',1557766545),('3b8eeb4b4628af2c9f6877cb16819229',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EI4S\";i:1557762944;}',1557766544),('2af715d700ea4c8267b0892975842437',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bTEZ\";i:1557762936;}',1557766536),('47d2826f2ed4f23f88e386623d744a08',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fiBR\";i:1557762944;}',1557766544),('7e59e219ccb711c22cc581c19601b2c2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C440\";i:1557762936;}',1557766536),('0b8bdf5a47b0dce14838f1349e1929c5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"davA\";i:1557762935;}',1557766535),('f4175d53f7c55c5b4ddb5690230dc413',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iXiu\";i:1557762905;}',1557766505),('001bd756232c6334f6c83c08413c878b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vV1s\";i:1557762935;}',1557766535),('8fd775f4ff0c68eec7429156542372c0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tL50\";i:1557762904;}',1557766504),('fc006ff54370762b4a571e6104ca11c4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A7T0\";i:1557762902;}',1557766502),('303815371fad1e34dd445744333c7cac',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ifZ6\";i:1557762876;}',1557766476),('e698e9e64534182610d5073fbfab1fc6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X1Oe\";i:1557762902;}',1557766502),('da9537774cb47089073e6b587bbe1d5b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b888\";i:1557762860;}',1557766460),('6743e0dd4999cb4cc94629e887b9931e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MI78\";i:1557762860;}',1557766460),('a9ce3ec2eaebe6dacbe9409fb65a7290',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EONz\";i:1557762859;}',1557766459),('cade250f7f19139e3e62e6168b827f5f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ri77\";i:1557762859;}',1557766459),('adf0455e233ef64a0cb88d0bc9015ffa',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yOD3\";i:1557762855;}',1557766455),('7a2dfa7f20da8bbd324c649658304614',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H4t1\";i:1557762857;}',1557766457),('345d6d23e15921c14c02204275e12e24',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hhYG\";i:1557762855;}',1557766455),('47efbc065647185c3132a5aa65631919',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mo54\";i:1557760046;}',1557763646),('e10eac7a41d903d1bee20caebb5ee571',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JKn3\";i:1557760046;}',1557763646),('39c7d93424136b2558ce7d5d34786c11',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MRRc\";i:1557760046;}',1557763646),('0d41fb9d5084419952db46842279240c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zqa1\";i:1557760046;}',1557763646),('13430f4137809283ce8f602d97837ba9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xWgY\";i:1557760044;}',1557763644),('ab0a3bb9955ae63caf56234eedf8d13b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"btSF\";i:1557760043;}',1557763643),('8529356685e6211d7ee159de431720af',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HbaB\";i:1557760043;}',1557763643),('6e2d8ddb89622d9f1400d9c14b6439ec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kcc6\";i:1557760005;}',1557763605),('6293f9e006e8113909d14b8de1e7fac6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YnwI\";i:1557760005;}',1557763605),('96bf24ffb9b6c7f691d508a342ed6ec0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bgip\";i:1557760005;}',1557763605),('533d295a1fc47710436dcde603102809',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"otxX\";i:1557760005;}',1557763605),('065390f896730724b77ead1ba5f2e1f8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FiW1\";i:1557760000;}',1557763600),('4c812ee318c47e1bafb20585935a21fe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r5R4\";i:1557759999;}',1557763599),('800d5b52e245cb9db8ad437a235f0105',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zhDb\";i:1557759999;}',1557763599),('50da38f4e9cefc81ca9acbdcdc5d3b27',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dkO3\";i:1557759869;}',1557763469),('8c31952f0646c97edab2bd6b53b90e9b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u4RR\";i:1557759868;}',1557763468),('2b6f1f98e5f4e3fc851a01857915adf4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bcki\";i:1557759868;}',1557763468),('c782ca3573cdfcc40fe0f1b5af73e9e6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jy66\";i:1557759868;}',1557763468),('f3d0efde8fb739a4676383e299b07253',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CVSb\";i:1557759866;}',1557763466),('f7d12916ffcd2787e5d6ab2b03a88c7a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a3ZX\";i:1557759866;}',1557763466),('142ed1d104984ff3f9b9743228bc2aee',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FKSZ\";i:1557759260;}',1557762860),('f0a2b11ff562113a77e38b7ca3f68846',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qD5S\";i:1557759259;}',1557762859),('6c8059bd7b7e896e6c84a362a80257e9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l8D3\";i:1557759260;}',1557762860),('c3871a1e9b603e29f5f64bf2c7b6afd1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HWcz\";i:1557759256;}',1557762856),('d05d713847c1e5359eb29d32488f093a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RUr8\";i:1557759256;}',1557762856),('9fdd64db9dff83599e5907717943be10',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mJRn\";i:1557759256;}',1557762856),('afbb28f4d1aa8cd9d2d1fe6132f2960f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pqV4\";i:1557759256;}',1557762856),('ed091e7a7fd60f56d4a033a890b04d9a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R33P\";i:1557759255;}',1557762855),('b0150b00ec113cd90ad403372b1f533f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XtRd\";i:1557759254;}',1557762854),('993e92f24f6fdfac052c4819636d2585',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zQt6\";i:1557759254;}',1557762854),('8a8a1127931ac515631470fa0711550a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M6z6\";i:1557759244;}',1557762844),('26311486eb14a35a3df661274d626f85',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C0u4\";i:1557759224;}',1557762824),('4de3fc024ce56bdab3af12b607b5c0b9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MGGd\";i:1557759223;}',1557762823),('4b164961840385645b2b27371c6e0696',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kvZb\";i:1557759223;}',1557762823),('93596146f9594efb848ce44141ed7378',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"opNA\";i:1557759218;}',1557762818),('ac41461f71031b794f4c742911daf392',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VKxy\";i:1557759216;}',1557762816),('88fc58a292952c3cc430fb8133d32e80',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ksYp\";i:1557759210;}',1557762810),('3828210fbac2693dbddf1cc5138916f1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pFRS\";i:1557759210;}',1557762810),('9f0ec81bfe71bb4c679834eb678d0d31',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZN39\";i:1557759204;}',1557762804),('dcc7d59c843d66cc99a8f4e94db28895',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rEy3\";i:1557759203;}',1557762803),('8293184ecd6f3727454812eb5806de3d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PyNo\";i:1557759193;}',1557762793),('9bbaff537c7e1c54a041e0b8cfd04160',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FACa\";i:1557759193;}',1557762793),('10e4d1d1ffa2c25c44289cbbba9ce266',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f7jK\";i:1557759189;}',1557762789),('b99735386c3fe322b9cbcdf21a5e2320',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DpjP\";i:1557759183;}',1557762783),('75db33838c7b7d0e732804921a538222',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XYa1\";i:1557759180;}',1557762780),('fc3adc86a8aa4709309b3b9b5f4a102a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s88b\";i:1557759180;}',1557762780),('234cea12ba774ac7e0fbb516c8a9d002',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zMr8\";i:1557759177;}',1557762777),('64a3d9e20e5e5cffde9a5dbd61cfd542',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gzmd\";i:1557759171;}',1557762771),('b3d290c0920b667873fbfdfe19ac67a6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oNUC\";i:1557759151;}',1557762751),('5d57a3cfc4549537cb3015f20b16a974',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gpbP\";i:1557759151;}',1557762751),('0eba766b7206007db0104b4cb8295342',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I35y\";i:1557758947;}',1557762547),('3a79254c2ec4d5cc845bcd8343c709e5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cRQ7\";i:1557758947;}',1557762547),('50a7b152d984125ba24638957d6d136f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vow4\";i:1557758930;}',1557762530),('ee12b8e624e25f8c8ac11725cfeabd73',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z3Rb\";i:1557758921;}',1557762521),('56c447da5fd2996f495044dbfc411aae',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DRll\";i:1557758921;}',1557762521),('c6ea8a484c92c618be110a655ca52b37',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e4An\";i:1557758916;}',1557762516),('43e55dfd671cf4ef1aed8b169fa62cbb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sWH4\";i:1557758869;}',1557762469),('5526092720f63a2b593e58514f6a5fd7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v3RM\";i:1557758869;}',1557762469),('88bde5fc93130fc726f0de97326dae1a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V9p9\";i:1557758684;}',1557762284),('61ea2ab985413cc283d0a898d8b37ad3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D38n\";i:1557758682;}',1557762282),('3a969081133cdfaed1aeb974999ec489',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jW4Y\";i:1557758682;}',1557762282),('1667608816e6a8a249b762e044cabdbe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Noff\";i:1557758507;}',1557762107),('7a37975c8c239bf23c33c5d1e984bb1d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kVl3\";i:1557758506;}',1557762106),('e4865f5794934dcc0a4a289bf8243741',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e23c\";i:1557758506;}',1557762106),('0e6a8a64d88b20afb9b42e70503c5e27',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PaXf\";i:1557758472;}',1557762072),('f2547aa31157b80bd358e8897d770dd7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wafE\";i:1557758471;}',1557762071),('d61c8977511885289af6703ae5011f44',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d3OC\";i:1557758471;}',1557762071),('98445b7dd20ddc58c1b8f5c35cc7f68e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qv26\";i:1557758290;}',1557761890),('6898373018418866e88673bb38e6d77e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n449\";i:1557758289;}',1557761889),('8804be85fc6c80bca0d0a1a824d9983a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aYYY\";i:1557758289;}',1557761889),('b450c13c9d9f4fdca1743beebb7b5414',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cqNi\";i:1557758231;}',1557761831),('2f601475d15dcb9a7676bc26e44b6cb3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"olMy\";i:1557758230;}',1557761830),('1519caf6db86fe95c55d0fc9fc27e39e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tIp6\";i:1557758229;}',1557761829),('33b1a03ac51037d37a5a9008f2f0a8ed',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"isQq\";i:1557758229;}',1557761829),('c5fd1fb1ec061e458498c65e06571d7e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dYIz\";i:1557758227;}',1557761827),('367aa589769182f9c4097778fb509d32',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VQ11\";i:1557758227;}',1557761827),('ce09ff52a8e917c6ef1f641447b65551',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cx45\";i:1557758226;}',1557761826),('73e0367cf9831a9980590f85969fe8f7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yGDN\";i:1557758226;}',1557761826),('fc36c88203d3d7e01741459349fdbde9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dz0j\";i:1557758222;}',1557761822),('bbf7d45bba83e140acd6ed5409cdfe4e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ia1i\";i:1557758221;}',1557761821),('1a2371fc1eaaba308c5e6d41e57793e6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ASKp\";i:1557758221;}',1557761821),('6420f6c3067fcf322353b17c44f1c21f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UlfH\";i:1557757985;}',1557761585),('381061edd9d540d8f6f6f04df5d7b940',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QVxZ\";i:1557757984;}',1557761584),('2761e10dd90b47b1c186bd87c1d0b224',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sjf1\";i:1557757984;}',1557761584),('7362dcf0a740f19defa9416adefce474',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ikzk\";i:1557757758;}',1557761358),('beb954ec6fa5af828d1ba93111fad0ce',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XDWa\";i:1557757708;}',1557761308),('3d42edf4cb91bcd779dc0a54759ea490',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O82B\";i:1557757700;}',1557761300),('d597d1e218373013614e250b0b832f43',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dTqL\";i:1557757699;}',1557761299),('0ee4d71e47ec0e090ebd10fe54c0d838',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eN0h\";i:1557757699;}',1557761299),('25ba1a40a763621a259f08fb8be457b8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eTJt\";i:1557757695;}',1557761295),('f3f8b80dae4346c763a5c3d8a94eee43',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"opId\";i:1557761267;}',1557764867),('33be9fb8ce6d73e28f041bbca3b3631a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TwoY\";i:1557761135;}',1557764735),('f5e743313e3b4eb749fa09eed5c378ff',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RAPk\";i:1557761135;}',1557764735),('e574f0e1778582534c50fd4452af14e5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LJCm\";i:1557761135;}',1557764735),('f09e83bfb0fdfe159a4756ac1ed1c0ab',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WKsM\";i:1557761135;}',1557764735),('295b297c90bde5032215732528dcae14',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wiZ5\";i:1557761249;}',1557764849),('28e557eda67b00fd8ccb9d85193f10aa',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fFbb\";i:1557761249;}',1557764849),('d18c9ab972301207b08c64c76bdb81ce',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zZED\";i:1557761250;}',1557764850),('6e0926cb3d32efab92543ef646cee097',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S44M\";i:1557761255;}',1557764855),('b1d1fafeb2ebcaaf98ec0c48370a917a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wn5L\";i:1557761265;}',1557764865),('34235ea89f0861c361091b737fbd5de7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cfDf\";i:1557761265;}',1557764865),('23c0ae1b8d5ee6d069ae729021982359',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pr3O\";i:1557761265;}',1557764865),('d5dff7b3eb489a499db58e3d173976c5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aJfN\";i:1557761265;}',1557764865),('9e1e65640c168757b3bafa26cb64696e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bKZe\";i:1557762377;}',1557765977),('c1fc234dfa5b75859f9581b5f3d60941',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ecuQ\";i:1557762377;}',1557765977),('cdc1c6c3fc927c4cd342bd318abfb2c1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OE0B\";i:1557762377;}',1557765977),('45ee88a02457971f8941252cd211daa6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"smmZ\";i:1557762375;}',1557765975),('b167ad5f21a43fb17b40e007eb22ff32',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rf9t\";i:1557762374;}',1557765974),('baaff77497147c893fb4922469a6e681',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j9n9\";i:1557762374;}',1557765974),('8338ef3727308c78161477db4e00006a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a9bT\";i:1557761886;}',1557765486),('40fa6281bb6ec7f067064fc3f8ebe63d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"USz2\";i:1557761883;}',1557765483),('b6f7495c48b4e1cf0088ddd7bf1bba51',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P0BB\";i:1557761882;}',1557765482),('4a8c4cdf5f258a4a5576c28f6c7454d9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H4ls\";i:1557761882;}',1557765482),('0463d4463189a449d3bbd90d9b4093a8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:4:{s:4:\"BenE\";i:1557761643;s:4:\"H393\";i:1557761682;s:4:\"CHML\";i:1557761709;s:4:\"trLi\";i:1557761827;}',1557765427),('fff5880b63691d53d4a8d4380acc8a60',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BZ9g\";i:1557761570;}',1557765170),('083f8da2e197cc67d4995e4099b241d6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JPpT\";i:1557761270;}',1557764870),('16bc4dcf582a30ae4e85771b9e854f8b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l1Zq\";i:1557761270;}',1557764870),('e299489570c4f9f573c6659237f6e63e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ihTa\";i:1557761270;}',1557764870),('7fad05d0e860a1ae9ce399fff8f47882',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W5N5\";i:1557761269;}',1557764869),('93c8ea1c1771a298f49e2345c7d3cdb2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sKo6\";i:1557761267;}',1557764867),('c3c125ae30495e447fe63e6dd360157c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UtEz\";i:1557761087;}',1557764687),('56ea5cc64ade2fd4e88f5f38c6eab208',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zjAr\";i:1557761086;}',1557764686),('60e4947624e8c1ddbe99bc1449a0c0b7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U5W6\";i:1557761086;}',1557764686),('995fe9a0d389a121c7c5ea337ba45222',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a1f2\";i:1557761081;}',1557764681),('953a3a83b4263196ce72c90ad7339011',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HH12\";i:1557761080;}',1557764680),('b8ac40e5801e391fd2f950834fba4d4d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WI32\";i:1557761080;}',1557764680),('978cb241df0c59c3d28099897b21616c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yo8M\";i:1557761080;}',1557764680),('cce5a63684c189f84174b92147018412',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r9g5\";i:1557761080;}',1557764680),('c6cbbe73dde80a58dd784b2490c4b817',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h9gA\";i:1557761078;}',1557764678),('4ac65110fb4b5051ecec421c8e462cb2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CQJX\";i:1557761077;}',1557764677),('8d829f5c9107d22d68e58446ef0baa46',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cf4B\";i:1557761077;}',1557764677),('883249155c1ec74729ea172c20ac188c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dQwE\";i:1557761077;}',1557764677),('2f5ef138aa92e23e430e7b0875f13515',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E3i5\";i:1557761077;}',1557764677),('539d2deff42fd7580d40bc6cd93f7691',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YRMN\";i:1557761077;}',1557764677),('8ae0146d1549ca6295371d1c8edf70a7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BHXJ\";i:1557761077;}',1557764677),('eb5eaa603f1479a666713438a9a2d460',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dAOm\";i:1557761077;}',1557764677),('5bce693bac8dc4b1cd1c876c9ffc243a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bd66\";i:1557761077;}',1557764677),('c9aab0f808c99691b586664448ed5b7f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WeO9\";i:1557761077;}',1557764677),('ef9bb201d68639d38413367b7dce857e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rIGu\";i:1557761077;}',1557764677),('bdd12eee38d10421141860854d6d159c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xdGQ\";i:1557761077;}',1557764677),('63c28ff73762b834069f8a285d29293e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GN1c\";i:1557761077;}',1557764677),('c6de9b5d0137cbaa0b94652c28d37b55',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zPXJ\";i:1557761077;}',1557764677),('471952535e6e5955cf3f7779e97ca31c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"luuR\";i:1557761077;}',1557764677),('cd2fd50212d1c9f1c517f9eedaaabd54',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MqMG\";i:1557761077;}',1557764677);
/*!40000 ALTER TABLE `ims_core_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_settings`
--

DROP TABLE IF EXISTS `ims_core_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_settings`
--

LOCK TABLES `ims_core_settings` WRITE;
/*!40000 ALTER TABLE `ims_core_settings` DISABLE KEYS */;
INSERT INTO `ims_core_settings` VALUES ('copyright','a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}'),('authmode','i:1;'),('close','a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}'),('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}'),('site','s:0:\"\";'),('cloudip','a:0:{}'),('module_ban','a:0:{}'),('module_upgrade','a:0:{}'),('module_receive_ban','a:0:{}'),('basic','a:1:{s:8:\"template\";s:7:\"default\";}');
/*!40000 ALTER TABLE `ims_core_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_coupon_location`
--

DROP TABLE IF EXISTS `ims_coupon_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_coupon_location`
--

LOCK TABLES `ims_coupon_location` WRITE;
/*!40000 ALTER TABLE `ims_coupon_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_coupon_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_cover_reply`
--

DROP TABLE IF EXISTS `ims_cover_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_cover_reply`
--

LOCK TABLES `ims_cover_reply` WRITE;
/*!40000 ALTER TABLE `ims_cover_reply` DISABLE KEYS */;
INSERT INTO `ims_cover_reply` VALUES (1,1,0,7,'mc','','进入个人中心','','','./index.php?c=mc&a=home&i=1'),(2,1,1,8,'site','','进入首页','','','./index.php?c=home&i=1&t=1');
/*!40000 ALTER TABLE `ims_cover_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_custom_reply`
--

DROP TABLE IF EXISTS `ims_custom_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_custom_reply`
--

LOCK TABLES `ims_custom_reply` WRITE;
/*!40000 ALTER TABLE `ims_custom_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_custom_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_ads`
--

DROP TABLE IF EXISTS `ims_hr_album_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_ads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `displayorder` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `thumb` varchar(500) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `path` varchar(500) NOT NULL DEFAULT '',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_id` (`id`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_ads`
--

LOCK TABLES `ims_hr_album_ads` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_ads` DISABLE KEYS */;
INSERT INTO `ims_hr_album_ads` VALUES (3,2,1,0,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg','banner','','',0);
/*!40000 ALTER TABLE `ims_hr_album_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_app`
--

DROP TABLE IF EXISTS `ims_hr_album_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_app` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL DEFAULT '0',
  `displayorder` int(10) NOT NULL DEFAULT '0',
  `thumb` varchar(500) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `desc` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(500) NOT NULL DEFAULT '',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_id` (`id`),
  KEY `indx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_app`
--

LOCK TABLES `ims_hr_album_app` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_app` DISABLE KEYS */;
INSERT INTO `ims_hr_album_app` VALUES (1,2,11,'images/2/hr_album/2019-05-02/p61Oz8l6TLpRWo0TRP38o2p61oCC0t.jpg','快递100','快递100描述','','wx6885acbedba59c14',1556765925);
/*!40000 ALTER TABLE `ims_hr_album_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_baby`
--

DROP TABLE IF EXISTS `ims_hr_album_baby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_baby` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `click` int(10) DEFAULT NULL,
  `share` int(10) DEFAULT NULL,
  `best` int(10) DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否展示，0否，1是',
  `isverify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不开启默认，1开启',
  `addtime` int(10) NOT NULL,
  `schoolid` int(10) DEFAULT NULL,
  `classid` int(10) DEFAULT NULL,
  `schoolname` varchar(50) DEFAULT NULL,
  `classname` varchar(50) DEFAULT NULL,
  `displayorder` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_openid` (`openid`),
  KEY `index_uniacid` (`uniacid`),
  KEY `photos_index_babyid` (`id`),
  KEY `photos_index_schoolid` (`schoolid`),
  KEY `photos_index_classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_baby`
--

LOCK TABLES `ims_hr_album_baby` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_baby` DISABLE KEYS */;
INSERT INTO `ims_hr_album_baby` VALUES (1,2,'ouTc440KMSR7PJSD4KJ9-wAkWUZ8','刘靖','https://mdcdn.iamlj.com/images/2/hr_album/2019-05-03/baby-simple.jpg','刘小靖的头像','刘小靖','1',546,100,0,1,1,1556720660,3,1,'小龙人幼儿园','大班',0),(7,2,'ouTc44xLJT_KB4ctxvS8PeJzF0bM','Leslie Lee','images/2/hr_album/2019-05-13/YmDM5MMn4nizeda54edfe5OhDUfdIT.jpg',NULL,'蒙小宝','333444555566667777',NULL,NULL,0,0,0,1557727462,1557726896,1557727014,'上海心元儿童之园','小一班',1),(4,2,'','','images/2/hr_album/2019-05-13/YmDM5MMn4nizeda54edfe5OhDUfdIT.jpg',NULL,'吴浩震','430181201504270114',NULL,NULL,0,0,0,1557703722,1557699525,1557702723,'上海心元儿童之家','小一班',1),(5,2,'','','images/2/hr_album/2019-05-13/dL9a8hs8T8tRXu58RUv8zRcZHNcLsn.jpg',NULL,'李轩翰','430181201503270331',NULL,NULL,0,0,0,1557703747,1557699525,1557702723,'上海心元儿童之家','小一班',2),(6,2,'','','images/2/hr_album/2019-05-13/mqS0929b40EltDqd341s8AE3T64Q01.jpeg',NULL,'汪芯妍','430181201504130189',NULL,NULL,0,0,0,1557703840,1557699525,1557702723,'上海心元儿童之家','小一班',2),(8,2,NULL,NULL,'images/2/hr_album/2019-05-13/dL9a8hs8T8tRXu58RUv8zRcZHNcLsn.jpg',NULL,'李轩翰','430181201503270332',NULL,NULL,0,0,0,1557703747,1557726896,1557727014,'上海心元儿童之园','小一班',2),(9,2,'ouTc44yr9HR7Mh15n-PhzARr2wHk','刘靖','images/2/hr_album/2019-05-13/mqS0929b40EltDqd341s8AE3T64Q01.jpeg',NULL,'汪芯妍','430181201504130190',NULL,NULL,0,0,0,1557703840,1557726896,1557727005,'上海心元儿童之园','大一班',2);
/*!40000 ALTER TABLE `ims_hr_album_baby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_cashpay`
--

DROP TABLE IF EXISTS `ims_hr_album_cashpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_cashpay` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `cost` decimal(10,2) NOT NULL COMMENT '提现金额',
  `rcost` decimal(10,2) NOT NULL COMMENT '实际金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未审核，1已审核',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_cashpay`
--

LOCK TABLES `ims_hr_album_cashpay` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_cashpay` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_cashpay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_classify`
--

DROP TABLE IF EXISTS `ims_hr_album_classify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_classify` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `classify` varchar(50) DEFAULT NULL COMMENT '分类名，目前是日期',
  `title` varchar(50) DEFAULT NULL COMMENT '显示标题',
  `name` varchar(50) DEFAULT NULL COMMENT '照片名字',
  `url` varchar(255) DEFAULT NULL COMMENT '图片 url',
  `click` int(10) DEFAULT NULL,
  `share` int(10) DEFAULT NULL,
  `best` int(10) DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否展示，0否，1是',
  `isverify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不开启默认，1开启',
  `addtime` int(10) NOT NULL,
  `schoolid` int(10) DEFAULT NULL,
  `babyid` int(10) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL COMMENT ',分隔',
  `classid` int(10) DEFAULT NULL,
  `schoolname` varchar(50) DEFAULT NULL,
  `classname` varchar(50) DEFAULT NULL,
  `babyname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_hr_album_classify_index_babyid` (`babyid`),
  KEY `ims_hr_album_classify_index_classid` (`classid`),
  KEY `ims_hr_album_classify_index_id` (`id`),
  KEY `ims_hr_album_classify_index_openid` (`openid`),
  KEY `ims_hr_album_classify_index_schoolid` (`schoolid`),
  KEY `ims_hr_album_classify_index_uniacid` (`uniacid`),
  KEY `ims_hr_album_classify__classify` (`classify`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_classify`
--

LOCK TABLES `ims_hr_album_classify` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_classify` DISABLE KEYS */;
INSERT INTO `ims_hr_album_classify` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(10,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-04','2019-05-04 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(16,2,'1','2019-05-05','2019-05-05 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,2,1,'',1,'小龙人幼儿园2','大班','刘小靖'),(19,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-02','2019-05-02 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,1,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖');
/*!40000 ALTER TABLE `ims_hr_album_classify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_data`
--

DROP TABLE IF EXISTS `ims_hr_album_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `title` varchar(50) NOT NULL,
  `skin` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `music` varchar(255) NOT NULL,
  `click` int(10) NOT NULL,
  `share` int(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `best` int(10) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否展示，0否，1是',
  `isverify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不开启默认，1开启',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_uniacid` (`uniacid`),
  KEY `index_openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_data`
--

LOCK TABLES `ims_hr_album_data` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_data` DISABLE KEYS */;
INSERT INTO `ims_hr_album_data` VALUES (12,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:2:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/lA6CavcUuAl6al6KPY8Sl8sKwCcp8Y.png\";}i:1;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/D3Cc06QCCZblCQWb8WBbzLAlIIBIAW.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556805120),(17,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:107:\"http://tmp/wx27fc7192979a4e38.o6zAJsw3bkHShZ_GO_RYlrSHOWzg.0QFOp3DzPtN8c428e702665098bfcf750f6194c7b24f.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,1,0,1556845940),(18,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:107:\"http://tmp/wx27fc7192979a4e38.o6zAJsw3bkHShZ_GO_RYlrSHOWzg.bd3tBQOiWUMoc428e702665098bfcf750f6194c7b24f.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',0,0,'',0,0,0,1556850008);
/*!40000 ALTER TABLE `ims_hr_album_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_formdata`
--

DROP TABLE IF EXISTS `ims_hr_album_formdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_formdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT '0',
  `openid` varchar(255) DEFAULT '',
  `formid` varchar(255) DEFAULT '',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_formdata`
--

LOCK TABLES `ims_hr_album_formdata` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_formdata` DISABLE KEYS */;
INSERT INTO `ims_hr_album_formdata` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556720645),(2,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556725651),(3,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556725820),(4,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556726134),(5,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556726161),(6,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556726203),(7,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728232),(8,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728250),(9,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728361),(10,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728451),(11,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556734328),(12,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556734344),(13,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556734731),(14,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556734873),(15,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556735100),(16,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556763804),(17,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556763854),(18,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556765547),(19,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556765996),(20,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556766115),(21,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556767042),(22,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556767049),(23,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556767308),(24,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556767611),(25,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556767616),(26,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556767720),(27,2,'null','the formId is a mock one',1556804256),(28,2,'null','the formId is a mock one',1556804505),(29,2,'null','the formId is a mock one',1556804562),(30,2,'null','the formId is a mock one',1556804572),(31,2,'null','the formId is a mock one',1556804832),(32,2,'null','the formId is a mock one',1556805103),(33,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807228),(34,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807237),(35,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807238),(36,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807239),(37,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807239),(38,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807240),(39,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807241),(40,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807242),(41,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807328),(42,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807396),(43,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807403),(44,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807405),(45,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807411),(46,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807424),(47,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807905),(48,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807922),(49,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807930),(50,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807981),(51,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556807989),(52,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808122),(53,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808127),(54,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808133),(55,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808410),(56,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808474),(57,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808966),(58,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808980),(59,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808985),(60,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556808991),(61,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809000),(62,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809192),(63,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809196),(64,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809200),(65,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809229),(66,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809232),(67,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809235),(68,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809243),(69,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809252),(70,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809255),(71,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809261),(72,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556809297),(73,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556842026),(74,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556842180),(75,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556842245),(76,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556845204),(77,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556845307),(78,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556845385),(79,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556845442),(80,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556845473),(81,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556845483),(82,2,'null','the formId is a mock one',1556845915),(83,2,'null','the formId is a mock one',1556845995),(84,2,'null','the formId is a mock one',1556846064),(85,2,'null','the formId is a mock one',1556846154),(86,2,'null','the formId is a mock one',1556849997),(87,2,'null','the formId is a mock one',1556850006);
/*!40000 ALTER TABLE `ims_hr_album_formdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_mucate`
--

DROP TABLE IF EXISTS `ims_hr_album_mucate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_mucate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  `oldtitle` varchar(20) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_mucate`
--

LOCK TABLES `ims_hr_album_mucate` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_mucate` DISABLE KEYS */;
INSERT INTO `ims_hr_album_mucate` VALUES (1,2,11,'222','',1556720014);
/*!40000 ALTER TABLE `ims_hr_album_mucate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_music`
--

DROP TABLE IF EXISTS `ims_hr_album_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_music` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `singer` varchar(20) NOT NULL,
  `music` varchar(500) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_music`
--

LOCK TABLES `ims_hr_album_music` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_music` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_paydata`
--

DROP TABLE IF EXISTS `ims_hr_album_paydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_paydata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `leastmon` int(10) unsigned NOT NULL,
  `service` int(10) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_paydata`
--

LOCK TABLES `ims_hr_album_paydata` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_paydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_paydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_paylog`
--

DROP TABLE IF EXISTS `ims_hr_album_paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_paylog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `pid` int(10) NOT NULL,
  `tid` varchar(255) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `tnickname` varchar(50) NOT NULL,
  `cost` decimal(10,2) NOT NULL COMMENT '打赏金额',
  `out_trade_no` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未支付，1已支付',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_paylog`
--

LOCK TABLES `ims_hr_album_paylog` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_photos`
--

DROP TABLE IF EXISTS `ims_hr_album_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_photos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `classify` varchar(50) DEFAULT NULL COMMENT '分类名，目前是日期',
  `title` varchar(50) DEFAULT NULL COMMENT '显示标题',
  `name` varchar(50) DEFAULT NULL COMMENT '照片名字',
  `url` varchar(255) DEFAULT NULL COMMENT '图片 url',
  `click` int(10) DEFAULT NULL,
  `share` int(10) DEFAULT NULL,
  `best` int(10) DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否展示，0否，1是',
  `isverify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不开启默认，1开启',
  `addtime` int(10) NOT NULL,
  `schoolid` int(10) DEFAULT NULL,
  `babyid` int(10) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL COMMENT ',分隔',
  `classid` int(10) DEFAULT NULL,
  `schoolname` varchar(50) DEFAULT NULL,
  `classname` varchar(50) DEFAULT NULL,
  `babyname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ims_hr_album_photos_index_id` (`id`),
  KEY `ims_hr_album_photos_index_uniacid` (`uniacid`),
  KEY `ims_hr_album_photos_index_openid` (`openid`),
  KEY `ims_hr_album_photos_index_classid` (`classid`),
  KEY `ims_hr_album_photos_index_babyid` (`babyid`),
  KEY `ims_hr_album_photos_index_schoolid` (`schoolid`),
  KEY `ims_hr_album_photos_index_classify` (`classify`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_photos`
--

LOCK TABLES `ims_hr_album_photos` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_photos` DISABLE KEYS */;
INSERT INTO `ims_hr_album_photos` VALUES (28,NULL,NULL,'2019-05-13','2019-05-13',NULL,'images/2/hr_album/2019-05-13/EP8mG811pGGI1PZL11ImGmPFIFgfjm.jpg',NULL,NULL,0,0,0,1557737676,1557726896,NULL,NULL,1557727014,'上海心元儿童之园','小一班',NULL),(29,NULL,NULL,'2019-05-13','2019-05-13',NULL,'images/2/hr_album/2019-05-13/LmXx1gzxsbp1mlnxqz5CxNdy1ZmbGB.jpeg',NULL,NULL,0,0,0,1557737738,1557726896,NULL,NULL,1557727005,'上海心元儿童之园','大一班',NULL);
/*!40000 ALTER TABLE `ims_hr_album_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_pl`
--

DROP TABLE IF EXISTS `ims_hr_album_pl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_pl` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_pl`
--

LOCK TABLES `ims_hr_album_pl` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_pl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_pl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_review`
--

DROP TABLE IF EXISTS `ims_hr_album_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_review` (
  `id` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_review`
--

LOCK TABLES `ims_hr_album_review` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_school_class`
--

DROP TABLE IF EXISTS `ims_hr_album_school_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_school_class` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '以班级为单位，共用 1 张表',
  `title` varchar(50) NOT NULL,
  `schoolid` int(10) NOT NULL DEFAULT '0',
  `schoolname` varchar(50) NOT NULL,
  `schooladdress` varchar(50) NOT NULL,
  `classname` varchar(50) NOT NULL,
  `addtime` int(10) NOT NULL,
  `thumb` varchar(500) DEFAULT NULL COMMENT 'url',
  `displayorder` int(11) DEFAULT '0',
  `uniacid` int(10) DEFAULT '0',
  `classid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_classid` (`id`),
  KEY `photos_index_schoolid` (`schoolid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_school_class`
--

LOCK TABLES `ims_hr_album_school_class` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_school_class` DISABLE KEYS */;
INSERT INTO `ims_hr_album_school_class` VALUES (1,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,NULL),(24,'',1557726896,'上海心元儿童之园','上海市杨浦区军工路 100 号','',1557726896,'',1,0,NULL),(25,'',1557726896,'上海心元儿童之园','','大一班',1557727005,NULL,1,0,1557727005),(10,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','小班',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,1556720660),(11,'小龙人幼儿园',1557528050,'小龙人幼儿园2','上海市杨浦区军工路 100 号','中班',1557528049,'images/2/hr_album/2019-05-10/ywC9HPzPjLvMmMPok9PJM8cAopCZh9.png',2,0,1557528049),(12,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','中班',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,1556720661),(13,'小龙人幼儿园',1557528050,'小龙人幼儿园2','上海市杨浦区军工路 100 号','大班',1557528049,'images/2/hr_album/2019-05-10/ywC9HPzPjLvMmMPok9PJM8cAopCZh9.png',2,0,1557528050),(26,'',1557726896,'上海心元儿童之园','','小一班',1557727014,NULL,2,0,1557727014),(15,'',1557528050,'小龙人幼儿园2','','31231',1557571310,NULL,313,0,1557571310),(16,'',1557699486,'浏阳脑立方小天使幼儿园','浏阳市复兴南路恒大华府综合楼','',1557699486,'',100,0,NULL),(17,'',1557699525,'上海心元儿童之家','上海浦东新区民办心元大华早教中心，地址:浦东新区北艾路1077弄26号','',1557699525,'',101,0,NULL),(20,'',1557699525,'上海心元儿童之家','','小一班',1557702776,NULL,11,0,1557702723),(21,'',1557699525,'上海心元儿童之家','','大二班',1557702955,NULL,22,0,1557702788),(22,'',1557699525,'上海心元儿童之家','','小二班',1557703909,NULL,3,0,1557703909),(23,'',1557699525,'上海心元儿童之家','','小三班',1557703919,NULL,3,0,1557703919);
/*!40000 ALTER TABLE `ims_hr_album_school_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_sended`
--

DROP TABLE IF EXISTS `ims_hr_album_sended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_sended` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) DEFAULT '0',
  `templateid` varchar(255) DEFAULT '',
  `content` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `rate` int(10) DEFAULT '0',
  `send` int(10) DEFAULT '0',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_sended`
--

LOCK TABLES `ims_hr_album_sended` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_sended` DISABLE KEYS */;
INSERT INTO `ims_hr_album_sended` VALUES (1,2,'模板ID','a:3:{i:0;s:9:\"描述一\";i:1;s:9:\"描述二\";i:2;s:9:\"描述三\";}','hr_album/pages/index/index',20,0,1556719734);
/*!40000 ALTER TABLE `ims_hr_album_sended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_sendlog`
--

DROP TABLE IF EXISTS `ims_hr_album_sendlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_sendlog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msgid` int(10) DEFAULT '0',
  `uniacid` int(10) DEFAULT '0',
  `templateid` varchar(255) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  `addtime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_id` (`id`),
  KEY `index_templateid` (`templateid`),
  KEY `index_openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_sendlog`
--

LOCK TABLES `ims_hr_album_sendlog` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_sendlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_sendlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_shenhe`
--

DROP TABLE IF EXISTS `ims_hr_album_shenhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_shenhe` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_shenhe`
--

LOCK TABLES `ims_hr_album_shenhe` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_shenhe` DISABLE KEYS */;
INSERT INTO `ims_hr_album_shenhe` VALUES (1,2,'火辣身材女生金鑫惹火妖娆时尚写真','https://img.alicdn.com/imgextra/i1/14252630/TB2HID3X_JYBeNjy1zeXXahzVXa_!!14252630.jpg',1556719856),(2,2,'热裤露脐装美女唯依室内清纯写真照片','https://img.alicdn.com/imgextra/i4/14252630/TB2HRWcXY1YBuNjSszeXXablFXa_!!14252630.jpg',1556719856),(3,2,'人生若只如初见','https://img.alicdn.com/imgextra/i4/14252630/TB2jF65X_tYBeNjy1XdXXXXyVXa_!!14252630.jpg',1556719856),(4,2,'气质美女生活照','https://img.alicdn.com/imgextra/i4/14252630/TB2G11dXY1YBuNjSszeXXablFXa_!!14252630.jpg',1556719856),(5,2,'邻家美女清新写真','https://img.alicdn.com/imgextra/i1/14252630/TB2xDjWX9tYBeNjSspaXXaOOFXa_!!14252630.jpg',1556719856),(6,2,'恬静优雅美女写真','https://img.alicdn.com/imgextra/i1/14252630/TB2riejX1GSBuNjSspbXXciipXa_!!14252630.jpg',1556719856);
/*!40000 ALTER TABLE `ims_hr_album_shenhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_skin`
--

DROP TABLE IF EXISTS `ims_hr_album_skin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_skin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `skintitle` varchar(255) NOT NULL,
  `skiname` varchar(50) NOT NULL,
  `music` varchar(255) NOT NULL,
  `ishot` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0正常，1整套轮换，2图文',
  `remoted` tinyint(1) DEFAULT '0',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_skin`
--

LOCK TABLES `ims_hr_album_skin` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_skin` DISABLE KEYS */;
INSERT INTO `ims_hr_album_skin` VALUES (1,2,0,0,'蔷薇恋','qiangwei','http://dl.stream.qqmusic.qq.com/C1000003FhfU2GR1tu.m4a?fromtag=0',0,0,0,1556719946),(2,2,0,0,'钟爱一生','rose','http://dl.stream.qqmusic.qq.com/C100000KR71T0vs9Yp.m4a?fromtag=0',0,0,0,1556719946),(3,2,0,0,'童心未泯','fengche','http://dl.stream.qqmusic.qq.com/C100001McakF1axbfO.m4a?fromtag=0',0,0,0,1556719946),(4,2,0,0,'时光放映机','shiguang','http://dl.stream.qqmusic.qq.com/C100004TSZYg2HaHQi.m4a?fromtag=0',0,0,0,1556719946),(5,2,0,0,'黎明清晨','liming','http://dl.stream.qqmusic.qq.com/C100001O8Fq6090GIP.m4a?fromtag=0',0,0,0,1556719946),(6,2,0,0,'冬日问候','dongri','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',0,0,0,1556719946),(7,2,0,0,'快乐圣诞','shengdan1','http://dl.stream.qqmusic.qq.com/C100002PlIV94B0l6I.m4a?fromtag=0',0,0,0,1556719946),(8,2,0,0,'圣诞快乐','shengdan2','http://dl.stream.qqmusic.qq.com/C100002lW91D2TL1UM.m4a?fromtag=0',0,0,0,1556719946),(9,2,0,0,'心说','xinshuo','http://dl.stream.qqmusic.qq.com/C1000035x1uO2pRBBS.m4a?fromtag=0',0,0,0,1556719946),(10,2,0,0,'十里桃花','taohua','http://dl.stream.qqmusic.qq.com/C100001Nl0W80sBSwJ.m4a?fromtag=0',0,0,0,1556719946),(11,2,0,0,'冰雪奇缘','bingxue','http://dl.stream.qqmusic.qq.com/C1000011bjAY09MJKk.m4a?fromtag=0',0,0,0,1556719946),(12,2,0,0,'梦幻森林','senlin','http://dl.stream.qqmusic.qq.com/C100000amRvH3wxv56.m4a?fromtag=0',0,0,0,1556719946),(13,2,0,0,'小雪清寒','xiaoxue','http://dl.stream.qqmusic.qq.com/C100001qr2SW1q6AKQ.m4a?fromtag=0',0,0,0,1556719946),(14,2,0,0,'春节快乐','chunjie','http://dl.stream.qqmusic.qq.com/C100001PFFK20X95aT.m4a?fromtag=0',0,0,0,1556719946),(15,2,0,0,'春节快乐','xinnian','http://dl.stream.qqmusic.qq.com/C100001PFFK20X95aT.m4a?fromtag=0',0,0,0,1556719946),(16,2,0,0,'春暖花开','hualuo','http://dl.stream.qqmusic.qq.com/C100004TXEXY2G2c7C.m4a?fromtag=0',0,0,0,1556719946),(17,2,0,0,'清风蝶影','qingfeng','http://dl.stream.qqmusic.qq.com/C100004TXEXY2G2c7C.m4a?fromtag=0',0,0,0,1556719946),(18,2,0,0,'绽放青春','qingchun','http://dl.stream.qqmusic.qq.com/C1000006tWxy0mUp7s.m4a?fromtag=46&lyric=4829898',0,0,0,1556719946),(19,2,0,0,'多彩气球','qiqiu','http://dl.stream.qqmusic.qq.com/C1000006tWxy0mUp7s.m4a?fromtag=46&lyric=4829898',0,0,0,1556719946),(20,2,0,0,'感恩有你','ganen2','http://dl.stream.qqmusic.qq.com/C100002THbyZ1Efzd5.m4a?fromtag=46&lyric=107660564',0,0,0,1556719946),(21,2,0,0,'古韵荷花','guyun','http://dl.stream.qqmusic.qq.com/C100002THbyZ1Efzd5.m4a?fromtag=46&lyric=107660564',0,0,0,1556719946),(22,2,0,0,'阳光宝贝','baobei','http://dl.stream.qqmusic.qq.com/C1000021uJc21hOsW2.m4a?fromtag=46',0,0,0,1556719946),(23,2,0,0,'温暖时光','baokan','http://dl.stream.qqmusic.qq.com/C100002THbyZ1Efzd5.m4a?fromtag=46&lyric=107660564',0,0,0,1556719946),(24,2,0,0,'花之语','hua','http://dl.stream.qqmusic.qq.com/C100004b76Fa155dXo.m4a?fromtag=46&lyric=201670058',0,0,0,1556719946),(25,2,0,0,'大图影集','datu','http://dl.stream.qqmusic.qq.com/C100004b76Fa155dXo.m4a?fromtag=46&lyric=201670058',0,0,0,1556719946),(26,2,0,0,'春光无限','chunguang','http://dl.stream.qqmusic.qq.com/C100002wmo8l0C8pPG.m4a?fromtag=46',0,0,0,1556719946),(27,2,0,0,'生日快乐','shengri','http://dl.stream.qqmusic.qq.com/C100000dWjyk4G5V6k.m4a?fromtag=46&lyric=2460009',0,0,0,1556719946),(28,2,0,0,'暮色烟云','yunyan','http://dl.stream.qqmusic.qq.com/C100000dWjyk4G5V6k.m4a?fromtag=46&lyric=2460009',0,0,0,1556719946),(29,2,0,0,'玫瑰之恋','ailian','http://dl.stream.qqmusic.qq.com/C100000aVpHR3FrRPY.m4a?fromtag=46&lyric=4830166',0,0,0,1556719946),(30,2,0,0,'美丽相约','xiangyue','http://dl.stream.qqmusic.qq.com/C100000aVpHR3FrRPY.m4a?fromtag=46&lyric=4830166',0,0,0,1556719946),(31,2,0,0,'劳动节快乐','laodong','http://dl.stream.qqmusic.qq.com/C100000Qhd4C3Hfn7t.m4a?fromtag=46&lyric=96319',0,0,0,1556719946),(32,2,0,0,'沐浴春风','chunfeng','http://dl.stream.qqmusic.qq.com/C1000024AJ1w1wl9KK.m4a?fromtag=46&lyric=5176515',0,0,0,1556719946),(33,2,0,0,'落花春风','chuntian','http://dl.stream.qqmusic.qq.com/C100000UQ9Fd3xPIHC.m4a?fromtag=46&lyric=449074',0,0,0,1556719946),(34,2,0,0,'绿色春天','green','http://dl.stream.qqmusic.qq.com/C100000UQ9Fd3xPIHC.m4a?fromtag=46&lyric=449074',0,0,0,1556719946),(35,2,0,0,'我爱你妈妈','muqin1','http://dl.stream.qqmusic.qq.com/C100000UQ9Fd3xPIHC.m4a?fromtag=46&lyric=449074',0,0,0,1556719946),(36,2,0,0,'感恩母亲节','muqin2','http://dl.stream.qqmusic.qq.com/C100000UQ9Fd3xPIHC.m4a?fromtag=46&lyric=449074',0,0,0,1556719946),(37,2,0,0,'环游世界','huanyou','http://dl.stream.qqmusic.qq.com/C100004PD71W0q0x2K.m4a?fromtag=46&lyric=5205963',0,0,0,1556719946),(38,2,0,0,'自由天空','ziyou','http://dl.stream.qqmusic.qq.com/C1000041EsNA30QvSR.m4a?fromtag=46&lyric=1030964',0,0,0,1556719946),(39,2,0,0,'带你去旅行','lvxing','http://dl.stream.qqmusic.qq.com/C100003ezWUI4SrnJl.m4a?fromtag=46&lyric=5003421',0,0,0,1556719946),(40,2,0,0,'陌上花开','moshang','http://dl.stream.qqmusic.qq.com/C100004TFRgJ1O1PrK.m4a?fromtag=46&lyric=110211',0,0,0,1556719946);
/*!40000 ALTER TABLE `ims_hr_album_skin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_skincate`
--

DROP TABLE IF EXISTS `ims_hr_album_skincate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_skincate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_skincate`
--

LOCK TABLES `ims_hr_album_skincate` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_skincate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_skincate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_user`
--

DROP TABLE IF EXISTS `ims_hr_album_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(255) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `fee` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `souce` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0启用，1禁用',
  `addtime` int(10) NOT NULL,
  `type` varchar(50) DEFAULT NULL COMMENT '类别，1 老师 2 家长 3 其他',
  `name` varchar(50) DEFAULT NULL COMMENT '平台名字',
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_uniacid` (`uniacid`),
  KEY `index_openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_user`
--

LOCK TABLES `ims_hr_album_user` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_user` DISABLE KEYS */;
INSERT INTO `ims_hr_album_user` VALUES (8,2,'ouTc440KMSR7PJSD4KJ9-wAkWUZ81','刘靖','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIxAIXQL4JxspfSlMsSDPm0Pff8Wo4zg4AbI0wbRwkIaAL9Sy8d41Lw8cIzf6V84kunOdueHPLIuA/132',0.00,0,0,1557724550,'1','2','3'),(5,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','https://wx.qlogo.cn/mmopen/vi_32/hAnkVF6mvYGqzBgg16pZfGCgPxA3Vo6UZ59rTVHichKk58QFcxmJUnGNoA1qUPbqIyrOF5npm1ibYnXSjwabymFA/132',0.00,0,0,1557581471,NULL,NULL,NULL),(7,2,'ouTc44yr9HR7Mh15n-PhzARr2wHk','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erAZEcrzfZNCaMqWRnncZeu4jpDW1W2fJicmEOm95L67Sjw092I6CNToPIXUb42JsPvM8yzOIUC2GA/132',0.00,0,0,1557589421,NULL,NULL,NULL),(9,2,'ouTc440KMSR7PJSD4KJ9-wAkWUZ8','刘靖','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIxAIXQL4JxspfSlMsSDPm0Pff8Wo4zg4AbI0wbRwkIaAL9Sy8d41Lw8cIzf6V84kunOdueHPLIuA/132',0.00,0,0,1557725616,'1','测试老师','18888888888'),(10,2,'ouTc44zmedOtcd3ZYtzg7SUs2E38','周密','https://wx.qlogo.cn/mmopen/vi_32/ugjuedb1029IfofEqP0IhOibCut6p7icoPKhgrticFA5LdaX8k8DiaibnWTeZb3XDNCF8lF3frZxGD0Kw3LBsUYiceaQ/132',0.00,0,1,1557743363,'1','测试老师','18888888888'),(11,2,'ouTc44xLJT_KB4ctxvS8PeJzF0bM','Leslie Lee','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLJ30JjHibNZGMQibb4AsKLau9OZNYDcLjTsk3yFaicCFL58UdpShSd1pDicSAf779TzdZj2CqibzMCfYA/132',0.00,0,0,1557747044,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ims_hr_album_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_hr_album_userbackend`
--

DROP TABLE IF EXISTS `ims_hr_album_userbackend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_hr_album_userbackend` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL COMMENT '积分',
  `nickname` varchar(50) DEFAULT NULL COMMENT '微信昵称',
  `name` varchar(50) DEFAULT NULL COMMENT '平台写的姓名',
  `avatar` varchar(200) DEFAULT NULL COMMENT '微信头像',
  `type` int(2) DEFAULT NULL COMMENT '类别，1 老师 2 家长 3 其他',
  `url` varchar(200) DEFAULT NULL COMMENT '自行上传的头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(1) DEFAULT '0' COMMENT '0启用，1禁用',
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_openid` (`openid`),
  KEY `index_uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_userbackend`
--

LOCK TABLES `ims_hr_album_userbackend` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_userbackend` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_hr_album_userbackend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_images_reply`
--

DROP TABLE IF EXISTS `ims_images_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_images_reply`
--

LOCK TABLES `ims_images_reply` WRITE;
/*!40000 ALTER TABLE `ims_images_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_images_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_job`
--

DROP TABLE IF EXISTS `ims_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_job`
--

LOCK TABLES `ims_job` WRITE;
/*!40000 ALTER TABLE `ims_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_cash_record`
--

DROP TABLE IF EXISTS `ims_mc_cash_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_cash_record`
--

LOCK TABLES `ims_mc_cash_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_cash_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_cash_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_chats_record`
--

DROP TABLE IF EXISTS `ims_mc_chats_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_chats_record`
--

LOCK TABLES `ims_mc_chats_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_chats_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_chats_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_recharge`
--

DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_recharge`
--

LOCK TABLES `ims_mc_credits_recharge` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_record`
--

DROP TABLE IF EXISTS `ims_mc_credits_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_record`
--

LOCK TABLES `ims_mc_credits_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_groups`
--

DROP TABLE IF EXISTS `ims_mc_fans_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_groups`
--

LOCK TABLES `ims_mc_fans_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_tag_mapping`
--

DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_tag_mapping`
--

LOCK TABLES `ims_mc_fans_tag_mapping` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_groups`
--

DROP TABLE IF EXISTS `ims_mc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_groups`
--

LOCK TABLES `ims_mc_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_groups` DISABLE KEYS */;
INSERT INTO `ims_mc_groups` VALUES (1,1,'默认会员组',0,1);
/*!40000 ALTER TABLE `ims_mc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_handsel`
--

DROP TABLE IF EXISTS `ims_mc_handsel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_handsel`
--

LOCK TABLES `ims_mc_handsel` WRITE;
/*!40000 ALTER TABLE `ims_mc_handsel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_handsel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mapping_fans`
--

DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mapping_fans`
--

LOCK TABLES `ims_mc_mapping_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mapping_ucenter`
--

DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mapping_ucenter`
--

LOCK TABLES `ims_mc_mapping_ucenter` WRITE;
/*!40000 ALTER TABLE `ims_mc_mapping_ucenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_ucenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mass_record`
--

DROP TABLE IF EXISTS `ims_mc_mass_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mass_record`
--

LOCK TABLES `ims_mc_mass_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_mass_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mass_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_address`
--

DROP TABLE IF EXISTS `ims_mc_member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_address`
--

LOCK TABLES `ims_mc_member_address` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_fields`
--

DROP TABLE IF EXISTS `ims_mc_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_fields`
--

LOCK TABLES `ims_mc_member_fields` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_property`
--

DROP TABLE IF EXISTS `ims_mc_member_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_property`
--

LOCK TABLES `ims_mc_member_property` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_members`
--

DROP TABLE IF EXISTS `ims_mc_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `pay_password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_members`
--

LOCK TABLES `ims_mc_members` WRITE;
/*!40000 ALTER TABLE `ims_mc_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_oauth_fans`
--

DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_oauth_fans`
--

LOCK TABLES `ims_mc_oauth_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_menu_event`
--

DROP TABLE IF EXISTS `ims_menu_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_menu_event`
--

LOCK TABLES `ims_menu_event` WRITE;
/*!40000 ALTER TABLE `ims_menu_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_menu_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_message_notice_log`
--

DROP TABLE IF EXISTS `ims_message_notice_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_message_notice_log`
--

LOCK TABLES `ims_message_notice_log` WRITE;
/*!40000 ALTER TABLE `ims_message_notice_log` DISABLE KEYS */;
INSERT INTO `ims_message_notice_log` VALUES (1,'user_12019-05-09 18:01:24注册成功',1,2,'2',4,2,1557396084,0),(2,'admin即将过期',1,1,'1',7,NULL,1557438872,1557438578),(3,'admin即将过期',1,1,'1',7,NULL,1557446577,1557438887),(4,'admin即将过期',1,1,'1',7,NULL,1557698775,1557570721);
/*!40000 ALTER TABLE `ims_message_notice_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mobilenumber`
--

DROP TABLE IF EXISTS `ims_mobilenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mobilenumber`
--

LOCK TABLES `ims_mobilenumber` WRITE;
/*!40000 ALTER TABLE `ims_mobilenumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mobilenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules`
--

DROP TABLE IF EXISTS `ims_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules`
--

LOCK TABLES `ims_modules` WRITE;
/*!40000 ALTER TABLE `ims_modules` DISABLE KEYS */;
INSERT INTO `ims_modules` VALUES (1,'basic','system','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(2,'news','system','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(3,'music','system','基本音乐回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(4,'userapi','system','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入RubySn0w系统，高效的与微信公众平台进行对接整合。','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(5,'recharge','system','会员中心充值模块','1.0','提供会员充值功能','','RubySn0w Team','http://www.baidu.com/',0,'','',0,1,0,0,'','',1,2,1,1,1,0),(6,'custom','system','多客服转接','1.0.0','用来接入腾讯的多客服系统','','RubySn0w Team','http://bbs.we7.cc',0,'a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}',1,1,0,0,'','',1,2,1,1,1,0),(7,'images','system','基本图片回复','1.0','提供图片回复','在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(8,'video','system','基本视频回复','1.0','提供图片回复','在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(9,'voice','system','基本语音回复','1.0','提供语音回复','在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(10,'chats','system','发送客服消息','1.0','公众号可以在粉丝最后发送消息的48小时内无限制发送消息','','RubySn0w Team','http://www.baidu.com/',0,'','',0,1,0,0,'','',1,2,1,1,1,0),(11,'wxcard','system','微信卡券回复','1.0','微信卡券回复','微信卡券回复','RubySn0w Team','http://www.baidu.com/',0,'','',1,1,0,0,'','',1,2,1,1,1,0),(12,'store','business','站内商城','1.0','站内商城','站内商城','RubySn0w Team','http://www.baidu.cc/',0,'','',0,1,0,0,'','',1,2,1,1,1,0),(13,'hr_album','activity','酷炫小程序相册','4.4','酷炫小程序相册','酷炫小程序相册','新源代','http://www.xydai.cn',1,'a:0:{}','a:0:{}',0,0,0,0,'N;','K',2,1,1,1,1,1);
/*!40000 ALTER TABLE `ims_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_bindings`
--

DROP TABLE IF EXISTS `ims_modules_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_bindings`
--

LOCK TABLES `ims_modules_bindings` WRITE;
/*!40000 ALTER TABLE `ims_modules_bindings` DISABLE KEYS */;
INSERT INTO `ims_modules_bindings` VALUES (1,'hr_album','menu','','基本设置','set','',0,'','',0),(2,'hr_album','menu','','相册管理','list','',0,'','',0),(3,'hr_album','menu','','音乐管理','music','',0,'','',0),(4,'hr_album','menu','','评论管理','review','',0,'','',0),(5,'hr_album','menu','','举报管理','report','',0,'','',0);
/*!40000 ALTER TABLE `ims_modules_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_plugin`
--

DROP TABLE IF EXISTS `ims_modules_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_plugin`
--

LOCK TABLES `ims_modules_plugin` WRITE;
/*!40000 ALTER TABLE `ims_modules_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_rank`
--

DROP TABLE IF EXISTS `ims_modules_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_rank`
--

LOCK TABLES `ims_modules_rank` WRITE;
/*!40000 ALTER TABLE `ims_modules_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_recycle`
--

DROP TABLE IF EXISTS `ims_modules_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_recycle`
--

LOCK TABLES `ims_modules_recycle` WRITE;
/*!40000 ALTER TABLE `ims_modules_recycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_music_reply`
--

DROP TABLE IF EXISTS `ims_music_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_music_reply`
--

LOCK TABLES `ims_music_reply` WRITE;
/*!40000 ALTER TABLE `ims_music_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_music_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_news_reply`
--

DROP TABLE IF EXISTS `ims_news_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_news_reply`
--

LOCK TABLES `ims_news_reply` WRITE;
/*!40000 ALTER TABLE `ims_news_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_news_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_phoneapp_versions`
--

DROP TABLE IF EXISTS `ims_phoneapp_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_phoneapp_versions`
--

LOCK TABLES `ims_phoneapp_versions` WRITE;
/*!40000 ALTER TABLE `ims_phoneapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_phoneapp_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_profile_fields`
--

DROP TABLE IF EXISTS `ims_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_profile_fields`
--

LOCK TABLES `ims_profile_fields` WRITE;
/*!40000 ALTER TABLE `ims_profile_fields` DISABLE KEYS */;
INSERT INTO `ims_profile_fields` VALUES (1,'realname',1,'真实姓名','',0,1,1,1,0),(2,'nickname',1,'昵称','',1,1,0,1,0),(3,'avatar',1,'头像','',1,0,0,0,0),(4,'qq',1,'QQ号','',0,0,0,1,0),(5,'mobile',1,'手机号码','',0,0,0,0,0),(6,'vip',1,'VIP级别','',0,0,0,0,0),(7,'gender',1,'性别','',0,0,0,0,0),(8,'birthyear',1,'出生生日','',0,0,0,0,0),(9,'constellation',1,'星座','',0,0,0,0,0),(10,'zodiac',1,'生肖','',0,0,0,0,0),(11,'telephone',1,'固定电话','',0,0,0,0,0),(12,'idcard',1,'证件号码','',0,0,0,0,0),(13,'studentid',1,'学号','',0,0,0,0,0),(14,'grade',1,'班级','',0,0,0,0,0),(15,'address',1,'邮寄地址','',0,0,0,0,0),(16,'zipcode',1,'邮编','',0,0,0,0,0),(17,'nationality',1,'国籍','',0,0,0,0,0),(18,'resideprovince',1,'居住地址','',0,0,0,0,0),(19,'graduateschool',1,'毕业学校','',0,0,0,0,0),(20,'company',1,'公司','',0,0,0,0,0),(21,'education',1,'学历','',0,0,0,0,0),(22,'occupation',1,'职业','',0,0,0,0,0),(23,'position',1,'职位','',0,0,0,0,0),(24,'revenue',1,'年收入','',0,0,0,0,0),(25,'affectivestatus',1,'情感状态','',0,0,0,0,0),(26,'lookingfor',1,' 交友目的','',0,0,0,0,0),(27,'bloodtype',1,'血型','',0,0,0,0,0),(28,'height',1,'身高','',0,0,0,0,0),(29,'weight',1,'体重','',0,0,0,0,0),(30,'alipay',1,'支付宝帐号','',0,0,0,0,0),(31,'msn',1,'MSN','',0,0,0,0,0),(32,'email',1,'电子邮箱','',0,0,0,0,0),(33,'taobao',1,'阿里旺旺','',0,0,0,0,0),(34,'site',1,'主页','',0,0,0,0,0),(35,'bio',1,'自我介绍','',0,0,0,0,0),(36,'interest',1,'兴趣爱好','',0,0,0,0,0);
/*!40000 ALTER TABLE `ims_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode`
--

DROP TABLE IF EXISTS `ims_qrcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode`
--

LOCK TABLES `ims_qrcode` WRITE;
/*!40000 ALTER TABLE `ims_qrcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode_stat`
--

DROP TABLE IF EXISTS `ims_qrcode_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode_stat`
--

LOCK TABLES `ims_qrcode_stat` WRITE;
/*!40000 ALTER TABLE `ims_qrcode_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule`
--

DROP TABLE IF EXISTS `ims_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule`
--

LOCK TABLES `ims_rule` WRITE;
/*!40000 ALTER TABLE `ims_rule` DISABLE KEYS */;
INSERT INTO `ims_rule` VALUES (1,0,'城市天气','userapi',255,1,''),(2,0,'百度百科','userapi',255,1,''),(3,0,'即时翻译','userapi',255,1,''),(4,0,'今日老黄历','userapi',255,1,''),(5,0,'看新闻','userapi',255,1,''),(6,0,'快递查询','userapi',255,1,''),(7,1,'个人中心入口设置','cover',0,1,''),(8,1,'RubySn0w系统团队入口设置','cover',0,1,'');
/*!40000 ALTER TABLE `ims_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule_keyword`
--

DROP TABLE IF EXISTS `ims_rule_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule_keyword`
--

LOCK TABLES `ims_rule_keyword` WRITE;
/*!40000 ALTER TABLE `ims_rule_keyword` DISABLE KEYS */;
INSERT INTO `ims_rule_keyword` VALUES (1,1,0,'userapi','^.+天气$',3,255,1),(2,2,0,'userapi','^百科.+$',3,255,1),(3,2,0,'userapi','^定义.+$',3,255,1),(4,3,0,'userapi','^@.+$',3,255,1),(5,4,0,'userapi','日历',1,255,1),(6,4,0,'userapi','万年历',1,255,1),(7,4,0,'userapi','黄历',1,255,1),(8,4,0,'userapi','几号',1,255,1),(9,5,0,'userapi','新闻',1,255,1),(10,6,0,'userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$',3,255,1),(11,7,1,'cover','个人中心',1,0,1),(12,8,1,'cover','首页',1,0,1);
/*!40000 ALTER TABLE `ims_rule_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_article`
--

DROP TABLE IF EXISTS `ims_site_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_article`
--

LOCK TABLES `ims_site_article` WRITE;
/*!40000 ALTER TABLE `ims_site_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_article_comment`
--

DROP TABLE IF EXISTS `ims_site_article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_article_comment`
--

LOCK TABLES `ims_site_article_comment` WRITE;
/*!40000 ALTER TABLE `ims_site_article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_category`
--

DROP TABLE IF EXISTS `ims_site_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_category`
--

LOCK TABLES `ims_site_category` WRITE;
/*!40000 ALTER TABLE `ims_site_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_multi`
--

DROP TABLE IF EXISTS `ims_site_multi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_multi`
--

LOCK TABLES `ims_site_multi` WRITE;
/*!40000 ALTER TABLE `ims_site_multi` DISABLE KEYS */;
INSERT INTO `ims_site_multi` VALUES (1,1,'RubySn0w系统团队',1,'',1,'');
/*!40000 ALTER TABLE `ims_site_multi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_nav`
--

DROP TABLE IF EXISTS `ims_site_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_nav`
--

LOCK TABLES `ims_site_nav` WRITE;
/*!40000 ALTER TABLE `ims_site_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_page`
--

DROP TABLE IF EXISTS `ims_site_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_page`
--

LOCK TABLES `ims_site_page` WRITE;
/*!40000 ALTER TABLE `ims_site_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_slide`
--

DROP TABLE IF EXISTS `ims_site_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_slide`
--

LOCK TABLES `ims_site_slide` WRITE;
/*!40000 ALTER TABLE `ims_site_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_create_account`
--

DROP TABLE IF EXISTS `ims_site_store_create_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_create_account`
--

LOCK TABLES `ims_site_store_create_account` WRITE;
/*!40000 ALTER TABLE `ims_site_store_create_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_create_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_goods`
--

DROP TABLE IF EXISTS `ims_site_store_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_goods`
--

LOCK TABLES `ims_site_store_goods` WRITE;
/*!40000 ALTER TABLE `ims_site_store_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_order`
--

DROP TABLE IF EXISTS `ims_site_store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_order`
--

LOCK TABLES `ims_site_store_order` WRITE;
/*!40000 ALTER TABLE `ims_site_store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles`
--

DROP TABLE IF EXISTS `ims_site_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles`
--

LOCK TABLES `ims_site_styles` WRITE;
/*!40000 ALTER TABLE `ims_site_styles` DISABLE KEYS */;
INSERT INTO `ims_site_styles` VALUES (1,1,1,'微站默认模板_gC5C');
/*!40000 ALTER TABLE `ims_site_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles_vars`
--

DROP TABLE IF EXISTS `ims_site_styles_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles_vars`
--

LOCK TABLES `ims_site_styles_vars` WRITE;
/*!40000 ALTER TABLE `ims_site_styles_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_styles_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_templates`
--

DROP TABLE IF EXISTS `ims_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_templates`
--

LOCK TABLES `ims_site_templates` WRITE;
/*!40000 ALTER TABLE `ims_site_templates` DISABLE KEYS */;
INSERT INTO `ims_site_templates` VALUES (1,'default','微站默认模板','','由RubySn0w提供默认微站模板套系','RubySn0w团队','http://baidu.com','1',0);
/*!40000 ALTER TABLE `ims_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_fans`
--

DROP TABLE IF EXISTS `ims_stat_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_fans`
--

LOCK TABLES `ims_stat_fans` WRITE;
/*!40000 ALTER TABLE `ims_stat_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_keyword`
--

DROP TABLE IF EXISTS `ims_stat_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_keyword`
--

LOCK TABLES `ims_stat_keyword` WRITE;
/*!40000 ALTER TABLE `ims_stat_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_msg_history`
--

DROP TABLE IF EXISTS `ims_stat_msg_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_msg_history`
--

LOCK TABLES `ims_stat_msg_history` WRITE;
/*!40000 ALTER TABLE `ims_stat_msg_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_msg_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_rule`
--

DROP TABLE IF EXISTS `ims_stat_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_rule`
--

LOCK TABLES `ims_stat_rule` WRITE;
/*!40000 ALTER TABLE `ims_stat_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_visit`
--

DROP TABLE IF EXISTS `ims_stat_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_visit`
--

LOCK TABLES `ims_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_stat_visit` DISABLE KEYS */;
INSERT INTO `ims_stat_visit` VALUES (1,0,'we7_account',1,20190509,'web');
/*!40000 ALTER TABLE `ims_stat_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_system_stat_visit`
--

DROP TABLE IF EXISTS `ims_system_stat_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_system_stat_visit`
--

LOCK TABLES `ims_system_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_system_stat_visit` DISABLE KEYS */;
INSERT INTO `ims_system_stat_visit` VALUES (1,2,'',3,0,1557415361,1557415361);
/*!40000 ALTER TABLE `ims_system_stat_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account`
--

DROP TABLE IF EXISTS `ims_uni_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account`
--

LOCK TABLES `ims_uni_account` WRITE;
/*!40000 ALTER TABLE `ims_uni_account` DISABLE KEYS */;
INSERT INTO `ims_uni_account` VALUES (1,-1,'RubySn0w团队','一个朝气蓬勃的团队',1,0,'W'),(2,0,'蒙大教育','1.0.3',2,NULL,'M');
/*!40000 ALTER TABLE `ims_uni_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_group`
--

DROP TABLE IF EXISTS `ims_uni_account_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_group`
--

LOCK TABLES `ims_uni_account_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_menus`
--

DROP TABLE IF EXISTS `ims_uni_account_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_menus`
--

LOCK TABLES `ims_uni_account_menus` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_modules`
--

DROP TABLE IF EXISTS `ims_uni_account_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_modules`
--

LOCK TABLES `ims_uni_account_modules` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_modules` DISABLE KEYS */;
INSERT INTO `ims_uni_account_modules` VALUES (1,2,'hr_album',1,'a:20:{s:9:\"spacename\";N;s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:13:\" 蒙大教育\";s:8:\"deftitle\";N;s:8:\"baseskin\";N;s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:0;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:0;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"7iwhgo8Q80SKa3owzd8IhmmP9a5RoQmCfq5Pa0v0\";s:9:\"secretkey\";s:40:\"IQ4Ug2fNCh1mXRWHYVQgwf-ZWfJ5vtgWuS5BGhTF\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:25:\"https://c.chinajinglu.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";N;s:8:\"sharepic\";N;s:4:\"kfbg\";N;s:6:\"morebg\";N;s:6:\"ishare\";N;s:5:\"isico\";N;s:8:\"wxyellow\";N;s:5:\"ispay\";N;s:6:\"dsdesc\";N;s:5:\"llads\";N;s:4:\"iskf\";N;s:7:\"paydesc\";N;s:10:\"list_style\";N;s:10:\"templateid\";N;}',0,0);
/*!40000 ALTER TABLE `ims_uni_account_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_users`
--

DROP TABLE IF EXISTS `ims_uni_account_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_users`
--

LOCK TABLES `ims_uni_account_users` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_group`
--

DROP TABLE IF EXISTS `ims_uni_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_group`
--

LOCK TABLES `ims_uni_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_group` DISABLE KEYS */;
INSERT INTO `ims_uni_group` VALUES (1,0,'体验套餐服务','N;','N;',0),(2,0,'tech','a:1:{i:0;s:8:\"hr_album\";}','',0);
/*!40000 ALTER TABLE `ims_uni_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_settings`
--

DROP TABLE IF EXISTS `ims_uni_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_settings`
--

LOCK TABLES `ims_uni_settings` WRITE;
/*!40000 ALTER TABLE `ims_uni_settings` DISABLE KEYS */;
INSERT INTO `ims_uni_settings` VALUES (1,'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}','a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}',0,'a:1:{s:6:\"status\";i:0;}','a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}','a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}','',1,0,'','',0,'',0,0,'','','',0,0);
/*!40000 ALTER TABLE `ims_uni_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_verifycode`
--

DROP TABLE IF EXISTS `ims_uni_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_verifycode`
--

LOCK TABLES `ims_uni_verifycode` WRITE;
/*!40000 ALTER TABLE `ims_uni_verifycode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_cache`
--

DROP TABLE IF EXISTS `ims_userapi_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_cache`
--

LOCK TABLES `ims_userapi_cache` WRITE;
/*!40000 ALTER TABLE `ims_userapi_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_userapi_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_reply`
--

DROP TABLE IF EXISTS `ims_userapi_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_reply`
--

LOCK TABLES `ims_userapi_reply` WRITE;
/*!40000 ALTER TABLE `ims_userapi_reply` DISABLE KEYS */;
INSERT INTO `ims_userapi_reply` VALUES (1,1,'\"城市名+天气\", 如: \"北京天气\"','weather.php','','',0),(2,2,'\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','',0),(3,3,'\"@查询内容(中文或英文)\"','translate.php','','',0),(4,4,'\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','',0),(5,5,'\"新闻\"','news.php','','',0),(6,6,'\"快递+单号\", 如: \"申通1200041125\"','express.php','','',0);
/*!40000 ALTER TABLE `ims_userapi_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users`
--

DROP TABLE IF EXISTS `ims_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  `schoolid` int(10) DEFAULT NULL,
  `schoolname` varchar(200) DEFAULT NULL,
  `classid` int(10) DEFAULT NULL,
  `classname` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `displayorder` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users`
--

LOCK TABLES `ims_users` WRITE;
/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,1,0,'admin','adb46dfe405dcc1269875ec5db85c51eb4693f89','YMm965CZ',0,0,1557570721,'127.0.0.1',1557726960,'127.0.0.1','127.0.0.1',1557570721,1657701262,0,'',0,1557528050,'小龙人幼儿园2',3,'','2147483647','管理员',2),(7,0,1,0,'ceshi','0eaf51e687a6daf162da09629c54842517ede565','bRT0ZTET',0,0,1557726975,'127.0.0.1',1557726983,'127.0.0.1','127.0.0.1',1557726975,1657726975,0,'',0,1557726896,'上海心元儿童之园',0,'','18888888888','测试老师',1),(5,0,1,0,'liulaoshi','b41f4530f20306f4830cc65c219dca69c772d799','un3nlLCw',0,0,1557700946,'127.0.0.1',1557718995,'116.237.223.245','127.0.0.1',1557700946,1657701262,0,'',0,1557699525,'上海心元儿童之家',0,'','18801732070','刘老师',4);
/*!40000 ALTER TABLE `ims_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_bind`
--

DROP TABLE IF EXISTS `ims_users_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_bind`
--

LOCK TABLES `ims_users_bind` WRITE;
/*!40000 ALTER TABLE `ims_users_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_failed_login`
--

DROP TABLE IF EXISTS `ims_users_failed_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_failed_login`
--

LOCK TABLES `ims_users_failed_login` WRITE;
/*!40000 ALTER TABLE `ims_users_failed_login` DISABLE KEYS */;
INSERT INTO `ims_users_failed_login` VALUES (6,'127.0.0.1','ceshi',1,1557726948),(7,'127.0.0.1','ceshi',1,1557726955);
/*!40000 ALTER TABLE `ims_users_failed_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_group`
--

DROP TABLE IF EXISTS `ims_users_founder_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_group`
--

LOCK TABLES `ims_users_founder_group` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_group`
--

DROP TABLE IF EXISTS `ims_users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_uid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_group`
--

LOCK TABLES `ims_users_group` WRITE;
/*!40000 ALTER TABLE `ims_users_group` DISABLE KEYS */;
INSERT INTO `ims_users_group` VALUES (1,0,'all','a:2:{i:0;i:1;i:1;i:-1;}',100000,0,4294967295,100000,100000,100000),(2,0,'all_xiaochengxu','a:1:{i:0;i:2;}',0,0,4294967295,100000,0,0);
/*!40000 ALTER TABLE `ims_users_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_invitation`
--

DROP TABLE IF EXISTS `ims_users_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_invitation`
--

LOCK TABLES `ims_users_invitation` WRITE;
/*!40000 ALTER TABLE `ims_users_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_permission`
--

DROP TABLE IF EXISTS `ims_users_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_permission`
--

LOCK TABLES `ims_users_permission` WRITE;
/*!40000 ALTER TABLE `ims_users_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_profile`
--

DROP TABLE IF EXISTS `ims_users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_profile`
--

LOCK TABLES `ims_users_profile` WRITE;
/*!40000 ALTER TABLE `ims_users_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_video_reply`
--

DROP TABLE IF EXISTS `ims_video_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_video_reply`
--

LOCK TABLES `ims_video_reply` WRITE;
/*!40000 ALTER TABLE `ims_video_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_video_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_voice_reply`
--

DROP TABLE IF EXISTS `ims_voice_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_voice_reply`
--

LOCK TABLES `ims_voice_reply` WRITE;
/*!40000 ALTER TABLE `ims_voice_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_voice_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_attachment`
--

DROP TABLE IF EXISTS `ims_wechat_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_attachment`
--

LOCK TABLES `ims_wechat_attachment` WRITE;
/*!40000 ALTER TABLE `ims_wechat_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_news`
--

DROP TABLE IF EXISTS `ims_wechat_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_news`
--

LOCK TABLES `ims_wechat_news` WRITE;
/*!40000 ALTER TABLE `ims_wechat_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_general_analysis`
--

DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_general_analysis`
--

LOCK TABLES `ims_wxapp_general_analysis` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_versions`
--

DROP TABLE IF EXISTS `ims_wxapp_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_versions`
--

LOCK TABLES `ims_wxapp_versions` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_versions` DISABLE KEYS */;
INSERT INTO `ims_wxapp_versions` VALUES (1,2,0,'1.0','1.0.3','a:1:{s:8:\"hr_album\";a:4:{s:4:\"name\";s:8:\"hr_album\";s:7:\"newicon\";N;s:7:\"version\";s:3:\"4.4\";s:12:\"defaultentry\";N;}}',3,0,'a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}',1556719643,0,0,'','',0);
/*!40000 ALTER TABLE `ims_wxapp_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxcard_reply`
--

DROP TABLE IF EXISTS `ims_wxcard_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxcard_reply`
--

LOCK TABLES `ims_wxcard_reply` WRITE;
/*!40000 ALTER TABLE `ims_wxcard_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxcard_reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-14  0:12:39
