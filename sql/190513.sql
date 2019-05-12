-- MySQL dump 10.13  Distrib 5.7.23, for osx10.9 (x86_64)
--
-- Host: localhost    Database: wx4_tmp
-- ------------------------------------------------------
-- Server version	5.7.23

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
INSERT INTO `ims_core_cache` VALUES ('setting','a:10:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";s:0:\"\";s:7:\"cloudip\";a:0:{}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:18:\"module_receive_ban\";a:0:{}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}}'),('system_frame','a:10:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:3:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"phoneapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:11:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:53:\"./index.php?c=module&a=manage-system&system_welcome=1\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=5\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=6\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:4:\"site\";a:8:{s:5:\"title\";s:12:\"站点管理\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:4:\"help\";a:9:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}}'),('userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('module_receive_enable','a:0:{}'),('we7::site_store_buy_1','a:0:{}'),('we7:module_info:basic','a:31:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/basic/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:news','a:31:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:54:\"https://md.iamlj.com/addons/news/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:music','a:31:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/music/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:userapi','a:31:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:143:\"自定义接口又称第三方接口，可以让开发者更方便的接入RubySn0w系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"https://md.iamlj.com/addons/userapi/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:recharge','a:31:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/recharge/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:custom','a:31:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/custom/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:images','a:31:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/images/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:video','a:31:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/video/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:voice','a:31:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/voice/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:chats','a:31:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/chats/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:wxcard','a:31:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/wxcard/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:store','a:31:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:20:\"http://www.baidu.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/store/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('unisetting:1','a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}'),('uniaccount:1','a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:61:\"https://md.iamlj.com/attachment/headimg_1.jpg?time=1556718804\";s:6:\"qrcode\";s:60:\"https://md.iamlj.com/attachment/qrcode_1.jpg?time=1556718804\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:module:all_uninstall','a:2:{s:6:\"expire\";i:1557420178;s:4:\"data\";a:7:{s:13:\"cloud_m_count\";N;s:7:\"modules\";N;s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;s:12:\"webapp_count\";i:0;s:14:\"phoneapp_count\";i:0;s:13:\"welcome_count\";i:0;}}'),('we7:unimodules::','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:all_cloud_upgrade_module:','a:2:{s:6:\"expire\";i:1556720604;s:4:\"data\";a:0:{}}'),('we7:uni_group','a:2:{i:2;a:9:{s:2:\"id\";s:1:\"2\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:4:\"tech\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:0:\"\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:1:{i:0;s:8:\"hr_album\";}}i:1;a:9:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:2:\"N;\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}'),('we7:user_modules:1','a:13:{i:0;s:8:\"hr_album\";i:1;s:5:\"store\";i:2;s:6:\"wxcard\";i:3;s:5:\"chats\";i:4;s:5:\"voice\";i:5;s:5:\"video\";i:6;s:6:\"images\";i:7;s:6:\"custom\";i:8;s:8:\"recharge\";i:9;s:7:\"userapi\";i:10;s:5:\"music\";i:11;s:4:\"news\";i:12;s:5:\"basic\";}'),('unisetting:2','a:0:{}'),('uniaccount:2','a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"i1p1GgHDC6GGVIZHzbhHBiNs0gg1pbG1\";s:14:\"encodingaeskey\";s:43:\"oxiILGyQvnvZvWLjqTZMUpTrZWB99GJylPgrVpiBmmd\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:15:\"gh_599f6442e255\";s:3:\"key\";s:18:\"wxf9c6940d828e7ea3\";s:6:\"secret\";s:32:\"1578bfff06cf77e96113e820f40c8f58\";s:4:\"name\";s:12:\"蒙大教育\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxf9c6940d828e7ea3\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:66:\"https://a.chinajinglu.com/attachment/headimg_2.jpg?time=1557412893\";s:6:\"qrcode\";s:65:\"https://a.chinajinglu.com/attachment/qrcode_2.jpg?time=1557412893\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:lastaccount:oJ0X7','a:1:{s:5:\"wxapp\";i:2;}'),('we7:$cache_last_account_type','s:5:\"wxapp\";'),('we7:2:site_store_buy_4','a:0:{}'),('we7:unimodules:2:1','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:wxapp_version:1','a:16:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:3:\"1.0\";s:11:\"description\";s:5:\"1.0.3\";s:7:\"modules\";a:1:{i:0;a:38:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/hr_album/icon.jpg?v=1556718813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:8:\"shortcut\";N;s:7:\"account\";N;s:12:\"cover_entrys\";a:0:{}s:12:\"defaultentry\";N;s:7:\"newicon\";N;}}s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1556719643\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}'),('we7:unimodules:2:','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('accesstoken:wxe7bc1c3c7a9ff198','a:2:{s:5:\"token\";s:136:\"21_FDPoAsbmiix-i-c-ROvos0iLaX0h2uSBmHmMvLE7Pm7fvg-x5sQfIbGcM2wpF41dkWxEr6-prQ0_ebm2SCoM4UUFXi4X0p3M6SAK0PX6swmL8nP8o62wqO9jO-sZGChAIAHOK\";s:6:\"expire\";i:1557417228;}'),('we7:module_setting:2:hr_album','a:7:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:6:\"module\";s:8:\"hr_album\";s:7:\"enabled\";s:1:\"1\";s:8:\"settings\";s:985:\"a:20:{s:9:\"spacename\";N;s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:13:\" 蒙大教育\";s:8:\"deftitle\";N;s:8:\"baseskin\";N;s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:0;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:0;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"7iwhgo8Q80SKa3owzd8IhmmP9a5RoQmCfq5Pa0v0\";s:9:\"secretkey\";s:40:\"IQ4Ug2fNCh1mXRWHYVQgwf-ZWfJ5vtgWuS5BGhTF\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:25:\"https://c.chinajinglu.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";N;s:8:\"sharepic\";N;s:4:\"kfbg\";N;s:6:\"morebg\";N;s:6:\"ishare\";N;s:5:\"isico\";N;s:8:\"wxyellow\";N;s:5:\"ispay\";N;s:6:\"dsdesc\";N;s:5:\"llads\";N;s:4:\"iskf\";N;s:7:\"paydesc\";N;s:10:\"list_style\";N;s:10:\"templateid\";N;}\";s:8:\"shortcut\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";}'),('we7:lastaccount:uA9ZO','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:ty7yZ','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:2:site_store_buy_6','i:0;'),('accesstoken:wxf9c6940d828e7ea3','a:2:{s:5:\"token\";s:157:\"21_67xgWYMrsX_dcOiwt-7WuoUqg9BmOQlMTn0SyZ--SwNkk0_LxWPVw3f8ph3WMrMmXN7QD8m6rKwkeoCu_UeMIZTmBvQto4s48E21qIJyW-sia3H4bvmN5Lz7gi_T5sFbIcGnLxq_nrT5lkDkKEBiAFAUOL\";s:6:\"expire\";i:1557534793;}'),('we7:module_info:hr_album','a:31:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:63:\"https://a.chinajinglu.com/addons/hr_album/icon.jpg?v=1557543723\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:lastaccount:smVmX','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:hey6n','a:1:{s:5:\"wxapp\";i:2;}'),('we7:lastaccount:j3wQ1','a:1:{s:5:\"wxapp\";i:2;}'),('we7:lastaccount:o5WTU','a:1:{s:5:\"wxapp\";s:1:\"2\";}');
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
INSERT INTO `ims_core_sessions` VALUES ('3cd41794d2e13c9072e66a06c9f8f88c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R8Zc\";i:1557695239;}',1557698839),('907900b6d7a2a8557d768d45e57840dc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eDGi\";i:1557695239;}',1557698839),('71e093fdcc0130fe75f1ec8e1fbcee0d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C38O\";i:1557695239;}',1557698839),('ecf352a6431c8b5911e0e7d865a082d2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hEjH\";i:1557695238;}',1557698838),('5ba3c010b5586cbf16f415b341662179',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ySCz\";i:1557695237;}',1557698837),('62001b21878c1e5136a96e1e85919ccf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oT6s\";i:1557695237;}',1557698837),('42bb6c3b90da783b7fafef56f8a8b9d1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A17p\";i:1557695062;}',1557698662),('ff2869cb1eb5ac7d1acc5a03c6a25d61',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"peS0\";i:1557695062;}',1557698662),('bcb356b33a4ca66d9901f1ef23c4b054',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yLJX\";i:1557695062;}',1557698662),('8248bf7b68c80e6868a03b26b6efba21',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NV33\";i:1557695062;}',1557698662),('e19518624a45b40c3ab6f4197c9d2312',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EW72\";i:1557695057;}',1557698657),('32f6133d9ed89d3e30f385650d968bec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Iyy8\";i:1557695057;}',1557698657),('f9a6f18fb3c9bf1d44a908004d71d11e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zz5B\";i:1557695057;}',1557698657),('40210b0cac9cbf34a6168a48ff2aadf3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gya9\";i:1557695057;}',1557698657),('b7fed37beb5f335b927f0b1767a858b0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u0MG\";i:1557695054;}',1557698654),('510eb55e44fd9f5f62e1f9aed155dd6d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aE02\";i:1557695054;}',1557698654),('edaf8e93357d7e3e1d07e153ad7ed7fe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n0S0\";i:1557695054;}',1557698654),('a35dd3cbf00dadef0759a9c0f2ac90d0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e06g\";i:1557695022;}',1557698622),('c16ba570aed29504806f1ee9b1737ae8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k44H\";i:1557695022;}',1557698622),('a7a6d6ed94d42444a69fb2b529c29b23',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yqM5\";i:1557695022;}',1557698622),('566458edaf1e47da21defe465a4d88d5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QCUE\";i:1557695022;}',1557698622),('b401c7dfa5bf1a75e99ce03e8c39983e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ly0H\";i:1557695016;}',1557698616),('65748eb4cf1931f43f13aade1ea7f146',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o7zA\";i:1557695016;}',1557698616),('2a85eafdcebdaac82303e221520b9b7d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iS7I\";i:1557695016;}',1557698616),('8f9034fa2f7425ddcd6a0c6b61cf7602',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rO5Y\";i:1557694460;}',1557698060),('e0b5393e0839edddfc33221421d29307',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e973\";i:1557694460;}',1557698060),('6127595a994ef188c93b70abd1ae86da',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HWRt\";i:1557694460;}',1557698060),('9244ed24696becb92837f1c437064807',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d92F\";i:1557694451;}',1557698051),('0605af107c07c9a51bffe7a90a67acda',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MgL8\";i:1557694451;}',1557698051),('1955c3412aef16fe0e386668883c5db5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cltA\";i:1557694451;}',1557698051),('7ac5f813f82c9b37f40ebbc2c5bcfe5b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yzx8\";i:1557694442;}',1557698042),('8cd2cbb2497971543ee987fcf534662d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pjAP\";i:1557694442;}',1557698042),('15bac40a73fb8cb181a189e44f8d33f0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tb2D\";i:1557694442;}',1557698042),('e0b11c065fe115da01e191647a2948f9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XFXv\";i:1557694442;}',1557698042),('66479ce9d18c4ec9c0f751c31e225724',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W9z2\";i:1557694430;}',1557698030),('1c3fbc828fe7018435ccbe25c049abbb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KLy0\";i:1557694430;}',1557698030),('76307c78c4e8ab2eafb4e9faf3cb8367',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n4e5\";i:1557694430;}',1557698030),('3402704b0fafd55e44f47bb0974be626',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l8gA\";i:1557694430;}',1557698030),('c30c40aee846edb570eb0467fa93d7ab',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jwhw\";i:1557694428;}',1557698028),('805f813872be23c3e2a7db160db48d47',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NHQj\";i:1557694427;}',1557698027),('2f78b365724786a963b986401c1773ef',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J96j\";i:1557694427;}',1557698027),('62fc40dd758f4eb69503de6589527cf0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r7g7\";i:1557694390;}',1557697990),('be210613cc25b555ceb56ba4263e1271',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RUff\";i:1557694390;}',1557697990),('28553bc0860d81a4c2b2de9f58af1328',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e4Qp\";i:1557694390;}',1557697990),('1d132efff34bbd1b02404ff056d569a7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jsjB\";i:1557694390;}',1557697990),('694ff89bf208d079f6b7d1792a96bbf6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ci3k\";i:1557694387;}',1557697987),('14f2e2908d024fc223dd43b8c990d7f1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fX7z\";i:1557694387;}',1557697987),('a5b0bd6ff6c35fc2df31f9f0bf3bd47d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l7Yi\";i:1557694387;}',1557697987),('4d6cedc36d8d910b82f7117b4fe7b717',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O6q2\";i:1557694284;}',1557697884),('6e05cee05a0d76670b40a2af0a6f240a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N1OL\";i:1557694284;}',1557697884),('0800adca5c6bd783a6a6b6c4d0d41c65',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hA89\";i:1557694284;}',1557697884),('67a890383e18f6076ff466ed8590803f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UmZg\";i:1557694284;}',1557697884),('e5c87859e381317c21e936b720cf3144',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IT85\";i:1557694283;}',1557697883),('05ef71ef1eb4b494aee59eb041300411',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NqZG\";i:1557694283;}',1557697883),('890ebd57a222ca124102b84fa1c04bc2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ECY7\";i:1557694283;}',1557697883),('9dde24778a3132c394ba342d43c1ad28',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rbQt\";i:1557694281;}',1557697881),('125fd10c3fddbefcba61ad6f6b16b948',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ua86\";i:1557694279;}',1557697879),('66caad1494ded8516f4b53e56a18f4e1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"px4r\";i:1557694277;}',1557697877),('f644d53cce70e7d96941e26c1c074e77',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f6y1\";i:1557694276;}',1557697876),('e5f6920d0e5244b41899ccfa935ac18e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TB9H\";i:1557694276;}',1557697876),('dc40841506d391a1690fdfdd2d896bd2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yXY3\";i:1557697210;}',1557700810),('b6a9791f6ad57a197fc389c72d2d5fd5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aXPB\";i:1557697209;}',1557700809),('102ac68eb6ba44584ae47d19aee97d0a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yv5t\";i:1557696433;}',1557700033),('725c610466bc3820075affb9ab6b2052',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N68e\";i:1557696431;}',1557700031),('7944305f4e1f38d44dc7aca9c29d6290',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OMmI\";i:1557696429;}',1557700029),('70ca5b3e300762697159ab4013323223',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WZue\";i:1557696429;}',1557700029),('2536f9e8b5ad52860ea093b6ae1de3f1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G2C6\";i:1557696428;}',1557700028),('500b086313eb3138a98b702d0298a7b6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZOmO\";i:1557696427;}',1557700027),('dab77831edd044e3ae9476ee2c5a36cf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O5id\";i:1557696427;}',1557700027),('bb9724cdf3c7ad0f3bdb73c7bd326666',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XfZp\";i:1557696407;}',1557700007),('03a1805cc40e16fca09120996d623c52',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aTzT\";i:1557696407;}',1557700007),('3cca9bc9d4dbdac2a20c6217197e3f57',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d1Gg\";i:1557696407;}',1557700007),('5c5d5e98d83ddd8f2bef59b0141e7234',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bdzp\";i:1557696395;}',1557699995),('656b07d4f712c0d4c8ad8a8fe05104a2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W0tN\";i:1557696395;}',1557699995),('d7242d1a86d22c3359d8305748c03a63',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kICX\";i:1557696395;}',1557699995),('560e1f2a34cd86cf2c18940cf27f0555',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ES3e\";i:1557696388;}',1557699988),('ef78583bb74da9f92e83dd6048988904',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LEFb\";i:1557696388;}',1557699988),('4199919857021af3c718918b797a629b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"en23\";i:1557696388;}',1557699988),('cac93214ccf57652b426895e689cdbc0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W14y\";i:1557696380;}',1557699980),('47f0bba87c345cf37164ecf7fad5ad93',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z4Jb\";i:1557696380;}',1557699980),('0d4d7079c138250a627790ed7d46cbd3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c6lM\";i:1557696380;}',1557699980),('6a24b69ebb904df04f39436d2acab846',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZCc5\";i:1557696380;}',1557699980),('0fcc867d6f617c8a85a57e7c746f715f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q2jj\";i:1557696378;}',1557699978),('0dc3b6bc94253ba313925a5cca7fa2d1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hq22\";i:1557696377;}',1557699977),('05ef771c7ccdf8fa52c0b8314d7be0da',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F2wY\";i:1557696377;}',1557699977),('c43d1ba220a6884346ffc137cdeb4bc9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sWhE\";i:1557696317;}',1557699917),('2cdfe7c70b7458af276cc9f9036f7ade',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TZcC\";i:1557696317;}',1557699917),('93e8ed4fab1b804e881258a4fb4c8d8b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pQ1q\";i:1557696317;}',1557699917),('6ff24f629f5c58544022bfb6b3f7257e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y5Dx\";i:1557696317;}',1557699917),('3983f2079ad49ec02942c5c187f0cc71',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wi7Z\";i:1557696312;}',1557699912),('2ca1cddfa87658f1f548e2af24133cdb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bo74\";i:1557696311;}',1557699911),('0fba87657163de1f3a85f983dd948e12',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ds4k\";i:1557696311;}',1557699911),('415b9d70dc99af1fe019fd076386e00d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ErM1\";i:1557696272;}',1557699872),('12e874e8717b51ccb49a6097be76db6d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fHaR\";i:1557696272;}',1557699872),('5b9193e4007501860cd5327e98f21371',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hhET\";i:1557696272;}',1557699872),('0c3053d9e98e4b5bede60f08ac6b9ef0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ual3\";i:1557696272;}',1557699872),('0532926a0946267f91048f2d86ab1782',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iJ5J\";i:1557696270;}',1557699870),('fade890c0aaf40607fa929e7cf6897f4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BZEm\";i:1557696269;}',1557699869),('24f7ee31bb92b61280340eda786db5df',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H5P7\";i:1557696269;}',1557699869),('87c1eb9ff4f847084b8c9ae035a73139',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XUW5\";i:1557696230;}',1557699830),('a4f9fc5693939b906f5e07d72e72515a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y9uu\";i:1557696230;}',1557699830),('93f754cd1f564ce70fb6d1525d647d1f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zmj8\";i:1557696230;}',1557699830),('5cf4965866c0f76042af295eec753dd5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uW1t\";i:1557696229;}',1557699829),('17433008b31e2dfa79a682a3824585e4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JwDl\";i:1557696228;}',1557699828),('279600567ea8b336b0944119100ffe07',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FBif\";i:1557696228;}',1557699828),('a37f7b883afbfd416a1297dc271a6eed',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xtfW\";i:1557696071;}',1557699671),('e713143411b273d72f27a25d02d9b7f6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xin6\";i:1557696071;}',1557699671),('e93e8c5457b63e38f34cf2a3bcd5c8ba',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K5C2\";i:1557696071;}',1557699671),('769dd9e03f010923bf9d21c1c7c28152',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D7jq\";i:1557696067;}',1557699667),('f12ea2f4897ae9600e9036ec95946c94',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HW9D\";i:1557696067;}',1557699667),('0567829cafd2cc63bd03523272cce17f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PF8h\";i:1557696066;}',1557699666),('53ef51df26b2f2cbe18ce7bff1e98bdd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qa9q\";i:1557696065;}',1557699665),('f36bb4ba71943beeff42112990a3ce5b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rClR\";i:1557696065;}',1557699665),('f0552a76761704fe1a525a6a73166caa',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bp55\";i:1557696045;}',1557699645),('abe43a8fc9da667f1af5916f3295a62d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dF54\";i:1557696045;}',1557699645),('7a1056528aea2bfbb46b1082b18484f7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rbl6\";i:1557696045;}',1557699645),('1cf09c1150d2a945d9a8ea58f928b396',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o5A4\";i:1557696041;}',1557699641),('1cab40c1fbd276d75781532202a3fe83',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LbFl\";i:1557696041;}',1557699641),('9250b0bf7c40ea0a07d7cc23bf3e24c7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U122\";i:1557696041;}',1557699641),('c38c6865596c1c08829ec8b7e4c2b5ec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r6PG\";i:1557695239;}',1557698839),('ef55ee3597e622d5738b1c733d628f70',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OFPl\";i:1557695298;}',1557698898),('dee4d62242c27b7afc944a694bbfd658',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d75n\";i:1557695298;}',1557698898),('4038ab225d5655111c35387e51cf0e72',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fcy2\";i:1557695298;}',1557698898),('d7dc4400f2d88da350fa3e24419d18b0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lH22\";i:1557695300;}',1557698900),('b54fe39c7d9a105ba0a7327d135f768c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fojD\";i:1557695300;}',1557698900),('7b48f2bb55d53b183af2a07246faedbd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KCx8\";i:1557695300;}',1557698900),('5392efc5b6d0f298301b9d44e7aed6f0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IUD8\";i:1557695300;}',1557698900),('9d58c05ac80ccad9cfb0a7360300e1c8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vg4G\";i:1557695324;}',1557698924),('b7439271e44f82a368c449d52f22202a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z2Un\";i:1557695324;}',1557698924),('f17d4ce9e655b794926c03132ab48856',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fD89\";i:1557695324;}',1557698924),('c0ddd70131e2d0c3a079eee9dd0350af',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZAPJ\";i:1557695330;}',1557698930),('c5583d3ce5c6056f618a70e413a52c7c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NuHP\";i:1557695330;}',1557698930),('881b001865943223a070d3aeb85e093b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s33r\";i:1557695330;}',1557698930),('78572e39668ef52f20db07365c9671c2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pDJ4\";i:1557695330;}',1557698930),('914cde9d124d9f20732f2ace78fbc199',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u2S5\";i:1557695430;}',1557699030),('fa7c97c38ff0c728b01115c42f78c328',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NEMO\";i:1557695430;}',1557699030),('67133ba1a9375b8b861f28ab4779f245',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M0D0\";i:1557695430;}',1557699030),('e92d060860c2a4500082a3f59240a7a8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w6jT\";i:1557695435;}',1557699035),('74c515dcb37c884810d91dc83c4a4aa6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HDaC\";i:1557695435;}',1557699035),('1e2b2ccd5c0cbf96ea14e5b93bebe416',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y24m\";i:1557695435;}',1557699035),('c8aa7520d0deef0d6f4a9cf4be72660f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yaaB\";i:1557695435;}',1557699035),('07a5a9b74bcf3aaf69fa316e99757e78',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AB15\";i:1557695720;}',1557699320),('f18ec2d13f4cf40fa771103bc15746d0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gtx6\";i:1557695720;}',1557699320),('6a8ca1578a35612a0a45807eba484fda',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vjEF\";i:1557695720;}',1557699320),('e8873afc11ad5202a4dab7dae2f12e2b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O3qo\";i:1557695723;}',1557699323),('092a5b1da9622e15ef2e04145c5cad10',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lhz0\";i:1557695723;}',1557699323),('7123f91a1e576670bf4b4951f633e42e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ToTm\";i:1557695723;}',1557699323),('67ff0e3118d124acde341df8a7dd9422',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pq6q\";i:1557695723;}',1557699323),('834530cbbe86134267bd102bbfdf17b8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MZUC\";i:1557695749;}',1557699349),('08a7a5c84a890bb961837d655e8ab391',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A8sd\";i:1557695749;}',1557699349),('3251749783177ee572fdb2c9bededb3f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZRyp\";i:1557695750;}',1557699350),('3213f26f381f8c636ce0ae075caab63f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dKNA\";i:1557695752;}',1557699352),('68abf9f8e2d5be5539b62a59648963b4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ka92\";i:1557695754;}',1557699354),('5a525d6f1e5d6fa2cc6bdc8736ba5d39',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qBo0\";i:1557695755;}',1557699355),('420c998b4fc46f9b723f1156ce5ab725',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j025\";i:1557695755;}',1557699355),('40f22c58c14b70f53bfd884b8fb5014b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Olwj\";i:1557695756;}',1557699356),('fadc822d2a719c32aa3b387fe49c2e69',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RSKR\";i:1557695756;}',1557699356),('48163e6450bb1b9eab5d698d9b660750',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oXD0\";i:1557695756;}',1557699356),('72d5892497fa36c0737217509abb3329',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Iv1N\";i:1557695756;}',1557699356),('e3ee7762943376c9bd054100663a4870',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cevu\";i:1557695756;}',1557699356),('0e0967f069a86440e79c90e6654bd6c4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V8Q9\";i:1557695762;}',1557699362),('7f6415e80af3993b85de1233e00a0480',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wfAG\";i:1557695762;}',1557699362),('3725da18c3d1e2bed2dde40eba9b8dee',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kk9k\";i:1557695762;}',1557699362),('c84b2d2c6a80eb43280c872ad7715a87',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CLHK\";i:1557695762;}',1557699362),('ce3bc251e673598dd26d3bc3b3d405dc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GFeh\";i:1557695766;}',1557699366),('adb61294f45d962c1f834d320cf70f46',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fw8r\";i:1557695766;}',1557699366),('240e31d571ccc8d0079ff9d18a21faee',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YOxF\";i:1557695766;}',1557699366),('810a8e00a4925e294548c0168558e162',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J5D8\";i:1557695768;}',1557699368),('73d7e42cdbb5df2fc293957d08e4cb9e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zywr\";i:1557695769;}',1557699369),('ac1e25b5ee2ab838137b7679b86b432e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G5S5\";i:1557695770;}',1557699370),('b15aa3c10edd1b2995f878e9fc7fc8b7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ouw3\";i:1557695770;}',1557699370),('a4d5093e061ae3cb9ec03fb2a89dd383',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gaA8\";i:1557695773;}',1557699373),('0c3d8163bcd7fb0f1ccd467169c44486',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mT9k\";i:1557695803;}',1557699403),('2a1e28ec3404a65f2f954769bacaf993',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CeEf\";i:1557695803;}',1557699403),('1c914999eee68ec6a24448314b0daaf5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ibYB\";i:1557695803;}',1557699403),('756de4a309433f610c61411ea9ba7280',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"on0m\";i:1557695809;}',1557699409),('9ec80c4256b976baa04907eadc4ddcce',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VA5D\";i:1557695809;}',1557699409),('e09fd9463560d38a7a5ae793b7ecaf73',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u8rc\";i:1557695810;}',1557699410),('ec3fdc2ca38ed6cae21359cd637e31ae',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cfb3\";i:1557695812;}',1557699412),('9d4c78d4d41fb255e1bffb7d66493901',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u8ca\";i:1557695812;}',1557699412),('8a632ebd8f093d93aaa2f69eedf6c280',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ygDc\";i:1557695812;}',1557699412),('2945c5f3a9e5e5953151d8df8a540d1e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i3j4\";i:1557695812;}',1557699412),('d32bb8e112431596f6c23075e5879146',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qyCh\";i:1557695884;}',1557699484),('087ae323b6922b698365206a3df6dbe7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ls1z\";i:1557695884;}',1557699484),('1181e3cd08483f6b88780764630716e8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ir59\";i:1557695885;}',1557699485),('55af384249ef1ce5f105087c837179b9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZAid\";i:1557695901;}',1557699501),('5873fdc530c92315ccf0809d0c24a19d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gGv2\";i:1557695900;}',1557699500),('916ba6d6cba2c841eac82b64d04f9821',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"px0c\";i:1557695901;}',1557699501),('98542f775292d8ec9b15974dacefccfe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vYmE\";i:1557695901;}',1557699501),('296f1fefa638cbcee902ef46d7727b9b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tavl\";i:1557695903;}',1557699503),('498675d133fda0ce61d37ef66113e639',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uJb5\";i:1557695976;}',1557699576),('9f67201c9b2cde69964272c2d947febe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lB2A\";i:1557695976;}',1557699576),('7f4cabd9fba403ddb338e742afb07aee',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"evw2\";i:1557695976;}',1557699576),('b5eca11b5784aa0c266f4cbf8438398f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oBJn\";i:1557695992;}',1557699592),('7ea21eefc6afb320f0ee6979587f3f42',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tV72\";i:1557695992;}',1557699592),('c6ab1dde7c0e81f2058605b038bbe521',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V1nU\";i:1557695992;}',1557699592),('f8e1fb7bdb1aac517408e3ce0586179b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FWnY\";i:1557695992;}',1557699592),('38bdb4f8b3b1b4e476afd8bc3977b242',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bi2C\";i:1557696017;}',1557699617),('3ece9bdcb9a02bf66cd8b105930b1a8c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KzMA\";i:1557696017;}',1557699617),('52f52241cf8f4985f07694f460542296',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mB4r\";i:1557696017;}',1557699617),('f14fb4daf77e083f5fc100044ed1c754',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QOTh\";i:1557696029;}',1557699629),('41d7b1d165d2ce7ec00bb0717bc7be48',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j99z\";i:1557696031;}',1557699631),('1861a20f1a2ca346b4fa62e753398d5a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MSoq\";i:1557696039;}',1557699639),('84467459dabf23d214403855005d166c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e6Sb\";i:1557696039;}',1557699639),('b893cc69ae234e5b7460fd31f971a1b5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T216\";i:1557696039;}',1557699639),('60cabb53f19267ac7d0b0188d3815030',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qP2b\";i:1557696041;}',1557699641);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_baby`
--

LOCK TABLES `ims_hr_album_baby` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_baby` DISABLE KEYS */;
INSERT INTO `ims_hr_album_baby` VALUES (1,2,'ouTc44yr9HR7Mh15n-PhzARr2wHk','刘靖','https://mdcdn.iamlj.com/images/2/hr_album/2019-05-03/baby-simple.jpg','刘小靖的头像','刘小靖','1',546,100,0,1,1,1556720660,3,1,'小龙人幼儿园','大班',0),(2,NULL,NULL,NULL,'images/2/hr_album/2019-05-11/RDpD4a3WGXlxU2Q4g2rmUMll4Dma4A.png',NULL,'3','4',NULL,NULL,0,0,0,1557540725,1557528049,1557445598,'2','333',2),(3,NULL,NULL,NULL,'images/2/hr_album/2019-05-11/cDtGDkikSFinOfsSsODoyDONd5S555.png',NULL,'2','3',NULL,NULL,0,0,0,1557571333,1557528050,1556720661,'小龙人幼儿园2','中班',1);
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
INSERT INTO `ims_hr_album_data` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','送上我亲手制作的相册，快看看吧','qiangwei','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png\";}}','http://dl.stream.qqmusic.qq.com/C1000003FhfU2GR1tu.m4a?fromtag=0',4,0,'',0,1,0,1556720660),(2,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，SADASDAS','shiguang','a:1:{i:0;a:2:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/n2SH07hsqUdq279q79zqFqqn4Noqln.jpg\";s:4:\"text\";s:0:\"\";}}','http://dl.stream.qqmusic.qq.com/C100004TSZYg2HaHQi.m4a?fromtag=0',2,0,'',0,1,0,1556726053),(3,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556726138),(4,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/fZNbiV2OymfziBIF8m0nnIFif344Yo.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,1,0,1556726164),(5,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/rbiR03BWS035h0I53iOo5723PS735i.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,1,0,1556726206),(6,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/NeZVbXK66EKqyWve9B7MKBBCZi7kXB.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728235),(7,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/Bnu7g0577l47N4IrFwJKunrO7GkOj4.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728253),(8,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/pKqDl9iLzx6E9e5QeK95QDGzL9kg9L.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728365),(9,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019/05/02/S1okoPL3dssoPOlHlm0oHF0OdOrw1S.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,0,0,1556728453),(10,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/WIzqk2XOsyKQX5Os5FZWf7aVyYzlsI.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',4,0,'',0,1,0,1556734332),(11,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/vUNFJL0L93349NJH3zjfuzJ9tJ93w3.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',4,0,'',0,1,0,1556734347),(12,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:2:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/lA6CavcUuAl6al6KPY8Sl8sKwCcp8Y.png\";}i:1;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/D3Cc06QCCZblCQWb8WBbzLAlIIBIAW.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556805120),(13,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/G6vEed2MMvi6vxeXgDvN2nx0dVXg66.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556807335),(14,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/xvxxKxPvPvVV7gGD0D0VYgVx0lV7kX.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556807427),(15,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/zYypyN40Hyg0cNWpf0CynxFynfWf4R.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556807992),(16,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/atj2eTJn2QwpNCP2qpmBNzctEPC6qc.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556809300),(17,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:107:\"http://tmp/wx27fc7192979a4e38.o6zAJsw3bkHShZ_GO_RYlrSHOWzg.0QFOp3DzPtN8c428e702665098bfcf750f6194c7b24f.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,1,0,1556845940),(18,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:107:\"http://tmp/wx27fc7192979a4e38.o6zAJsw3bkHShZ_GO_RYlrSHOWzg.bd3tBQOiWUMoc428e702665098bfcf750f6194c7b24f.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',0,0,'',0,0,0,1556850008);
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_photos`
--

LOCK TABLES `ims_hr_album_photos` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_photos` DISABLE KEYS */;
INSERT INTO `ims_hr_album_photos` VALUES (14,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-04','2019-05-04 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,1,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(15,2,'1','2019-05-04','2019-05-04 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(16,2,'1','2019-05-05','2019-05-05 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,2,1,'',1,'小龙人幼儿园2','大班','刘小靖'),(17,2,'1','2019-05-05','2019-05-05 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,2,1,'',1,'小龙人幼儿园2','大班','刘小靖'),(18,2,'1','2019-05-05','2019-05-05 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,2,3,'',1,'小龙人幼儿园2','大班','刘小靖3'),(19,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-02','2019-05-02 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,1,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(20,2,'1','2019-05-02','2019-05-02 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,2,3,'',1,'小龙人幼儿园2','大班','刘小靖3'),(22,2,'1','2019-05-02','2019-05-02 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(24,2,'1','2019-05-05','2019-05-05 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,3,3,'',1,'小龙人幼儿园2','大班','刘小靖3'),(25,2,'1','2019-05-06','2019-05-06 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,3,3,'',1,'小龙人幼儿园2','大班','刘小靖3'),(1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(4,2,'1','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(13,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/n2SH07hsqUdq279q79zqFqqn4Noqln.jpg',0,0,1,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(5,2,'1','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,2,1,'',1,'小龙人幼儿园2','大班','刘小靖'),(6,2,'1','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,2,1,'',1,'小龙人幼儿园2','大班','刘小靖'),(7,2,'1','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,2,3,'',1,'小龙人幼儿园2','大班','刘小靖3'),(12,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(8,2,'1','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,1,1,1,1556720660,2,3,'',1,'小龙人幼儿园2','大班','刘小靖3'),(3,2,'1','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(11,2,'1','2019-05-03','2019-05-03 照片','刘小靖的照片','images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖'),(10,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','2019-05-04','2019-05-04 照片','刘小靖的照片','images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg',0,0,0,1,1,1556720660,3,1,'',1,'小龙人幼儿园','大班','刘小靖');
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_school_class`
--

LOCK TABLES `ims_hr_album_school_class` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_school_class` DISABLE KEYS */;
INSERT INTO `ims_hr_album_school_class` VALUES (1,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,NULL),(3,'小龙人幼儿园',1557528050,'小龙人幼儿园2','上海市杨浦区军工路 100 号','',1557528049,'images/2/hr_album/2019-05-10/ywC9HPzPjLvMmMPok9PJM8cAopCZh9.png',2,0,NULL),(10,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','小班',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,1556720660),(11,'小龙人幼儿园',1557528050,'小龙人幼儿园2','上海市杨浦区军工路 100 号','中班',1557528049,'images/2/hr_album/2019-05-10/ywC9HPzPjLvMmMPok9PJM8cAopCZh9.png',2,0,1557528049),(12,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','中班',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,1556720661),(13,'小龙人幼儿园',1557528050,'小龙人幼儿园2','上海市杨浦区军工路 100 号','大班',1557528049,'images/2/hr_album/2019-05-10/ywC9HPzPjLvMmMPok9PJM8cAopCZh9.png',2,0,1557528050),(14,'',1557570601,'龙阳路幼儿园1','龙阳路 100 号1','',1557570601,'images/2/hr_album/2019-05-11/F8m5OoojE80X2K1O8Du5zsKvXMEU1K.png',31,0,NULL),(15,'',1557528050,'小龙人幼儿园2','','31231',1557571310,NULL,313,0,1557571310);
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
  `phone` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_uniacid` (`uniacid`),
  KEY `index_openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_user`
--

LOCK TABLES `ims_hr_album_user` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_user` DISABLE KEYS */;
INSERT INTO `ims_hr_album_user` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132',0.00,0,0,1556720634,'1',NULL,NULL),(5,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','https://wx.qlogo.cn/mmopen/vi_32/hAnkVF6mvYGqzBgg16pZfGCgPxA3Vo6UZ59rTVHichKk58QFcxmJUnGNoA1qUPbqIyrOF5npm1ibYnXSjwabymFA/132',0.00,0,0,1557581471,NULL,NULL,NULL),(7,2,'ouTc44yr9HR7Mh15n-PhzARr2wHk','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erAZEcrzfZNCaMqWRnncZeu4jpDW1W2fJicmEOm95L67Sjw092I6CNToPIXUb42JsPvM8yzOIUC2GA/132',0.00,0,0,1557589421,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_message_notice_log`
--

LOCK TABLES `ims_message_notice_log` WRITE;
/*!40000 ALTER TABLE `ims_message_notice_log` DISABLE KEYS */;
INSERT INTO `ims_message_notice_log` VALUES (1,'user_12019-05-09 18:01:24注册成功',1,2,'2',4,2,1557396084,0),(2,'admin即将过期',1,1,'1',7,NULL,1557438872,1557438578),(3,'admin即将过期',1,1,'1',7,NULL,1557446577,1557438887);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users`
--

LOCK TABLES `ims_users` WRITE;
/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,1,0,'admin','adb46dfe405dcc1269875ec5db85c51eb4693f89','YMm965CZ',0,0,1557570721,'127.0.0.1',1557570726,'127.0.0.1','127.0.0.1',1557570721,1557570721,0,'',0,1557528050,'小龙人幼儿园2',3,'','2147483647','管理员',2),(2,0,1,0,'liujing1','5816240b7be9d099f994ad300b0727f715e81b8d','KH4WH4kK',0,0,1557571283,'127.0.0.1',1557571283,'127.0.0.1','127.0.0.1',1557571283,1557571283,0,'',0,1557528050,'小龙人幼儿园2',0,'','18801732070','刘靖2',4),(4,0,1,0,'4','389216fa3c85a5addc75ba8547750bfceaaa806e','RQ9V7YC3',0,0,1557551967,'127.0.0.1',1557551967,'127.0.0.1','127.0.0.1',1557551967,1557551967,0,'',0,1557528050,'小龙人幼儿园2',0,'','3','2',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_failed_login`
--

LOCK TABLES `ims_users_failed_login` WRITE;
/*!40000 ALTER TABLE `ims_users_failed_login` DISABLE KEYS */;
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

-- Dump completed on 2019-05-13  5:55:26
