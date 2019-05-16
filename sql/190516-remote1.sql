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
INSERT INTO `ims_core_cache` VALUES ('setting','a:10:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";s:0:\"\";s:7:\"cloudip\";a:0:{}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:18:\"module_receive_ban\";a:0:{}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}}'),('system_frame','a:10:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:3:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"phoneapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:11:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:53:\"./index.php?c=module&a=manage-system&system_welcome=1\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=5\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=6\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:4:\"site\";a:8:{s:5:\"title\";s:12:\"站点管理\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:4:\"help\";a:9:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}}'),('userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('module_receive_enable','a:0:{}'),('we7::site_store_buy_1','a:0:{}'),('we7:module_info:basic','a:31:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/basic/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:news','a:31:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:54:\"https://md.iamlj.com/addons/news/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:music','a:31:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/music/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:userapi','a:31:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:143:\"自定义接口又称第三方接口，可以让开发者更方便的接入RubySn0w系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"https://md.iamlj.com/addons/userapi/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:recharge','a:31:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/recharge/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:custom','a:31:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/custom/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:images','a:31:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/images/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:video','a:31:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/video/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:voice','a:31:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/voice/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:chats','a:31:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/chats/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:wxcard','a:31:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/wxcard/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:store','a:31:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:20:\"http://www.baidu.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/store/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('unisetting:1','a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}'),('uniaccount:1','a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:61:\"https://md.iamlj.com/attachment/headimg_1.jpg?time=1556718804\";s:6:\"qrcode\";s:60:\"https://md.iamlj.com/attachment/qrcode_1.jpg?time=1556718804\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:module:all_uninstall','a:2:{s:6:\"expire\";i:1557420178;s:4:\"data\";a:7:{s:13:\"cloud_m_count\";N;s:7:\"modules\";N;s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;s:12:\"webapp_count\";i:0;s:14:\"phoneapp_count\";i:0;s:13:\"welcome_count\";i:0;}}'),('we7:unimodules::','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:all_cloud_upgrade_module:','a:2:{s:6:\"expire\";i:1556720604;s:4:\"data\";a:0:{}}'),('we7:uni_group','a:2:{i:2;a:9:{s:2:\"id\";s:1:\"2\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:4:\"tech\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:0:\"\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:1:{i:0;s:8:\"hr_album\";}}i:1;a:9:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:2:\"N;\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}'),('we7:user_modules:1','a:13:{i:0;s:8:\"hr_album\";i:1;s:5:\"store\";i:2;s:6:\"wxcard\";i:3;s:5:\"chats\";i:4;s:5:\"voice\";i:5;s:5:\"video\";i:6;s:6:\"images\";i:7;s:6:\"custom\";i:8;s:8:\"recharge\";i:9;s:7:\"userapi\";i:10;s:5:\"music\";i:11;s:4:\"news\";i:12;s:5:\"basic\";}'),('unisetting:2','a:0:{}'),('uniaccount:2','a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"i1p1GgHDC6GGVIZHzbhHBiNs0gg1pbG1\";s:14:\"encodingaeskey\";s:43:\"oxiILGyQvnvZvWLjqTZMUpTrZWB99GJylPgrVpiBmmd\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:15:\"gh_599f6442e255\";s:3:\"key\";s:18:\"wxf9c6940d828e7ea3\";s:6:\"secret\";s:32:\"1578bfff06cf77e96113e820f40c8f58\";s:4:\"name\";s:12:\"蒙大教育\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxf9c6940d828e7ea3\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:66:\"https://a.chinajinglu.com/attachment/headimg_2.jpg?time=1557412893\";s:6:\"qrcode\";s:65:\"https://a.chinajinglu.com/attachment/qrcode_2.jpg?time=1557412893\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:lastaccount:oJ0X7','a:1:{s:5:\"wxapp\";i:2;}'),('we7:$cache_last_account_type','s:7:\"account\";'),('we7:2:site_store_buy_4','a:0:{}'),('we7:unimodules:2:1','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:wxapp_version:1','a:16:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:3:\"1.0\";s:11:\"description\";s:5:\"1.0.3\";s:7:\"modules\";a:1:{i:0;a:38:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/hr_album/icon.jpg?v=1556718813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:8:\"shortcut\";N;s:7:\"account\";N;s:12:\"cover_entrys\";a:0:{}s:12:\"defaultentry\";N;s:7:\"newicon\";N;}}s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1556719643\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}'),('we7:unimodules:2:','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('accesstoken:wxe7bc1c3c7a9ff198','a:2:{s:5:\"token\";s:136:\"21_FDPoAsbmiix-i-c-ROvos0iLaX0h2uSBmHmMvLE7Pm7fvg-x5sQfIbGcM2wpF41dkWxEr6-prQ0_ebm2SCoM4UUFXi4X0p3M6SAK0PX6swmL8nP8o62wqO9jO-sZGChAIAHOK\";s:6:\"expire\";i:1557417228;}'),('we7:module_setting:2:hr_album','a:7:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:6:\"module\";s:8:\"hr_album\";s:7:\"enabled\";s:1:\"1\";s:8:\"settings\";s:985:\"a:20:{s:9:\"spacename\";N;s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:13:\" 蒙大教育\";s:8:\"deftitle\";N;s:8:\"baseskin\";N;s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:0;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:0;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"7iwhgo8Q80SKa3owzd8IhmmP9a5RoQmCfq5Pa0v0\";s:9:\"secretkey\";s:40:\"IQ4Ug2fNCh1mXRWHYVQgwf-ZWfJ5vtgWuS5BGhTF\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:25:\"https://c.chinajinglu.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";N;s:8:\"sharepic\";N;s:4:\"kfbg\";N;s:6:\"morebg\";N;s:6:\"ishare\";N;s:5:\"isico\";N;s:8:\"wxyellow\";N;s:5:\"ispay\";N;s:6:\"dsdesc\";N;s:5:\"llads\";N;s:4:\"iskf\";N;s:7:\"paydesc\";N;s:10:\"list_style\";N;s:10:\"templateid\";N;}\";s:8:\"shortcut\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";}'),('we7:lastaccount:uA9ZO','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:ty7yZ','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:2:site_store_buy_6','i:0;'),('accesstoken:wxf9c6940d828e7ea3','a:2:{s:5:\"token\";s:157:\"21_xixz_yu-c9ZweL0hKawczne6B7cC3ez8Sl5aEdJhh82yL3VJYmo2yhqOIkb1bOJggI1huhxr0BmH6DzuWqXwPYpWAbtc9kr5j3pRLtk328USpkS4iJrb2cfYL0rBpuiKf9YFWh1wQg7eUKC1DNJiAAAPZV\";s:6:\"expire\";i:1557881517;}'),('we7:module_info:hr_album','a:31:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:63:\"https://a.chinajinglu.com/addons/hr_album/icon.jpg?v=1557543723\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:lastaccount:smVmX','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:hey6n','a:1:{s:5:\"wxapp\";i:2;}'),('we7:lastaccount:j3wQ1','a:1:{s:5:\"wxapp\";i:2;}'),('we7:lastaccount:o5WTU','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:ELLLy','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:D6pP9','a:1:{s:5:\"wxapp\";i:2;}'),('we7:permission:2:5','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}'),('we7:permission:2:7','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}'),('we7:permission:2:9','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}'),('we7:permission:2:8','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}'),('we7:permission:2:10','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}'),('we7:permission:2:11','a:24:{s:7:\"account\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:4:\"auth\";i:1;s:7:\"welcome\";}s:12:\"vice_founder\";a:1:{i:0;s:8:\"account*\";}s:5:\"owner\";a:1:{i:0;s:8:\"account*\";}s:7:\"manager\";a:5:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";i:3;s:9:\"post-user\";i:4;s:4:\"post\";}s:8:\"operator\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:9:\"post-step\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:13:\"advertisement\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"article\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:2:{i:0;s:11:\"notice-show\";i:1;s:9:\"news-show\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"message\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:6:\"notice\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"cloud\";a:8:{s:7:\"default\";s:5:\"touch\";s:6:\"direct\";a:2:{i:0;s:5:\"touch\";i:1;s:4:\"dock\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"cron\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:7:\"founder\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:0:{}s:5:\"owner\";a:0:{}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"help\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"help*\";}s:5:\"owner\";a:1:{i:0;s:5:\"help*\";}s:7:\"manager\";a:1:{i:0;s:5:\"help*\";}s:8:\"operator\";a:1:{i:0;s:5:\"help*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"home\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:5:\"home*\";}s:5:\"owner\";a:1:{i:0;s:5:\"home*\";}s:7:\"manager\";a:1:{i:0;s:5:\"home*\";}s:8:\"operator\";a:1:{i:0;s:5:\"home*\";}s:5:\"clerk\";a:1:{i:0;s:7:\"welcome\";}s:11:\"unbind_user\";a:0:{}}s:2:\"mc\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:3:\"mc*\";}s:5:\"owner\";a:1:{i:0;s:3:\"mc*\";}s:7:\"manager\";a:4:{i:0;s:5:\"chats\";i:1;s:6:\"fields\";i:2;s:5:\"group\";i:3;s:5:\"trade\";}s:8:\"operator\";a:1:{i:0;s:3:\"mc*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"module\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"module*\";}s:5:\"owner\";a:5:{i:0;s:14:\"manage-account\";i:1;s:13:\"manage-system\";i:2;s:10:\"permission\";i:3;s:7:\"display\";i:4;s:13:\"default-entry\";}s:7:\"manager\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:8:\"operator\";a:2:{i:0;s:14:\"manage-account\";i:1;s:7:\"display\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:8:\"platform\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"platform*\";}s:5:\"owner\";a:1:{i:0;s:9:\"platform*\";}s:7:\"manager\";a:3:{i:0;s:5:\"cover\";i:1;s:5:\"reply\";i:2;s:8:\"material\";}s:8:\"operator\";a:1:{i:0;s:9:\"platform*\";}s:5:\"clerk\";a:3:{i:0;s:5:\"reply\";i:1;s:5:\"cover\";i:2;s:8:\"material\";}s:11:\"unbind_user\";a:0:{}}s:7:\"profile\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:8:\"profile*\";}s:5:\"owner\";a:1:{i:0;s:8:\"profile*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:1:{i:0;s:8:\"profile*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:4:\"site\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:1:{i:0;s:5:\"entry\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"site*\";}s:5:\"owner\";a:1:{i:0;s:5:\"site*\";}s:7:\"manager\";a:6:{i:0;s:6:\"editor\";i:1;s:7:\"article\";i:2;s:8:\"category\";i:3;s:5:\"style\";i:4;s:3:\"nav\";i:5;s:5:\"slide\";}s:8:\"operator\";a:1:{i:0;s:5:\"site*\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:10:\"statistics\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:11:\"statistics*\";}s:5:\"owner\";a:1:{i:0;s:11:\"statistics*\";}s:7:\"manager\";a:0:{}s:8:\"operator\";a:0:{}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:5:\"store\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"owner\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:7:\"manager\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:8:\"operator\";a:2:{i:0;s:11:\"goods-buyer\";i:1;s:6:\"orders\";}s:5:\"clerk\";a:0:{}s:11:\"unbind_user\";a:0:{}}s:6:\"system\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:3:{i:0;s:8:\"template\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"owner\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:7:\"manager\";a:2:{i:0;s:11:\"updatecache\";i:1;s:9:\"workorder\";}s:8:\"operator\";a:3:{i:0;s:7:\"account\";i:1;s:11:\"updatecache\";i:2;s:9:\"workorder\";}s:5:\"clerk\";a:1:{i:0;s:9:\"workorder\";}s:11:\"unbind_user\";a:0:{}}s:4:\"user\";a:8:{s:7:\"default\";s:7:\"display\";s:6:\"direct\";a:5:{i:0;s:5:\"login\";i:1;s:8:\"register\";i:2;s:6:\"logout\";i:3;s:13:\"find-password\";i:4;s:10:\"third-bind\";}s:12:\"vice_founder\";a:1:{i:0;s:5:\"user*\";}s:5:\"owner\";a:1:{i:0;s:7:\"profile\";}s:7:\"manager\";a:1:{i:0;s:7:\"profile\";}s:8:\"operator\";a:1:{i:0;s:7:\"profile\";}s:5:\"clerk\";a:1:{i:0;s:7:\"profile\";}s:11:\"unbind_user\";a:0:{}}s:5:\"wxapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:6:\"wxapp*\";}s:5:\"owner\";a:1:{i:0;s:6:\"wxapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:7:\"version\";i:2;s:4:\"post\";}s:8:\"operator\";a:4:{i:0;s:7:\"display\";i:1;s:7:\"payment\";i:2;s:4:\"post\";i:3;s:7:\"version\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}s:11:\"unbind_user\";a:0:{}}s:6:\"webapp\";a:8:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:7:\"webapp*\";}s:5:\"owner\";a:1:{i:0;s:7:\"webapp*\";}s:7:\"manager\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:8:\"operator\";a:2:{i:0;s:4:\"home\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:4:\"home\";}s:11:\"unbind_user\";a:0:{}}s:8:\"phoneapp\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:0:{}s:12:\"vice_founder\";a:1:{i:0;s:9:\"phoneapp*\";}s:5:\"owner\";a:1:{i:0;s:9:\"phoneapp*\";}s:7:\"manager\";a:3:{i:0;s:7:\"display\";i:1;s:6:\"manage\";i:2;s:7:\"version\";}s:8:\"operator\";a:2:{i:0;s:7:\"display\";i:1;s:6:\"manage\";}s:5:\"clerk\";a:1:{i:0;s:7:\"display\";}}s:7:\"utility\";a:7:{s:7:\"default\";s:0:\"\";s:6:\"direct\";a:8:{i:0;s:10:\"verifycode\";i:1;s:4:\"code\";i:2;s:4:\"file\";i:3;s:8:\"bindcall\";i:4;s:9:\"subscribe\";i:5;s:6:\"wxcode\";i:6;s:7:\"modules\";i:7;s:4:\"link\";}s:12:\"vice_founder\";a:2:{i:0;s:4:\"user\";i:1;s:8:\"emulator\";}s:5:\"owner\";a:1:{i:0;s:8:\"emulator\";}s:7:\"manager\";a:1:{i:0;s:8:\"emulator\";}s:8:\"operator\";a:1:{i:0;s:8:\"emulator\";}s:11:\"unbind_user\";a:0:{}}s:6:\"append\";a:1:{i:0;s:7:\"append*\";}s:13:\"see_more_info\";a:6:{s:7:\"founder\";a:26:{i:0;s:41:\"see_module_manage_system_except_installed\";i:1;s:31:\"see_module_manage_system_ugrade\";i:2;s:29:\"see_module_manage_system_stop\";i:3;s:32:\"see_module_manage_system_install\";i:4;s:33:\"see_module_manage_system_shopinfo\";i:5;s:34:\"see_module_manage_system_info_edit\";i:6;s:35:\"see_module_manage_system_detailinfo\";i:7;s:34:\"see_module_manage_system_group_add\";i:8;s:47:\"see_account_post_modules_tpl_edit_store_endtime\";i:9;s:44:\"see_account_manage_module_tpl_all_permission\";i:10;s:29:\"see_account_manage_sms_blance\";i:11;s:29:\"see_account_manage_users_edit\";i:12;s:32:\"see_account_manage_users_adduser\";i:13;s:37:\"see_account_manage_users_add_viceuser\";i:14;s:18:\"see_system_upgrade\";i:15;s:23:\"see_system_manage_clerk\";i:16;s:30:\"see_system_manage_user_setting\";i:17;s:30:\"see_system_manage_vice_founder\";i:18;s:27:\"see_system_add_vice_founder\";i:19;s:15:\"see_notice_post\";i:20;s:35:\"see_module_manage_system_newversion\";i:21;s:31:\"see_user_edit_base_founder_name\";i:22;s:32:\"see_user_create_own_vice_founder\";i:23;s:30:\"see_user_profile_edit_username\";i:24;s:28:\"see_user_profile_account_num\";i:25;s:28:\"see_user_add_welcome_account\";}s:12:\"vice_founder\";a:3:{i:0;s:32:\"see_account_manage_users_adduser\";i:1;s:34:\"see_module_manage_system_group_add\";i:2;s:28:\"see_user_add_welcome_account\";}s:5:\"owner\";a:0:{}s:7:\"manager\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:8:\"operator\";a:1:{i:0;s:24:\"see_user_profile_welcome\";}s:5:\"clerk\";a:0:{}}}'),('we7:lastaccount:C7HVu','a:1:{s:5:\"wxapp\";i:2;}'),('we7:2:site_store_buy_1','a:0:{}'),('we7:2:site_store_buy_5','a:0:{}'),('we7:lastaccount:voTa4','a:1:{s:7:\"account\";i:1;}');
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
INSERT INTO `ims_core_sessions` VALUES ('da3742e5e531f2ba4590e64da57e345f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Gq2a\";i:1557976967;}',1557980567),('6786b5426bd7db68dc71f35bb25b4d6d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y9nw\";i:1557976970;}',1557980570),('1aefa21e9032142f0693e16d9678b365',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fwwO\";i:1557976852;}',1557980452),('76155d466311ec86979e2c54755fcd21',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zeEZ\";i:1557976901;}',1557980501),('ba8c5fa5a2972cd580af9c6f50699ca6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HqlI\";i:1557976901;}',1557980501),('3919f1165e202f7ecd667d6c650d1ced',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SSoo\";i:1557976902;}',1557980502),('3c2b71f7c697c3b80830528c89f3937a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DR6E\";i:1557976715;}',1557980315),('0db78f4f37c854ca0be4f6e468d27758',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hnsh\";i:1557976847;}',1557980447),('708938e3eca21ba06d296652d16e6e7c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UFyB\";i:1557976847;}',1557980447),('db742fa91d01fce062fd2f5783b3bb31',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KLfp\";i:1557976849;}',1557980449),('df9774ac46affd9bbc1b6edc6d187b61',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M3ib\";i:1557976585;}',1557980185),('fc006e3d795e76a40cfbed1033f64ee4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m755\";i:1557976685;}',1557980285),('91830b12756fc4d6d8fecbe8af1608d0',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a1PD\";i:1557976685;}',1557980285),('f8ceb988a7d3a92afc4c15e57eada5ae',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PBf5\";i:1557976685;}',1557980285),('f5abf927267ca0abaaf6a33aac7114c7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CJT7\";i:1557976714;}',1557980314),('6594779e077ae42b655883bb6b983503',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sDXG\";i:1557975840;}',1557979440),('dbd2d643a61a3c599917cc67884efe69',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h2Ty\";i:1557975841;}',1557979441),('2845d4fee2e7ba54440a18a1c79b135b',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DA3q\";i:1557975847;}',1557979447),('017cc0da15180264ede9c6013352269c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kE4J\";i:1557975847;}',1557979447),('3e48735602b9d67e2ed105a89613ac92',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DSEx\";i:1557975848;}',1557979448),('a8608018723fe60ff1334ae4ecbb1bf0',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lwJX\";i:1557975848;}',1557979448),('c91e6756b815960ef45d005ffe3a16f1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BoS8\";i:1557975849;}',1557979449),('1767c0c63d95f2dd911c94927cfc72da',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l2BO\";i:1557975849;}',1557979449),('14bf78da078d12fad4e22d68b545737e',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BrBm\";i:1557975849;}',1557979449),('7e785a95bdbad754f31c13d3d5445e9a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C4vz\";i:1557975851;}',1557979451),('cebfdc32338fb29eae9ff29632675bc2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EC11\";i:1557975851;}',1557979451),('9b39769c686f59e660b4949f8ea89a91',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qx9D\";i:1557975872;}',1557979472),('6ae1f1c333ad8471f446dded00199f35',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D8Yx\";i:1557975872;}',1557979472),('f66f7d03464da664cf0aab4995fd44bf',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O5Om\";i:1557975945;}',1557979545),('cbf8e79dbc3d8be0f8f90ea249459da7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kc8a\";i:1557975948;}',1557979548),('b66f86ca7fde56bc59e506825067c0a0',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nVvU\";i:1557975948;}',1557979548),('1301f029e4e53f8f57c56eae081f867a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n0eI\";i:1557975951;}',1557979551),('b1b349529e3cee5382bc28555d98ee73',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N875\";i:1557975951;}',1557979551),('a018f682e808ef3d1db95a3c87349b8f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hrh1\";i:1557976286;}',1557979886),('89cdaae3da0bc5e04d804f539341ec44',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uIpI\";i:1557976286;}',1557979886),('f708da3bd5026a62fe7260c6109066c4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rczO\";i:1557976287;}',1557979887),('4ee0bf67bcd088e0502555cb47381d01',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AYe4\";i:1557976301;}',1557979901),('833c5d3893923b59981141abf6a9a910',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bBa4\";i:1557976301;}',1557979901),('d9b083b4158193168bf75c65a049c433',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uMUs\";i:1557976302;}',1557979902),('fcb6204e2529eea5385f0aad896a9108',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f2B2\";i:1557976324;}',1557979924),('f0b193bd6a965235aee8b80f6fe6ff8b',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Srhs\";i:1557976324;}',1557979924),('7c62a148715a20c5ca0bcb8cbe003c22',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m53l\";i:1557976324;}',1557979924),('179c38a09579626aae7b6d68e0ba58d7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gxyA\";i:1557976376;}',1557979976),('0bf39d6a8c10b7c0fb84badeb8ae5121',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v353\";i:1557976379;}',1557979979),('8e8da9a91fba988ca3cea7d11aa50c30',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NLm8\";i:1557976379;}',1557979979),('642410e9bdb7acb77036e09cf41c597d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rq8z\";i:1557976380;}',1557979980),('331a59016596529f00812a7783a6461d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UqjF\";i:1557976398;}',1557979998),('634d83903f412ba5b9c9eaacd9bb9521',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v56S\";i:1557976399;}',1557979999),('88c6a3911f3b9ba7fdbeac07c34dcdcf',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OR6G\";i:1557976399;}',1557979999),('a2307e719f4f2195cb758e051214fb2f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V4w3\";i:1557976399;}',1557979999),('518fd2d551ca3d29b59b2b1a453a56fd',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Diau\";i:1557976399;}',1557979999),('d373037b7bea71c322097b5f2a2f7184',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uldP\";i:1557976407;}',1557980007),('988a1f5eb7e68f2ff2cfa4301617a329',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cyZw\";i:1557976410;}',1557980010),('ae86072798263bf217d7da431aac87db',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Iv72\";i:1557976410;}',1557980010),('acc8cd1b7eea201d799ec176a72967c2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YZNB\";i:1557976410;}',1557980010),('9849f8706c1545b40f06190ace442b94',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"syRw\";i:1557976410;}',1557980010),('f0c0a2ad6a35c8baac5a64bbc7333387',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xd6E\";i:1557976419;}',1557980019),('b82351dbba09652a420cce1e8328d416',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cwh1\";i:1557976424;}',1557980024),('ade6d24d8296453d2d508262cdb5751a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uIhq\";i:1557976424;}',1557980024),('916c3759fd492cb0e5640b302ab2233b',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C5oD\";i:1557976424;}',1557980024),('a9b1f2d1c97b695bc108172b5cf931ee',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TP11\";i:1557975840;}',1557979440),('9deeba9884545707f77277ad995fc68d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l0C8\";i:1557975840;}',1557979440),('92381e882ed8ebf6cde355ef9f887643',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yw11\";i:1557975840;}',1557979440),('b9a9be1e48987b1c9213968d4c321bea',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HWz8\";i:1557975836;}',1557979436),('d9e6bfcba1905a0ab1cbc1e177628f79',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"us6d\";i:1557975836;}',1557979436),('9aeae8db740c783fa959823815359113',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PF18\";i:1557975836;}',1557979436),('ef739e53a5a37ff416c60374980b9702',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dr3J\";i:1557975835;}',1557979435),('f4a52f089be3d278a42161fb1507e45b',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JJ0S\";i:1557975835;}',1557979435),('41aa1cdf8d84f7accfde77b9dc9ab551',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f1AE\";i:1557975833;}',1557979433),('efec77ac10bda9b2d0dc720920befc5f',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HFfG\";i:1557970714;}',1557974314),('edcaa8a6e94b4f6470bfda37dc6acbe4',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nQtr\";i:1557970714;}',1557974314),('4118aac6d541a03fe327551e7f3809ba',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F39c\";i:1557970714;}',1557974314),('ddd45685fb7fab83a6c13134d5d25e19',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZDoC\";i:1557973075;}',1557976675),('e695e53ee10f761f63258f3457d141b5',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E6Jl\";i:1557973088;}',1557976688),('cb62a3a02f5f747d008e57325459f8e2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j77K\";i:1557973088;}',1557976688),('6ef41f574d8a6d43f6bacfb2905d4834',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pPpY\";i:1557973088;}',1557976688),('b831979b436f1db39032ed76540aee24',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jrXo\";i:1557973132;}',1557976732),('b49c756b5615fe673f87b9c92197ff7f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jnup\";i:1557973132;}',1557976732),('2d3411ccaed366978565613cd7033802',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lsad\";i:1557973164;}',1557976764),('df0a292b6232c70656998b3495ee6ae5',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OLDl\";i:1557973169;}',1557976769),('8a94fd529d5e81c581727bc4a24dc4d4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g9HK\";i:1557973169;}',1557976769),('1b50b810ba449ac7b7a2b026c458cba7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I31M\";i:1557973206;}',1557976806),('0d4bfb6fcc908be7825311d6110b8634',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"maTf\";i:1557973230;}',1557976830),('e32f0047401f723707a32b61796c97a2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RmC3\";i:1557973230;}',1557976830),('09e30350e85e749496f746a194d58e38',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"edAm\";i:1557973230;}',1557976830),('01e9a749c6780764bd21464b13e0b02a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Okk1\";i:1557973513;}',1557977113),('e967a367f46a38282b8ee5e146d843b7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p1RE\";i:1557973516;}',1557977116),('9e08af7fe9d002c18f7b0c801488170d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wgbQ\";i:1557973528;}',1557977128),('6f833e9db4d726f6abc20ad6e9f16d16',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HzUq\";i:1557973534;}',1557977134),('32ac3874b731c1e1fad32d0afe9f3048',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FPXX\";i:1557973550;}',1557977150),('06adb8ea9c4678769d1064512a69eca1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hk7w\";i:1557973570;}',1557977170),('afc899189f8963ef05d4ef8c281d342d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ef4G\";i:1557973577;}',1557977177),('ea78d39e09518d4678a60925b6b8c3d4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QE7J\";i:1557973577;}',1557977177),('3a41610b9e6616b016376dd1c8487c3d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M2ZY\";i:1557973578;}',1557977178),('24cfc830811e9f4fcb181187f9294ad7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P5eE\";i:1557973637;}',1557977237),('22b9b5f6cb032243f6f705511ed315b2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sppF\";i:1557973637;}',1557977237),('c5f267f2312da647e60a2b27c7f23a3a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QWW1\";i:1557973637;}',1557977237),('778e43c9b95c67b4a07d3b5678261d72',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QCFP\";i:1557973637;}',1557977237),('1824ffb91b4ad43b1d22004f1e423b90',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"diiN\";i:1557973638;}',1557977238),('a8b3551add34c79f50958fd77fe68ee7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P9wE\";i:1557973644;}',1557977244),('b7b269d758930554332d8faf4003c448',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oqmv\";i:1557973644;}',1557977244),('82c4dc2256543005accae2124f2f1795',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HKd4\";i:1557973644;}',1557977244),('dc9b16f54ddfa80568e9dc7c93f07c56',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UKAE\";i:1557973645;}',1557977245),('340b7b221caacd114a091589d5a5a273',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pRzw\";i:1557973647;}',1557977247),('4f689460b1bba1382f88990d1a6fcd81',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KK48\";i:1557973647;}',1557977247),('fb0411227dc3e92c40dd1ce7e9ed3163',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g602\";i:1557973647;}',1557977247),('99a47348470e967bd42c20684cbb416e',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ve0d\";i:1557973648;}',1557977248),('6f786f3095bf7568a8cd25e347217184',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XNJN\";i:1557973651;}',1557977251),('853929c0c0014bf2eccef46c8adbda6d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s3q6\";i:1557973651;}',1557977251),('1526263e2b4e0cbb9614b0f877dea0d7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UfFf\";i:1557973651;}',1557977251),('1c663b407e0bc5179f5e397a5ea9296d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vLCI\";i:1557973654;}',1557977254),('27282889fd83972ab48059cde76a1e84',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GrZJ\";i:1557973661;}',1557977261),('40a85257bb93364c5f8821fb624977b1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ad9D\";i:1557973661;}',1557977261),('ece0f3dc03e67d27a9da10c29706a73a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q70W\";i:1557973661;}',1557977261),('79c135975ea5cdf818b2794e085b2dbc',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x47h\";i:1557973663;}',1557977263),('19f3528d295f2fb00987b1bfb31207b4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vf10\";i:1557973663;}',1557977263),('a88960d2230ad34222efef0cf4f0b92c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wDEj\";i:1557973664;}',1557977264),('637216e1723cf3f4b92d50a66b0f7d7f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lFbK\";i:1557973664;}',1557977264),('e81c5c15912dc4afea577b4498199526',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L432\";i:1557973666;}',1557977266),('b11328bf2a979f10b511aff66ffc450a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wz00\";i:1557973666;}',1557977266),('0fc5974810459236c0e3c16334dc30fd',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s50v\";i:1557973670;}',1557977270),('b4c4b56463e8e2533a1bf05807db58e1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BhZN\";i:1557973670;}',1557977270),('cd3478a97c5f76f574e53c9f305749c7',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H7wI\";i:1557973671;}',1557977271),('e09bfa05a21484299dc2a9f890c7d1bc',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G3u3\";i:1557973681;}',1557977281),('bb6cc27de43173be28bf66452aefaa53',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SN44\";i:1557973682;}',1557977282),('37d2f4a162236fb6cff6170c8ef4e829',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ls8S\";i:1557973687;}',1557977287),('cb4eec927ca0c9aa3e0431fa81b1fe50',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bos9\";i:1557973687;}',1557977287),('34a6818933f41b85fbe6a3a322efbc7c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nW7m\";i:1557973688;}',1557977288),('21058752b8cf33fdf26e102f17a06b7d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jY7I\";i:1557973698;}',1557977298),('e0ce63bf9c6e063d18a76d9d3406fe9f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yQdG\";i:1557973698;}',1557977298),('f15c76024bc9626f53e265de83cb344c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P44F\";i:1557973819;}',1557977419),('8ce7ff72235f936504351cee19dc714f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TA5q\";i:1557973934;}',1557977534),('3c71b8d2680ab2b54c8d041102b53a92',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sz3f\";i:1557973935;}',1557977535),('f5f2c5d7ed939b03684e76f7c3a588da',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ldNK\";i:1557973936;}',1557977536),('0940fa7659d62c294515d1dc2bac168d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v7o2\";i:1557973937;}',1557977537),('092c6cc8a1cdbeec443778b68379b911',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FYmQ\";i:1557973939;}',1557977539),('38fa899169a9d9fbbf0ca5b480370ad8',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E2hJ\";i:1557973940;}',1557977540),('c4e627b6891ad032a5d2e042a0ce634a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oP4U\";i:1557973940;}',1557977540),('ce13793ce7ba7ffd9a9ec1415b20f2ab',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GfZC\";i:1557973941;}',1557977541),('0816f0172abe9ec69e6fe289a63a1033',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lGgX\";i:1557973941;}',1557977541),('a17277efe405857793c102b0ee474575',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HJO9\";i:1557974174;}',1557977774),('ad4b90e5c63216b5db0b6c92382a7532',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wq8m\";i:1557974174;}',1557977774),('7b093f8ba7295fc224691d62cec27165',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mQ1u\";i:1557974186;}',1557977786),('4732ae84f60ca42874be7e60e5d66650',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W9Cl\";i:1557975804;}',1557979404),('aeccd929da3198f3fe29bd99e1679daa',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VVIa\";i:1557975804;}',1557979404),('148aad111b9b4cc428abe723e019f0bf',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V4Nd\";i:1557975804;}',1557979404),('49e084955fe0087864714a80057aa0d4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uTtT\";i:1557975804;}',1557979404),('5a469d0d82b7d31b90383e4124f5d6c2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eHDd\";i:1557975804;}',1557979404),('8e31f03d039e50baa063ac0cf9da138c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pLBr\";i:1557975805;}',1557979405),('b058e89363ff3d660f4e289cfbc74723',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WrAf\";i:1557975811;}',1557979411),('6bdec13b3465e99c7d58f0b5c00612c6',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z2xo\";i:1557975811;}',1557979411),('1ce1d2dd6e087d0e124cfbbc3590396c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V26d\";i:1557975811;}',1557979411),('fb5ed68752ac05d964ebb86fcbcc17ea',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qK1a\";i:1557975812;}',1557979412),('afb3d69786492bb3db167cd7c5fc7a15',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V07A\";i:1557975812;}',1557979412),('d795f2d61c3d887ee4156cd93b31cb57',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YRyy\";i:1557975812;}',1557979412),('e92fb7cbc2235f46782e3bcb50302ab3',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P4Ek\";i:1557975812;}',1557979412),('1dd1844b5d82f7a9ae693bf6345dbee1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EF51\";i:1557975812;}',1557979412),('efef323a802ccc3a612ca4cb40b0b73c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tg19\";i:1557975813;}',1557979413),('4b94f03031ebbd103fd700ff83ab24f4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c5ww\";i:1557975814;}',1557979414),('5eb93d8b22ab74486f64331bce053538',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fJpR\";i:1557975816;}',1557979416),('4ef250039d456877549dfdd95eb85b86',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wSXX\";i:1557975816;}',1557979416),('5fd0d2908e25dd3a9440765288fad479',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sC4h\";i:1557975816;}',1557979416),('c088fc56fddc758f75456157ded3a7a1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vyC2\";i:1557975817;}',1557979417),('dae2f8534aa57ec174515715bc0f69b9',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y4Zb\";i:1557975817;}',1557979417),('bc40a10d9d59b851255ddc6c0a3dc195',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M5Jp\";i:1557975818;}',1557979418),('6fa065451f49186f362d98d0996ab37c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fiLq\";i:1557975818;}',1557979418),('f80ef0e2d23b2fdd8bef6ad9eccd897d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EgOo\";i:1557975818;}',1557979418),('0e0f04c09f0a934120ab268da478cdd3',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jU8y\";i:1557975821;}',1557979421),('690abf4e20e7a621d8731ac0bc5e0ad8',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L9R7\";i:1557975821;}',1557979421),('7ce169ea81fe06c6947f3873d603eba1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I77O\";i:1557975821;}',1557979421),('d6e7afae6548f80554e863311420cdb6',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D92s\";i:1557975822;}',1557979422),('e6f3c4ab745ffcf3632a43ac6fd483fd',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QFaw\";i:1557975822;}',1557979422),('d9094f411bd1f12405c993488fb10cc1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fJXc\";i:1557975822;}',1557979422),('a26f835de068588de3ac197a988f39fc',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rgp9\";i:1557975826;}',1557979426),('707e9423eafc53c960171f1e55f3b279',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uuwA\";i:1557975826;}',1557979426),('d0337f9fe26c1380e5a3592532df1cda',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EtaW\";i:1557975826;}',1557979426),('fb884e7a9e1e5ece2f5a8528152f8902',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZHhe\";i:1557975826;}',1557979426),('ff2182ab7b99bd46a895c627febc4cbd',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lcFe\";i:1557975827;}',1557979427),('6fcb76008fe31f2067d8e0e390e90d96',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mUxZ\";i:1557975832;}',1557979432),('f72207ca931bc38b2593a4ce6c3a7b1a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EZRb\";i:1557975832;}',1557979432),('7a27b4b94d7c7a8383bcf930d1b26784',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J78Z\";i:1557975832;}',1557979432),('d9d6fe80b3755e6b1b03b47035608d4f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z9nL\";i:1557975833;}',1557979433),('8017fc842088cb642fb83b3092cb7be4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xc02\";i:1557975386;}',1557978986),('2954134ceb3ebfb60ffee2d5ef7e4b11',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dZDW\";i:1557975386;}',1557978986),('e2198f7744e91760a4964bdfc649e32a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cykv\";i:1557975803;}',1557979403),('2d32bd668cde48f5afad403dab6000a3',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s6iH\";i:1557975385;}',1557978985),('888af14b1909c9ae03291ff1da79b413',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dm98\";i:1557975372;}',1557978972),('4eaaf73bc9692ac55cd98ecdc844bd28',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RaKa\";i:1557975381;}',1557978981),('3e7bd61966853aa740a9deeb69d5bf3c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zqdr\";i:1557975385;}',1557978985),('13348472def1abecc8ee3ea536c42a2e',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b9wf\";i:1557975371;}',1557978971),('4edd812609f022a750b9f199efe15d8c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OUkU\";i:1557975196;}',1557978796),('996044ccf471baac3d939514549bf0e5',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fzfm\";i:1557975196;}',1557978796),('48994b1cd5b68e22a3fb26b53727ba17',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mrZy\";i:1557975371;}',1557978971),('68c7d9335eee0b602d5ba94a11b82f24',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"duN5\";i:1557975195;}',1557978795),('3c9635bb639fd724c2487a8d2e4c869a',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XIvx\";i:1557975195;}',1557978795),('6d34d5803df63ee630f8954c34a6966e',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v7NN\";i:1557975174;}',1557978774),('02b8fb4e762121e948baa55442d37295',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dSuk\";i:1557975173;}',1557978773),('52c1fef879abbcf8ca6b436739a72869',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j8BL\";i:1557975165;}',1557978765),('947fd82620236b58c0862be67436c7db',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SDB8\";i:1557975165;}',1557978765),('8ffca042c1ce7cff5aa69d0ca32f7a35',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xjmk\";i:1557975136;}',1557978736),('3bc505e06f03f7b5b9e00628e50c98d1',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VPJr\";i:1557975133;}',1557978733),('e35aca3c8ded682c780e7c170466a8ae',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K5D9\";i:1557970713;}',1557974313),('8b28c3c99af4559802e9be09d0756d3e',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SRq8\";i:1557975135;}',1557978735),('b5dfbfb851939810872a78946eda2369',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HAHI\";i:1557970713;}',1557974313),('4284fc37dc06fcb04becd485b669762e',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zSm9\";i:1557970713;}',1557974313),('d91d4e26d9a8633d65ffb6422276f738',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zo67\";i:1557970711;}',1557974311),('33c5130f6e1e2aad91691ade7fdb2915',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oR8C\";i:1557970709;}',1557974309),('69abb9ad52ee2265d83553ad6990fd3d',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S5D8\";i:1557970707;}',1557974307),('7e270eb316d37fe99519184509adf466',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s3My\";i:1557970709;}',1557974309),('cb2c8db6a754cac3bb8c96367f020af1',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fPSK\";i:1557970709;}',1557974309),('b452d8ba42b37c5ae00d37e51dc2e877',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RgGm\";i:1557970707;}',1557974307),('3149983ed43e4174697dc477acd57a99',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xZ3H\";i:1557970707;}',1557974307),('23003fee1760b715691bc573fa368606',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Th10\";i:1557970706;}',1557974306),('0402be96a03d138dd74059e534bc2f70',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e3s2\";i:1557970706;}',1557974306),('5afd395a747a7513702150307d2d52c4',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SLHY\";i:1557970706;}',1557974306),('00cb31465d71e2d25d9aec5e362bf51a',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EkKi\";i:1557970704;}',1557974304),('b882939cbb4f50205e55f002c3623413',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VsCm\";i:1557970701;}',1557974301),('4ab1a106be8120a262e16471a5b453bd',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V2dA\";i:1557970701;}',1557974301),('7ff9af01d7691dcf75f058d1c1f91b88',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zO27\";i:1557970701;}',1557974301),('80c29f23924c09259e4ab7613b1d5f04',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IFkD\";i:1557970700;}',1557974300),('0ba0105df3d346422e6930fa8b74bbff',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jaFa\";i:1557970700;}',1557974300),('edebe4c24ee465a2bfb522279538bc6f',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S1BJ\";i:1557970699;}',1557974299),('5b7728871884126db99e23b16add91c4',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jNVG\";i:1557970699;}',1557974299),('ba910d7adcce80b1d8ec76a0d73edac3',2,'112.64.68.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M8OA\";i:1557970698;}',1557974298),('749df1655fb7ddcec1f816688188bbab',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pNR1\";i:1557975132;}',1557978732),('067411d250fb83358ef8b5c4619abf17',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bf1m\";i:1557975130;}',1557978730),('06a92d4526048e47b784c1646aa33733',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TWgG\";i:1557975078;}',1557978678),('9876b01ba9d89788a45ffa9aa3de1bd0',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M52e\";i:1557975078;}',1557978678),('752e8af98b5b9b82480d52c1378171d4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GWjw\";i:1557975055;}',1557978655),('afd6c9073192af605f236e7b7e01560f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EIfG\";i:1557974957;}',1557978557),('7baa386e8dd4df3fb7ed4fdbcaa74f4f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m8o6\";i:1557975055;}',1557978655),('b73fbd1ec03411704855977e48cfb5ff',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V8Ln\";i:1557975055;}',1557978655),('bc68a641965848b1ef9fdd779196fee9',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qsJl\";i:1557974956;}',1557978556),('78783b76953f49dd92ee86f7d0f21b93',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ONuz\";i:1557974956;}',1557978556),('ed517ef55a8f01218cbb23cccc5a60e3',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pnS4\";i:1557974956;}',1557978556),('5e3781681235b2e9d0e5d3396b5e5b38',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P856\";i:1557974954;}',1557978554),('e9e5623725c211430e4b24ae29902de0',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bCej\";i:1557974954;}',1557978554),('b373062f35ae849926f7f362e34b5092',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jZ9X\";i:1557974954;}',1557978554),('4d3ebdce0e4b04f79dfb68d7e0763c11',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bfzV\";i:1557974954;}',1557978554),('b797537ac8c2e6045cd20933c9f75f70',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"effL\";i:1557974951;}',1557978551),('10d5a8b3d272593cd1bcbb0bb96eb6e2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nop2\";i:1557974951;}',1557978551),('9bbca325453e928ac5a7e17dda83d4d5',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YjEV\";i:1557974951;}',1557978551),('f74a3ef8f7882246b03c96395007d1be',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zjka\";i:1557974952;}',1557978552),('6f140e933fa23bb272d3326062565f0f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"beHp\";i:1557974527;}',1557978127),('d7e5f504a2cf465e4f9883910c34583d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e14p\";i:1557974526;}',1557978126),('76b6be219d37caa28b0b7dd6bda3da1c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qWa7\";i:1557974526;}',1557978126),('a4aebd332fb43e3b727689979cf302da',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Skyy\";i:1557974526;}',1557978126),('9c1967fc80682c7f50bbe7c24e72ed4b',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qV0K\";i:1557974497;}',1557978097),('dda0f2dc88e42d91b997756f5013eba2',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jQLT\";i:1557974497;}',1557978097),('588e237a0546ee6acd726d7c6bd329b6',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aBtv\";i:1557974496;}',1557978096),('10c63ccda878495f9afeed6a10e24ecc',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g391\";i:1557974497;}',1557978097),('fd02a96c029dfc076c54dee45d0dc5f4',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nLNo\";i:1557974475;}',1557978075),('58e87a82678c3f1a003c1129d9eb4262',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jah9\";i:1557974496;}',1557978096),('01780d5c9177145e240391316f8e9a66',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ujcG\";i:1557974474;}',1557978074),('4caf86b0c4c38b052e432344bc3abf6d',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V3FP\";i:1557974474;}',1557978074),('d80ff41a15ee54cb52662d9a87c6d6e3',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yiHH\";i:1557974223;}',1557977823),('9543cd78cb65050f8d7b45bf3bd8c534',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AQ4R\";i:1557974222;}',1557977822),('3a8805232119b01a697417f89ad013c3',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x5T7\";i:1557974222;}',1557977822),('4c1f48ee0b346281b2d6c74ae60c2481',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n3xX\";i:1557974203;}',1557977803),('7a5a27d21cbe0ee316de62f271c6c13c',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NeoV\";i:1557974204;}',1557977804),('140901cec114250f22b3291a85430a09',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HO20\";i:1557974195;}',1557977795),('001d75642a849fda34acbbe1de3b432e',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f3W2\";i:1557974203;}',1557977803),('0044ef251818d3880901c4eca43e217f',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ea60\";i:1557974194;}',1557977794),('e0d0060c6593f036af2fcf82df8e9f30',2,'116.236.177.50','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ITTv\";i:1557974194;}',1557977794);
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_baby`
--

LOCK TABLES `ims_hr_album_baby` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_baby` DISABLE KEYS */;
INSERT INTO `ims_hr_album_baby` VALUES (1,2,'ouTc440KMSR7PJSD4KJ9-wAkWUZ8','刘靖','https://mdcdn.iamlj.com/images/2/hr_album/2019-05-03/baby-simple.jpg','刘小靖的头像','刘小靖','1',546,100,0,1,1,1556720660,3,1,'小龙人幼儿园','大班',0),(7,2,'ouTc44xLJT_KB4ctxvS8PeJzF0bM','Leslie Lee','images/2/hr_album/2019-05-13/YmDM5MMn4nizeda54edfe5OhDUfdIT.jpg',NULL,'蒙小宝','333444555566667777',NULL,NULL,0,0,0,1557727462,1557726896,1557727014,'上海心元儿童之园','小一班',1),(4,2,'','','images/2/hr_album/2019-05-13/YmDM5MMn4nizeda54edfe5OhDUfdIT.jpg',NULL,'吴浩震','430181201504270114',NULL,NULL,0,0,0,1557703722,1557699525,1557702723,'上海心元儿童之家','小一班',1),(5,2,'','','images/2/hr_album/2019-05-13/dL9a8hs8T8tRXu58RUv8zRcZHNcLsn.jpg',NULL,'李轩翰','430181201503270331',NULL,NULL,0,0,0,1557703747,1557699525,1557702723,'上海心元儿童之家','小一班',2),(6,2,'','','images/2/hr_album/2019-05-13/mqS0929b40EltDqd341s8AE3T64Q01.jpeg',NULL,'汪芯妍','430181201504130189',NULL,NULL,0,0,0,1557703840,1557699525,1557702723,'上海心元儿童之家','小一班',2),(8,2,NULL,NULL,'images/2/hr_album/2019-05-13/dL9a8hs8T8tRXu58RUv8zRcZHNcLsn.jpg',NULL,'李轩翰','430181201503270332',NULL,NULL,0,0,0,1557703747,1557726896,1557727014,'上海心元儿童之园','小一班',2),(9,2,'ouTc44yr9HR7Mh15n-PhzARr2wHk','刘靖','images/2/hr_album/2019-05-13/mqS0929b40EltDqd341s8AE3T64Q01.jpeg',NULL,'汪芯妍','430181201504130190',NULL,NULL,0,0,0,1557703840,1557726896,1557727005,'上海心元儿童之园','大一班',2),(10,2,NULL,NULL,'images/2/hr_album/2019-05-14/A5FXEgXqXnTNGhXulAguon5wnF9750.jpeg',NULL,'张小明','410333199801011900',NULL,NULL,0,0,0,1557765982,1557764587,1557765943,'学校','大二班',1),(11,2,NULL,NULL,'images/2/hr_album/2019-05-14/v9YhO3Q9pWOwkHWKqqzDi13WHSzP25.jpg',NULL,'张大明','300111199102031930',NULL,NULL,0,0,0,1557766008,1557764587,1557765943,'学校','大二班',1),(12,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','images/2/hr_album/2019-05-15/nw9Ickq1WRy5q519iWXK1ukz11uZs1.jpg',NULL,'王小让','411527199612204510',NULL,NULL,0,0,0,1557891940,1557764587,1557765933,'学校','大一班',0);
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
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_photos`
--

LOCK TABLES `ims_hr_album_photos` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_photos` DISABLE KEYS */;
INSERT INTO `ims_hr_album_photos` VALUES (28,NULL,NULL,'2019-05-13','2019-05-13',NULL,'images/2/hr_album/2019-05-13/EP8mG811pGGI1PZL11ImGmPFIFgfjm.jpg',NULL,NULL,0,0,0,1557737676,1557726896,NULL,NULL,1557727014,'上海心元儿童之园','小一班',NULL),(29,NULL,NULL,'2019-05-13','2019-05-13',NULL,'images/2/hr_album/2019-05-13/LmXx1gzxsbp1mlnxqz5CxNdy1ZmbGB.jpeg',NULL,NULL,0,0,0,1557737738,1557726896,NULL,NULL,1557727005,'上海心元儿童之园','大一班',NULL),(45,NULL,NULL,'2019-05-15','2019-05-15',NULL,'images/2/hr_album/2019-05-15/r1hxiGhepQeqgIY1O7XycYpEipc1yQ.jpg',NULL,NULL,0,0,0,1557891358,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(51,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/k6lyhj2Ny0ZV0y26NNzlEeyLv62s04.jpg',NULL,NULL,0,0,0,1557971312,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(48,NULL,NULL,'2019-05-15','2019-05-15',NULL,'images/2/hr_album/2019-05-15/GL4xb1MVmMeSJUgzXLlJeLbTvuvgmI.jpg',NULL,NULL,0,0,0,1557891974,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(49,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/XYUAP5PwJ9j6EYp39X56452374383N.jpg',NULL,NULL,0,0,0,1557970447,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(50,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/Su8uHN9H9qNLUaA55ksTb9LTN7s8Sl.jpg',NULL,NULL,0,0,0,1557970514,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(52,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/a22N0INxmNJfqTp06NftCJ0H6tt2SZ.jpg',NULL,NULL,0,0,0,1557975320,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(53,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/F67s7b1tDdVbbGbVLyYlffo363vyDV.jpg',NULL,NULL,0,0,0,1557975821,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(54,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/vazALwR0kAl0KlDT0lFfBT955X7X99.jpg',NULL,NULL,0,0,0,1557975837,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(55,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/NtPtqTCKPz5RdwNMKlWyNrDPAjmPJR.jpg',NULL,NULL,0,0,0,1557976952,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL),(56,NULL,NULL,'2019-05-16','2019-05-16',NULL,'images/2/hr_album/2019-05-16/mN1j7nuuVtBu6v4jBN67h7Nu1406tZ.jpg',NULL,NULL,0,0,0,1557976971,1557764587,NULL,NULL,1557765933,'学校','大一班',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_school_class`
--

LOCK TABLES `ims_hr_album_school_class` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_school_class` DISABLE KEYS */;
INSERT INTO `ims_hr_album_school_class` VALUES (1,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,NULL),(24,'',1557726896,'上海心元儿童之园','上海市杨浦区军工路 100 号','',1557726896,'',1,0,NULL),(25,'',1557726896,'上海心元儿童之园','','大一班',1557727005,NULL,1,0,1557727005),(10,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','小班',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,1556720660),(11,'小龙人幼儿园',1557528050,'小龙人幼儿园2','上海市杨浦区军工路 100 号','中班',1557528049,'images/2/hr_album/2019-05-10/ywC9HPzPjLvMmMPok9PJM8cAopCZh9.png',2,0,1557528049),(12,'小龙人幼儿园',1557528049,'小龙人幼儿园','上海市杨浦区军工路 100 号','中班',1556720660,'images/2/hr_album/2019/05/fTn8Yaj6xzhXyRH0WbZwyeTYNR69rA.jpg',1,0,1556720661),(13,'小龙人幼儿园',1557528050,'小龙人幼儿园2','上海市杨浦区军工路 100 号','大班',1557528049,'images/2/hr_album/2019-05-10/ywC9HPzPjLvMmMPok9PJM8cAopCZh9.png',2,0,1557528050),(26,'',1557726896,'上海心元儿童之园','','小一班',1557727014,NULL,2,0,1557727014),(15,'',1557528050,'小龙人幼儿园2','','31231',1557571310,NULL,313,0,1557571310),(16,'',1557699486,'浏阳脑立方小天使幼儿园','浏阳市复兴南路恒大华府综合楼','',1557699486,'',100,0,NULL),(17,'',1557699525,'上海心元儿童之家','上海浦东新区民办心元大华早教中心，地址:浦东新区北艾路1077弄26号','',1557699525,'',101,0,NULL),(27,'',1557764587,'学校 1','地址 1','',1557764587,'images/2/hr_album/2019-05-14/hfv254G2VH0V2h846V5DVID0FZlv2l.png',1,0,NULL),(20,'',1557699525,'上海心元儿童之家','','小一班',1557702776,NULL,11,0,1557702723),(21,'',1557699525,'上海心元儿童之家','','大二班',1557702955,NULL,22,0,1557702788),(22,'',1557699525,'上海心元儿童之家','','小二班',1557703909,NULL,3,0,1557703909),(23,'',1557699525,'上海心元儿童之家','','小三班',1557703919,NULL,3,0,1557703919),(28,'',1557764587,'学校','','大一班',1557765933,NULL,1,0,1557765933),(29,'',1557764587,'学校','','大二班',1557765943,NULL,2,0,1557765943);
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_user`
--

LOCK TABLES `ims_hr_album_user` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_user` DISABLE KEYS */;
INSERT INTO `ims_hr_album_user` VALUES (8,2,'ouTc440KMSR7PJSD4KJ9-wAkWUZ81','刘靖','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIxAIXQL4JxspfSlMsSDPm0Pff8Wo4zg4AbI0wbRwkIaAL9Sy8d41Lw8cIzf6V84kunOdueHPLIuA/132',0.00,0,0,1557724550,'1','2','3'),(5,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','https://wx.qlogo.cn/mmopen/vi_32/hAnkVF6mvYGqzBgg16pZfGCgPxA3Vo6UZ59rTVHichKk58QFcxmJUnGNoA1qUPbqIyrOF5npm1ibYnXSjwabymFA/132',0.00,0,0,1557581471,NULL,NULL,NULL),(7,2,'ouTc44yr9HR7Mh15n-PhzARr2wHk','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erAZEcrzfZNCaMqWRnncZeu4jpDW1W2fJicmEOm95L67Sjw092I6CNToPIXUb42JsPvM8yzOIUC2GA/132',0.00,0,0,1557589421,NULL,NULL,NULL),(9,2,'ouTc440KMSR7PJSD4KJ9-wAkWUZ8','刘靖','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIxAIXQL4JxspfSlMsSDPm0Pff8Wo4zg4AbI0wbRwkIaAL9Sy8d41Lw8cIzf6V84kunOdueHPLIuA/132',0.00,0,0,1557725616,'1','测试老师','18888888888'),(10,2,'ouTc44zmedOtcd3ZYtzg7SUs2E38','周密','https://wx.qlogo.cn/mmopen/vi_32/ugjuedb1029IfofEqP0IhOibCut6p7icoPKhgrticFA5LdaX8k8DiaibnWTeZb3XDNCF8lF3frZxGD0Kw3LBsUYiceaQ/132',0.00,0,1,1557743363,'1','测试老师','18888888888'),(11,2,'ouTc44xLJT_KB4ctxvS8PeJzF0bM','Leslie Lee','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLJ30JjHibNZGMQibb4AsKLau9OZNYDcLjTsk3yFaicCFL58UdpShSd1pDicSAf779TzdZj2CqibzMCfYA/132',0.00,0,0,1557747044,NULL,NULL,NULL),(12,2,'ouTc441pa4pYt17433m1WrGvbrg0','陈仲宜','https://wx.qlogo.cn/mmhead/Ws5O47NlBA81rRLszl6EdIp7Y7GyGGzCO1JTqwQ3m68/132',0.00,0,0,1557791682,NULL,NULL,NULL),(13,2,'ouTc441ZFrBeMSV5E52gXZExikco','李晗','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLoarOibJs51bAIPmylgNbr17HludqsVL7yKuYRPhs1FGzyqLr8vQyvGVicZmPsmK0WDmEZ8icG3W2aw/132',0.00,0,0,1557792201,NULL,NULL,NULL),(14,2,'ouTc4478jM_vIzT3w9yFMGaySTN0','林威强','https://wx.qlogo.cn/mmhead/dBjgicrp2gJRMKL5jToib9k7QqJy2rCqVkItaIv1u0ib0c/132',0.00,0,0,1557821129,NULL,NULL,NULL),(15,2,'ouTc441imGIpPrNWMTrGyKd9hX4w','Nancy_1998','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJFaxS8cXpjoaohHg4VK0CQeqdGOKPkPh3X2kLLW8iaMkAWywWLvZpUViaTeL9icpo1eiaB8Mic2ibQ3ngw/132',0.00,0,0,1557825503,NULL,NULL,NULL),(16,2,'ouTc449UukJ0Y0K4ygG_D_Yj46-U','～江湖～13155776378','https://wx.qlogo.cn/mmopen/vi_32/7yJWHkqkOYP3mqrxp7KsRmf23IrjwPYj3hHY4xeicE5Gib9Jcc11lEE64LxKtmbHwyenRicw8xwvwHfEVNsS6sib1g/132',0.00,0,0,1557917596,NULL,NULL,NULL),(17,2,'ouTc446zu4zOfWNGGNvErZo_O-xc','郭子豪','https://wx.qlogo.cn/mmhead/TaTkYVZCss3Sk83UAMFZ1V1eiaPGsNTtjka6esLiaObZQ/132',0.00,0,0,1557964677,NULL,NULL,NULL),(18,2,'ouTc447q2buIMepz1156JEOy4mgo','阿怪','https://wx.qlogo.cn/mmopen/vi_32/uPdoKACKvpzAccdbwTY9svhhYF85w2pY8xdBRBIj1w95LIEiaHsBbOIXZRCPn93nfosYr9wb9SiaJZ59FCdNq6hQ/132',0.00,0,0,1557973513,NULL,NULL,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users`
--

LOCK TABLES `ims_users` WRITE;
/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,1,0,'admin','75cf4b62909107fbebd98ed9d7c16cc685d6ca45','eU1qPV5q',0,0,1557765559,'127.0.0.1',1557922606,'116.236.177.50','127.0.0.1',1557765559,1657765559,0,'',0,1557699525,'上海心元儿童之家',3,'','18801732070','管理员',2),(7,0,1,0,'ceshi','0eaf51e687a6daf162da09629c54842517ede565','bRT0ZTET',0,0,1557726975,'127.0.0.1',1557726983,'127.0.0.1','127.0.0.1',1557726975,1657726975,0,'',0,1557726896,'上海心元儿童之园',0,'','18888888888','测试老师',1),(11,0,1,0,'ceshilaoshi','6035645eecd1062d9601f6e5749cfe191332259f','U17v971K',0,0,1557889173,'127.0.0.1',1557890790,'101.81.96.34','127.0.0.1',1557889173,1657889173,0,'',0,1557764587,'学校',0,'','18811112222','测试老师',1);
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_failed_login`
--

LOCK TABLES `ims_users_failed_login` WRITE;
/*!40000 ALTER TABLE `ims_users_failed_login` DISABLE KEYS */;
INSERT INTO `ims_users_failed_login` VALUES (32,'116.236.177.50','',1,1557922571);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_general_analysis`
--

LOCK TABLES `ims_wxapp_general_analysis` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` DISABLE KEYS */;
INSERT INTO `ims_wxapp_general_analysis` VALUES (1,2,13,68,4,4,2,'115','35.3846','2.5385','20190514');
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

-- Dump completed on 2019-05-16 11:23:51
