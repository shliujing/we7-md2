-- MySQL dump 10.13  Distrib 5.5.40, for Win32 (x86)
--
-- Host: localhost    Database: wx4
-- ------------------------------------------------------
-- Server version	5.5.40

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
INSERT INTO `ims_account_wxapp` VALUES (2,2,'i1p1GgHDC6GGVIZHzbhHBiNs0gg1pbG1','oxiILGyQvnvZvWLjqTZMUpTrZWB99GJylPgrVpiBmmd',1,'','gh_dc9577c073b5','wxe7bc1c3c7a9ff198','35070215a8e943ff39d7a3ced2a7297c','蒙大教育','');
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
INSERT INTO `ims_core_cache` VALUES ('setting','a:10:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";s:0:\"\";s:7:\"cloudip\";a:0:{}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:18:\"module_receive_ban\";a:0:{}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}}'),('system_frame','a:10:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:3:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"phoneapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:11:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:53:\"./index.php?c=module&a=manage-system&system_welcome=1\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=5\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=6\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:4:\"site\";a:8:{s:5:\"title\";s:12:\"站点管理\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:4:\"help\";a:9:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}}'),('userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('module_receive_enable','a:0:{}'),('we7::site_store_buy_1','a:0:{}'),('we7:module_info:basic','a:31:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/basic/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:news','a:31:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:54:\"https://md.iamlj.com/addons/news/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:music','a:31:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/music/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:userapi','a:31:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:143:\"自定义接口又称第三方接口，可以让开发者更方便的接入RubySn0w系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"https://md.iamlj.com/addons/userapi/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:recharge','a:31:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/recharge/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:custom','a:31:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/custom/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:images','a:31:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/images/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:video','a:31:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/video/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:voice','a:31:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/voice/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:chats','a:31:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/chats/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:wxcard','a:31:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/wxcard/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:store','a:31:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:20:\"http://www.baidu.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/store/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('unisetting:1','a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}'),('uniaccount:1','a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:61:\"https://md.iamlj.com/attachment/headimg_1.jpg?time=1556718804\";s:6:\"qrcode\";s:60:\"https://md.iamlj.com/attachment/qrcode_1.jpg?time=1556718804\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:module:all_uninstall','a:2:{s:6:\"expire\";i:1556731704;s:4:\"data\";a:7:{s:13:\"cloud_m_count\";N;s:7:\"modules\";N;s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;s:12:\"webapp_count\";i:0;s:14:\"phoneapp_count\";i:0;s:13:\"welcome_count\";i:0;}}'),('we7:unimodules::','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:all_cloud_upgrade_module:','a:2:{s:6:\"expire\";i:1556720604;s:4:\"data\";a:0:{}}'),('we7:uni_group','a:1:{i:1;a:9:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:2:\"N;\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}'),('we7:user_modules:1','a:13:{i:0;s:8:\"hr_album\";i:1;s:5:\"store\";i:2;s:6:\"wxcard\";i:3;s:5:\"chats\";i:4;s:5:\"voice\";i:5;s:5:\"video\";i:6;s:6:\"images\";i:7;s:6:\"custom\";i:8;s:8:\"recharge\";i:9;s:7:\"userapi\";i:10;s:5:\"music\";i:11;s:4:\"news\";i:12;s:5:\"basic\";}'),('unisetting:2','a:0:{}'),('uniaccount:2','a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"i1p1GgHDC6GGVIZHzbhHBiNs0gg1pbG1\";s:14:\"encodingaeskey\";s:43:\"oxiILGyQvnvZvWLjqTZMUpTrZWB99GJylPgrVpiBmmd\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:15:\"gh_dc9577c073b5\";s:3:\"key\";s:18:\"wxe7bc1c3c7a9ff198\";s:6:\"secret\";s:32:\"35070215a8e943ff39d7a3ced2a7297c\";s:4:\"name\";s:12:\"蒙大教育\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxe7bc1c3c7a9ff198\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:61:\"https://md.iamlj.com/attachment/headimg_2.jpg?time=1556719643\";s:6:\"qrcode\";s:60:\"https://md.iamlj.com/attachment/qrcode_2.jpg?time=1556719643\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:lastaccount:oJ0X7','a:1:{s:5:\"wxapp\";i:2;}'),('we7:$cache_last_account_type','s:5:\"wxapp\";'),('we7:2:site_store_buy_4','a:0:{}'),('we7:unimodules:2:1','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:wxapp_version:1','a:16:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:3:\"1.0\";s:11:\"description\";s:5:\"1.0.3\";s:7:\"modules\";a:1:{i:0;a:38:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/hr_album/icon.jpg?v=1556718813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:8:\"shortcut\";N;s:7:\"account\";N;s:12:\"cover_entrys\";a:0:{}s:12:\"defaultentry\";N;s:7:\"newicon\";N;}}s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1556719643\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}'),('we7:unimodules:2:','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('accesstoken:wxe7bc1c3c7a9ff198','a:2:{s:5:\"token\";s:157:\"21_dK67MCCIKwPWWfxWW4kc9AniQBI4lJqLc0QWe-T_3ntGPzlSX4NcMfUKG1mBNyZjTAQ_dUJBNorRKRrUtcn8aufr8K8IOqsKinGNrjOZRC7zfp4NX_5YJR3sUg0AhRxktT9gPV2mDGTOCPPpFNEdAHATBS\";s:6:\"expire\";i:1556726644;}'),('we7:module_info:hr_album','a:31:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/hr_album/icon.jpg?v=1556726097\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_setting:2:hr_album','a:7:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:6:\"module\";s:8:\"hr_album\";s:7:\"enabled\";s:1:\"1\";s:8:\"settings\";s:1352:\"a:20:{s:9:\"spacename\";s:12:\"蒙大教育\";s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:0:\"\";s:8:\"deftitle\";s:42:\"这是我家宝贝的相册，快来看看\";s:8:\"baseskin\";s:6:\"dongri\";s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:1;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:1;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"c1HeRi-0zzp-vvIySFCmsShxapOdiKFoBeziDSkz\";s:9:\"secretkey\";s:40:\"nERfgvtgrVcMpEXsJd4N3PjeTKWMsxA07ZbmxCsQ\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:23:\"https://mdcdn.iamlj.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";s:1:\"0\";s:8:\"sharepic\";s:60:\"images/2/hr_album/2019/05/j5ws14iLiOO16nLZw3oLss4so7O1So.jpg\";s:4:\"kfbg\";s:60:\"images/2/hr_album/2019/05/LK79KkBwbgvWX5GBgGV6gt86GkU59G.png\";s:6:\"morebg\";s:60:\"images/2/hr_album/2019/05/DVW8Kk72ZwLRIQSVO08LiP6V7v2zNd.png\";s:6:\"ishare\";s:1:\"0\";s:5:\"isico\";N;s:8:\"wxyellow\";s:1:\"0\";s:5:\"ispay\";s:1:\"0\";s:6:\"dsdesc\";s:6:\"打赏\";s:5:\"llads\";s:0:\"\";s:4:\"iskf\";s:1:\"0\";s:7:\"paydesc\";s:24:\"打赏页面文字描述\";s:10:\"list_style\";s:1:\"2\";s:10:\"templateid\";s:20:\"打赏通知模板ID\";}\";s:8:\"shortcut\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";}');
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
INSERT INTO `ims_core_sessions` VALUES ('6e43024e0c955c159ace02f2d4105527',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NvAK\";i:1556719664;}',1556723264),('ff283835f09542f0dc57b0c6215011be',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"THvR\";i:1556719664;}',1556723264),('7ca624af5afec78a50cb6f6577b82373',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k63O\";i:1556719664;}',1556723264),('0ff2a0e0035b245e3bbe9bd3aade486d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FnHM\";i:1556719666;}',1556723266),('085b80a6abffa6f232fc4902b226d11c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hl7O\";i:1556719666;}',1556723266),('cea0d9f17f5d445885c2d66aabd933dd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PqfS\";i:1556719666;}',1556723266),('5098d2f6d638d916bf11d039e9d6444f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yT09\";i:1556720199;}',1556723799),('fb8ec263002f893e98d271ab25280470',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YcV2\";i:1556720199;}',1556723799),('622eb74b0eb251c65982c924ba28d7df',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hx9H\";i:1556720199;}',1556723799),('8ece095917d00f6844ac0b21ff24df8b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aXEx\";i:1556720602;}',1556724202),('e9afe737e085fd8690f6b0f64c35c3b1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wkvz\";i:1556720603;}',1556724203),('a8890859b379a086a0795cbf894ce13b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yZos\";i:1556720603;}',1556724203),('2f4f53f34eba472fdea28fa4e7b27b6c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a2Mm\";i:1556720623;}',1556724223),('13907d0c604a8434219f82d3cd565b0f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p0m9\";i:1556720624;}',1556724224),('0449c2d40cb8a2dcc62eef818b39576f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CCxF\";i:1556720624;}',1556724224),('ade0c215ed8b98401e2511366d4aee3e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ABZ3\";i:1556720632;}',1556724232),('51336ff04a52a18516552d956613029d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AQfx\";i:1556720634;}',1556724234),('3f5967be08bd12723c4bd71ed9df0248',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qmvH\";i:1556720634;}',1556724234),('0b9531219f0bd62ca1f99166d03387a0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"riNg\";i:1556720634;}',1556724234),('725306123df5880b1dfbba8cab48b2e6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CeqE\";i:1556720636;}',1556724236),('30383337149ae60ba62fe88463f20e3b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r45i\";i:1556720637;}',1556724237),('374a01684deef581c00462113769b4b6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rL78\";i:1556720641;}',1556724241),('04e3d145a451138a5b99e8c98399f91b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z4Sv\";i:1556720641;}',1556724241),('abf5d9f6d5bb0453a1946e60fe259ffb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KY44\";i:1556720645;}',1556724245),('99232e0d997545d05884ba1dbabdd018',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BYLx\";i:1556720659;}',1556724259),('2e5d48b923e4c1c884d5574df4e5b566',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xzGn\";i:1556720660;}',1556724260),('93fb29505ade7e27b578988420b99ff1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F8Ru\";i:1556720660;}',1556724260),('6aa774d439bf463c8830a5d9881755db',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:6:{s:4:\"Es7Q\";i:1556726142;s:4:\"eo39\";i:1556726167;s:4:\"a6Z4\";i:1556726168;s:4:\"vE8Z\";i:1556726209;s:4:\"SwH3\";i:1556726210;s:4:\"I9C5\";i:1556726369;}',1556729969),('dabd01a4729707dd01d5740132944c6d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gugi\";i:1556720665;}',1556724265),('1bb834c9d1c2fd3e8c1794c8ee4fa541',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cXzs\";i:1556720668;}',1556724268),('2b50a1fd87469e69eb5136a4dbbbda41',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"riy9\";i:1556720668;}',1556724268),('2202b195ec7946e0d0206ec7b2d70f9d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AfCA\";i:1556726066;}',1556729666),('598bc42cc001e4df42b0bf87ccce13b5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gBvO\";i:1556720676;}',1556724276),('1d76586972abc104b1a06bf634766699',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C9jS\";i:1556720702;}',1556724302),('6ed479effa2763bee5f6505e7d491d48',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BDjP\";i:1556720702;}',1556724302),('d08c785ed7433ab0bad397ac752e2bc7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mv2U\";i:1556720703;}',1556724303),('c2a924d3d7b54104dc9c2ee92887281e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HZvI\";i:1556720733;}',1556724333),('1a08626d57583aee0710a50249984941',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qjhW\";i:1556720733;}',1556724333),('1731b8df3ea72aa6959905f3e435a705',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t47C\";i:1556720733;}',1556724333),('a4b57b914b53655f143a69f73cb67c87',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wEIE\";i:1556720746;}',1556724346),('6112ea0776760c1665d3f06c0a41796d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BR84\";i:1556720747;}',1556724347),('658700b0a76808ae980bef4b68bbae5a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g4e5\";i:1556720747;}',1556724347),('385ee06df32b9c19276d447dca2e9d7e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qj7M\";i:1556720754;}',1556724354),('cb6235707e5e45eef278c59eacf28fde',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HpNZ\";i:1556720754;}',1556724354),('6d7450f4736bba221920c4e6c8cc6479',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xa3r\";i:1556720755;}',1556724355),('8c4f88a9ce5f803bbfb5aef41365c37d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qGeD\";i:1556720762;}',1556724362),('ef65c54d5c2728efe2674c334fc8d656',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"snup\";i:1556720762;}',1556724362),('b1fa44cdb14ea38f65a71432651140c5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bOXn\";i:1556720762;}',1556724362),('c460d2a0b653410f6aa02a0d6dc8b90a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pC4F\";i:1556720766;}',1556724366),('c2148a54af6e465665b19a83fa3f90e1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hBKs\";i:1556720767;}',1556724367),('738d187339d76088d29a1c0f36f0f767',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ojOa\";i:1556720767;}',1556724367),('591c18b6d9fc47886d5e55e34e844941',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kI2j\";i:1556720903;}',1556724503),('357c7cba3096da872aa8da3f1b09a40f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sWWG\";i:1556720903;}',1556724503),('6a283b9a5fa15a8ad24b7a2a43c69495',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yk3c\";i:1556720904;}',1556724504),('b5b369ac7f4b174cd14a3fee171b1e42',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BkGK\";i:1556720916;}',1556724516),('c5c54aaa67578394d7ceebb0a4290b90',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"imO9\";i:1556720917;}',1556724517),('b31e82424760d1452b855bd2aa8fd6d1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MnCI\";i:1556720917;}',1556724517),('77e713bc18ffe94909cad4e1b77144af',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s3nl\";i:1556720951;}',1556724551),('6844d9bd4606fd495037bca140a4fc9d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qc79\";i:1556720952;}',1556724552),('5cbb519f29f1606a96633936270cbe1c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fhJ2\";i:1556720952;}',1556724552),('95976299fa37e345e2ea991602d988e3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zCBa\";i:1556720961;}',1556724561),('eed05df9ddb78c97a7a563bde8c5c97f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W252\";i:1556720961;}',1556724561),('4186cdaa44ff03537a8972af4d431c94',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tfhv\";i:1556720961;}',1556724561),('d63de02d145884f8829a5aaffa703606',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qb1W\";i:1556721522;}',1556725122),('11cc34f92280a3e49fe953e4048b29e0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j1MU\";i:1556721523;}',1556725123),('be5561a5a515e762bc6597ef8f4e23a4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MsjR\";i:1556721525;}',1556725125),('9bce767569ba9e163b382c4ae394b7c9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GAX6\";i:1556721525;}',1556725125),('ca783154fc04d8c93da441aaf796a1a6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nI9H\";i:1556721525;}',1556725125),('3af50836c9e8b4e7b9767017253a8662',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N473\";i:1556721751;}',1556725351),('849ee356b402d8e8e1b3dddb47692417',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o4sA\";i:1556721751;}',1556725351),('8f29e5c3a20da5be3051cffd88ae141b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GXxR\";i:1556721752;}',1556725352),('54ad24cdd0a955fc9c5fac9df405307f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qsSp\";i:1556721760;}',1556725360),('91ccb81eef77abdc70c3736cd0ec1c8e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F4xJ\";i:1556721760;}',1556725360),('5acdacc8772bf9037e87ec78de0c0fdb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oI8P\";i:1556721846;}',1556725446),('3a01017dde842b69cc12654e80d42bdf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NCx6\";i:1556721847;}',1556725447),('beae581cfe9713b833c6d5c69d90b638',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YB9B\";i:1556721896;}',1556725496),('50028a6f06251c44f12758f3be995429',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hc1q\";i:1556721897;}',1556725497),('e1ac52ce7418ae713cb48348a807432d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uZv0\";i:1556721897;}',1556725497),('1a0ad404861f91528d97dc71e1ab08ed',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ihjt\";i:1556722504;}',1556726104),('31fa5738dd5b05b32cbf93305fcb1e74',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wtxp\";i:1556722504;}',1556726104),('360202c6bc179b099a504b1ac2bf8b97',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DNPT\";i:1556722504;}',1556726104),('bc3bdeb2eb703fd8830d44d58e9a483a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PeQP\";i:1556722510;}',1556726110),('9b055e98bafb041504a6dc905e8a0a0a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C6Dv\";i:1556722511;}',1556726111),('52ebe56f8468fda1daa8c3b84dc61a69',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ubjP\";i:1556722511;}',1556726111),('5fca678073a9f35f564400aafedf4eb8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kFL0\";i:1556722519;}',1556726119),('c24f6ccb3ae5972c0cdf087119ef164c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OD9P\";i:1556722519;}',1556726119),('3e964058d81e3b9890d8f2f6d78d9b62',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lbr4\";i:1556722520;}',1556726120),('650fb64eb3018bc31ba2ced93a316d71',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DC1o\";i:1556722851;}',1556726451),('b5af0f090efb07c55c1de1a70069b79a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hjq8\";i:1556722851;}',1556726451),('cdc17bc549822bacd7c0fffc14e7fee9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C7Oa\";i:1556722851;}',1556726451),('ed477d5750a5a29c92e9b146578f40d8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LmXe\";i:1556722859;}',1556726459),('6f0728063b8d0326b5e3f5721a4f4a47',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lDMV\";i:1556722859;}',1556726459),('bb74efec150ddbe68c6db053abb76f21',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OUiK\";i:1556722860;}',1556726460),('57dfd4081969aec099fbca4f7c9788ea',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cIXe\";i:1556722872;}',1556726472),('d4eff797369c2c01ddef584b05ca6862',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gJpx\";i:1556722872;}',1556726472),('b54ddafc3231c92581d3e56399f00c85',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D8q6\";i:1556722873;}',1556726473),('781c3dadf811dfa551cc1b5a1be332fc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ggaM\";i:1556724090;}',1556727690),('6bf4cbab9cc4da5c43c7f421ce46687f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qJw5\";i:1556724090;}',1556727690),('391f9338f584ce9af50f3a7802206c95',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lWWN\";i:1556724090;}',1556727690),('373bb661039a5f5edd4c8c6238a1e028',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cgrr\";i:1556725333;}',1556728933),('df7e249ac34ab74bc4176df6bac7dfde',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GuW3\";i:1556725334;}',1556728934),('b393f7c49d60a6cfdf90bc778939ae91',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nIui\";i:1556725334;}',1556728934),('5a186135d6a105a52acfbf13fd0434a8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V5z5\";i:1556725367;}',1556728967),('dd7dd46d23db8468e013ec31569cad50',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fLGY\";i:1556725368;}',1556728968),('7fa6c9decb3741cf759db892e294b11f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xOom\";i:1556725368;}',1556728968),('38e758a0aacf16bc33eafa693d2d9034',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zHjr\";i:1556725370;}',1556728970),('fd91a586101626d85b41b902eb97f5f9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BT52\";i:1556725370;}',1556728970),('0bbbc0187289a77c5884647d2ad6b967',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ej7u\";i:1556725371;}',1556728971),('760e1b2ec1495786484ad65df72c93fa',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"STMK\";i:1556725476;}',1556729076),('1a7a02ee36dba7cad644b5a3c8d3a538',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FQ8p\";i:1556725476;}',1556729076),('a56fa117f82edd5ccf9de049ea366186',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BSmM\";i:1556725477;}',1556729077),('4368cf94a93f7362e772c83b72691860',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YTDj\";i:1556725489;}',1556729089),('acbc0dc93e52970a07d58f1ee728aae2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yf4G\";i:1556725490;}',1556729090),('fcea4d396a64ad2d0475b0c28de86874',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e11G\";i:1556725490;}',1556729090),('755d8aa3b86a4c58671ee7cc34716b70',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zb8q\";i:1556725496;}',1556729096),('ccb2c7b215e8cbaa6da81b34439e9724',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LtIV\";i:1556725496;}',1556729096),('c8d1161f06b41fb34ee8718db45236cf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ck9O\";i:1556725497;}',1556729097),('4bc858de21babecc863b81dd1a20ad8e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x2H2\";i:1556725498;}',1556729098),('f30b70242ec2e79512f914a93a5f713b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OVRw\";i:1556725499;}',1556729099),('6109ebd2bdb00fba1e83cc84b2d22ade',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fc5Q\";i:1556725499;}',1556729099),('d9accc7b73dc71b384ff1ef5e45adba8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TGE2\";i:1556725502;}',1556729102),('63f8c048a6e4bfc062ebbd7c51a0f10b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nFvv\";i:1556725503;}',1556729103),('d33f5bd0dcb06dc51c9d1a7289bcfa70',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uK9A\";i:1556725505;}',1556729105),('fb36d51c4e7934f69da194b0cf0e34d7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XTly\";i:1556725506;}',1556729106),('35a3fbb94f4635958330ceeff66f405c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d1l1\";i:1556725506;}',1556729106),('7c785c8018ac16e36967d4dfb9389864',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OXbf\";i:1556725534;}',1556729134),('8f45fdaa2a773834772b76906fffd9cf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RgGI\";i:1556725534;}',1556729134),('79fbbe193a96e1dc785233a89e6bc036',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eUgp\";i:1556725534;}',1556729134),('c421de3c262b6339ab4a99d673385112',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qIqM\";i:1556725535;}',1556729135),('2ed650a42bb16c848718d278cb49a053',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R52v\";i:1556725535;}',1556729135),('b657b8a07a1cfb22c2fee2f892b348a2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tTpt\";i:1556725535;}',1556729135),('6ee2a5155e4357a531a54f022827958a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X6fS\";i:1556725536;}',1556729136),('fdf756e66a4abf4de50bf50d28720865',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nEPm\";i:1556725536;}',1556729136),('2e890146c10cec023e867ed163257ebb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KpSf\";i:1556725538;}',1556729138),('48cb978a0da73d604a3b6cfa20361256',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r4uE\";i:1556725539;}',1556729139),('d2f892901bf18260fb722a20b271e65c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aatt\";i:1556725561;}',1556729161),('7224221b1833a65f9609cced99d14ec0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"leWu\";i:1556725561;}',1556729161),('1178752328e2aa28c6da64948d027e13',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bbhz\";i:1556725561;}',1556729161),('283ee68c3b3f12c0aba0ca3e8ecc84fb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W9Ud\";i:1556725569;}',1556729169),('447fef41b85b9ec82fe2925873947c3f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"COT5\";i:1556725569;}',1556729169),('49f7584efb17193616436da6d8ea792c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"audz\";i:1556725570;}',1556729170),('eda1e45f55dd3662284cff6e3b895132',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cIQZ\";i:1556725570;}',1556729170),('1d48aceb9c4c5ffdc640b5a494ad4a99',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i2J1\";i:1556725570;}',1556729170),('0c0bbd8024316590dca45b5146aaf4aa',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OXX3\";i:1556725571;}',1556729171),('94870a1888d4e7ff8ad8b46810c3dfbb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DgWe\";i:1556725571;}',1556729171),('b084f9b3967270d277bde3fb77a909e9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W2fc\";i:1556725571;}',1556729171),('179f8b22531b813d61e91a9264718f12',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lbbQ\";i:1556725572;}',1556729172),('15778e81cf8825749d90c6b78ebbd5be',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vH54\";i:1556725572;}',1556729172),('d7b1b251428bbf61cb150bf5e87cdc02',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F2Tq\";i:1556725573;}',1556729173),('f73083cc68baedc9162b9160556c4521',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EtYu\";i:1556725573;}',1556729173),('db7b3a44108d57300c4eb2c0661fb6c9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cm8X\";i:1556725573;}',1556729173),('42c957cffed748d6f0bcb62ab99cb69b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MYlH\";i:1556725573;}',1556729173),('b1b6bd71ae59db4a6e7a54d483e1bdd5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IxHX\";i:1556725574;}',1556729174),('2b1c3c69a34df4b4293d04c478c3cbba',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tn5D\";i:1556725574;}',1556729174),('70a5aa2c3edbf41fa201bcf783650cd7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ONiN\";i:1556725578;}',1556729178),('876836bd3d6b74e7c0bc1ae736f678ad',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sv2F\";i:1556725578;}',1556729178),('957fa39681e974394a81d34701c9a9f0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z1mJ\";i:1556725579;}',1556729179),('916008d7f1dee499813a5a4e197ddd04',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s5Bb\";i:1556725648;}',1556729248),('458701777489a284776ddfb7e0ef044a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i4UZ\";i:1556725649;}',1556729249),('c5aba2108375e6d91739a2dacae27758',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ASSU\";i:1556725649;}',1556729249),('4b500d6033b65375739dda8db3e9f2ec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mTMe\";i:1556725651;}',1556729251),('8ac0abdee4613dc83ef678bf22ffd6da',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H3b9\";i:1556725652;}',1556729252),('c50388d406a07048a2d0450da411da3d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p6Ke\";i:1556725659;}',1556729259),('67f1211a2ea70097f160ff18927c1ed4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U0sM\";i:1556725659;}',1556729259),('adaf554d23912079a0bef094eb463bfd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ue77\";i:1556725662;}',1556729262),('894f50eccb6ca67bb5a5b8d8ba729024',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KIic\";i:1556725663;}',1556729263),('140000383ed037ff0cc30f0b094fef61',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wBs0\";i:1556725663;}',1556729263),('d507942c2dbea79f2ce5138c9c1997c9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z0sh\";i:1556725664;}',1556729264),('068fba0d7a0092514909442c4549a894',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bMwl\";i:1556725664;}',1556729264),('79676f4546fcd96b563c1fcf7706ec35',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KdXz\";i:1556725664;}',1556729264),('3cec7b44a42cc53ebc56cfbdde1c16a0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vBsZ\";i:1556725665;}',1556729265),('264277da87789e1e7740b6e2964c9237',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pXy7\";i:1556725668;}',1556729268),('3e102ccdbf1128b2adc933f2bc3ad589',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EfX7\";i:1556725668;}',1556729268),('7b50850ea8d8dcbd571f9743cc2d00ad',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OQle\";i:1556725669;}',1556729269),('aab154904ad7b7e44dee65703239bef1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qoe9\";i:1556725669;}',1556729269),('d631739f3cf7cf8f5f7a850e551df9c6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o5co\";i:1556725669;}',1556729269),('6af6b386d99e2682de21ac9008ae8253',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oy8U\";i:1556725670;}',1556729270),('c9f4b8ff7f86d369355c0ce46843b9ef',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SZNw\";i:1556725670;}',1556729270),('0abe856964df8863d1804260b8323713',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s5zS\";i:1556725670;}',1556729270),('ccb5e329da66af5053afb89e977db87b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dypx\";i:1556725671;}',1556729271),('543c8a4b14f81454d16f99c4e82059c1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qK0E\";i:1556725671;}',1556729271),('a1800f25d243c05170b0568657b73d07',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YljC\";i:1556725671;}',1556729271),('785b10e561a6d4f0d91dec7f2c46a5b3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LLZB\";i:1556725672;}',1556729272),('fe81c482a1d1c562524afa63123271c3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rF45\";i:1556725672;}',1556729272),('62f9161a26d71e0768531ed7270226a0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oBB8\";i:1556725672;}',1556729272),('821bd71ab9450a90f88979c5ca9b4e22',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"guMC\";i:1556725672;}',1556729272),('f68f03d04152d715b2b9b413a7706654',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RNCS\";i:1556725673;}',1556729273),('38d525beef43079ebf486f7d7a0112ec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bEYx\";i:1556725673;}',1556729273),('e723d83a173593d049466c605bedc2e5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tUxd\";i:1556725673;}',1556729273),('6665fb402f68c259ed4b0c5bf1405b1a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zdXS\";i:1556725675;}',1556729275),('9f1032103596a10527c4ec3f30bab537',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Iw2a\";i:1556725676;}',1556729276),('9dd98c32e91129fb13603e37421ec0b6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p76F\";i:1556725676;}',1556729276),('0653720fde0f5d1ad05ae17ed7170b5f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qs2G\";i:1556725676;}',1556729276),('ee6e32eb6c3973792fcb3d5f3a177267',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qR7g\";i:1556725677;}',1556729277),('c70db85c7c74edf69032b7d21cf36ebb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"deYB\";i:1556725677;}',1556729277),('ad4df88e4095e7b927dd8115d77251d0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L6k6\";i:1556725696;}',1556729296),('f624abcbfbefcf5431a7a67fef5b6cfc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CrNz\";i:1556725696;}',1556729296),('5c446021ed4a888c119c4a37e20639f2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M2X7\";i:1556725699;}',1556729299),('e6c74359ff4c5dfc9ee4fa779934eede',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fQfv\";i:1556725699;}',1556729299),('bdc9312ad1676317d62576240ebe3a0c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gcV0\";i:1556725699;}',1556729299),('002c0729b3131e4b24b919b3c98e9f9f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jl2w\";i:1556725700;}',1556729300),('6ec4cc6f7033235a786298ccf1af4d57',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bFfJ\";i:1556725737;}',1556729337),('2345062adec96dfa4a01b3b2dafc5b19',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q877\";i:1556725737;}',1556729337),('ea81443173b56cd6a63f40c209c9c41e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yt5n\";i:1556725771;}',1556729371),('ac234f1e5de6168f3872b72a0fa0b0b2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IaA9\";i:1556725771;}',1556729371),('e8f875727556a36d4eb3cb464acb3aa7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X2fA\";i:1556725772;}',1556729372),('f3288e36388af0f53d2daac1970123b9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CM3Y\";i:1556725784;}',1556729384),('ea38892a18b02eb2a4c612f02bc3ab83',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BeL2\";i:1556725784;}',1556729384),('97a28205f96a98b5b9a898a98c8cdc86',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JSVb\";i:1556725784;}',1556729384),('0f2e76064efe5371bdcb2e36d4344d6f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D3LF\";i:1556725799;}',1556729399),('e6f54c2db47dcc200249fa665034b441',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q300\";i:1556725799;}',1556729399),('82fbad96c1cb55f14d2743186871fed3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S0W9\";i:1556725799;}',1556729399),('693c56be7543032598b793474850c27e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aTPu\";i:1556725817;}',1556729417),('9bc08e3284e7b006e6855b35fa4dd829',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DHU9\";i:1556725817;}',1556729417),('2d3c65717e06f653a6236f49707d3fb8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BGMP\";i:1556725818;}',1556729418),('2b60518abd1c85c190ec8442d6b1963d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZDVN\";i:1556725820;}',1556729420),('7c11a519b4424faa86376482be0d9c73',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kYCC\";i:1556726052;}',1556729652),('a0b13a7a8932ba81e50c7d2eb6637366',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rtDM\";i:1556726053;}',1556729653),('c63965e39b29f1c56079ab291c3a925e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p23i\";i:1556726054;}',1556729654),('b1ddc53cf77978b3e528fbb069d9d2d7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YoO9\";i:1556726072;}',1556729672),('1a7d5614df92d9ec9997445e9e055290',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V4N0\";i:1556726072;}',1556729672),('e2374329ddea4e1d537aa3873041ae42',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qbbC\";i:1556726097;}',1556729697),('b9afdb29b11f95f893ce8854ebd1e258',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BpSh\";i:1556726127;}',1556729727),('5c0fcc7d1d5560e1250595cfdded72c0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pqr4\";i:1556726127;}',1556729727),('87125641de8f54dde596e7b5c27332e7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lfbu\";i:1556726134;}',1556729734),('c07a515037745fefdd5a7430ab17d5d8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fpmv\";i:1556726138;}',1556729738),('1ec2eb46e48acb3f1b54c8025a8e5f2d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lpSJ\";i:1556726138;}',1556729738),('03173a98921c58bb42457f5527185a9d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mvu7\";i:1556726139;}',1556729739),('f200f985dad2b2b4b2c4856ac8315ffa',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c4tO\";i:1556726153;}',1556729753),('c6f80f7ecf09e8f3018b9f0759ee909e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o0b9\";i:1556726153;}',1556729753),('92a79b7cc55977cffefe84917fe086cd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R08j\";i:1556726154;}',1556729754),('339ef51e7cafe90189a0d4d45762435e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G30v\";i:1556726155;}',1556729755),('04ce1c21e0b89125fe692ee05b342633',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f1Rw\";i:1556726155;}',1556729755),('d3f479612e5b351e187dd7b1f1f4bc50',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CvXn\";i:1556726157;}',1556729757),('49143f69dfc6dc8b7bbdde4adc40e9d2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QXTu\";i:1556726158;}',1556729758),('d0b932282e421963a8e06f74ceeafbe3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lp7p\";i:1556726161;}',1556729761),('437d2fa6f34a5ea9bb01958c234f083e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G4C4\";i:1556726164;}',1556729764),('be2bac932ba90ab366f7c291252b5cbc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GUOI\";i:1556726164;}',1556729764),('68ca871acda14e385dbec2f22e2b8dc3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B23T\";i:1556726165;}',1556729765),('b8646752095c979cdcf5b5911d597dbc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w74J\";i:1556726198;}',1556729798),('64ea4e08d54f753182476824c7bbd806',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TI48\";i:1556726203;}',1556729803),('6e4473d5f466a8f1b6b9d2907f186295',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EV98\";i:1556726205;}',1556729805),('ae081fe13e096bfdbaf8c86aa494d4c6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jyyq\";i:1556726206;}',1556729806),('22fe03b3425e89a929847f28829ed0d5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DVqM\";i:1556726207;}',1556729807),('024e00db895b3ae17c027af9efa1c1b8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JOdv\";i:1556726214;}',1556729814),('e1bc7e5fdf7b7a9311763b922e1cd220',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X93I\";i:1556726218;}',1556729818),('c0d897ec37ac689d1101969b6fdb86e8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DslB\";i:1556726219;}',1556729819),('3772d41c49e3fb857a21eb23033809d9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cZ02\";i:1556726343;}',1556729943),('8e1333a64dc1efbf2bcc0dce433dd856',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SbY0\";i:1556726343;}',1556729943),('04e48a4850151db8d731a105a7cf9dbb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JE0A\";i:1556726344;}',1556729944),('6c691178e9d3e051dbd68d8ee4ed4eff',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bv20\";i:1556726353;}',1556729953),('5ea863f10b0c5c1f358641cc132a4243',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wRV5\";i:1556726353;}',1556729953),('c17cc4c9923cc98e187d90854b40adfe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QyQq\";i:1556726353;}',1556729953),('91dd9a832f9625fda7e6d749fd8846b0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PfBo\";i:1556726357;}',1556729957),('9a5981a1ce21e95e547b062bd66a00dc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y00U\";i:1556726357;}',1556729957),('9f2ea55ef50bb17ed2839544f1810557',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"erAr\";i:1556726368;}',1556729968),('5fd42f22dff3f612746c787851b7c3e2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JHOI\";i:1556726369;}',1556729969),('5a874325870ad7274c270f1527189c25',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c4S3\";i:1556726370;}',1556729970),('a29bcc5efe722d869e3209bf73264e4a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TPaG\";i:1556726370;}',1556729970),('ff7b959c17b1eb2b3df0cccc15ba474d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cpSC\";i:1556726371;}',1556729971),('fbb7e754ec34265a052b4545946df11d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AN0K\";i:1556726374;}',1556729974),('241fb6c19fa5adec0639534647a3a0c1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xUg7\";i:1556726374;}',1556729974),('ef240325301f9af4dbac5d33a89cacbe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wT40\";i:1556726375;}',1556729975),('ba47bd733fc2736b743bd814f5fbffc9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xWxt\";i:1556726464;}',1556730064),('1c17824da1e62e0fbd4344dbe4419272',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e6oV\";i:1556726464;}',1556730064),('008f00897806f8de3c0f1c03f45d7569',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vWY6\";i:1556726465;}',1556730065),('129fced9abd084e8357710c9eef1a4f2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TqXz\";i:1556726482;}',1556730082),('79c2cbef961a0498b24608ef528cde0c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lUBM\";i:1556726483;}',1556730083),('aa46475bfa9c4b5e236b1a4bfbd261a8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gkbZ\";i:1556726483;}',1556730083),('83c07ed42feacdcad4cc3ae77570b7e2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W4g7\";i:1556726486;}',1556730086),('7ec5a9e2ee54945deb455c4ee128da77',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j68B\";i:1556726487;}',1556730087),('fce2ddae728978a1f8af786757a990f4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HvrM\";i:1556726487;}',1556730087),('3a1afea0805a2d2747610cd167dc9d6d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x36R\";i:1556726605;}',1556730205),('d077a26e50ede89d6b67c5a43907099a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ry9Z\";i:1556726605;}',1556730205),('266b8715a62f415894ad2b0b1f295526',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gok4\";i:1556726606;}',1556730206),('e2a2f8a76e253c1bd436716b57c3fc3e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UT4t\";i:1556726606;}',1556730206),('edcd6788ad08519d404733f40459a670',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R88w\";i:1556726606;}',1556730206),('93882b5119a7dc79883bfd13fb3260dc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DRLI\";i:1556726607;}',1556730207),('4a8f1c2eeab6b33c3e3b6fa6aa8ea6e9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b0NN\";i:1556726607;}',1556730207),('1283ca9915ec5bbc3d6e2c07305482ab',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aOYO\";i:1556726607;}',1556730207),('91802177d9baa532767fc897ffe66283',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NbUB\";i:1556726608;}',1556730208),('5f58e412db18e0fa06061deddab55a8f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y9n0\";i:1556726608;}',1556730208),('5fe347c1f2fb496ab1652e9d464e9063',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HCcT\";i:1556726609;}',1556730209),('087ec8074c966149be86dee9d871e1c7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B7zK\";i:1556726609;}',1556730209),('a1cf4158ab828014b4da1b7f43730749',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N7ll\";i:1556726609;}',1556730209),('b0913c0ae3c0900abd32c9065c5290ec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K003\";i:1556726610;}',1556730210),('2be79a00e241bad17a5498e1c369bb74',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RKyu\";i:1556726620;}',1556730220),('84aef61af354cb06416953a86cba2e04',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XN6P\";i:1556726621;}',1556730221),('72adc059a33e2239ccf512a98ce70ac5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KMc7\";i:1556726622;}',1556730222),('92d606b93ea6c71daed070348f41ebf0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VR1z\";i:1556726623;}',1556730223),('418c364bf18d1a3acd8ea983fc8ae83d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dELL\";i:1556726623;}',1556730223),('240677f1f04dbe0114b5081fa69aa494',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xk56\";i:1556726623;}',1556730223),('02a0b8aa8f011303dec9bb0c53f20be9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HH9g\";i:1556726624;}',1556730224),('4f92e756490b0bd98de2d04b2e0c5a6c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HK9k\";i:1556726624;}',1556730224),('d71f20e3855c7d7f5e4f0585877f38f0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cg9e\";i:1556726624;}',1556730224),('93a93f283763690b83fe22c202863cb3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OuQ0\";i:1556726643;}',1556730243),('55ff689744928e369980a181b1f9b76a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E3Tf\";i:1556726643;}',1556730243),('f38ac1ae53eeda916e925757a790a210',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fZlQ\";i:1556726643;}',1556730243),('83168729fc13b7afaf710b63e49caf84',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I0ok\";i:1556726650;}',1556730250),('118949c9f45513e13c2773c3c7265cae',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xfek\";i:1556726650;}',1556730250),('d83a41e24cdfd7df9fb5c8b32804ca32',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r00w\";i:1556726650;}',1556730250),('90cf78dd62736cffa2786dea6e4db208',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bj3W\";i:1556726800;}',1556730400),('8d1cf23212bb4e376d80b9f5f6db5ae2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nx7W\";i:1556726804;}',1556730404),('10e2078674a2b86797e7e0a90e6342ca',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kgN0\";i:1556726971;}',1556730571),('2081fdd66c310ccce48244a4cb9e283e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rZqP\";i:1556726977;}',1556730577),('76bb4032404c8e7467f5c2c5455f1191',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wHeo\";i:1556726977;}',1556730577),('ca503f0687a86174b8f710b4943969b9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TLa2\";i:1556726978;}',1556730578),('347cd20aa92f91401d9de05bcc90d557',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IlTb\";i:1556726980;}',1556730580),('656986ee60bbd995ebe5625510c6f4f6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tBRi\";i:1556726984;}',1556730584),('ed1a7817e4c2285451887c57d21945de',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WzuU\";i:1556726984;}',1556730584),('a197ecc9bc8693498e79b6e19d6beb23',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kz34\";i:1556726985;}',1556730585),('e39e93e4768e3a5d78c6ed4497b63fc8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Psni\";i:1556726987;}',1556730587),('6d36d8ecca3f8d80032767425ddfe51e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cx71\";i:1556726987;}',1556730587),('3fbfbc69a3f90cfa1c085dafdf001319',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f48E\";i:1556727232;}',1556730832),('9e93954dd7d5d57b3ab5c0bc6a210ab7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OjLl\";i:1556727312;}',1556730912),('b761a6f04d6e1ba10c5d19a96af9e8c7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G5A7\";i:1556727313;}',1556730913),('6b209fdb8178b62db40af2b04c972594',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W39k\";i:1556727313;}',1556730913),('2af84a47a8dea438912ddad21f336b15',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O433\";i:1556727323;}',1556730923),('b981d21a73973d07fd9611146afc18c0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pr6r\";i:1556727323;}',1556730923),('7a52ee55d1f7295ad4e226e70ee51226',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CL66\";i:1556727323;}',1556730923),('990f062382c7414598e78b04d50cf4e8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YMt8\";i:1556727333;}',1556730933),('e6690a6f3dd11fc563cd0e84b4ae7ad7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PPS8\";i:1556727333;}',1556730933),('afff3ea0f53db350a058b4bf31a60eba',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B4e0\";i:1556727334;}',1556730934),('fd223dd3a58f4ed0706d6afccb860af1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MQZ6\";i:1556727347;}',1556730947),('0c5497197394662c1c44331740c672c0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O48f\";i:1556727347;}',1556730947),('face6b9909cada08275a8f7ad96b2bc3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V3PE\";i:1556727347;}',1556730947),('61bc72b439f7994b81fc5a34ce36fe5e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bJHZ\";i:1556727352;}',1556730952),('6352a96beed782e1f48010519d91aa01',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R4o5\";i:1556727353;}',1556730953),('7029aa2a3a68acaed382636dfbd36f90',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xi77\";i:1556727353;}',1556730953),('3aa8d596d706f2d070a0c2ef22074211',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BsHs\";i:1556727355;}',1556730955),('eeecf2066af4ce2fca953cff835c21be',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AG9K\";i:1556727355;}',1556730955),('fff71c42ba53c4a01c0ddd860a4d9a1d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:6:{s:4:\"ElML\";i:1556728256;s:4:\"Zi66\";i:1556728257;s:4:\"BznG\";i:1556728366;s:4:\"N76D\";i:1556728368;s:4:\"wgpW\";i:1556728456;s:4:\"Qxn8\";i:1556728457;}',1556732057),('b9659d34ffd6b1ec5d39a2ea2a3ef1e0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oEkw\";i:1556727363;}',1556730963),('9dd95a3bf5310062fbbd892d6397d5a2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tbyo\";i:1556727363;}',1556730963),('35db1e7fa9838c634c0e082145f36eb0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z1MF\";i:1556727515;}',1556731115),('4341c343391dd8d51694fc922b8a1665',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LJ6Y\";i:1556727515;}',1556731115),('5cfebd89812712941b729fc572d06bb7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QZqz\";i:1556727516;}',1556731116),('36a9d0373fc5d07821c1d304bc91324f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oz4X\";i:1556727626;}',1556731226),('6ac5f3c4ffe00a6169a5fb53aca0ae65',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iGmm\";i:1556727626;}',1556731226),('e5a4823d1b34d6b551a3426304624984',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iWKg\";i:1556727626;}',1556731226),('217d73b07e2e68030760832607433e88',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J4C2\";i:1556727652;}',1556731252),('1950b5999f02f5f35816c61d4117040a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"My67\";i:1556727652;}',1556731252),('1a163df05020dd539ec465f70fae266a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AEj1\";i:1556727653;}',1556731253),('a65ff3ec8d07502605d3af74a63d4abd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SyH8\";i:1556727671;}',1556731271),('a21a99faa159a8856f0dc9dfc770eb84',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ONIz\";i:1556727671;}',1556731271),('882d77957f998470074a73d25f5f52c5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W3eM\";i:1556727672;}',1556731272),('7419f0cb366dda899c698648c2a32437',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BH7t\";i:1556727677;}',1556731277),('b95c3310fdc0c7d2a8434620d19d06cb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QLnZ\";i:1556727677;}',1556731277),('585c6f0cc6653de85e197d09552d6560',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U1cV\";i:1556727677;}',1556731277),('bf81550ea0ec54c754899390da4c9b26',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RRDg\";i:1556728229;}',1556731829),('e8bb4db62e00a74a055f1f23c2f442be',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I559\";i:1556728232;}',1556731832),('90b5afe36301c104fec0db2b9342dd5e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DLM3\";i:1556728234;}',1556731834),('ce70fb952b76020f14e59bd5e2855982',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mpP3\";i:1556728235;}',1556731835),('107f1e4ff3903517da9b3d1ea613c302',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vHJh\";i:1556728235;}',1556731835),('5a1173f2645ad14753225e2bfe708316',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U20O\";i:1556728247;}',1556731847),('81d8940196ffcec937448aabc96d42ce',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uk4E\";i:1556728247;}',1556731847),('457138c27e853cd4530260d8d3a46ae9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"axNK\";i:1556728248;}',1556731848),('e5be3975caa658349cf5be4726cc7c77',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pihx\";i:1556728250;}',1556731850),('65aa83bbe51dc31140e88b9a188a2fef',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y30q\";i:1556728253;}',1556731853),('753b37e6b71c35a1cf2eaf670b295051',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SU6S\";i:1556728253;}',1556731853),('faea409c20a07d3052967115fff98fd0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WC3Y\";i:1556728254;}',1556731854),('63b3f5f50cdab3ac8e03815c8a7d8412',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"swM0\";i:1556728361;}',1556731961),('cde6bc6dedc5da9d30d7798406364bdf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i8l6\";i:1556728365;}',1556731965),('a9af26c8d5daeee072e0138846f3ed1e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uzvr\";i:1556728365;}',1556731965),('d673fa6d609b6d5058f6c2b08d9f11e2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M3cH\";i:1556728366;}',1556731966),('51546782c434aa6429541b511681e702',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dMz5\";i:1556728451;}',1556732051),('78d0b738d86623f2c70859e77d68dbf3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YuZH\";i:1556728453;}',1556732053),('309ce5edbdc61984f230000953334e28',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e3li\";i:1556728453;}',1556732053),('9ecaace409093eadadce6b234b2e44d3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"irRK\";i:1556728454;}',1556732054),('3963422a7d62471165e5843362c2ef20',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s7jX\";i:1556728474;}',1556732074),('9b078edea07f8531e1b32de34e0b8d7b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xpPp\";i:1556728474;}',1556732074),('bfffedd9ca063aee54ea75c04517a1c2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sBpp\";i:1556728534;}',1556732134),('a50f5489bf6488d132d8a2b52c5c9b70',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L97Y\";i:1556728534;}',1556732134),('f9a68d150219a5fa86fdb853d50fc0f2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DFW1\";i:1556728535;}',1556732135),('eac2ef0c1ce05b80d5ed76044ade4365',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S4X6\";i:1556728544;}',1556732144),('f665bce29414b7bbcfd693a792a94350',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WL3k\";i:1556728545;}',1556732145),('656b9690ddf5080a08774269a78d7118',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TVBn\";i:1556728545;}',1556732145),('af239f6c4b12b765f3fc2893b695895f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"clH9\";i:1556728961;}',1556732561),('8d86cb13f86b75138d59df3a3556b13d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c4ip\";i:1556728962;}',1556732562),('2c53c1d841432418423b678ede2a8bc6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ouga\";i:1556728963;}',1556732563),('388dd0b521d93323f6c017f53f26ec3e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OoSd\";i:1556728964;}',1556732564),('a5fd30d7718012bb0432cb5609c60a29',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CF7R\";i:1556728965;}',1556732565),('50d4bd61c9aa252f37c20471f077087b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H65T\";i:1556728965;}',1556732565),('ca173e97901f075cdc481a98fcbd2a6a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EaAI\";i:1556728967;}',1556732567),('5a576914d810df9ef827242aa330ef48',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YzVO\";i:1556728967;}',1556732567),('80b2f27b1cf2a5e96f5e30178c35d9e7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QZT0\";i:1556728968;}',1556732568),('ec6613fe09e4befe8318370c7d2299f7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y668\";i:1556728984;}',1556732584),('618b518f07b28bb5ed49db77f97c84a6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LtS9\";i:1556728984;}',1556732584),('31fd0bf4003911d13019371082b76f73',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tyV1\";i:1556728985;}',1556732585),('5965a4acc7e973d351deac08fc8f122e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ts4e\";i:1556728989;}',1556732589),('8941ed8da2e027987ebf1d4053a8f3dd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p115\";i:1556728990;}',1556732590),('d204c7f019036eb9824fbcbbb89ab8ec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wcCY\";i:1556728990;}',1556732590),('7e2b56f8b26b5420e7a9a81f789ac8f7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aZKL\";i:1556729000;}',1556732600),('53356c3c6410bd0e18505137f7538f8c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q433\";i:1556729001;}',1556732601),('7c2f944732481cc2e7a5b5a94d818659',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N1OQ\";i:1556729001;}',1556732601),('8de9b07d398792c793b66bad18d6204f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"poU4\";i:1556729017;}',1556732617),('a8985b806496500535e521ddb001321b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SvWT\";i:1556729017;}',1556732617),('ab5f4a36fdcd7cf1c3adb25a1688e084',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LzYS\";i:1556729019;}',1556732619),('f1e9bdf74fcb9b4b94a76f6df00e4657',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"doX4\";i:1556729020;}',1556732620),('87884eea51906da59a1761aa6880e40b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uraq\";i:1556729020;}',1556732620),('0fc8305e79fd1182bbb13361c9791fff',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L6KC\";i:1556729023;}',1556732623),('6b522e2ab14148c80a5a58b5f1420bcb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ST01\";i:1556729023;}',1556732623),('e18c82cb64eac1922f9d499c3589d6bd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sl2W\";i:1556729024;}',1556732624),('d719da8ed0226cdf700011678710f0a9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nn8J\";i:1556729113;}',1556732713),('e8c19de465fe1805d500ddd1e2ab3fbb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xR52\";i:1556729113;}',1556732713),('4c6ced690ca47d7cba839f02dc611f73',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zrrR\";i:1556729114;}',1556732714),('e81e0370ec18762f9a5def21e57e821a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dLh5\";i:1556729124;}',1556732724),('56d781c4123a3fee65c9efb96485fe41',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C8TQ\";i:1556729125;}',1556732725),('62f26653e3eb0601da251c2036952a6a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p633\";i:1556729125;}',1556732725),('b8e888d2c3e01a6cbf8804d9b091f155',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pM7G\";i:1556729174;}',1556732774),('e2d639ec38763cff316307fc54712ed0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F8tA\";i:1556729174;}',1556732774),('f04b366ad9e1572410409060c8e48b01',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZjBj\";i:1556729175;}',1556732775),('2be8100e15291bfa441658e3b67c36cb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ms8n\";i:1556729183;}',1556732783),('92ec3e832a3976e19d1f875537952b20',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gXXQ\";i:1556729183;}',1556732783),('d4aad4a96d9c1069b470a218f3158b5f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qORZ\";i:1556729184;}',1556732784),('8762581ff210e09c7f975c112a19d44a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fwb7\";i:1556729197;}',1556732797),('e8e587c1120077cad410bb444838cf57',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O5Fv\";i:1556729197;}',1556732797),('86f2e79cc22901c28a6eef8ae97718c5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"meP7\";i:1556729197;}',1556732797),('4a71e00db4950e2a9a8d21bafc6aa0cd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JBBV\";i:1556729202;}',1556732802),('b18e6b69cf0e6c7b9c9504f100b0b7a3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CB6b\";i:1556729202;}',1556732802),('6bf018ed26e2619bdb8b2f5fed3b63cb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NPP5\";i:1556729203;}',1556732803),('56fd463b8ac2f8a8f88ca5859865faaf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NH77\";i:1556729456;}',1556733056),('73484da91676f3cb688d9faac9eb28d4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mQvY\";i:1556729456;}',1556733056),('ccd95412b53bdf9c0cf282d03a9a16d0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ubQj\";i:1556729457;}',1556733057),('72ef3b37a119a5a40bf2197d9153ad03',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HfxL\";i:1556729462;}',1556733062),('1e6c8af32b09936c3983411efdfff7c1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SmAo\";i:1556729462;}',1556733062),('f2cb75fe24a0d6b6183fd6d07c32aba5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M237\";i:1556729462;}',1556733062),('85016a606b25c4598157e5c057956976',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dc8I\";i:1556729542;}',1556733142),('87d42525b97e965b5998a2e195358f63',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tKEa\";i:1556729542;}',1556733142),('4b1a4caa73cd5cafb8f208f880009704',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IOc4\";i:1556729543;}',1556733143),('959750905be8540dcf0ac7e731d471a3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GZmi\";i:1556729629;}',1556733229),('5a728d08dd371f096bf4720ca1061161',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XZ61\";i:1556729630;}',1556733230),('eaff2de6376e4445cdbfd670fa3318bc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kI4a\";i:1556729630;}',1556733230),('06301556e7e67e603ad83519b8fbe69b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AaEk\";i:1556729698;}',1556733298),('3ea115589aa0244928c4f4d51652361a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MTNT\";i:1556729698;}',1556733298),('ab4a1358057dd2b708cba59843221380',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TwPP\";i:1556729699;}',1556733299),('4f977199aa73a4b186b4855cd0a9ee93',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UsW7\";i:1556729843;}',1556733443),('772b5f58e609bc89ef892eee19ade039',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oyg9\";i:1556729843;}',1556733443),('b96a8ce14d0d7d8276f2e08fa0499515',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jlaG\";i:1556729843;}',1556733443);
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
INSERT INTO `ims_hr_album_app` VALUES (1,2,11,'images/2/hr_album/2019/05/b0ObMxxT1X21ci0OTBrOtOoAb9O0l5.png','22','33','44','44',1556719981);
/*!40000 ALTER TABLE `ims_hr_album_app` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_data`
--

LOCK TABLES `ims_hr_album_data` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_data` DISABLE KEYS */;
INSERT INTO `ims_hr_album_data` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','送上我亲手制作的相册，快看看吧','qiangwei','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png\";}}','http://dl.stream.qqmusic.qq.com/C1000003FhfU2GR1tu.m4a?fromtag=0',2,0,'',0,1,0,1556720660),(2,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，SADASDAS','shiguang','a:1:{i:0;a:2:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/n2SH07hsqUdq279q79zqFqqn4Noqln.jpg\";s:4:\"text\";s:0:\"\";}}','http://dl.stream.qqmusic.qq.com/C100004TSZYg2HaHQi.m4a?fromtag=0',2,0,'',0,1,0,1556726053),(3,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556726138),(4,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/fZNbiV2OymfziBIF8m0nnIFif344Yo.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,1,0,1556726164),(5,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/rbiR03BWS035h0I53iOo5723PS735i.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,1,0,1556726206),(6,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/NeZVbXK66EKqyWve9B7MKBBCZi7kXB.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728235),(7,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/Bnu7g0577l47N4IrFwJKunrO7GkOj4.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728253),(8,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/pKqDl9iLzx6E9e5QeK95QDGzL9kg9L.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728365),(9,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019/05/02/S1okoPL3dssoPOlHlm0oHF0OdOrw1S.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728453);
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_formdata`
--

LOCK TABLES `ims_hr_album_formdata` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_formdata` DISABLE KEYS */;
INSERT INTO `ims_hr_album_formdata` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556720645),(2,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556725651),(3,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556725820),(4,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556726134),(5,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556726161),(6,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556726203),(7,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728232),(8,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728250),(9,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728361),(10,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','the formId is a mock one',1556728451);
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
  PRIMARY KEY (`id`),
  KEY `index_uniacid` (`uniacid`),
  KEY `index_openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_user`
--

LOCK TABLES `ims_hr_album_user` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_user` DISABLE KEYS */;
INSERT INTO `ims_hr_album_user` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132',0.00,0,0,1556720634);
/*!40000 ALTER TABLE `ims_hr_album_user` ENABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_message_notice_log`
--

LOCK TABLES `ims_message_notice_log` WRITE;
/*!40000 ALTER TABLE `ims_message_notice_log` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_visit`
--

LOCK TABLES `ims_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_stat_visit` DISABLE KEYS */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_system_stat_visit`
--

LOCK TABLES `ims_system_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_system_stat_visit` DISABLE KEYS */;
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
INSERT INTO `ims_uni_account_modules` VALUES (1,2,'hr_album',1,'a:20:{s:9:\"spacename\";s:12:\"蒙大教育\";s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:0:\"\";s:8:\"deftitle\";s:42:\"这是我家宝贝的相册，快来看看\";s:8:\"baseskin\";s:6:\"dongri\";s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:1;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:1;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"c1HeRi-0zzp-vvIySFCmsShxapOdiKFoBeziDSkz\";s:9:\"secretkey\";s:40:\"nERfgvtgrVcMpEXsJd4N3PjeTKWMsxA07ZbmxCsQ\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:23:\"https://mdcdn.iamlj.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";s:1:\"0\";s:8:\"sharepic\";s:60:\"images/2/hr_album/2019/05/j5ws14iLiOO16nLZw3oLss4so7O1So.jpg\";s:4:\"kfbg\";s:60:\"images/2/hr_album/2019/05/LK79KkBwbgvWX5GBgGV6gt86GkU59G.png\";s:6:\"morebg\";s:60:\"images/2/hr_album/2019/05/DVW8Kk72ZwLRIQSVO08LiP6V7v2zNd.png\";s:6:\"ishare\";s:1:\"0\";s:5:\"isico\";N;s:8:\"wxyellow\";s:1:\"0\";s:5:\"ispay\";s:1:\"0\";s:6:\"dsdesc\";s:6:\"打赏\";s:5:\"llads\";s:0:\"\";s:4:\"iskf\";s:1:\"0\";s:7:\"paydesc\";s:24:\"打赏页面文字描述\";s:10:\"list_style\";s:1:\"2\";s:10:\"templateid\";s:20:\"打赏通知模板ID\";}',0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_group`
--

LOCK TABLES `ims_uni_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_group` DISABLE KEYS */;
INSERT INTO `ims_uni_group` VALUES (1,0,'体验套餐服务','N;','N;',0);
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
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users`
--

LOCK TABLES `ims_users` WRITE;
/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,1,0,'admin','de20e9363ac29865c18f74f50300a4463564e748','ca7659ab',0,0,1556718796,'',1556727966,'127.0.0.1','',0,0,0,'',0);
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_group`
--

LOCK TABLES `ims_users_group` WRITE;
/*!40000 ALTER TABLE `ims_users_group` DISABLE KEYS */;
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

-- Dump completed on 2019-05-02  1:02:22
