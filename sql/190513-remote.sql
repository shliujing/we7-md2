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
INSERT INTO `ims_core_cache` VALUES ('setting','a:11:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";s:0:\"\";s:7:\"cloudip\";a:0:{}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}s:18:\"module_receive_ban\";a:0:{}s:5:\"basic\";a:1:{s:8:\"template\";s:7:\"default\";}s:8:\"platform\";a:5:{s:5:\"token\";s:32:\"ip88YcfPJ41pR88c00cRz70XYPrx8oRX\";s:14:\"encodingaeskey\";s:43:\"t06XK6itHobkTJibXAhto709kkaxxxxX0KaIItKTo7k\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}}'),('system_frame','a:10:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:5:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"bind_domain\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"域名绑定\";s:3:\"url\";s:36:\"./index.php?c=profile&a=bind-domain&\";s:15:\"permission_name\";s:19:\"profile_bind_domain\";s:4:\"icon\";s:17:\"wi wi-bind-domain\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:10:\"statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:3:\"app\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:31:\"./index.php?c=statistics&a=app&\";s:15:\"permission_name\";s:14:\"statistics_app\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:3:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"phoneapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:11:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=1\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=4\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"welcome\";a:3:{s:5:\"title\";s:12:\"系统首页\";s:4:\"menu\";a:1:{s:14:\"system_welcome\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统首页应用\";s:3:\"url\";s:53:\"./index.php?c=module&a=manage-system&system_welcome=1\";s:15:\"permission_name\";s:14:\"system_welcome\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:7:\"founder\";b:1;}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=5\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:51:\"./index.php?c=module&a=manage-system&account_type=6\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:3:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}s:25:\"system_user_founder_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"副创始人组\";s:3:\"url\";s:32:\"./index.php?c=founder&a=display&\";s:15:\"permission_name\";s:21:\"system_founder_manage\";s:4:\"icon\";s:16:\"wi wi-co-founder\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:18:\"添加创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_add\";}i:1;a:2:{s:5:\"title\";s:18:\"编辑创始人组\";s:15:\"permission_name\";s:25:\"system_founder_group_post\";}i:2;a:2:{s:5:\"title\";s:18:\"删除创始人组\";s:15:\"permission_name\";s:24:\"system_founder_group_del\";}i:3;a:2:{s:5:\"title\";s:15:\"添加创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_add\";}i:4;a:2:{s:5:\"title\";s:15:\"编辑创始人\";s:15:\"permission_name\";s:24:\"system_founder_user_post\";}i:5;a:2:{s:5:\"title\";s:15:\"删除创始人\";s:15:\"permission_name\";s:23:\"system_founder_user_del\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:17:\"system_statistics\";a:2:{s:5:\"title\";s:6:\"统计\";s:4:\"menu\";a:1:{s:23:\"system_account_analysis\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"访问统计\";s:3:\"url\";s:35:\"./index.php?c=statistics&a=account&\";s:15:\"permission_name\";s:23:\"system_account_analysis\";s:4:\"icon\";s:17:\"wi wi-statistical\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:4:\"site\";a:8:{s:5:\"title\";s:12:\"站点管理\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:7:\"section\";a:3:{s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:4:\"help\";a:9:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:5:\"store\";a:7:{s:5:\"title\";s:6:\"商城\";s:4:\"icon\";s:11:\"wi wi-store\";s:3:\"url\";s:43:\"./index.php?c=home&a=welcome&do=ext&m=store\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}}'),('userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('module_receive_enable','a:0:{}'),('we7::site_store_buy_1','a:0:{}'),('we7:module_info:basic','a:31:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/basic/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:news','a:31:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:54:\"https://md.iamlj.com/addons/news/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:music','a:31:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/music/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:userapi','a:31:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:143:\"自定义接口又称第三方接口，可以让开发者更方便的接入RubySn0w系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"https://md.iamlj.com/addons/userapi/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:recharge','a:31:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/recharge/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:custom','a:31:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/custom/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:images','a:31:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/images/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:video','a:31:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/video/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:voice','a:31:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/voice/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:chats','a:31:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/chats/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:wxcard','a:31:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:21:\"http://www.baidu.com/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:56:\"https://md.iamlj.com/addons/wxcard/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_info:store','a:31:{s:3:\"mid\";s:2:\"12\";s:4:\"name\";s:5:\"store\";s:4:\"type\";s:8:\"business\";s:5:\"title\";s:12:\"站内商城\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:12:\"站内商城\";s:11:\"description\";s:12:\"站内商城\";s:6:\"author\";s:13:\"RubySn0w Team\";s:3:\"url\";s:20:\"http://www.baidu.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"0\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:55:\"https://md.iamlj.com/addons/store/icon.jpg?v=1556718803\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('unisetting:1','a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}'),('uniaccount:1','a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"4\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"alipay\";a:6:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:6:\"wechat\";a:7:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}s:8:\"delivery\";a:3:{s:6:\"switch\";b:0;s:15:\"recharge_switch\";b:0;s:10:\"pay_switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:61:\"https://md.iamlj.com/attachment/headimg_1.jpg?time=1556718804\";s:6:\"qrcode\";s:60:\"https://md.iamlj.com/attachment/qrcode_1.jpg?time=1556718804\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:module:all_uninstall','a:2:{s:6:\"expire\";i:1557542526;s:4:\"data\";a:7:{s:13:\"cloud_m_count\";N;s:7:\"modules\";N;s:9:\"app_count\";i:0;s:11:\"wxapp_count\";i:0;s:12:\"webapp_count\";i:0;s:14:\"phoneapp_count\";i:0;s:13:\"welcome_count\";i:0;}}'),('we7:unimodules::','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:all_cloud_upgrade_module:','a:2:{s:6:\"expire\";i:1556720604;s:4:\"data\";a:0:{}}'),('we7:uni_group','a:1:{i:1;a:9:{s:2:\"id\";s:1:\"1\";s:9:\"owner_uid\";s:1:\"0\";s:4:\"name\";s:18:\"体验套餐服务\";s:7:\"modules\";a:0:{}s:9:\"templates\";s:2:\"N;\";s:7:\"uniacid\";s:1:\"0\";s:8:\"phoneapp\";a:0:{}s:6:\"webapp\";a:0:{}s:5:\"wxapp\";a:0:{}}}'),('we7:user_modules:1','a:13:{i:0;s:8:\"hr_album\";i:1;s:5:\"store\";i:2;s:6:\"wxcard\";i:3;s:5:\"chats\";i:4;s:5:\"voice\";i:5;s:5:\"video\";i:6;s:6:\"images\";i:7;s:6:\"custom\";i:8;s:8:\"recharge\";i:9;s:7:\"userapi\";i:10;s:5:\"music\";i:11;s:4:\"news\";i:12;s:5:\"basic\";}'),('unisetting:2','a:0:{}'),('uniaccount:2','a:26:{s:4:\"acid\";s:1:\"2\";s:7:\"uniacid\";s:1:\"2\";s:5:\"token\";s:32:\"i1p1GgHDC6GGVIZHzbhHBiNs0gg1pbG1\";s:14:\"encodingaeskey\";s:43:\"oxiILGyQvnvZvWLjqTZMUpTrZWB99GJylPgrVpiBmmd\";s:5:\"level\";s:1:\"1\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:15:\"gh_599f6442e255\";s:3:\"key\";s:18:\"wxf9c6940d828e7ea3\";s:6:\"secret\";s:32:\"1578bfff06cf77e96113e820f40c8f58\";s:4:\"name\";s:12:\"蒙大教育\";s:9:\"appdomain\";s:0:\"\";s:11:\"encrypt_key\";s:18:\"wxf9c6940d828e7ea3\";s:4:\"type\";s:1:\"4\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:0:{}s:7:\"setting\";a:0:{}s:10:\"grouplevel\";N;s:4:\"logo\";s:72:\"https://backend.chinajinglu.com/attachment/headimg_2.jpg?time=1556938672\";s:6:\"qrcode\";s:71:\"https://backend.chinajinglu.com/attachment/qrcode_2.jpg?time=1556938672\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=2\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}'),('we7:lastaccount:oJ0X7','a:1:{s:5:\"wxapp\";i:2;}'),('we7:$cache_last_account_type','s:5:\"wxapp\";'),('we7:2:site_store_buy_4','a:0:{}'),('we7:unimodules:2:1','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('we7:wxapp_version:1','a:16:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:7:\"multiid\";s:1:\"0\";s:7:\"version\";s:3:\"1.0\";s:11:\"description\";s:5:\"1.0.3\";s:7:\"modules\";a:1:{i:0;a:38:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/hr_album/icon.jpg?v=1556718813\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;s:6:\"config\";a:0:{}s:7:\"enabled\";i:1;s:8:\"shortcut\";N;s:7:\"account\";N;s:12:\"cover_entrys\";a:0:{}s:12:\"defaultentry\";N;s:7:\"newicon\";N;}}s:13:\"design_method\";s:1:\"3\";s:8:\"template\";s:1:\"0\";s:9:\"quickmenu\";a:6:{s:5:\"color\";s:7:\"#428bca\";s:14:\"selected_color\";s:4:\"#0f0\";s:8:\"boundary\";s:4:\"#fff\";s:7:\"bgcolor\";s:7:\"#bebebe\";s:4:\"show\";i:1;s:5:\"menus\";a:2:{i:0;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}i:1;a:5:{s:4:\"name\";s:6:\"首页\";s:4:\"icon\";s:36:\"./resource/images/bottom-default.png\";s:12:\"selectedicon\";s:36:\"./resource/images/bottom-default.png\";s:3:\"url\";N;s:12:\"defaultentry\";N;}}}s:10:\"createtime\";s:10:\"1556719643\";s:4:\"type\";s:1:\"0\";s:8:\"entry_id\";s:1:\"0\";s:7:\"appjson\";s:0:\"\";s:15:\"default_appjson\";s:0:\"\";s:11:\"use_default\";s:1:\"0\";s:12:\"cover_entrys\";a:0:{}}'),('we7:unimodules:2:','a:13:{s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}}'),('accesstoken:wxe7bc1c3c7a9ff198','a:2:{s:5:\"token\";s:157:\"21_-CuQOyWR77Uydy7sIv_-iZmK04ZrB4OtXSAK9xI8M-quMlTptmdhFhWTddncYcE0kmYuo4C55zJZD5T3Es-LSvXq2X4gNY14ZbnrVhY_CZ1--K3hKxoHDmjtFTzh5lhGqXM_ir86Gv0iE3erJQXdADAPWD\";s:6:\"expire\";i:1556945040;}'),('we7:module_info:hr_album','a:31:{s:3:\"mid\";s:2:\"13\";s:4:\"name\";s:8:\"hr_album\";s:4:\"type\";s:8:\"activity\";s:5:\"title\";s:21:\"酷炫小程序相册\";s:7:\"version\";s:3:\"4.4\";s:7:\"ability\";s:21:\"酷炫小程序相册\";s:11:\"description\";s:21:\"酷炫小程序相册\";s:6:\"author\";s:9:\"新源代\";s:3:\"url\";s:19:\"http://www.xydai.cn\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:0:{}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:2:\"N;\";s:13:\"title_initial\";s:1:\"K\";s:13:\"wxapp_support\";s:1:\"2\";s:11:\"app_support\";s:1:\"1\";s:15:\"welcome_support\";s:1:\"1\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"1\";s:16:\"phoneapp_support\";s:1:\"1\";s:2:\"id\";N;s:10:\"modulename\";N;s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"https://md.iamlj.com/addons/hr_album/icon.jpg?v=1556894451\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:11:\"is_relation\";b:0;}'),('we7:module_setting:2:hr_album','a:7:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"2\";s:6:\"module\";s:8:\"hr_album\";s:7:\"enabled\";s:1:\"1\";s:8:\"settings\";s:1354:\"a:20:{s:9:\"spacename\";s:12:\"蒙大教育\";s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:0:\"\";s:8:\"deftitle\";s:42:\"这是我家宝贝的相册，快来看看\";s:8:\"baseskin\";s:6:\"dongri\";s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:0;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:0;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"c1HeRi-0zzp-vvIySFCmsShxapOdiKFoBeziDSkz\";s:9:\"secretkey\";s:40:\"nERfgvtgrVcMpEXsJd4N3PjeTKWMsxA07ZbmxCsQ\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:23:\"https://mdcdn.iamlj.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";s:1:\"0\";s:8:\"sharepic\";s:60:\"images/2/hr_album/2019/05/j5ws14iLiOO16nLZw3oLss4so7O1So.jpg\";s:4:\"kfbg\";s:62:\"images/2/hr_album/2019/05/02aS6RpfxSjPJzS1ffYfM22irM1RI5FR.jpg\";s:6:\"morebg\";s:60:\"images/2/hr_album/2019/05/DVW8Kk72ZwLRIQSVO08LiP6V7v2zNd.png\";s:6:\"ishare\";s:1:\"0\";s:5:\"isico\";N;s:8:\"wxyellow\";s:1:\"0\";s:5:\"ispay\";s:1:\"0\";s:6:\"dsdesc\";s:6:\"打赏\";s:5:\"llads\";s:0:\"\";s:4:\"iskf\";s:1:\"0\";s:7:\"paydesc\";s:24:\"打赏页面文字描述\";s:10:\"list_style\";s:1:\"2\";s:10:\"templateid\";s:20:\"打赏通知模板ID\";}\";s:8:\"shortcut\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";}'),('we7:lastaccount:uA9ZO','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:jNIaY','a:2:{s:5:\"wxapp\";s:1:\"2\";s:7:\"account\";i:1;}'),('we7:2:site_store_buy_6','i:0;'),('we7:1:site_store_buy_1','a:0:{}'),('we7:unimodules:1:','a:13:{s:6:\"wxcard\";a:1:{s:4:\"name\";s:6:\"wxcard\";}s:4:\"news\";a:1:{s:4:\"name\";s:4:\"news\";}s:6:\"images\";a:1:{s:4:\"name\";s:6:\"images\";}s:5:\"store\";a:1:{s:4:\"name\";s:5:\"store\";}s:5:\"music\";a:1:{s:4:\"name\";s:5:\"music\";}s:5:\"video\";a:1:{s:4:\"name\";s:5:\"video\";}s:8:\"hr_album\";a:1:{s:4:\"name\";s:8:\"hr_album\";}s:7:\"userapi\";a:1:{s:4:\"name\";s:7:\"userapi\";}s:5:\"voice\";a:1:{s:4:\"name\";s:5:\"voice\";}s:8:\"recharge\";a:1:{s:4:\"name\";s:8:\"recharge\";}s:5:\"chats\";a:1:{s:4:\"name\";s:5:\"chats\";}s:5:\"basic\";a:1:{s:4:\"name\";s:5:\"basic\";}s:6:\"custom\";a:1:{s:4:\"name\";s:6:\"custom\";}}'),('we7:2:site_store_buy_1','a:0:{}'),('we7:2:site_store_buy_5','a:0:{}'),('we7:lastaccount:voTa4','a:2:{s:8:\"hr_album\";a:3:{s:11:\"module_name\";s:8:\"hr_album\";s:7:\"uniacid\";s:1:\"2\";s:10:\"version_id\";s:1:\"1\";}s:5:\"wxapp\";s:1:\"2\";}'),('we7:lastaccount:c3ihA','a:1:{s:5:\"wxapp\";s:1:\"2\";}'),('accesstoken:wxf9c6940d828e7ea3','a:2:{s:5:\"token\";s:157:\"21_b3E_jYV2JXz3S8LdnypfcQjGBRnT_w5lWOutYVDvd-HiDiQ3qMcXyXjuhpM_TXRCd3C7WDHPXMBYPnKZ9IowmY_Pc6gw6ELocxpZjlfpE9xQOS3k1FUOGreP33S9TzTeZmvl8Wjh_aXyiDh3BQZeACAVKT\";s:6:\"expire\";i:1557377128;}');
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
INSERT INTO `ims_core_sessions` VALUES ('5eff9950c23f19116f0a16e9725b17b1',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D1sU\";i:1556942255;}',1556945855),('b8425538e4fc88ab8b7981397d7dce7e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j0c0\";i:1556942255;}',1556945855),('09a193b8b089da079340feb4e1152649',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FAQv\";i:1556942255;}',1556945855),('623f0a4e4d52226b83b40a80c0c6f4e8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ypzi\";i:1556942252;}',1556945852),('7d23ccaecfc7975197d9c079fd91d8da',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e372\";i:1556942249;}',1556945849),('17b4993495cbcb82919adcbbf2a7e3e7',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wzjb\";i:1556942249;}',1556945849),('093aca2cf77c39466bba38a13931a9e9',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KqV8\";i:1556942249;}',1556945849),('02d00a48416add66ae5b839bbb44a6ea',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I1E1\";i:1556942249;}',1556945849),('c08b5bfc3bbb9632aedbf503b25fae4a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KAb5\";i:1556942247;}',1556945847),('5999399efe5300c9e7fe1131137ab13e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mq6X\";i:1556942247;}',1556945847),('afd37a5d3d5a9efa321659e655fb2ec2',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q55z\";i:1556942246;}',1556945846),('d9ae3b39fd770d4dccb39f9bd85a2c82',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tqHE\";i:1556942246;}',1556945846),('920927378463a3ea8d2b5d02ee927a77',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D7zh\";i:1556942246;}',1556945846),('e0f5bef61f879a571b4aa9c725f56079',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o966\";i:1556942245;}',1556945845),('07bfb0b70f1d6b0b4fe62571700646be',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JZL8\";i:1556942244;}',1556945844),('8ba9c50263962c5a61ce0b58be6a9dce',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n4VN\";i:1556942244;}',1556945844),('26f8224e7f9929b606a0bf04d521610d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iFV5\";i:1556942244;}',1556945844),('34fc8c429805b13ac19e628f43a7c183',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"px68\";i:1556942244;}',1556945844),('e0e319275becbec81de92e843db2edfc',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d12l\";i:1556942244;}',1556945844),('57e6b03aef285ff42c6466259016105a',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fiUn\";i:1556942239;}',1556945839),('56ffcd251d583b39e553310e3fb41f77',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y8U7\";i:1556942239;}',1556945839),('3c5254f44605a0775f982b34bfd02777',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EYYJ\";i:1556942239;}',1556945839),('0f7f22df6b98392e7466e1ced0efce28',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jNF8\";i:1556942238;}',1556945838),('1cabb93db535c5437de54a68828ea102',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p3nN\";i:1556942238;}',1556945838),('93c385ffbeebbfe91a665ecfc78d08a7',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZN45\";i:1556942238;}',1556945838),('b5f16de48ef2674192d99472b7d86fa5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JCfH\";i:1556942080;}',1556945680),('cb2f991152bb39e36bc4ed80d86b8acd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kz1h\";i:1556942079;}',1556945679),('c9420145de09831270af05954f708e1c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kEBe\";i:1556942079;}',1556945679),('30ae1b08181f01b4e8e396eea75222dc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qcb1\";i:1556942079;}',1556945679),('a45905a0f4b4c62670056d933622bf14',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tf9M\";i:1556942078;}',1556945678),('c358a10fdd862dd93eeb167255259d39',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I79x\";i:1556942065;}',1556945665),('45dfd3e936ae40774db0050349da128b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jYYT\";i:1556942063;}',1556945663),('359855c9956f32d7c8f9042efea921c4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m4Jj\";i:1556942062;}',1556945662),('91b7365120d3bcdb345961baa859f553',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LCS6\";i:1556942062;}',1556945662),('933b9ebe58dfc0e1d7b67541872162ef',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I5Bb\";i:1556942060;}',1556945660),('ab2bcc54a5d970c9be844879da2327e9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V190\";i:1556942060;}',1556945660),('0782dee71613296f4c350fba6c5965d4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qxe1\";i:1556942059;}',1556945659),('0962447a222d84615af254f8dc07aa2e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SoTl\";i:1556942058;}',1556945658),('f9669106be0c1ca7a5117ffe044c3c11',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DX1P\";i:1556942057;}',1556945657),('d1bcb92d0e1e6fa9fbb162fd295468d4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yGHR\";i:1556942056;}',1556945656),('6258a3501b7cc2d03a69d1e516fa4694',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R011\";i:1556942055;}',1556945655),('b50879e407437bcb8c24d2eb69abc1a7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nb1I\";i:1556942054;}',1556945654),('6bddafaff76c9e16bfe213d902893ce5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sf67\";i:1556942052;}',1556945652),('00b2d4d343bf5ee1053f62289003fa2e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cr2o\";i:1556942052;}',1556945652),('26dfdcd0ded867130ce10df682df58ac',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H13Z\";i:1556942051;}',1556945651),('4142bfe8f75377b0823da52bd5636f79',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z3B0\";i:1556942030;}',1556945630),('591498e98e56e15dca79920b2527b53e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ux0I\";i:1556942030;}',1556945630),('1a004bb7bfd4e4592d112bbf60e0f599',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H449\";i:1556942028;}',1556945628),('58c64106df788efb085865009c6e9062',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k3bM\";i:1556942026;}',1556945626),('84dab66d160fa707f150b89823d5e8ea',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q62W\";i:1556942026;}',1556945626),('362b431f7b982edc37d10a9c97163cf0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YM9V\";i:1556942025;}',1556945625),('4a8dfc2a9e4996d98ca71ffd6dba3fb7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IzNW\";i:1556942018;}',1556945618),('b86a399a76a433015abb0e675708071d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g7In\";i:1556942018;}',1556945618),('8e202eace305548b139855a0bd3923e6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l2Ft\";i:1556942017;}',1556945617),('ea348305a225f652c90ff456707750c7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LMG5\";i:1556942013;}',1556945613),('97853ac2f22962775e4378effdd17baa',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iQCV\";i:1556942013;}',1556945613),('9aa5a955704d01987042d6ba05815686',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cts8\";i:1556942013;}',1556945613),('d1ae632abdcf48d9200c3cb7b1cc9fbe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w8uU\";i:1556938681;}',1556942281),('ff2b978272414e0ebdfed92a304a783a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VYD3\";i:1556938688;}',1556942288),('02b6e8e3a2b2cfd9c4a26eb4a117d557',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KrSS\";i:1556938688;}',1556942288),('91fa904bbdb5bdf480f87548e5f03653',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pm8o\";i:1556938689;}',1556942289),('4212e3fca17aa0afa2147b886056800f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PFH1\";i:1556938710;}',1556942310),('c3f6dbb5e3f79f96e4789bc022f3779c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AVvl\";i:1556938710;}',1556942310),('c48241f97f45493d28a495db40addeb4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y464\";i:1556938710;}',1556942310),('98b5360bc609056cc7c208e2def4cefb',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XpyI\";i:1556938711;}',1556942311),('88c849ddf265e8d01c7d559b8ebfa8e5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"krFa\";i:1556938715;}',1556942315),('8baf9833013625615be0baadb2644c5e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xs23\";i:1556938716;}',1556942316),('f97b6366d472f67296c550a7398cbcaa',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iMmn\";i:1556938717;}',1556942317),('07baf53e0460261404383746d54c127a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RNv3\";i:1556938717;}',1556942317),('6f4de4ba7b8bec0e1a3826c3ec9e6602',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EnPp\";i:1556939163;}',1556942763),('b6a4a735833283068cd4ac1a1d7cc56c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iB20\";i:1556939163;}',1556942763),('ba09f03e37d03e12498907e74f9fb10d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pen2\";i:1556939164;}',1556942764),('9edb2ca50d6628933ac2e5bd3726bb3e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zz8G\";i:1556939380;}',1556942980),('45de5a0d129470ddec697edae555cbf1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FZG5\";i:1556939380;}',1556942980),('69bf6152fd8e3f978ebb37794f3677f5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ditu\";i:1556939380;}',1556942980),('d2256364594282bb4f48f48b63c0e97a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qtn1\";i:1556939398;}',1556942998),('c5fd8f156932cecc02ab24b54e8715e5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qz6j\";i:1556939398;}',1556942998),('be194abd62056226bd7cb50c8433e8df',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QBAm\";i:1556939398;}',1556942998),('6be8fbac5687bad17db74951fb0c0128',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pxSA\";i:1556939407;}',1556943007),('8e85195e2aacfbf02673f47f31a3ffb3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xi3o\";i:1556939407;}',1556943007),('42bd934af680a7fd791b6d6d0bdcbeeb',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kSer\";i:1556939408;}',1556943008),('bf9af353882690e3da9e4256e68905a4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K2bv\";i:1556939408;}',1556943008),('1b21ad6ea46c2ae2159899077fd1d3d3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A0hL\";i:1556939408;}',1556943008),('92e005600184b45ad96eabf837d59d51',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q8hH\";i:1556939408;}',1556943008),('9091cf536bc04053aee14cbc9328a83d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k1GA\";i:1556939409;}',1556943009),('79a962ea851c964875cd7e78d6b87b82',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VBAf\";i:1556939411;}',1556943011),('1b82cd8bd7cc1479f8abf3fccd365d31',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vnbl\";i:1556939411;}',1556943011),('c4bbb4566458fb36d01351c472388b71',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v040\";i:1556939412;}',1556943012),('d6abd6d19e0c7206fcf5a0aad1d621df',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wey1\";i:1556939412;}',1556943012),('59680f2a0459bc4069dee2b0a710a417',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RSyW\";i:1556939413;}',1556943013),('3b966d0a9727d0439e79d0f3e2553a86',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p2yC\";i:1556939413;}',1556943013),('5f3da29d12f179b62bc982ef2cbb3368',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EFzK\";i:1556939413;}',1556943013),('c813eabf628d0bc3065605d5c217d21c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f2z7\";i:1556939414;}',1556943014),('9e039f80eb818c4c4bb7905a0e5291c5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b3i1\";i:1556939415;}',1556943015),('60c8d923664312cfe17031a418a38325',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j4hP\";i:1556939415;}',1556943015),('6a0845ed41a8b38a91035e252fedbe0e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rmIr\";i:1556939423;}',1556943023),('8f4df05090b8bc238adaa75a4e6c9f39',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kV0x\";i:1556939423;}',1556943023),('388b413673f7ee2c913edcb1ef43d285',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HZRG\";i:1556939472;}',1556943072),('fa7dbbc0da591384b311e239377e6c96',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uafY\";i:1556939472;}',1556943072),('80ee7287f59b6797ee97e89f5d446864',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yl3k\";i:1556939472;}',1556943072),('0ce4c01d96055bea6ffb5bb8d77113aa',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rF9s\";i:1556939480;}',1556943080),('11658e4f39baf9945fe0ff4e7d304658',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mq95\";i:1556939480;}',1556943080),('cd12ede817b279d2a37768f45845491e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"axsS\";i:1556939480;}',1556943080),('6a8ba1690aec9a98a0efb92a15f15124',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zEY3\";i:1556939480;}',1556943080),('22dea7252331a743cfd1d3c252f17005',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ppiI\";i:1556939481;}',1556943081),('39abc123b324e8f72dd5fe1327f1b04b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qC5x\";i:1556939490;}',1556943090),('36ab4f161c963d97e84467244546e6e4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nzi9\";i:1556939511;}',1556943111),('b0478e84e8b37eba0a8c61f640f9e05f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p6f6\";i:1556939511;}',1556943111),('c224ec81c8b09470a09f0117d5479506',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rV5e\";i:1556939511;}',1556943111),('0fd43348aa5b1143cb880ec25cf2e56c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m1Qq\";i:1556939511;}',1556943111),('283b23709420b70aa906ceccaf72ec38',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rkmS\";i:1556939754;}',1556943354),('ed037495c2ff4b748709fe0c6939fdca',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jjZl\";i:1556939755;}',1556943355),('186fd1ef42b1215544e44e19e190d152',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m6pI\";i:1556939755;}',1556943355),('5ef0ff1a70a7caea7e9aa21f2b25d55a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RJn6\";i:1556939755;}',1556943355),('382fb65ea7c0bf29d0ee0f96e02b467d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c7e6\";i:1556939757;}',1556943357),('a2b96ca220935534dd97f7193a712b00',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Iong\";i:1556939757;}',1556943357),('9e55ecf3d1268be92d1c3dcd6bd6380f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F9qc\";i:1556939764;}',1556943364),('0de8e933e5298f2d013f4f49fa328918',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RG1p\";i:1556939764;}',1556943364),('1053a14a0875d41daeed46d2623d2f5a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GF0F\";i:1556939764;}',1556943364),('0b7a398263a5cfe5a6dcb1cb23c0b30a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hs4d\";i:1556939764;}',1556943364),('ee114ff9f7e36c1fce4138e837f8a167',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ryYR\";i:1556940098;}',1556943698),('55c3c661231a0640abe47778c785d311',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gWzZ\";i:1556940098;}',1556943698),('a88ffc86caa72427a99e973169553f96',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OJHO\";i:1556940098;}',1556943698),('a16d9cc6e90717a0a50a79769f7ebb9b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L0Fo\";i:1556940101;}',1556943701),('89f0d12b2d87c8abbfc4dc99e2764b6a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o6wv\";i:1556940109;}',1556943709),('b13f9dced05be2dc05a9eee59e073ad5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qixb\";i:1556940111;}',1556943711),('4d8f8aa9b2a5ea038eefb919622a603b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bqO2\";i:1556940113;}',1556943713),('50988859a04b662b2f0466b10cd09b61',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"us64\";i:1556940172;}',1556943772),('15e8189bb2537129db06c13b9ac8afb2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f5iv\";i:1556940172;}',1556943772),('1898ff3d3e1488ec4114e68f416c1f8e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aq33\";i:1556940174;}',1556943774),('afd0e8c503f4f3e4c0fb6c57963f2c8a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wM7A\";i:1556940244;}',1556943844),('800c54a9905db26b91c3320f04612c84',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RC27\";i:1556940245;}',1556943845),('8866b4c2671393dd04f05f1de213f496',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q94B\";i:1556940283;}',1556943883),('7ea898076b2297c964e54f20d9fcefd4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gQ6p\";i:1556940294;}',1556943894),('acb078332a592ee50f550fcaff713da0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SSpL\";i:1556940302;}',1556943902),('7d0fcdec5cd56bce69edbbbf411892f4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w74y\";i:1556940368;}',1556943968),('57d6f6faaab522311fc4289766246b0c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"su11\";i:1556940368;}',1556943968),('6849fc3275d7d45306915e643f1d28b9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l1gp\";i:1556940371;}',1556943971),('a06b84ab7d7bdc64efb133c50ee58297',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HyAv\";i:1556940408;}',1556944008),('a9bfa405c0ae7a78c076c73e4dd7a6df',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nesQ\";i:1556940488;}',1556944088),('729d33f928c4c504511665764678bf4a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KJuM\";i:1556940519;}',1556944119),('3d1e30e4cff01982cfcf70f4cf73cc47',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v28s\";i:1556940579;}',1556944179),('a4d017b9d6f2dedc2a2335b28c016727',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PA29\";i:1556940579;}',1556944179),('149b4af3368d7cf4fe62a718c4388b8a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vnqr\";i:1556940580;}',1556944180),('ae749789eef3b112588e76d5547a89c2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cku8\";i:1556940595;}',1556944195),('62be9e22b16e09a2218466e5df922126',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OZ2G\";i:1556940595;}',1556944195),('065c547f3f726f20e43954a7a577c601',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QfuQ\";i:1556940595;}',1556944195),('6ec8204b842de182ae21fa19c6a2a7de',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CVMW\";i:1556940595;}',1556944195),('58441b2d409d8728e07194abf25722ec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eO9U\";i:1556940596;}',1556944196),('f4b25b242ebd5574b03ede10793ffb8a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vytt\";i:1556940600;}',1556944200),('13d2c9de7ae7954117bcd8fd2237d084',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DW85\";i:1556940600;}',1556944200),('04c13c7437794e5897e13eab00b73b9e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ntLB\";i:1556940600;}',1556944200),('f6ddca38b6c6c7239560b0c90d0dab9d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ci9O\";i:1556940601;}',1556944201),('d173ef50e33530590465228239f98df6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VDaM\";i:1556940653;}',1556944253),('27dfc4f340c6a69a3a797396222fe50c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gMKe\";i:1556940653;}',1556944253),('7e76a341698085b819ca205a401ec4a8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wjxN\";i:1556940654;}',1556944254),('02969c1c005c64982c871568e7eed0f5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DpN2\";i:1556940667;}',1556944267),('c5c2be173a265bb14ea95ce03ee4db72',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tqfu\";i:1556940714;}',1556944314),('4de401c33af51f73baa76a7b41739f10',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DSFM\";i:1556940719;}',1556944319),('1723daa0009ac51e87ad0206932a23bd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ox6X\";i:1556940732;}',1556944332),('9ef0ea4639bb954086780220809138da',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DIpP\";i:1556940787;}',1556944387),('c418f118938495fcc4f6a11c2b33c9ac',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FR24\";i:1556941328;}',1556944928),('69f09bcb40ebf9e5e0982e29ec5c6b1d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F0sQ\";i:1556941328;}',1556944928),('d136b8b6e4f2c2c92ce230880c7096a6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bLlL\";i:1556941330;}',1556944930),('18916f9dbcb35cf4c1574f5421325aaa',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aGS4\";i:1556941334;}',1556944934),('6105870f225f8921cc2731182f9337e8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wh0E\";i:1556941334;}',1556944934),('3b5dd15cf20ae68faf557931aaefec37',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SefI\";i:1556941335;}',1556944935),('6e12c8fb8bd00cc982ec461224c618b2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S4El\";i:1556941376;}',1556944976),('31f83a229b17d71238243771ebc78abe',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yqfo\";i:1556941379;}',1556944979),('a26f6ab9819142f6d9163c728a809070',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h5Ow\";i:1556941379;}',1556944979),('e0520742cd5d921a32a498934174a74c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oV18\";i:1556941379;}',1556944979),('63110735a281303880061066c8e99799',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dbkk\";i:1556941379;}',1556944979),('8d712be7f71308ec406f8b24237cdd06',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SKdH\";i:1556941381;}',1556944981),('e4dff0a6ac032cc6cc35548478c5b277',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YUkX\";i:1556941406;}',1556945006),('b1dc1613bfb8c4a45e8438ca46fef4b3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I3m6\";i:1556941559;}',1556945159),('fb13a1b337edb50d47e4102d0bcb7604',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rdzU\";i:1556941712;}',1556945312),('0503590c0b4675f22c1a08ec220eaa5f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o3gg\";i:1556941714;}',1556945314),('10fe44b722743dd434880c8c56264644',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xqeq\";i:1556941716;}',1556945316),('36a4e112965ece03a7c873c268134f1d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sZw4\";i:1556941719;}',1556945319),('97fa496fd56ae4ff7a131f6bd0c2c848',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sh6i\";i:1556941732;}',1556945332),('664f46e505aea3dc33347db5ab2e60c2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nb9E\";i:1556941843;}',1556945443),('224b45bbcb4ea206aa16e3f4006f1b71',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h0Em\";i:1556941843;}',1556945443),('41513570ad07963b317712ca8ebe29c9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z3KS\";i:1556941843;}',1556945443),('7e7233e3903231e22548daa2e4375864',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"na8T\";i:1556941843;}',1556945443),('a9972198db8aebf47989f56fd2673f95',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JE6S\";i:1556941843;}',1556945443),('2a121d7308a404ebc6fc98684c0c0a54',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s0wu\";i:1556941843;}',1556945443),('ed6370a36cb7ff56a4e68f815cca781c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AAVL\";i:1556941843;}',1556945443),('a826c062c12e048564b3dbdc31e1cfba',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BhI1\";i:1556941843;}',1556945443),('7280b538b4f1c44ebb2e9f73a3785a70',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r78A\";i:1556941843;}',1556945443),('3b98b9b8dad1443df4e3b86c2c805895',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bQXo\";i:1556941845;}',1556945445),('1b14e50f8129ab4b9a57b83e7aa2274b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vUAp\";i:1556941844;}',1556945444),('8d387f8fc156862e49bf0ea6abfb8ae7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F4G4\";i:1556941845;}',1556945445),('17d01dac62c192de90c82da0a545ebe1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rbf3\";i:1556941850;}',1556945450),('c28fab8923c3154eacfd02a030ce6723',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pX1N\";i:1556941955;}',1556945555),('22b6f7f68cb61ab0ef3c3d6c5fd9ed22',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cn49\";i:1556941965;}',1556945565),('b8c0a6ee6fb395fe702aea67bf772940',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kuZB\";i:1556941965;}',1556945565),('2306b4423daf25cb1a4c70138431f75f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V6bM\";i:1556941965;}',1556945565),('888d8b5e00ae83d23ec9dda110a408d8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vTDk\";i:1556941970;}',1556945570),('4d4bea797c7cd1e1b7857d07d31cf7e0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v6UH\";i:1556941972;}',1556945572),('652619df15de1e463ba82840ba2a1d9a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QbPA\";i:1556941974;}',1556945574),('8a9e43a68b1141a7071258e34b57194e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vtSo\";i:1556941974;}',1556945574),('66ec71b1079864cdc989bde43387565f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vcoq\";i:1556941974;}',1556945574),('53de508d47eaa5f790cfa44f41bd0fca',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kf7G\";i:1556941976;}',1556945576),('0c9840b2013e91b101c415d006a1ece7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wxty\";i:1556941980;}',1556945580),('362078b18dcd3c0493eba640af84704d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PUe9\";i:1556941980;}',1556945580),('1ba44572cbdaff0a86411502fab4f993',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Zlrr\";i:1556941980;}',1556945580),('3ab2dd6b4d5bf0bb7340162ae19d3081',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uMHB\";i:1556941981;}',1556945581),('dac179d691b27bb594736b751407f3b9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oY2v\";i:1556941984;}',1556945584),('9230cc49f87f82bc4d42aa38b4071fa7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LhA2\";i:1556941991;}',1556945591),('de1bc07adae3d11d7e2aa94bcec6d9d4',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n1QZ\";i:1556941992;}',1556945592),('be22e4395468bb45eeab1b17b809632a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RLqs\";i:1556941992;}',1556945592),('e3aaedda7eda67f3b82fc49f2346837d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wN5R\";i:1556941993;}',1556945593),('a8932701f3447b8334303de78a2d02c5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qLq1\";i:1556941993;}',1556945593),('785c28dadb15bd22a6aa8f6102149773',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L6d6\";i:1556941993;}',1556945593),('ac77d8581b53a4a552d86dd5f37bec08',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZT2N\";i:1556942002;}',1556945602),('5516c1407cf6a347aeba995c81e69c8e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F0Fq\";i:1556942005;}',1556945605),('4d1cedd25fd380b2911f58c6fe7991c9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hvj6\";i:1556942006;}',1556945606),('91b25699a84e7d79474a8da719f24cb2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZIrp\";i:1556942010;}',1556945610),('90dced8c5f9b2b1c38a15066b92bbbed',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IZ7p\";i:1556942012;}',1556945612),('c71b9270921dfb16eb29cf6f99cc3764',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zFGc\";i:1556942255;}',1556945855),('fd71973908d27b9fd7d23fea3e245b96',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j1uo\";i:1556942255;}',1556945855),('3780c04a5cdb7b29b7b287f104668f5e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kz0e\";i:1556942256;}',1556945856),('967cd8cee2dbb78a453eb7892b8403a8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eb95\";i:1556942257;}',1556945857),('07699745e894f01dcd747879a345fc8e',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bCgh\";i:1556942258;}',1556945858),('cf7229e027bd53ff964504910c8480cf',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gdtI\";i:1556942258;}',1556945858),('07a12e2d15c261a717f56f9fbc88e72c',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XDdv\";i:1556942258;}',1556945858),('39d8a131aa847dc428afd6bd09765857',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o360\";i:1556942259;}',1556945859),('7a3b012c7f3becd2fa4aee563a03aac3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QhCq\";i:1556942267;}',1556945867),('cae7f70bec831f90c1fd1d4f57d17998',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r2Qq\";i:1556942268;}',1556945868),('5570ae4f425475722ee87fde9a33dda9',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o0yQ\";i:1556942268;}',1556945868),('c8e221c331eaa1bb5a8cf9687a9d7172',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uZ40\";i:1556942268;}',1556945868),('2a1cfbebf5e35846f346786d0d7cd74c',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M4zr\";i:1556942270;}',1556945870),('9cf5a528ca2e2e185d85f8756108e5c4',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BKtl\";i:1556942270;}',1556945870),('3176b27884eec785d1c63f68c16d4a6b',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B63j\";i:1556942270;}',1556945870),('9e0fcf094d4429e2ceac40f6fd04435e',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qprG\";i:1556942278;}',1556945878),('b9e5e0e1b8b9ff559bfdc017355bdf27',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H5DB\";i:1556942280;}',1556945880),('5ebc83b485dfebe9fa59f4c41e754143',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z9sS\";i:1556942284;}',1556945884),('705f87ea433df661f2902e145d44ce92',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D3NF\";i:1556942284;}',1556945884),('17d84a07bf8306761e9fed5864a0de9c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iO9n\";i:1556942286;}',1556945886),('2363f0d7e7c6ec7955313f7415bab4c3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BJw7\";i:1556942286;}',1556945886),('61569926c803f6a130b6dd12b76ca6ba',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fvav\";i:1556942286;}',1556945886),('890f9fd76121b32905212c1f19a4bd33',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Jp9P\";i:1556942290;}',1556945890),('6e6a96437655e2994f9cd73991614dff',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BHx5\";i:1556942290;}',1556945890),('c3dc54ac34eeb833aaac93555f934535',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xzk1\";i:1556942290;}',1556945890),('68372db7733f6f71ecce9dfd2d8aa5c7',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Aro2\";i:1556942290;}',1556945890),('20187fb290ee24ff17008af779b0da4f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ip8u\";i:1556942291;}',1556945891),('e5d0a2aedf0b049508e4e436a9821fc4',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YDBf\";i:1556942292;}',1556945892),('a394a26802ae04f3a46a2f71ff2958a8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CMu9\";i:1556942293;}',1556945893),('382d13d78ca36cd3f9234ab1e3fd4dc8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f4t6\";i:1556942293;}',1556945893),('7468cb66f8ff2f5cf8ec9c82018049af',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y866\";i:1556942293;}',1556945893),('a96f6d8fe2b9c81a4c3e057db2677d36',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gSyT\";i:1556942293;}',1556945893),('b6ccb11aa38f0e88d6b36fed17d79951',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yq1d\";i:1556942294;}',1556945894),('db62cbcfca55621342256d9817c78828',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UbEh\";i:1556942294;}',1556945894),('e8640289a7db415ba6755814f41d5b81',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Abyr\";i:1556942294;}',1556945894),('a7ea7b7ac11598639df2a3ac3278aea4',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kDYE\";i:1556942295;}',1556945895),('08c010c455328d76f73abefa651d32cd',2,'101.91.60.109','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MkMD\";i:1556942295;}',1556945895),('c560cdd2827dcc9f191740cf417c1473',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GCag\";i:1556942295;}',1556945895),('93efbed9a3b15414bb29c0c3227510fa',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XFqZ\";i:1556942296;}',1556945896),('c1f5d34cf91927a3d1c4d2eb11b56c2c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wo18\";i:1556942296;}',1556945896),('ae0bf12bc5ebf13c45cbc45596f22f73',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ett5\";i:1556942296;}',1556945896),('4c7b9447baa097866d3ce1ed740b169c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Breo\";i:1556942296;}',1556945896),('7554309f7edd021dc2fb5f213119d57e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N2iX\";i:1556942298;}',1556945898),('0ff4c215eb19db1d20682a01f7f136ef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"okvv\";i:1556942298;}',1556945898),('deff1c1edf53090ca0057b90c0f04c5b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PF45\";i:1556942298;}',1556945898),('c53ee4d0d38d53282fb0f1599a197fa0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N3Hd\";i:1556942298;}',1556945898),('9ab11807f0861921899fa144558d06b4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hRNN\";i:1556942300;}',1556945900),('252b1a2dd569241847debd1e36da1e88',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ouuN\";i:1556942300;}',1556945900),('4f1409e9f46e7dfb255dff0d61969190',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jZ5t\";i:1556942300;}',1556945900),('a6beaa48523cb3d05e07399f8b093045',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YN97\";i:1556942300;}',1556945900),('b5a499725c30d379b782b9a58cadca6c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"db97\";i:1556942302;}',1556945902),('ff6bd3118b53b23ed75dc9f8355ce049',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m5cM\";i:1556942302;}',1556945902),('46fed1b0a19c4fcd869af900d73d17b9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L1JQ\";i:1556942302;}',1556945902),('fbc3d64da200c25f1b94f3277c98e214',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZHJ7\";i:1556942303;}',1556945903),('4b5a1f73c0c2d55889cd6f33c026fef3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XFmU\";i:1556942309;}',1556945909),('596d1e2c6b34d3516765db5ef5023026',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nbbZ\";i:1556942330;}',1556945930),('dc957ca86de357fe2930cf7bcf7f37a9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r90b\";i:1556942330;}',1556945930),('f0f26ab547825eec340c8da4f5f31375',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hy4y\";i:1556942330;}',1556945930),('ad706583191904843d9d410dca65295a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gSAI\";i:1556942331;}',1556945931),('aae7584cff8b8bc93bd753e2f591cf50',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y4VM\";i:1556942331;}',1556945931),('005ab61742c3a3b038afd88281ca5ccc',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yTD2\";i:1556942331;}',1556945931),('451f4af8169c80f54b621ecc2041b323',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RcLL\";i:1556942382;}',1556945982),('e2fa2fb55344005fd3033ebed9e93e01',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z6Gs\";i:1556942382;}',1556945982),('78b6076e367ea418cc48c9b49ff204a7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ybHh\";i:1556942384;}',1556945984),('ca7fa56ce8fe0bb138405e10142a1936',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r9w2\";i:1556942385;}',1556945985),('d58ae2047ec38364319de226279753fc',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q3rj\";i:1556942385;}',1556945985),('c1e59ea741fbcf4c9bd416f4e52e6745',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lm2q\";i:1556942388;}',1556945988),('fa8e3af3ffee605b46ec85db373ea6ad',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cnU4\";i:1556942389;}',1556945989),('96d8c6805f4b60d5df9f2131514696d2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w353\";i:1556942389;}',1556945989),('097af24252fb4c48d6a351946787eb41',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bu7P\";i:1556942391;}',1556945991),('7a43bbe8a900d96870bc48f7ac8583be',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tBHz\";i:1556942392;}',1556945992),('a98a3303f0e215d24ec66205714c52d9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aCMt\";i:1556942392;}',1556945992),('582b1b93b6ef3ff48fe440ad2d898f87',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B635\";i:1556942393;}',1556945993),('f6d1a62efac71a91e5c7d72616323259',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QkW6\";i:1556942395;}',1556945995),('1ba875c9d1ab6427b721e797189c9ee1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VWnN\";i:1556942395;}',1556945995),('ba12b690886fed8641d5c066be41f75a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nVx7\";i:1556942395;}',1556945995),('ef6a35ab981fdd0969967fa2dc2b702c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Cz6g\";i:1556942402;}',1556946002),('b9e2a82203381e82d8f19bb1273949f4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ohq9\";i:1556942403;}',1556946003),('0ae81ffee3638caf838eeb520e0ce076',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sWaM\";i:1556942403;}',1556946003),('e5f0b6a3aa18c597fa47320ce7d67189',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r2j1\";i:1556942405;}',1556946005),('9ced80809482939c705fa9457ad55e37',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r4KB\";i:1556942405;}',1556946005),('e571a33517ea0bdaf1bb380e4787152f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Oj9B\";i:1556942406;}',1556946006),('385f40e2fae56c516ae8e2a8bcec0aa7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bV6c\";i:1556942410;}',1556946010),('254a63356758cb0840bcb9c4cd627fe4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E3L5\";i:1556942410;}',1556946010),('94e70a71ced3174e91bd142fa13ab33f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wyI1\";i:1556942410;}',1556946010),('aa81cc2719e235061cb0780d3cbba819',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cW6u\";i:1556942415;}',1556946015),('1dbc81de7c7d040095aedbd397923213',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ciaw\";i:1556942415;}',1556946015),('a873175107f4155feb2e40238b334e1d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b2h9\";i:1556942416;}',1556946016),('cff45692a8a891f963cd35b911ef8595',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cJK2\";i:1556942417;}',1556946017),('d4e97850a677e292cb955c5c4f80b050',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bSuI\";i:1556942417;}',1556946017),('72434cba83ca67c18f15e819306f3202',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HKNr\";i:1556942418;}',1556946018),('5ea1541d8a3768b5259585966fc0b588',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fWbJ\";i:1556942419;}',1556946019),('0d7b44d4418cba41783e9885e0d64539',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mark\";i:1556942420;}',1556946020),('69d170d4d8b565b66e4ee3aa6f62cbe6',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SQ2t\";i:1556942422;}',1556946022),('1de7dcb27c85b7ad37ca993cbb8010b3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uKEM\";i:1556942422;}',1556946022),('ee260b4ee7102f5bb9f54ac5f07338ef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bZ8g\";i:1556942422;}',1556946022),('4b40e99144c0940f1d3ef2f820786d6e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J7rr\";i:1556942423;}',1556946023),('55307daadd2e3d08ad16b3af52446b73',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q9WB\";i:1556942424;}',1556946024),('d0e3ae1d91570fafdaa452618aa1d5a8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JGC7\";i:1556942424;}',1556946024),('44679f8c0f87a34bc8435f611be3529d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pNpj\";i:1556942424;}',1556946024),('0414e2e2ad4dcaf1ca039ca8fd9b2dca',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VvcC\";i:1556942425;}',1556946025),('0015e67e6c95074ad933b2fccd041c48',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZIJa\";i:1556942425;}',1556946025),('a245fe9984b96d0396e61da508b58c1b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qTQQ\";i:1556942425;}',1556946025),('038506499b8697ab2d5925f1dd4a18bc',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l2yp\";i:1556942430;}',1556946030),('cade13e9fe7fdc5f9bbe60065870ffcd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VsyC\";i:1556942430;}',1556946030),('66dc51a3d6fb7c2f797348a66448bb80',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tTW2\";i:1556942430;}',1556946030),('40dbdecb97a3fb904418f9b83dd902ba',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Nu11\";i:1556942431;}',1556946031),('165980d3ef29040975f322a571615f43',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cDDl\";i:1556942436;}',1556946036),('313b2cf920b34653970e7a34a2ba7bd9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s8I7\";i:1556942442;}',1556946042),('12ba349f5a9e1c8b6bd9ba1a6034d9ec',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t8cL\";i:1556942442;}',1556946042),('cea54be30b964de6db5bb74f3f2b2be0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t3mo\";i:1556942442;}',1556946042),('fcbd3104dc6317ead89d0298ea8120e8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YiOU\";i:1556942446;}',1556946046),('630cf199cbfc96085a16bf0d62c420c8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rATw\";i:1556942447;}',1556946047),('3de9d6978189ea9e452835ccda4667a0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KutX\";i:1556942449;}',1556946049),('77aa7057fa9f588b12edd412371dc206',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E1Q6\";i:1556942450;}',1556946050),('fbc16f428185639c209bf6f566252c15',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uw8g\";i:1556942453;}',1556946053),('e2ac1b6b68ddec47c69b9ba310b88a04',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kC89\";i:1556942455;}',1556946055),('b7b9061bba189606c02ce3cefbaf727d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zuD4\";i:1556942457;}',1556946057),('4505c58aee910eda9e22b6c38ad42ee8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lw7z\";i:1556942460;}',1556946060),('03bf58d9bc448b179e195b2f13e3aab1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IAbI\";i:1556942461;}',1556946061),('ae6378999350c1dc6404865048c83f8e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VFTJ\";i:1556942463;}',1556946063),('476ea4a837d72318756f9c75bcffccef',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rdy3\";i:1556942466;}',1556946066),('a28f58a6c991977cd19e8ba762c5383c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pzsQ\";i:1556942467;}',1556946067),('f0a1cfc5c3bce0bd71e5467c79ebec9f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P34E\";i:1556942469;}',1556946069),('0d0d971d01677c7490ca92daca6003fd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aMsy\";i:1556942471;}',1556946071),('4713f7052b5d5ce4fb8cf9ae17f9512d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ULgq\";i:1556942475;}',1556946075),('a4160edd018feacb7e0fa1adfbd6336b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wI6C\";i:1556942475;}',1556946075),('76ada29da17dec4b39b1a37309940527',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q775\";i:1556942476;}',1556946076),('eb9379d028c8e69b3a46c9becbfab317',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r32s\";i:1556942476;}',1556946076),('3195c35d2ebdd3971883f5c629e52634',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gJ8V\";i:1556942477;}',1556946077),('4c3c130e56f66b6782a68f1233c43438',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Glh3\";i:1556942478;}',1556946078),('3bf16963575dfd6d70e8699224a532da',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kZrp\";i:1556942483;}',1556946083),('991cd18479049c96f2b80077c4f3492e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zu44\";i:1556942493;}',1556946093),('b8fcc2de91c20f2d1e7d5923a10ef36e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D4d0\";i:1556942501;}',1556946101),('a239f5eb0795114461cb3d608104f371',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c69c\";i:1556942501;}',1556946101),('9d58eea128afbe43a1b1ef55df030f20',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yfcG\";i:1556942501;}',1556946101),('627cd5ad78c5b5e1645551ba2736149c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XSkn\";i:1556942502;}',1556946102),('30eca5267ea07b707ccae6353af08447',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i7zX\";i:1556942503;}',1556946103),('a34da221f2703dc00fecce39942e2d73',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"enpN\";i:1556942510;}',1556946110),('75108185d43550319a5a557fee0b04fd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jpAQ\";i:1556942510;}',1556946110),('2a4f89c07cecb9a0ca729d9466c5da99',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"whWY\";i:1556942510;}',1556946110),('cb9c069ce275e89ca1320989e37bb975',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zOFJ\";i:1556942512;}',1556946112),('09e7507562fb42f32c7d78b84cf058a7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VwW1\";i:1556942516;}',1556946116),('617c0e44f5197b4b97f07d922412609b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lRPy\";i:1556942516;}',1556946116),('17ffcebf00fdb6cbecf652be4b3566b3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PrIo\";i:1556942516;}',1556946116),('643dddc8579fe0dbd8795078c755e8cd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XSlS\";i:1556942518;}',1556946118),('c7a3020f940a635b5508474f1c9a10e0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TCoZ\";i:1556942518;}',1556946118),('323c42dede549bfb718850619a9214d2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bd6L\";i:1556942718;}',1556946318),('a7e671c9303399ae7e45b2b4451212a8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A305\";i:1556942719;}',1556946319),('faf2249da1ec54f997ce554872f281e3',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dvds\";i:1556942750;}',1556946350),('b95ca3ffcd54910d522940fba0feade5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xAUW\";i:1556942760;}',1556946360),('b6061edcbd16e2eac371ae1ba9661fee',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y9O9\";i:1556942762;}',1556946362),('245952d9f1e60659a1f592ba188ca94d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AkQp\";i:1556942766;}',1556946366),('ce632b3779b83e1314db625469b31277',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Phha\";i:1556942766;}',1556946366),('5c8dffdc65bbbb4f40859f37ca8b8a0a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HKFJ\";i:1556942767;}',1556946367),('a38757a70fab2c7a69aeed30490d5ad3',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M4BM\";i:1556942768;}',1556946368),('34853ba259fda345634b89981ed6f1d7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b959\";i:1556942769;}',1556946369),('4b39959607416549fc49e510faf53440',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D0tJ\";i:1556942769;}',1556946369),('7a94e2756027e83c59987e4b3abfdd75',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ePIl\";i:1556942770;}',1556946370),('24b63038de8fa96871cce8f5bf5b06ce',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fWC0\";i:1556942770;}',1556946370),('d7909e4c2ce9432e195b6423e7e3571d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qydw\";i:1556942770;}',1556946370),('35648811e04e996699f1642da5df8f97',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IS97\";i:1556942772;}',1556946372),('77a7299b517c021611906b59dba9920d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dxP3\";i:1556942772;}',1556946372),('83a4e35de80441a567c7e642e8a9cfaf',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MeWZ\";i:1556942774;}',1556946374),('06109c7f8a7b56a744f396b7f2d57ac5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nmBf\";i:1556942776;}',1556946376),('acd1878c2d8dd5b30278594ba7ad3b51',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G54Y\";i:1556942777;}',1556946377),('b3c1efd702952816d186ad7b442860ac',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cTNA\";i:1556942792;}',1556946392),('15f23816ae5186fd6ac5a8b9dc01352d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ezC5\";i:1556942792;}',1556946392),('3847ad2fe1b6a51de3e938afda44f04a',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W333\";i:1556942792;}',1556946392),('086ab3a7fa7eaa6ec85db3cb34c7b321',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VY5T\";i:1556942797;}',1556946397),('3187ad2ccf83ad1dc90ba90d1d9425ba',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JoOf\";i:1556942801;}',1556946401),('a49ea4a6f985ba9af762b957fa0acfd1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"caUG\";i:1556942805;}',1556946405),('81339f4f8e645de972a4d27da2e04080',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T6Sb\";i:1556942808;}',1556946408),('f96696727253f90f529f38f4283271f9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f4D2\";i:1556942813;}',1556946413),('3f10984f7d21af974ba47c306fd8760d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pnBL\";i:1556942814;}',1556946414),('6bb1d77e6ad40c0ffd5c024cafdd9c50',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dY29\";i:1556942814;}',1556946414),('a09f37cf5e0409faf629c8d3264f4a75',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NXOm\";i:1556942814;}',1556946414),('29c08ead6eca3b231dae50a9e00151a9',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z3N5\";i:1556942814;}',1556946414),('7aea6cee58e833639e21dd4f9c47aafc',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G68h\";i:1556942857;}',1556946457),('1d6883c6de703ed4760b13ae9ac5def9',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c4bS\";i:1556942858;}',1556946458),('5a0fba3c96aee390248dcc849c0f8d82',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IHbo\";i:1556942858;}',1556946458),('3d4fa1208da78071e8163221165b4624',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tWJ1\";i:1556942862;}',1556946462),('c2a9c07997d9c6e65caa3f31df300e79',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jU34\";i:1556942863;}',1556946463),('c6655f9e025dd9cedf8454678d70d7d8',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QUsL\";i:1556942863;}',1556946463),('8fb8a73f5960dd1cb344323dc6ec6ab3',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q809\";i:1556942864;}',1556946464),('ae379cba0239673d22fb0ac55a8ec911',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uBFW\";i:1556942868;}',1556946468),('9ba1535ee673cbc317c671ec0d935953',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ztFy\";i:1556942873;}',1556946473),('e65a6446fdec676ebd3370f57f855be3',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gssR\";i:1556942873;}',1556946473),('f457d25f7ae40a7d2b83aa96e1dabfcd',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gbTb\";i:1556942874;}',1556946474),('a29723e726a325bc98777373f6e066e9',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kl93\";i:1556942877;}',1556946477),('ec010cf06160d74dcd297dc38c3bcec3',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bZ2L\";i:1556942878;}',1556946478),('0797f5a3df11bcb4d05c6990167d652c',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lJI4\";i:1556942897;}',1556946497),('2bba1f0c15b53867cf740d073159c4cb',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xxl9\";i:1556942897;}',1556946497),('fa30409b3a763c55f96eb6193e67cb94',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NSD7\";i:1556942899;}',1556946499),('449a07af6cd402955d8f1637aa8b8c79',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n8Bm\";i:1556942899;}',1556946499),('717088c6f31298bf8e3f1fcb5ca4f4da',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V9u9\";i:1556942927;}',1556946527),('d3a46c587c648557094d906fdd4b9d65',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F0J4\";i:1556942930;}',1556946530),('01333c30321416c48a3ce9070a1e1a04',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jSZg\";i:1556942931;}',1556946531),('a05c323c599a0fd78565b908e713d48c',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L5wJ\";i:1556942931;}',1556946531),('01a576695ab72bff15e093e69108fb21',2,'139.226.141.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"A5vW\";i:1556942941;}',1556946541),('fa6057d02e8bb06543752cc69fc7b504',2,'117.136.82.23','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EJ8v\";i:1556942944;}',1556946544),('e22c801cede4271449c1e1cd12838a44',2,'117.136.82.23','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s9Ow\";i:1556942944;}',1556946544),('98b6994b5a887759a682463242f0b148',2,'117.136.82.23','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YJ26\";i:1556942945;}',1556946545),('3190549ea44952eb24d3a1055b44020c',2,'117.136.82.23','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RacT\";i:1556942948;}',1556946548),('f1996b8d8fca46ebdb94a8913bf23b53',2,'117.136.82.23','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nfIP\";i:1556942949;}',1556946549),('db59ad394087f30e6ab87b18fb02330c',2,'117.136.82.23','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bTAS\";i:1556942962;}',1556946562),('1f9fa8c374e7dc457dc548dccd025e9c',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M0uk\";i:1556943428;}',1556947028),('c80dbb73ab7a4ead40dc9242bf66ed61',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UPpm\";i:1556943428;}',1556947028),('f0635757b32b572a6cf5f3297f0da94a',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dk05\";i:1556943429;}',1556947029),('a3863f2680ebe5ce54cf11a025f72e89',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r8FP\";i:1556943459;}',1556947059),('afdde55ade1a4e7dcf85ad9211088c9e',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mI2H\";i:1556943726;}',1556947326),('5ca09eb5762228fe0fe4244d18c57470',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mc44\";i:1556943727;}',1556947327),('204551aec0324980119668be4ea50549',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y0Sz\";i:1556943728;}',1556947328),('bd50650d02525ff281fbc5ecb38a9690',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dj6F\";i:1556943747;}',1556947347),('e850879021c76fcb40fdf4bf81d6982f',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z41n\";i:1556943747;}',1556947347),('162b7d47e596f6d9b1ee63737ee57a8f',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ODlq\";i:1556943754;}',1556947354),('20a4a7789e9774e00ebc6576439ddf2b',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sgNA\";i:1556943861;}',1556947461),('88c6e4d25dcdd473c588d5b4e2cb7775',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WEgl\";i:1556943863;}',1556947463),('5f40d048df4d84ce3c1742b9d3806189',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sphv\";i:1556943863;}',1556947463),('cb888921b0fa7c4aaa55a84a80352379',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h666\";i:1556943872;}',1556947472),('87c3c3892ef7f166b89e3f2cc3003c73',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZS9y\";i:1556943875;}',1556947475),('7506ddfc5a3cad65397f714ed31b22c4',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dWks\";i:1556943875;}',1556947475),('4393eac4b6dc30035a21ad611240633b',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ij6R\";i:1556943875;}',1556947475),('913f6e252d3351aa7d2ba714a9795c52',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CDKd\";i:1556943876;}',1556947476),('d43e10070ec157821adda7670664ca9f',2,'101.91.60.26','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WZ9T\";i:1556943877;}',1556947477),('ff3308c1928813378824e68e1c6e0449',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T2Zx\";i:1556944964;}',1556948564),('f23484afef7e070ab511cd8f3dbce55a',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wi2m\";i:1556944964;}',1556948564),('96940ae2ff6ead9206de172775183593',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lm9p\";i:1556944964;}',1556948564),('bda34b17fff46c373861614a4f109af0',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ssAt\";i:1556944976;}',1556948576),('04cb584d0b3a8bfb93a8b683174343c8',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kP3Z\";i:1556944976;}',1556948576),('53309c4309fefd7affd510411fdbd886',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PC5D\";i:1556944978;}',1556948578),('973e24f0ebd10d2b80148f5a5fb86d41',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sXp6\";i:1556944980;}',1556948580),('3fecdd5bc8debc80ccaebfe1da54fce4',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IK6Z\";i:1556944984;}',1556948584),('550f9726eba24b747813c98946cb0d76',2,'101.45.32.82','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"siEi\";i:1556944985;}',1556948585),('db2b80ebbef97a5cbfefe85f0446c977',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Qs10\";i:1556947119;}',1556950719),('52459a0bfa1f6bd8154332994576022d',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f3ZH\";i:1556947119;}',1556950719),('5aa80c6af81d2a79d5ef1d68d1783c7f',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y0pX\";i:1556947119;}',1556950719),('8aff823e168814a4a8efbab10567bfa8',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EL9K\";i:1556947130;}',1556950730),('06ab4d5b65058cd0422c485826f15643',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V1uB\";i:1556947131;}',1556950731),('3f1d622374030d1fc75e2bee1782952b',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JW2C\";i:1556947132;}',1556950732),('080926e980f3f4daff5a37f72f07d634',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qcjA\";i:1556947135;}',1556950735),('35592587d03c68807c72d92618453a48',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UfX1\";i:1556947149;}',1556950749),('d7dc0184bdbb75a97cef1d2c8ea1625c',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Vc0X\";i:1556947150;}',1556950750),('d6f35473e18918dcf1971d7f1a302acb',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TuMp\";i:1556947162;}',1556950762),('71a80f4d3e7eff0ca703b6a7b24eb996',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XZmM\";i:1556947182;}',1556950782),('ea551ba990b9704d4558af6cee083572',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sji0\";i:1556947182;}',1556950782),('c680b12160dc4161ac65b7b292f6c394',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r1Fj\";i:1556947183;}',1556950783),('8b9cbeb12e19cdc70b871defd26b4146',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KtIt\";i:1556947195;}',1556950795),('aa9f37fe70d6e1980cdda2eb51ccafe9',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AJSg\";i:1556947196;}',1556950796),('c9b48e70da867056dec79eb577c01040',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rgIk\";i:1556947198;}',1556950798),('73b6c0be01f6bcd78bb71c63d4f7945a',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wa2a\";i:1556947224;}',1556950824),('2c6e7c1988b08a14d779b83789cb7b9c',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yODI\";i:1556947241;}',1556950841),('e8b46200c3371498f7dd4359408a5760',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qOPX\";i:1556947242;}',1556950842),('fec627e8623ecef28c9c80f6353a4ebd',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O2CW\";i:1556947246;}',1556950846),('25eae49f5a3005d382de1a55fe9b0107',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ACZq\";i:1556947251;}',1556950851),('cd07b893d01bfadd4c7acf460c2e22e5',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E9Zr\";i:1556947252;}',1556950852),('97d83d4d1c4288aab26b1660924f13ba',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zr0H\";i:1556947255;}',1556950855),('96958f3e8bd07aca3e155cadd657bb7c',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kq2C\";i:1556947260;}',1556950860),('559764f3ab3d7389e3e4e5085168c8c0',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uTtt\";i:1556947261;}',1556950861),('63f1218df113a87c4c5934871c654f15',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oLfJ\";i:1556947261;}',1556950861),('37134dcd40a63f9fe3a91433a7fd3618',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wvAE\";i:1556947899;}',1556951499),('51341751ac7fadb20f38f307159492b5',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jAsf\";i:1556947899;}',1556951499),('ba59fddd78e11b7457b045398a7936bf',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xXDV\";i:1556947899;}',1556951499),('4b1c7b26d51c3c67a4ab6acb64d56556',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X3sS\";i:1556947948;}',1556951548),('2b5cd86ecf2767dfe274cf3babaf670a',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cTwx\";i:1556947948;}',1556951548),('ed4e17ede83df0edbe536f1184a58e8c',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B5EM\";i:1556947948;}',1556951548),('bca55eeaeba2d936216bffa23f309982',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b606\";i:1556947955;}',1556951555),('4ebffa6c04fef81764c0012e52523f30',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P4oQ\";i:1556947955;}',1556951555),('c0957dbda951982c4a4accdc65770194',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k0IY\";i:1556947955;}',1556951555),('3e2964715bfb0effead3c4694d91b632',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H3O8\";i:1556947958;}',1556951558),('aa036a9e3c8dcabae1b02fea36949ce0',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ioO0\";i:1556947961;}',1556951561),('830cdccbec6ddd09e1357b03de95d9bc',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r0qh\";i:1556947962;}',1556951562),('bea0c1e4327fb2cf50e0262252e16f34',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TSTz\";i:1556947962;}',1556951562),('1779e2da47ffc51955bb9f53caf76b2d',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I7hb\";i:1556947965;}',1556951565),('2b709dad105906f04ff78202b9e47fff',2,'116.237.223.245','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wrGG\";i:1556947966;}',1556951566),('751ddbc64685edabac6fe3c0a214cfa4',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fBJ7\";i:1556948748;}',1556952348),('f3acde3f4684a997b86e85203a87d17e',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WLRJ\";i:1556948748;}',1556952348),('f20f32b7ff9cc64a023dd596b21bfc90',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E5hP\";i:1556948749;}',1556952349),('3d81b3af0cca39043ab2ea229cd55724',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cB3x\";i:1556948756;}',1556952356),('e0408e162610a3d11ce6a856133e299c',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LKHu\";i:1556948760;}',1556952360),('3c1871d94081f83db7e8d8c40020cbb7',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s2ff\";i:1556948765;}',1556952365),('5a0f3afb26a3262e21b9d14dac140021',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G38J\";i:1556948777;}',1556952377),('d99ae4a7058e38336888a0e02fdc7dde',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bPm0\";i:1556948778;}',1556952378),('069783b4e15c9a5863892d5637e653ee',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"am9K\";i:1556948779;}',1556952379),('703567fbdbc9df97c6bf3497115079b1',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TUGp\";i:1556948785;}',1556952385),('31ebf82c5ef7928118782fe2934e04f3',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U5E5\";i:1556948786;}',1556952386),('4836c1fb60822c2b226a19d66a86b47c',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YOpp\";i:1556948786;}',1556952386),('62db036cda4c436b0b50383328eacf17',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mlbG\";i:1556948789;}',1556952389),('d203a6294e3a7f5a45bf8edcff5b69d3',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u4Z6\";i:1556948790;}',1556952390),('f16c4c13a3707fe7a436b85562973bb4',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vi4c\";i:1556948791;}',1556952391),('d79257536bbb3d963060c3ccd909e016',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B7Fa\";i:1556948795;}',1556952395),('9a192871998f5c77fba8635a4caaf355',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Le38\";i:1556948796;}',1556952396),('ca4ed05efebd528f98a049011b27609d',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u1c1\";i:1556948796;}',1556952396),('9b3486615e8b4b621f1607a6bbfb1137',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FWFR\";i:1556948805;}',1556952405),('1ee1912e388a98c494612d4ebc38f078',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yS99\";i:1556948805;}',1556952405),('43836c54ed7a3e72936971b5da077caf',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kvvi\";i:1556948806;}',1556952406),('87cc300c2527214a5130088ad1ca5454',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HiOR\";i:1556948806;}',1556952406),('2890a209fbd04e0967ac3e231d64a65c',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TW6y\";i:1556948806;}',1556952406),('223289f0c651c259a57e19b8e3a869f3',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m7dY\";i:1556948807;}',1556952407),('1bb98bfb90e554cd7b30cbbb4efda025',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XW8O\";i:1556948816;}',1556952416),('b49bb44bead5da1179d27a90b3bfaf67',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v2MB\";i:1556948817;}',1556952417),('1acd79cb5c4dd239901a8f08a7791c9d',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q2Gt\";i:1556948817;}',1556952417),('e60ad8c572344cf390a8c9103f21e5d3',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JzvB\";i:1556948973;}',1556952573),('a2835171cdcd9498d1f1a61b41c599db',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bqKo\";i:1556948973;}',1556952573),('a5b6f6150be5bc24bbd86aba5b5c7f9c',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"poMq\";i:1556948974;}',1556952574),('bb3401939d490fd9d96ef6b969e7910b',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K530\";i:1556950005;}',1556953605),('ed5c67f3cf5046f9f7a2c3907b5e2fb1',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q6Xq\";i:1556950005;}',1556953605),('272a7255ec8bfca8913f67e098e65791',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C441\";i:1556950006;}',1556953606),('9df7b1cf678c3aaa65d6071e1b7a0c90',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mqs4\";i:1556950013;}',1556953613),('04807658380322be771c4680a0e2f57e',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P334\";i:1556950014;}',1556953614),('9f3fda6d0476ad840f7f4b0ca04e4d0a',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g126\";i:1556950017;}',1556953617),('9f3f6a2d72bcbb1d27112934960ad6b9',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VqTb\";i:1556950017;}',1556953617),('7642fb9ec3a9fc05bd9f0049345c2fdf',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BV0E\";i:1556950018;}',1556953618),('fa5c4ae48e8da24388df830b51542d32',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qqZT\";i:1556950019;}',1556953619),('b208300cb38b6326419802100b7a5c73',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r37P\";i:1556950019;}',1556953619),('e71ef8b08a23b604beede78762530dcf',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vtDO\";i:1556950020;}',1556953620),('24d373cf6cee3d618aa6c43cda821a6e',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CE8v\";i:1556950021;}',1556953621),('2b1b0ff92e559c13372c72f1889a0574',2,'117.136.94.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qBqU\";i:1556950021;}',1556953621),('ba0b3339bfbe513711a7aa1984458780',2,'223.104.212.54','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pRtY\";i:1556950738;}',1556954338),('0be14534b972e3afa8717817e196329e',2,'223.104.212.54','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pXmm\";i:1556950738;}',1556954338),('8e18d0f0cc6a35ae6721e59c32dc0e9d',2,'223.104.212.54','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yink\";i:1556950739;}',1556954339),('eaf077a6a1218e2f2803ef5e135fa648',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H9I8\";i:1556973945;}',1556977545),('dbeb334cee5ebdc028dc38612c65410a',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IsA1\";i:1556973949;}',1556977549),('5915fe7345972fce30d79cdbd160b335',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M3pX\";i:1556973951;}',1556977551),('e06b744feddbd7b87423ce81810d73e2',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KrQ1\";i:1556973987;}',1556977587),('89bfe34d92f00b77b789fa2da35c4a19',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yvvM\";i:1556973989;}',1556977589),('ed608cc45c4ceb6286e6dc12bd99171f',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jxiN\";i:1556973989;}',1556977589),('89a8b89790f4d13b39bdedc2a8159a0b',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NyKH\";i:1556973991;}',1556977591),('e414271a3dfd6a2f0f408d4a77f130a9',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Haad\";i:1556973992;}',1556977592),('2419926996574cfe3e4de6fb58770e60',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ir3G\";i:1556974311;}',1556977911),('e1bc1500c627a6f01b983ab7c417e7dc',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dp3m\";i:1556974311;}',1556977911),('cb0414dc8e373818669d85aabcb110aa',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AuiB\";i:1556974311;}',1556977911),('0edcf7e588193702eb7e38c27dca537c',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yizn\";i:1556974318;}',1556977918),('9caa34b6b705dd26b1e89ef3a9d08395',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OO8U\";i:1556974318;}',1556977918),('d045da887344144bb7813df22486ed7f',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sFP1\";i:1556974318;}',1556977918),('ceed2f80fa61654c7c4692fcd5c12974',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NsZN\";i:1556974318;}',1556977918),('6461ec5f4d5a70c0f219aa0984f8e181',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FMo5\";i:1556974319;}',1556977919),('3aee5b3de9012a1bbd00401406618349',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I33f\";i:1556974341;}',1556977941),('aff32aeb08d33d3ddc50bbebcdcb2aa4',2,'223.104.188.162','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YaPs\";i:1556974342;}',1556977942),('3e3c55775910e04d06fc8d86b42713fa',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I2Df\";i:1556978969;}',1556982569),('277e1fcdb535c11cc6abea083bc7b465',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IeM7\";i:1556978969;}',1556982569),('87b56aff89eedb3eabc29da0d14b4f88',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"amZf\";i:1556978970;}',1556982570),('dbf981d6b6dd3e2a282b7840286e3db0',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z6ec\";i:1556978979;}',1556982579),('979a2477da794ddb65d7b85f8d3dc2a9',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a909\";i:1556978986;}',1556982586),('e764f9d7f201556e83baacf9b78122bb',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jv7Y\";i:1556978987;}',1556982587),('a447463bd0982f6c794c9dfa56ad5a72',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ck2L\";i:1556981946;}',1556985546),('9cb8185e5a643ff6efb183abdeb83732',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kpzP\";i:1556981946;}',1556985546),('f3d2b6fe6c3eb16d9bee49f1a46e50f0',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wxXH\";i:1556981946;}',1556985546),('50019ecfaf152a11691a3499bc4d443f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r6su\";i:1556981948;}',1556985548),('eaf0bc47a7d1d96bf5babc4bef31938d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rZZX\";i:1556981951;}',1556985551),('aa3ad0c8e809f9587420aad8edb97ed2',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rz3N\";i:1556981952;}',1556985552),('897c44a55822ceee867024b8ecd748e4',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AQ2B\";i:1556981952;}',1556985552),('caed0e6a8af63e98b00371a90acfa1ab',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AxD3\";i:1556981952;}',1556985552),('b6c479aade6a2447bb76586ffe7842ff',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wN0Q\";i:1556981952;}',1556985552),('9b2439862e46ea9706cacff992bcc70f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MMP6\";i:1556983640;}',1556987240),('47a7bcbf45a0cd813ac93d79b3732126',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NyWk\";i:1556983640;}',1556987240),('b54ad1efd944b306335005aee8fab6bf',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IT9q\";i:1556983642;}',1556987242),('6f1e30ad43df90d0da9df10c03b2e1a7',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gCCg\";i:1556983647;}',1556987247),('5af47d6fe468459f5fc3881ed98f5cd3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E154\";i:1556983650;}',1556987250),('a82301272d2108c5593343b624003dee',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cXwJ\";i:1556983652;}',1556987252),('ef921cae6ff8dd67d933d111c27ef70e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O7Xc\";i:1556983652;}',1556987252),('c0ab11ff75536be953b6f0007db99358',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N1VE\";i:1556983657;}',1556987257),('c55d9fffba390a7b4771c9e069e69d27',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SzM2\";i:1556983657;}',1556987257),('f0a23841fd529600fc4b9ca7a3d26035',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L4k3\";i:1556983657;}',1556987257),('a32e99eb48686ff01424572f9ca007d8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rAwc\";i:1556983659;}',1556987259),('385934f0227cf8998d9b07ee4b5ad53e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D0Sb\";i:1556983662;}',1556987262),('c19e9017a9e672d49a09d97c2b1bb26d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q6p6\";i:1556983662;}',1556987262),('552b796765805850949ac9bea479589e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z32R\";i:1556983664;}',1556987264),('2d191d7e18cfc453fbc455e49624310e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kPpw\";i:1556983664;}',1556987264),('97f8e441a36b3eaa3f3424e482b3102e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ju55\";i:1556983664;}',1556987264),('3a100afc8bf7c7c305e4ba75894e6b64',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bpG5\";i:1556983664;}',1556987264),('78f96cdcb126421cefe3992a428029ac',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iE42\";i:1556983664;}',1556987264),('40d3875f3bc342156a60b71c63d1ee29',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bR1z\";i:1556983667;}',1556987267),('f8796af85db4061dba6c364c91798f16',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U8cz\";i:1556983673;}',1556987273),('f0515a9a182efa7a062231058e343023',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UlEw\";i:1556983680;}',1556987280),('48207f695355dc7a24503be8e85ac858',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ipxJ\";i:1556983680;}',1556987280),('c0968dd3fc86e12d053bd57129266205',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FaaY\";i:1556983680;}',1556987280),('1a536a39f54db336347f00a78ae96957',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V61K\";i:1556983684;}',1556987284),('679f914cea2f2715adbe0ff76ac1ba78',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vVfG\";i:1556983684;}',1556987284),('a8613481b9c8f68ab55df1d2843c4bfd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N3J5\";i:1556983684;}',1556987284),('3ae7f0f6360e379f70b55ed20e0ba1dd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jdht\";i:1556983932;}',1556987532),('3933656a6e072db4a7dd0f9eb9fec0f3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kk5W\";i:1556983932;}',1556987532),('9b4b87d346dfac15dfe9f20b2ad7cb51',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T0Iw\";i:1556983934;}',1556987534),('56e9d2463f950290602af8a6108b1a08',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VfSX\";i:1556983936;}',1556987536),('3491e7b06fbf7b64639b43ad793f3957',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vfOO\";i:1556983936;}',1556987536),('12722304a8ec4c287803142397c2c1ff',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X791\";i:1556983936;}',1556987536),('f02ca7a761b8525b52074ebb3ba5c059',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sYCo\";i:1556983936;}',1556987536),('66bc31e2b464d977dd80a6d02fafdfae',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C356\";i:1556984170;}',1556987770),('e12254a26b93ef4734ecb090a181c84f',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tDuk\";i:1556984170;}',1556987770),('d4c98469f190aa4b7701655ca7671673',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Mcc4\";i:1556984170;}',1556987770),('316e00d30974f46373b796f32dc25be3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fd20\";i:1556984536;}',1556988136),('a6eda9d086b39c4583109fa1713ecc74',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aIzN\";i:1556984536;}',1556988136),('036f3729048f956b0ddca16c4c2949cd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wO1w\";i:1556984538;}',1556988138),('1e8d2d8867f47e60fa9705d3bebd56fb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e9Lr\";i:1556984539;}',1556988139),('5a952ba0379cb3892ff7e37bdadda823',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ThPT\";i:1556984539;}',1556988139),('527348b5c2c4604cacf84dd71c6204a8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ud99\";i:1556984539;}',1556988139),('b2bd044ed8ce2e257c7228e7b5e18363',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m5ks\";i:1556984539;}',1556988139),('0a519474e40e986c6cf8eda9aed5e683',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dfRj\";i:1556984644;}',1556988244),('6fbfd9a6fd1750cde5285520ac8eeeae',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EdeU\";i:1556984644;}',1556988244),('07bbef91242bc19616921f96c33f9407',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yGPX\";i:1556984644;}',1556988244),('3fb1846174a6f1a75139da6c57162513',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KSUn\";i:1556984649;}',1556988249),('e05fd9a6528ccb7c43ff078433775346',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O6EZ\";i:1556984649;}',1556988249),('0e8c0f89566a163d19633541181a660c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r7dd\";i:1556984651;}',1556988251),('d1c09ab36bdb4a8404affdd6359582a8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P5pF\";i:1556984653;}',1556988253),('1f3b73afe60320125dd21c1963258c46',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zZlG\";i:1556984653;}',1556988253),('fa9aca2471e70e07165d80f374ddfaee',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PzcM\";i:1556984653;}',1556988253),('4d409290428e74f949ff95ac077fd69f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BUUw\";i:1556984653;}',1556988253),('419f5ae95a759cb85fe3b26be8f7d34e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nXzy\";i:1556984662;}',1556988262),('5f8f357da61a094103f0a8de5eea0177',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"K9Mt\";i:1556984664;}',1556988264),('6a5fe32b3e15de0a93bd667a00a35f80',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"i1D0\";i:1556984664;}',1556988264),('88dd588e6daabe85bce4bfd204578afd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kVty\";i:1556984665;}',1556988265),('d113ae8784c6531af71694ef2eff2891',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FU1T\";i:1556984669;}',1556988269),('c2d1dc14c4fded3ab2eff6587a9b0aa0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Kj17\";i:1556984671;}',1556988271),('d23c57717b44b42f4f0fc3e637263174',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wb9Q\";i:1557021216;}',1557024816),('cc3a773ac7b4d9368ba5de08310013b3',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I84S\";i:1557021216;}',1557024816),('9480f610ec67f8264a4826e743cf6e47',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ve3D\";i:1557021217;}',1557024817),('efc878275755920db9d7e0db1851cd60',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lf1T\";i:1557021217;}',1557024817),('c4575f15b912f8af4fc444fecd43e80e',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oPaz\";i:1557021218;}',1557024818),('32b97008ce1992153846b024b008dd17',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YURM\";i:1557021219;}',1557024819),('63ffd5368a07f2cdb421cce806bfc0a4',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pd0j\";i:1557021220;}',1557024820),('059024c460e68a4827c6b52c818a767e',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Km97\";i:1557021223;}',1557024823),('21ea5e95cdf2e4d373104ed102109d5e',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"d697\";i:1557021224;}',1557024824),('beb6bd3603c11b4d67e500d4b3935b49',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ibei\";i:1557021224;}',1557024824),('21f72016f67171f337dd422453a56831',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yxKR\";i:1557021224;}',1557024824),('bee77f9fe71055f0227f911a6a18f142',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SJ77\";i:1557021229;}',1557024829),('500189d2ee3c10544b713ea951527503',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eo89\";i:1557021241;}',1557024841),('7c3ad0970af7056ca4b80423f85627be',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Sz8N\";i:1557021244;}',1557024844),('d5434d2522785c601204cf179d04ea00',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WPXn\";i:1557021247;}',1557024847),('a1b043ea09d804113122e8a4ce310186',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yz5z\";i:1557021248;}',1557024848),('88fa22f101a6e11641028670e862eb59',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Feho\";i:1557021248;}',1557024848),('457e667496633a776a61f0d092a62127',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a5x9\";i:1557021250;}',1557024850),('3763a5b9a35b0176ca726e2f8b602ec0',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G8Qh\";i:1557021255;}',1557024855),('afb2505ef293464f8902628a5d47363e',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o4q5\";i:1557021260;}',1557024860),('ddda42ae46bdaacf0379fdbfd2988e7e',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PvSZ\";i:1557021262;}',1557024862),('4c0f1a5f7b880b683e36d8512aa0fdb3',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"htG1\";i:1557021262;}',1557024862),('158dd8261075915631a53d6734ea079b',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WdRg\";i:1557021263;}',1557024863),('2a471d7e08ed28c189dbd45bcbf5beb7',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rIjG\";i:1557021264;}',1557024864),('1de221b11ec78e6f4e35fe1373ec8a95',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rb8g\";i:1557021265;}',1557024865),('70512ac3f96578d37d83b2948bf60c4c',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IkXn\";i:1557021282;}',1557024882),('b54f3e1e9264b3e942cd67efd8391beb',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y244\";i:1557021282;}',1557024882),('2b7d2b9248f50e7043bdf69de4ab59e7',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hWdq\";i:1557021282;}',1557024882),('8f3abf40f560a656dbd280273c85cc70',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oqbV\";i:1557021285;}',1557024885),('415a8ffa4552c09c8c949a0194d12e71',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O15H\";i:1557021287;}',1557024887),('342bf3f949563a78d6d594289488ddcf',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"st7I\";i:1557021287;}',1557024887),('e1c46642f2bb0eadbededec72658c096',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c3Z4\";i:1557021287;}',1557024887),('b9e9eea39bc26137b0bf91f4912c4da7',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vLMk\";i:1557021296;}',1557024896),('0beb4fccd1ca6b38b97b903e94843692',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pg4c\";i:1557021296;}',1557024896),('781efd05e428be6ff8cc37d09d6d2f53',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ytNV\";i:1557021296;}',1557024896),('c6adf7138b87bd5ec8328982404bf06c',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PXoC\";i:1557021297;}',1557024897),('4924bc4369843e23f4a263acc894dbdf',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FFOv\";i:1557021297;}',1557024897),('981002fcb93d560a1e21f40ec59c4a43',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fW7g\";i:1557021299;}',1557024899),('186d2a64544cb7905ef1ee96c3395655',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"umUz\";i:1557021300;}',1557024900),('f8946aef47b16b4ab324368c6fd339ed',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wRj5\";i:1557021300;}',1557024900),('81b444d86433c11f102f67d0813b2506',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UHW8\";i:1557021301;}',1557024901),('9e0e170a34d17711c727ffc980629270',2,'112.64.119.108','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"snE2\";i:1557021301;}',1557024901),('b3cb9571f7a2a9bbb02db3f7f6b2fded',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G9y1\";i:1557037251;}',1557040851),('e2b4c7e80b73a666ebc9ed8e19465e81',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oz4r\";i:1557037253;}',1557040853),('e029687624fc82e71b7704e08e0d6291',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"td89\";i:1557037257;}',1557040857),('a81f441f7e94580cc0c71c040eea172e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KfZF\";i:1557037257;}',1557040857),('d154a283f898ca5b9354128c1a96b3b8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S8m2\";i:1557037259;}',1557040859),('8745372d4ee7bc7ad3e80a50eecd511c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EGID\";i:1557037262;}',1557040862),('eadde9da570309e58932ebe1da9a0d3f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v28r\";i:1557037262;}',1557040862),('1f02621106c3e13c34fd2a2ac3d91aa2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"m88z\";i:1557037263;}',1557040863),('91be91d14b55bafb9003194f461f8b32',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qHmm\";i:1557037263;}',1557040863),('20355cb14d841cfd6596f8b91b5c8aec',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SDKi\";i:1557037267;}',1557040867),('4d9b075e986b2f2dd2dff3a00a861e6d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tQ6x\";i:1557037268;}',1557040868),('ae2e130f0a832fb9747f5f6efd95cd5f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wml7\";i:1557037270;}',1557040870),('1ee2b009bdfe86d23c9e89203515137f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n1xq\";i:1557037273;}',1557040873),('87e7bbc7611340f21a2df061dfecf865',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r445\";i:1557037302;}',1557040902),('a40f2e465176446e08156ae1662e0e35',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XpCL\";i:1557037304;}',1557040904),('d041d26441a4aa2890b00c0710897a0b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PlIg\";i:1557037567;}',1557041167),('e4df558b0da6571e50d9cc5ca076f1be',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BDKj\";i:1557037567;}',1557041167),('7e8983a57b6c310694ba84ae90952406',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VUAr\";i:1557037567;}',1557041167),('98a2ae6eb5a39d3a6b6f9a64999717ca',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pHbE\";i:1557037589;}',1557041189),('b4216d0da0bbaaab3d670f9c22e50a37',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cWUW\";i:1557037600;}',1557041200),('b169f7473c59f028985c7d1993522346',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mGFT\";i:1557037600;}',1557041200),('a5910f0b57592600bb3ca8766cb4e274',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LUy8\";i:1557037600;}',1557041200),('1fd61bc40d1149a6efdfb319a92b184b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y448\";i:1557037601;}',1557041201),('35844b42d21a5d36cb9ed6c08a39c25c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KrTZ\";i:1557037602;}',1557041202),('d922115195bb34e839e21143c7efdcb2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hbtL\";i:1557037602;}',1557041202),('f5f4a84ceec231f3a4f9dee1fd451b82',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C4Ul\";i:1557037606;}',1557041206),('1f7ca404b8441138e715216001c8acf2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T0rq\";i:1557037612;}',1557041212),('36b48d62fdd1954ffcf1ccd2f448559d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NPoZ\";i:1557037612;}',1557041212),('f06775a6adcdcd7d8a9937a7916023ad',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q391\";i:1557037612;}',1557041212),('f841b1f69f237fa701a8f6dc9fbda399',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wazD\";i:1557037631;}',1557041231),('94b380cc4b07f781f4bd4abc6e00a21d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H9gF\";i:1557037633;}',1557041233),('cf19ace8410fd5f9269d951424b7af07',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zuOp\";i:1557037670;}',1557041270),('ea7a71a5e02cec8a44696eb223950f2f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D5fO\";i:1557037670;}',1557041270),('fa2ffcec2c4d0eb5584ef01967d5a7c2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jjHY\";i:1557037670;}',1557041270),('c2bf38add3b013e830df608a0b39ad97',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N8nT\";i:1557037929;}',1557041529),('6575475817e6129d76fbdcf5824d72eb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RHUO\";i:1557037931;}',1557041531),('769642229d993241daa0f27fd2bbc2a9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T3NN\";i:1557037932;}',1557041532),('69fdcc9a7746589f7a3f6502d8cd2a91',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rWDv\";i:1557037933;}',1557041533),('2300f4c9ffef514d91d33736b66e4e83',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pJ8K\";i:1557037934;}',1557041534),('d2ffa5e819b54768adfcd15b96fd1f49',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ci9W\";i:1557037934;}',1557041534),('f6c7aa04bf55da3cdb77140537aa02af',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"szaZ\";i:1557038411;}',1557042011),('53828c9048d376536de58dee751d6366',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vhkZ\";i:1557038411;}',1557042011),('807a1a9a96c85198a4dc172fa032fac3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"htOh\";i:1557038412;}',1557042012),('c94d672b4d3509772d1d58f61490951e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p07n\";i:1557038482;}',1557042082),('79d3499549cbbc374f3965ebabe41cc3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uqqp\";i:1557039199;}',1557042799),('4ec2f5aa059bd647bed30e1ea646ae56',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oTYP\";i:1557039199;}',1557042799),('58f7d1e833a0c8ae51032bdb53955d5e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o27z\";i:1557039199;}',1557042799),('80ff0e6bea6bee6634bee47aecacb048',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mf0T\";i:1557039199;}',1557042799),('b20b2147d97eb52266eddff721115ee3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vzM9\";i:1557040888;}',1557044488),('f8329fcf9699df8622b67e6530b90341',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ef6R\";i:1557040889;}',1557044489),('1b5a7d9099b4326c3f82fb38b8868638',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dg82\";i:1557040889;}',1557044489),('6336d5c6f153fbc5b8027f9a5a9e9f17',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iKcn\";i:1557040889;}',1557044489),('c56287234a15d3787f91c8b6ca001ecc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GHdC\";i:1557040890;}',1557044490),('ba2e6a393e19a5c0e7a2c521d0de8a61',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rQ33\";i:1557040890;}',1557044490),('dd78f39dc44b0d0a15ef56de05260883',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ey0d\";i:1557040891;}',1557044491),('474fb523dcf134ef8dbcacae444d8f8c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TNYe\";i:1557040892;}',1557044492),('b4710b3634a5c074d409cdf8903c5117',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LEb8\";i:1557040892;}',1557044492),('78f0087c099a75787290fb5b82188650',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x90b\";i:1557040893;}',1557044493),('632b6c26e9f1517c4df884bec8b4bb6d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"btI4\";i:1557040894;}',1557044494),('9b79b2fd1318e701dd708bffbb17acb1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nXSU\";i:1557042025;}',1557045625),('62386328b6b97743c501a00571cc0ebc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xe41\";i:1557042026;}',1557045626),('34a516cdaf73e821958da133f33a296b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HJrN\";i:1557042027;}',1557045627),('2a74cefdd68d5b4470ca2fe3527a5b03',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vOYK\";i:1557042028;}',1557045628),('65f34eb58906d79556921bb0736b41e1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V308\";i:1557042532;}',1557046132),('7a381a03367797579c216cee6f59d27f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fewg\";i:1557042533;}',1557046133),('5d89e00da50c36a2031eea3020a2dec6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ke9n\";i:1557043830;}',1557047430),('8d86defb3d6df6eca1a5733167ee87cb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"py8M\";i:1557043830;}',1557047430),('422ca695df84fa131e546eb49b46ab61',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MOPY\";i:1557043914;}',1557047514),('f246c3f117dbf4e43e49c98e48c885e5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fYrt\";i:1557043914;}',1557047514),('2719e70d933b773dd30653e703495a41',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZuAe\";i:1557043914;}',1557047514),('fbe02a7547a219110978550f65575c2d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Twx3\";i:1557043916;}',1557047516),('ae913de3f3be426fc4fc18ab9d3d7133',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z2u7\";i:1557043917;}',1557047517),('c8c64e814d55ac8adeff48a82bff1b18',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p4vX\";i:1557043921;}',1557047521),('4713c6dbe3f77b1f2e619060ac14d072',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nqwB\";i:1557043922;}',1557047522),('d4fdcbb420df9ca01e8bdb5dd68019a3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b6T0\";i:1557043922;}',1557047522),('4ef3a4bf6847d8de411f32b9c58b48e8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nA0i\";i:1557044034;}',1557047634),('eabcd05a3226f9422f2b2b35e6a8f763',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FB7Z\";i:1557044036;}',1557047636),('c419e4fc35e5d84ba80793336825e539',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T4SQ\";i:1557044036;}',1557047636),('adc267b33df43dc72428e1f50ea6cf32',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gOwg\";i:1557044036;}',1557047636),('9e9fbdde3f4ffb0fb19c356be21a1fed',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qY8j\";i:1557044036;}',1557047636),('5ba178b910d6034da8b908736e317152',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P6y4\";i:1557044036;}',1557047636),('20fc004b6bf7fcd14eb29f77c2fb280b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C1YQ\";i:1557044037;}',1557047637),('4ef20a038688e1944156c19e9562ec91',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AD8k\";i:1557044038;}',1557047638),('432d5bd1b0350c49ef4c2c57f2d02443',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u11u\";i:1557044038;}',1557047638),('b5d39577fe092dfa5fe0a4a3984f2f63',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dn7f\";i:1557044039;}',1557047639),('cf709a5757a7aff1e55823970fc3208d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bvep\";i:1557044040;}',1557047640),('942cf249be5ef3ab581afc2ce0f63d71',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZjY8\";i:1557044041;}',1557047641),('0dc7d7e996d6d3ee7c018dbe71cc8238',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X6I5\";i:1557044041;}',1557047641),('89ace95c8ad079599ef19402d40aff91',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s95M\";i:1557044042;}',1557047642),('d7390462b960bc59a22a6bceedcac4d9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v0T6\";i:1557044042;}',1557047642),('337c75c3761e7ebe9a17f42b90198927',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QFlA\";i:1557044853;}',1557048453),('1e08498f86bee947e616776e3f6fa651',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SlfG\";i:1557044853;}',1557048453),('675578d2762803714f2dad8fa66bc34d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kJqY\";i:1557044853;}',1557048453),('87b3622e9e84134c154c67b02ecbd603',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gSPq\";i:1557044870;}',1557048470),('2ff02235cb78495fbba170eb501a2a2a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ro96\";i:1557044973;}',1557048573),('32e0ab7af6ec1d52c3ba1b32ef498783',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CMTf\";i:1557044973;}',1557048573),('df5adb214e033b98b1de1fdae50448b3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z4Wx\";i:1557044973;}',1557048573),('743acc2a74f872920080124978384f98',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fo4P\";i:1557045086;}',1557048686),('4225cba4e667d9bc3130763b9f175f78',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ugIP\";i:1557045086;}',1557048686),('b85a3990e26a6fe6c874e1f318836efc',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xve7\";i:1557045086;}',1557048686),('79bb4f88134b45da332006032e0c955d',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KBz4\";i:1557045086;}',1557048686),('9d56726e1b4cdf9762d5bb9914825176',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Go6n\";i:1557045087;}',1557048687),('7759e3bff4d7e683131c658aab890ff3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b44x\";i:1557045185;}',1557048785),('2e7997b4ec90fcb886f94689ce09a49e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rgPm\";i:1557045262;}',1557048862),('ffa56f4be9111cb7b380590740b46de2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kzTM\";i:1557045262;}',1557048862),('f9c03c0ca5e6ab19aea23997633e184b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F1a6\";i:1557045262;}',1557048862),('516523de6e2a11152f3976d1364ca6cb',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kgxO\";i:1557045265;}',1557048865),('7ff1b8df1eb7446991da757d1f51b561',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k3BP\";i:1557045267;}',1557048867),('e99b9bd3491ba142677838bef02a4c6a',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vvDn\";i:1557045327;}',1557048927),('e085c7e4e301a5a9b46248456ab10cc9',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wlx7\";i:1557045327;}',1557048927),('e271f3df2b29f25776b9a0c2c435748b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p9f1\";i:1557045327;}',1557048927),('4cabe4597d0079c69853dc018f9b187b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VeNr\";i:1557045431;}',1557049031),('1d87609a506051c3eb2359456bf440dd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"F44W\";i:1557045432;}',1557049032),('840375f8e7e3ada1cd2316d4e75f7584',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"otOz\";i:1557046001;}',1557049601),('89b5292911bf61729aa3a717f82c2a07',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BnNx\";i:1557046001;}',1557049601),('be6f6810f3dcf23adb484d20fc889a95',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NIcE\";i:1557046001;}',1557049601),('aee39023e2ddaa44ab3efc07b17c6950',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OzTT\";i:1557046111;}',1557049711),('e8b932ec00a3f6acb5a4a16497f4c90e',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ktPd\";i:1557046113;}',1557049713),('4c8646f3c949e8a387adb16f4d874a12',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YO77\";i:1557046115;}',1557049715),('1943bce3e4f6d22fdf653c77cc3bc29c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X68s\";i:1557046115;}',1557049715),('d2b54a2a33148915e0e04feec2448839',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fBbr\";i:1557046115;}',1557049715),('4be3c889fdb5f570361c9e7e1c1ddab6',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u195\";i:1557046423;}',1557050023),('b5bf963fa739137623e6d47e272f8d3b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vbBD\";i:1557046424;}',1557050024),('0347c5da8120ea9e97bb0cfc242745d0',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H3zA\";i:1557047243;}',1557050843),('c7f7449b55c256eb2badf6af951fe972',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kF7D\";i:1557047323;}',1557050923),('151a5bcc23cac95acf15447317e7a1df',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"om7z\";i:1557047323;}',1557050923),('0ba1d5725311a022b8821bae8d9fe2d5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NAJ0\";i:1557047323;}',1557050923),('3b8c6b20bb071757e22702f2561df8c5',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x04P\";i:1557047324;}',1557050924),('396bd0bc3a3bc612c7c05d72061349b8',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BjB4\";i:1557047329;}',1557050929),('4df35ce20ced3d1aae380a86de013733',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GCUQ\";i:1557047334;}',1557050934),('60c924a891d4e10b30a7755acf5edb4f',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iH5L\";i:1557047346;}',1557050946),('426d96abc36268c886e1162da3612553',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sJgm\";i:1557047732;}',1557051332),('ad1512490da0b6a6c871b00006fbd62c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D9pP\";i:1557047732;}',1557051332),('63c1f90b40658d10eea19499452589b3',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VinW\";i:1557047733;}',1557051333),('af331992db69fa67d95354ef117b9534',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XKTi\";i:1557047745;}',1557051345),('c6544588b84db3e41e479b091b80bb4b',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wnfn\";i:1557047748;}',1557051348),('da72a308bc63f9a526c1426d1e2da1fd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zXN9\";i:1557047751;}',1557051351),('37ccc9083b9710d6b2fe86db3b5efa3c',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SWy5\";i:1557047751;}',1557051351),('74538769e57be221488f7ad1a4e8fff2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pIk9\";i:1557047757;}',1557051357),('46e8b102157b14002fd9c6ebd01a42c1',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OZIs\";i:1557047757;}',1557051357),('c4ced0d3e3f899990080304ab50491f2',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h6Zi\";i:1557047758;}',1557051358),('71d7d5c81a7ad6199a3ed0f235d741c3',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E7CJ\";i:1557063394;}',1557066994),('08356a51e1010c36f318eca6a30a6eaf',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z777\";i:1557063394;}',1557066994),('47b7f28c7a98252acb92b43b9c86c1d8',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fahf\";i:1557063395;}',1557066995),('4decae8090ef6a40f76968bea672e007',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yBTS\";i:1557063402;}',1557067002),('a0c2213ad97f4948a279b1f7593dc1b3',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RxfF\";i:1557063403;}',1557067003),('5a57a86db73e0dd1c1addb7d8fae23a1',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BaZ8\";i:1557063409;}',1557067009),('d5edb4b68f5ed3eb7e695fd57cbc9e14',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"afzI\";i:1557063410;}',1557067010),('d636e00c70e511b60392ed9351e4b59b',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g9W1\";i:1557063414;}',1557067014),('0e3709f77ec081c1226ed9b68f1eb676',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aLa1\";i:1557063418;}',1557067018),('949ce8f757c4d9527a8a279400f2f204',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Eswg\";i:1557063419;}',1557067019),('48aad92ba8241e06868c2fa40e1b36e0',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SO5k\";i:1557063419;}',1557067019),('b9a3e6c00c8a4cc6a5fe32165e88cf75',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CZzP\";i:1557063426;}',1557067026),('e2f47781c2318e45d7cd8afc8604b296',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BblB\";i:1557063427;}',1557067027),('6d4abf8d2e2a6e64adee92db2ccc0da7',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aw79\";i:1557063428;}',1557067028),('cc58e09b7718ed18ba32e755f19f7636',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y1Rl\";i:1557063428;}',1557067028),('4bc1bd934ab7cbe330bc60bd2d8af34a',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QQv1\";i:1557063428;}',1557067028),('ecd3896c7fa7024f2b7774b6b5416dba',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RgRf\";i:1557063428;}',1557067028),('c84bfec3f3e653472b630ac39fec64b2',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sOF3\";i:1557063430;}',1557067030),('b307e080854251674725146a6d7cfb51',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KjWM\";i:1557063430;}',1557067030),('a20694d8c3433be6159596f7efc4f1d4',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R9wk\";i:1557063430;}',1557067030),('6d3b57fefbe665e7dbad928f803b1830',2,'101.84.42.67','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JeP1\";i:1557063431;}',1557067031),('dcb377e1c35aee54904aa9bfd1a2afdd',2,'127.0.0.1','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"buO5\";i:1557065891;}',1557069491),('a82d52d1761b1f3f04271848876f0e73',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ef3z\";i:1557066713;}',1557070313),('2731764afd20c243b45863024f5b9505',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W67Z\";i:1557066713;}',1557070313),('01f93fc63585ad02ef4ec87007e02582',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZfQG\";i:1557066714;}',1557070314),('7a52ea10038bf316d4868469df82b858',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mYAY\";i:1557066735;}',1557070335),('fa1c98733b829fd9312f1e6afc3dafa4',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H1SP\";i:1557066739;}',1557070339),('fb63b45cdb270283697da37f7772e4bd',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jJ23\";i:1557066740;}',1557070340),('f2b93fd7ca26aa585b2512fe1dc4a92f',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wnem\";i:1557066740;}',1557070340),('75601e12957cafd63e6ec95942fbcdbc',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Hre2\";i:1557066754;}',1557070354),('60e71cbef5b6d8eee72264ecf6a34fee',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CkAA\";i:1557066756;}',1557070356),('256980e2ca5fb03fd10dc51fda6fd501',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cb16\";i:1557066757;}',1557070357),('4fbdea3fbac2acf8e663c1b9d7d87eb8',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hokD\";i:1557066758;}',1557070358),('f7380b8b2f0e32b3af30e63ab77bdccf',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z77W\";i:1557066758;}',1557070358),('02b59df18b0f13fb10d5a278b2cb6f33',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Onz7\";i:1557066764;}',1557070364),('9d922303e8ea80789c767c1fb488b36f',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HUHi\";i:1557066772;}',1557070372),('546def110ca606ba695973ce92373c2d',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jt4Q\";i:1557066773;}',1557070373),('aba09cf31f68548d2e19c17742a1a436',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"heEf\";i:1557066773;}',1557070373),('38d3d632acff15ca398db674da50f2ff',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cW2i\";i:1557066774;}',1557070374),('e121def34e5c06963faf92dabc13751b',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"e1dX\";i:1557066777;}',1557070377),('5f4a35cd5a1f0d857b619d9f3b9b99a3',2,'117.136.63.134','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yp1N\";i:1557066777;}',1557070377),('3e88ec0b6d5ce05d591dfb931d3f4a45',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VMuX\";i:1557106480;}',1557110080),('9294541a8ed07873c22783844306f65e',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S4Ho\";i:1557106480;}',1557110080),('c0af4a295a0be38082bd097ac4e185ce',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TQF2\";i:1557106480;}',1557110080),('ac630230a6557011663288ca625fb294',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dqYV\";i:1557106503;}',1557110103),('de0651f37017ba574b8b47f19c53d639',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dw0W\";i:1557106503;}',1557110103),('74ea0fbe706bdfbe4fe50a528c613a8d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b7GM\";i:1557106503;}',1557110103),('6fa91c5c7af565c6c62035f9cb71441d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tb4E\";i:1557106503;}',1557110103),('9946e267907a3a098a2a8ed628faa816',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Wq5S\";i:1557106504;}',1557110104),('f713c37a6eda02feee158e0fae82a6b0',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T74k\";i:1557106506;}',1557110106),('7123bd812bd27f67b6d4d28883197568',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aZWP\";i:1557106506;}',1557110106),('8a90b66bbfc68af23b676f9937c93563',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OCAz\";i:1557106506;}',1557110106),('ba3a375cf1e6b7260562ae66384bb743',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rip5\";i:1557106507;}',1557110107),('a79c0f5de2697bc429ac7b2a1664020e',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AZDB\";i:1557106509;}',1557110109),('31e2a9a4c116232cba2bcf71a474fbaf',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pqzp\";i:1557106509;}',1557110109),('93555dbf6910e4ade23b3b922b36c6d6',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NHDG\";i:1557106509;}',1557110109),('baabd3b4f9459060c3534938cbb9e0a3',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o1qp\";i:1557106510;}',1557110110),('c14d7223249df92374f708c18035a376',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lahW\";i:1557106511;}',1557110111),('3b790ef6c675a8150cd4605c650a637c',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h006\";i:1557106511;}',1557110111),('d4f2ae4f0b5a43445e1fd3414835b761',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O9Q2\";i:1557106511;}',1557110111),('7507f7a0201531ce441b2be3a023711e',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aD5a\";i:1557106512;}',1557110112),('326ac8eaec4c4b55f7bee8361f6428e4',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"j0xo\";i:1557106513;}',1557110113),('831ea555adf86a19e43f93c300bdf49f',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q7AY\";i:1557106513;}',1557110113),('4ae06e183222af1bdacc40e4de964d9c',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GE7O\";i:1557106513;}',1557110113),('3664dae5759bef1415d45b4a24adc284',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fLgz\";i:1557106514;}',1557110114),('d2d1f59ed3e3f20dfb53e23f875c15f5',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f116\";i:1557106515;}',1557110115),('a968258aa8599c9d39b4bc49983fab8c',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uG3w\";i:1557106515;}',1557110115),('459e60cfe9839710e5e7851cae1827aa',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Q697\";i:1557106515;}',1557110115),('e1730ea84da926e3f3285151bd363f84',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IV5V\";i:1557106515;}',1557110115),('e5d37bef062ef27c7f980ba510f5b9da',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Y2TE\";i:1557106517;}',1557110117),('5a98576804fe6d0b2246afe3230e0154',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uV8D\";i:1557106517;}',1557110117),('f3b862e50343d6a076842d88d4dbda13',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xd8F\";i:1557106517;}',1557110117),('65062d04dfffba2b6953d20f4237c695',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gzEH\";i:1557106517;}',1557110117),('4a941ebcf1434ed516cab532392f2d4b',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vw8m\";i:1557106519;}',1557110119),('1f53fb0b808a2acac02a6ce5e35c87a6',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X11X\";i:1557106519;}',1557110119),('7d9c04d791b5cd569cf39b84ee83d618',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ju18\";i:1557106519;}',1557110119),('27a62f7c0ae81daec8fc43431e23fcce',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dzn8\";i:1557106520;}',1557110120),('4161aac59794284f8e625e7a5f11126d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W8UI\";i:1557106521;}',1557110121),('a5ea36b6579f3a8129e7bad35b571771',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"D5z3\";i:1557106521;}',1557110121),('6f09175a02aa05c3e34aed8d8f700432',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aya4\";i:1557106521;}',1557110121),('85cf69de696c31058d66488a612ac32f',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s24Q\";i:1557106522;}',1557110122),('34b6d2b013b13239fad36bc1f2b2ea68',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"u3p9\";i:1557106523;}',1557110123),('0ba792d402ca3ada452cd9011367f8d9',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q9Ih\";i:1557106523;}',1557110123),('47f01e6d96aaf489a999b18c86176b64',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"N7f7\";i:1557106523;}',1557110123),('ced39b38d320f27d809b710a11cfe61c',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J9ax\";i:1557106524;}',1557110124),('1e30900c979fcccb83928a98538aee3c',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TkEy\";i:1557106526;}',1557110126),('233046ab63d2009c9c569ea7bc13e21e',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KHDB\";i:1557106526;}',1557110126),('9f8eafc86b34475a6dfa1e085e699a1d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ImdG\";i:1557106526;}',1557110126),('1b7cb2f7f37ec5aa70d44e107a44bb9a',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bbmc\";i:1557106526;}',1557110126),('b81215e02e29cedf83765d7af435fb11',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"FQq8\";i:1557106528;}',1557110128),('47bdae71d2f8aa91de75edaf1c7fb459',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uVrE\";i:1557106528;}',1557110128),('53956c8890ee1a71d79b6f9b86fa9c5f',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NhAD\";i:1557106528;}',1557110128),('0aac2fa239dbe4eb1cd15775d02b163d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V3P9\";i:1557106529;}',1557110129),('ef3629e32329c149635207110601c5db',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yu7Y\";i:1557106530;}',1557110130),('e41983e5c601148cb6be936dc38b1ced',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c9jY\";i:1557106530;}',1557110130),('7367bfdda072455183f05d3b7a12b776',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PPiK\";i:1557106530;}',1557110130),('7bfe50bf623740e7410896849e7570bb',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OH7B\";i:1557106531;}',1557110131),('fa47af4f1fe9c4f91c6af79d2f1d2cdb',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LbY5\";i:1557106534;}',1557110134),('308a0827ec213c468510add6cd7da29c',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IR7i\";i:1557106534;}',1557110134),('21543ad0983b244a5ec37fbb38698688',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jOSY\";i:1557106534;}',1557110134),('7ca0944e837345cdea19d5bef5a53bd8',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EB8d\";i:1557106534;}',1557110134),('7845a4bb0599c2c91e62cd764f83b81d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oZOZ\";i:1557106563;}',1557110163),('2f720181176616eae4ce6833b5bf279d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LJS8\";i:1557106563;}',1557110163),('8e85c1a4b4512ce39a5495729c689388',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OIi2\";i:1557106563;}',1557110163),('24a79d9beea57d5c31ab6b9be65c8580',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OUC0\";i:1557106563;}',1557110163),('5ae2497d88baa435ac6e47a46624f62b',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nDd9\";i:1557106565;}',1557110165),('2b89e251958be1cb647fbe1319d44215',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SGjg\";i:1557106565;}',1557110165),('518f083e7da0a70f8ee514e6dd426eff',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ogZF\";i:1557106565;}',1557110165),('0fc02bebd9963c0a36a5bf1c7968379c',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gMlj\";i:1557106566;}',1557110166),('f06b343a151234956ace016c4d614cbd',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M4O5\";i:1557106620;}',1557110220),('4ed0ec70f0424fafbe4c9bd664647e23',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mYAk\";i:1557106620;}',1557110220),('b19509272119853a88dac2ef16a1ab46',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"G1YN\";i:1557106620;}',1557110220),('948d13eb37db3b18ef361c9865ae9b33',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WoQ7\";i:1557106621;}',1557110221),('e433915501f5ba2bfee9748bf2de3eb3',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DtlB\";i:1557106629;}',1557110229),('a8cd64e9188e6603bd031d540f50e36f',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LvVi\";i:1557106629;}',1557110229),('bf967a5681ebc3c2c5bc7e6c0b460ffb',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pSQs\";i:1557106629;}',1557110229),('6d9643304956a90b7059cb696873e0b5',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Xj7Z\";i:1557106630;}',1557110230),('6ea01c5592bcc0204d63579e32116e38',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"apuA\";i:1557106667;}',1557110267),('69c6f70da37f58b724930d4690a9ffa6',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q4A7\";i:1557106667;}',1557110267),('7a8bdccb2d979c46de48b0abf2ba2e4f',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"k6jK\";i:1557106667;}',1557110267),('b8cbb9b47c4a1efdff1f1ad6e0ac5916',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V8Q6\";i:1557106667;}',1557110267),('d5071768a1377d86541bcff5e1cfebef',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NS7g\";i:1557106669;}',1557110269),('5b75e82a96e0b27ed12c41bbd8471889',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eGpa\";i:1557106669;}',1557110269),('2efdb861c2c96a1e9f48667ec94d01a7',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wDdJ\";i:1557106669;}',1557110269),('96b7a0cdfb887362e5e8a732d857c239',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H2EK\";i:1557106669;}',1557110269),('62ddec357605a170b69506fb166acfb2',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"S44V\";i:1557106670;}',1557110270),('13d1b458035dce8759979c2d2fc07879',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"r1VR\";i:1557106670;}',1557110270),('bf197bac6ddda726ea95a2bd4f845fd7',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"TE7Z\";i:1557106672;}',1557110272),('a46b98ba8554e2197192257c713e78db',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w09B\";i:1557106673;}',1557110273),('b33abf1916f6f8e694d542a516bf56a7',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aL5Z\";i:1557106675;}',1557110275),('8c08669b9cee8b7a0c517aa14f8814fc',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z37f\";i:1557106676;}',1557110276),('9268e6aab415e400a35481435a1ff10a',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g92O\";i:1557106677;}',1557110277),('f48310efd508dfad935df4156c26caea',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bq6Q\";i:1557106680;}',1557110280),('4ce13fb8bd1e1ff6301c9f998d17628f',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"C3EW\";i:1557106683;}',1557110283),('99dad8a34973f2a09f8b40bc1cb0ff69',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XbZQ\";i:1557106684;}',1557110284),('0b1afbe89df368f35c5ecef52051a54a',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kDGz\";i:1557106703;}',1557110303),('1a73eccbd5e7b26452f4a43a941f9d7d',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OHFK\";i:1557106703;}',1557110303),('c60168e15aef6bacc093e12c78f93969',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aHt0\";i:1557106703;}',1557110303),('1da8e7f77c956331ac3bca220396a197',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rh72\";i:1557106704;}',1557110304),('0355988726d031f49909703a5a61d8bb',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"AE4l\";i:1557106925;}',1557110525),('7f4d3fc10f1d0dc69f1d803a509dc30b',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z6tS\";i:1557106925;}',1557110525),('f036a0558f9b96c8d2540d8e1bc9e588',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SLez\";i:1557106925;}',1557110525),('58392565cf4e705633d46b55cc778e59',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hB4y\";i:1557106926;}',1557110526),('40e44ac7be2d9a46e6a2adf3cddc43c8',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sB3G\";i:1557106928;}',1557110528),('6644ca0e9fc08dc0783782e4331ae8fd',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z37t\";i:1557106928;}',1557110528),('236ec4c9817ced349662e48c499097b8',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lYeM\";i:1557106928;}',1557110528),('b6a1ad84677c3394aa504a0584e7ffc5',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fvff\";i:1557106928;}',1557110528),('d332166e4d42b96294b3959888eb8c83',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sTTL\";i:1557106931;}',1557110531),('081bc8928a93f5cf3c4e72cd4b75dbba',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l224\";i:1557106931;}',1557110531),('afae79fb2526728f63a23d8067d01ab8',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SntL\";i:1557107088;}',1557110688),('a0513fe07a6496918e9a00bb9831dfd6',2,'180.169.47.34','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WJj5\";i:1557107089;}',1557110689),('a5f11b1f95122e8cd2eb160ad6d2483c',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JNj8\";i:1557130106;}',1557133706),('27de0f0d67f5a2a6797628f0b58be408',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JzP9\";i:1557130106;}',1557133706),('19e24309355df1956ed46a81508640bf',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JCr8\";i:1557130107;}',1557133707),('9d73d11338b25bcd3c24307e61a74fcd',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zR58\";i:1557130159;}',1557133759),('fb325da744a577b0918bf642a74e19cc',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IgGV\";i:1557130159;}',1557133759),('87bf07898ac95ba58fafaf8b2b2d3b80',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ee94\";i:1557130159;}',1557133759),('2deffea67921750666a94195faf5437e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"dl99\";i:1557130159;}',1557133759),('0d605400b2ba790b801ec729288317bb',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kS3Q\";i:1557130160;}',1557133760),('dd80c1fba7aeb2090c0120027aecd8f1',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mlDT\";i:1557130162;}',1557133762),('5f2d82a609062c2a6d9bb4db9458268e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OqBy\";i:1557130162;}',1557133762),('f029b460ef0b99ead9cb04f2b3348640',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"oLli\";i:1557130162;}',1557133762),('a48e9112914c9df1e5095055ec869f5f',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NF22\";i:1557130163;}',1557133763),('2d650e3624459266d8e28b1f2292d4dc',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bire\";i:1557130164;}',1557133764),('15cacf83f7deea49ad1902a471928635',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h7WN\";i:1557130164;}',1557133764),('c68befc4d152b8ddb1eec6b485e29f0f',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O4Ng\";i:1557130164;}',1557133764),('bed9dc122bb42dda79a86f30d41123c6',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OTW1\";i:1557130165;}',1557133765),('7c0c1eb20656367e4a8b5d436d72b795',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QYJ8\";i:1557130167;}',1557133767),('5ab9fc99ed4ad585268a62335ffbd075',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NrZ1\";i:1557130167;}',1557133767),('1333fc3c0862d569a8ee47c5153690ca',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ReZ8\";i:1557130167;}',1557133767),('cb00212683f32b6960746de8811802b8',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s2iS\";i:1557130168;}',1557133768),('d27dfa798bbc9702be62ad0c952dbc74',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RiHm\";i:1557130171;}',1557133771),('3856d281a68035ebd0ab1d1663101f12',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x35M\";i:1557130171;}',1557133771),('7b7a1bc8a0fcc194ae73033fdef35fbf',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c9DK\";i:1557130171;}',1557133771),('90537923eaf4a2ab0eb0df6c23b92fff',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tsZr\";i:1557130171;}',1557133771),('35ca2069d21266409ccb767838e07b38',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sRaq\";i:1557130173;}',1557133773),('865fe0b15eaf5a5d0f408954924b0bc3',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vzSN\";i:1557130173;}',1557133773),('518c155857915a5151e6303467a39ce4',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I0xE\";i:1557130173;}',1557133773),('f132359e9a52f00bcadd3d1ba54a76d8',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BNon\";i:1557130173;}',1557133773),('c7e4598767bf4ba768a44f7034d5d383',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"MgCT\";i:1557130173;}',1557133773),('a226bc252c001593924503a013901a1c',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uh3O\";i:1557130175;}',1557133775),('c81701b61eacde0aafe2ebcd318909a5',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mJF5\";i:1557130175;}',1557133775),('66d1228c4a006a8580eb25ee5af8486e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Et7r\";i:1557130175;}',1557133775),('e7fe1931e096c08abae1f98043cfd7cb',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Pmsg\";i:1557130175;}',1557133775),('aa61f907df43556f3f89f976ca6d7a4e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"aga3\";i:1557130176;}',1557133776),('8a7c6db69237a563f8931aa5f801f724',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WRC9\";i:1557130176;}',1557133776),('0b0173be2609f7823c2b325f57c524b8',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qZI1\";i:1557130176;}',1557133776),('c7510e8c6c319e7089236afebf846e0a',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gfwz\";i:1557130176;}',1557133776),('9fee34cac2ab9e9cfab0fb87aaf533d3',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"XOOE\";i:1557130176;}',1557133776),('dd98b14f475725bf389a27edde75aa6e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YKW0\";i:1557130180;}',1557133780),('834ca26f377451cb26eff4e6b71afcd2',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PHgu\";i:1557130181;}',1557133781),('b692502a2a1fbe676496ff925beb3637',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Chmm\";i:1557130180;}',1557133780),('73171b7553a5176c63881cbd7246c224',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"a7Q0\";i:1557130181;}',1557133781),('6b661a3a9aa7205842a8ad106d0e843d',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"JIn3\";i:1557130285;}',1557133885),('d67725a49884dd0b674f76f610d47ad7',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kAMY\";i:1557130285;}',1557133885),('301b3b3dfd8aedc54a7d1f6dbf6897a0',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Te00\";i:1557130285;}',1557133885),('fe1e334106387e958f1dd250ae012b8b',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IRKx\";i:1557130286;}',1557133886),('d350f1146508a5dcac0b6db69599f1e0',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"nYQD\";i:1557130287;}',1557133887),('d9d4a703af8a427f49f167b7990165a9',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"U43Q\";i:1557130287;}',1557133887),('e991a26c53f7c1548a3a0e687f94d3fd',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J6OE\";i:1557130287;}',1557133887),('444187cbd743d98432e40d9d49c76e7c',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X6DS\";i:1557130287;}',1557133887),('d49a85b94f248cc745bd0dd17b873e3f',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"PH1a\";i:1557130288;}',1557133888),('d69fe78a7f2e363296078a86bdb1c878',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O7ms\";i:1557130288;}',1557133888),('e3da35eb4174403cba4f55921d7238dc',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mBz1\";i:1557130288;}',1557133888),('b43c47ae38863d3e505ccfd59241545a',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iM07\";i:1557130288;}',1557133888),('dbdbb774f4385e59ff5edd6342bce86c',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"uiNn\";i:1557130288;}',1557133888),('414e7db4552c1a33ef8eb7430cb1e3d6',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tmf3\";i:1557130288;}',1557133888),('b1551e5839caa9edf3584f234ee53dd6',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"c6UC\";i:1557130289;}',1557133889),('0e0a7049de7a07c03437e588c3c5cbed',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eGJE\";i:1557130293;}',1557133893),('677ae2da4a0a1bc42f50e6f3a14d085e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ytpm\";i:1557130293;}',1557133893),('c462e57977d81a2232dae421c5928bb5',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vguP\";i:1557130293;}',1557133893),('8d38f61e8054c3b71e66ea07fc135906',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"R95r\";i:1557130294;}',1557133894),('18a2c245e31a95e95dc44d852c0d1dca',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"fBnT\";i:1557130295;}',1557133895),('37435ef1a81f0b5487ca896b2728fa99',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W9m6\";i:1557130295;}',1557133895),('7b9851d00c0233ae57f08c32300fa8d4',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f1bd\";i:1557130295;}',1557133895),('aa84d3d4d04701e677868b607449176c',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZFOO\";i:1557130296;}',1557133896),('04606067704a213a27de137256a9cd55',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bbrq\";i:1557130301;}',1557133901),('c8082273a93e4aae5c6ad652210c213e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eO7Q\";i:1557130301;}',1557133901),('cae7cdc99866d055eb0cb20b33c10bb0',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yxuh\";i:1557130301;}',1557133901),('db9f6b9854cd911ead53cc2cb2928a59',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"lSSH\";i:1557130302;}',1557133902),('5cfcc17a15e454d93109a847ca118088',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"cfdk\";i:1557138681;}',1557142281),('bab77ab9ff21019c55a68e2fac328625',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rpb9\";i:1557138681;}',1557142281),('666dcd64377ddb2e0ddfd3cac3872f8c',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RGHh\";i:1557138682;}',1557142282),('70aea766a45def3f058b66ead9786243',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Guv4\";i:1557138735;}',1557142335),('b7c892584509e7df2ffb91c1a1537655',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"J4nN\";i:1557138735;}',1557142335),('a178093804894254f65425f94cad084e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EObc\";i:1557138735;}',1557142335),('d2701ca224f8cf1852933ab2654aac98',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Dn3s\";i:1557138735;}',1557142335),('aa1b405da7586a1f5cf9e8fd8f32b01c',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SQgL\";i:1557138736;}',1557142336),('696204b482d3a167231db9bfcd40ad01',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wU6v\";i:1557138738;}',1557142338),('a902ba96dd8ec2542237a4ca23e02e17',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SjEm\";i:1557138738;}',1557142338),('1f872c9651b1582bfb74a7ff9d4f5dda',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z1W3\";i:1557138738;}',1557142338),('3c2b0bf7b1ab218619eb1e5d6c06f46d',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Rv74\";i:1557138738;}',1557142338),('14f2218e9a6132a3e476d9c9c46534c3',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"mlO5\";i:1557138741;}',1557142341),('2eee9fd23d5642de5a7ee905cb473777',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RL7E\";i:1557138741;}',1557142341),('24dc0f4d9bec46755e09810aa8de2c36',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ZpHQ\";i:1557138741;}',1557142341),('846ba2a4f57a6f09c5e92b39934024fc',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"l25X\";i:1557138741;}',1557142341),('f2b172fe5b30c6412acd6e6469d335a9',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g386\";i:1557138743;}',1557142343),('3fa510357108da0f3c32f92560de0119',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zcJH\";i:1557138743;}',1557142343),('32a7de0d6b798e630b91dce559ed8d18',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"RxJ0\";i:1557138743;}',1557142343),('2729f70be7a88a9038f3abfcc1ab043e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"LEd1\";i:1557138743;}',1557142343),('054024bafbd11eaed11eedf676fc155e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wmV8\";i:1557138745;}',1557142345),('52e8737efa5a3c00309ad8f3340886b2',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"I4Dv\";i:1557138745;}',1557142345),('f08b3e2041ec4a506781fc93a408fc3b',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wPP9\";i:1557138759;}',1557142359),('c17f4ab2e4669f48ae5b3799a624c8f9',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Moi9\";i:1557138758;}',1557142358),('c6b4d04cc036f7792577062a73d195f3',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"n9j4\";i:1557138759;}',1557142359),('88462f5461b79733a4c8e2e5bae2f9a3',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"z21O\";i:1557138759;}',1557142359),('dba9676553e0561636065ef0b94b7c63',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wgdX\";i:1557138761;}',1557142361),('a89b894df348adac585ffc699ce9b8c8',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h1Ya\";i:1557138761;}',1557142361),('bf14ca9f3cb15fb393a53fe883701f7d',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WG8R\";i:1557138761;}',1557142361),('ea20a01c428f3a280de72508be68e44d',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"InMn\";i:1557138761;}',1557142361),('28ded047c4c7009fab3903f756cc7df9',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tzs7\";i:1557138763;}',1557142363),('3379290f72e44b20edc626f4ee4f4042',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"HCB2\";i:1557138763;}',1557142363),('640d5a7e54f9577e0f63dda2443da3f7',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UzoS\";i:1557138762;}',1557142362),('b421fa11d0a494eb2b70bd7a8daa5fd0',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"iCC2\";i:1557138763;}',1557142363),('76a5b713cd69fe5e4eb434e6cc74cdae',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f82d\";i:1557138788;}',1557142388),('1f4f396a202e0ab499cf21c1b3e5c09e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"O9RK\";i:1557138789;}',1557142389),('8d4197565daefe9a5b199273bbff22e4',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"db9B\";i:1557138796;}',1557142396),('9cd997d68afc8f3c79520de2a22fd319',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"p8Fc\";i:1557138796;}',1557142396),('85890a530f2bf5e9c544b066a20b29b0',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"da75\";i:1557138796;}',1557142396),('864502e8a7e28d49e88a78a86212e516',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"P9FY\";i:1557138797;}',1557142397),('ecb22d9f28deead252ec0b6106a1cb2b',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E5iM\";i:1557138798;}',1557142398),('fe92d0a1a891fd2443931481fea77095',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KMA3\";i:1557138799;}',1557142399),('d6e1e6acea06b2a493703924113babec',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"rD7v\";i:1557138798;}',1557142398),('50feb1aee47c79ef3d8df5b3f695544d',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"o66j\";i:1557138799;}',1557142399),('96b061873b0148b3fa1409911c469c94',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h3q6\";i:1557138800;}',1557142400),('dfb02669aa4471f41fc6acba7f755d58',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v738\";i:1557138800;}',1557142400),('018a55f61d8967e93d11696833245e8d',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"B5HP\";i:1557138800;}',1557142400),('7cf434a4ab392634cab6566b3543b693',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xJmv\";i:1557138801;}',1557142401),('a18cefcf393f100f30991a34ad827569',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Fn5I\";i:1557138803;}',1557142403),('ede16aa18882fba98bba768c0dd1e8bd',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h272\";i:1557138803;}',1557142403),('584e3dee0dd626c62f4f10c24fa4e73b',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CREG\";i:1557138803;}',1557142403),('78fa3be2a6b094f6e3c5cb5fc17cb70b',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qkB7\";i:1557138803;}',1557142403),('6a25105b9b777fa313a91ce307650251',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"x151\";i:1557138805;}',1557142405),('893430d2b648e437f45cd63931d1038f',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GJ82\";i:1557138805;}',1557142405),('ba94e6a1698341dc81bbe7fae11bc639',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bgR2\";i:1557138805;}',1557142405),('430deebd66f1d06f35ef3053cef0441f',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zokt\";i:1557138806;}',1557142406),('c164910948fee80991688dcdf77ea6f5',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ctyg\";i:1557138808;}',1557142408),('4a30979e4da18bee61831185a736faed',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"w343\";i:1557138808;}',1557142408),('d702aeece7d86d16132ece3549a6ec56',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WxJj\";i:1557138808;}',1557142408),('27336e970094cfefd9bb660530aa1f03',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"L146\";i:1557138808;}',1557142408),('0b89ead3c8d4aee8e3dea600528016a9',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"sNI7\";i:1557138810;}',1557142410),('5f9008ba494427f0059b9570c2f75a12',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"pn6V\";i:1557138810;}',1557142410),('c2c62c7191df56479aedef4226198821',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"KYZc\";i:1557138810;}',1557142410),('00dc86f5caa6cf9ed6263a772aadd974',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"b3H5\";i:1557138810;}',1557142410),('09bdaa5da79303bdbc1a0de3bb4f8d1a',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jN4o\";i:1557138812;}',1557142412),('761c860efded54d120c132d6032dff1a',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"q54E\";i:1557138812;}',1557142412),('fab37f9aae774c6666ab4b2daab1fdf4',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"E0AP\";i:1557138812;}',1557142412),('88e7376a031a12314065b2da00704285',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qQO3\";i:1557138812;}',1557142412),('a16df8ed7f9ad189e308d357a39b0480',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"acj2\";i:1557138814;}',1557142414),('13e7b82d1ad07f4ba7ead06e126446e6',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"yT6q\";i:1557138814;}',1557142414),('2d92d0ea366b40d038c4b137d480733e',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"s2Oj\";i:1557138814;}',1557142414),('ebbd50f2dc493b04a6d50603b03ec69f',2,'58.35.148.176','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Uf62\";i:1557138815;}',1557142415),('c704d16595e6ad3b30ce8a37311f644d',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bJCT\";i:1557148120;}',1557151720),('6299d7a04648b1b2a57002f12f9b29f4',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wgGj\";i:1557148120;}',1557151720),('d1efe609400759c43f77280b0c4b8344',2,'223.111.137.152','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WrmB\";i:1557148121;}',1557151721),('5e291973429c7ac9e954f3c8eec0c27d',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"T4vf\";i:1557238975;}',1557242575),('65fe2e5efe780fc582216e4652f590de',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Bt0E\";i:1557238975;}',1557242575),('1babce7a4870d34e402cbe44589cf113',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"izi3\";i:1557238975;}',1557242575),('85bb62ed2555e91c064c78769987802f',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"qbAM\";i:1557239215;}',1557242815),('42de9b7cca7c88633c4a035a86bf5c5d',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"UCNU\";i:1557239215;}',1557242815),('edfbdc08b428e697c23f27ab9229be92',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v8pM\";i:1557239215;}',1557242815),('e109a069e2ef369a9336ec5777e91552',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OsUU\";i:1557239216;}',1557242816),('d8a1fa218232dc7ac7103968e217e08f',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"g9VS\";i:1557239216;}',1557242816),('283fac9a6c50524210d4a6a1b5f1e7cf',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DQwP\";i:1557239220;}',1557242820),('5bb764cdb56f4322aff3f0e1c8889139',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"V8Yy\";i:1557239221;}',1557242821),('42934e2a2c382bb9ddb8d33c17ee8f8f',2,'222.67.3.61','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ti7h\";i:1557239222;}',1557242822),('642108e9ed818cbcf7cfc996b5587484',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"zXaA\";i:1557290287;}',1557293887),('6ac4426b1c7b18cf712d2d33422f59cd',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kr55\";i:1557290287;}',1557293887),('d339746039d1c187e3c943fc2e635863',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"BEN1\";i:1557290288;}',1557293888),('814e83f3fc2beb813bb1407cac48f19c',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"vnwE\";i:1557290290;}',1557293890),('107ae3c5640c190b0d051e4047f41a1d',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"EI3O\";i:1557290290;}',1557293890),('2e8880c165ce6a23ff173107984d6455',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"y449\";i:1557290290;}',1557293890),('2fc4b7ba33466cd587607ae194d948d0',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"f1J0\";i:1557290290;}',1557293890),('44655ae6329119608c74f7fad38512cb',2,'223.104.210.79','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"v18q\";i:1557290291;}',1557293891),('6d0fcdbcae37f013e44e6544a04a3f0b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"bJDJ\";i:1557493612;}',1557497212),('8d9aa3f0d31545d36acd7004f21eddb5',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"hzg9\";i:1557493612;}',1557497212),('8adc7bbfff6e033eb9ae800a38716b97',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W6i6\";i:1557493613;}',1557497213),('eba5ea383f6e2308e4ce543d5d8dd28d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Ipbd\";i:1557493616;}',1557497216),('2b15b9e2ad511936b8e04230d2eaea05',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"CQuL\";i:1557493622;}',1557497222),('cdee5e3671c884868394e998f3570b4b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"IrRE\";i:1557493622;}',1557497222),('abe6ac580f43eb8aa6438fda20aa3cc8',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"xKGO\";i:1557493622;}',1557497222),('3010ec1bce0305bcb166b0c33d7d7c5e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"tI4a\";i:1557493622;}',1557497222),('78dfcd9006f73de6d167242494e3a5e7',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gtA7\";i:1557493623;}',1557497223),('f16c0846fb1779401c4cbf9a900e271e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"X8r3\";i:1557493624;}',1557497224),('dd2e62fd983d06233b1cd045ae93863c',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YYPX\";i:1557493624;}',1557497224),('cb53cc14c5ddadc39551a0a8f0d459ea',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Lu9D\";i:1557493625;}',1557497225),('7e02954355be2c86e1cb314ea629549e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YAYy\";i:1557493625;}',1557497225),('3294f1b88bc02b56827325be7d183d19',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gqaM\";i:1557493625;}',1557497225),('ac682a82914e7f64b901ef9cee7ed4ac',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"M3fn\";i:1557493626;}',1557497226),('3fa5deac8fabe238e24cfe5ddf2eae18',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Tj77\";i:1557493629;}',1557497229),('6045029a5dcbc6efa3a6b7d5ad2589ba',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kx4j\";i:1557493629;}',1557497229),('a7a8a5fb311492a23159adf938c41fe1',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"t9kK\";i:1557493629;}',1557497229),('62b2a802ad2a681dd445352b5ce728fd',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"YW9v\";i:1557493629;}',1557497229),('ecb28b77dd84b501189c5f193c518539',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jY2v\";i:1557493630;}',1557497230),('4b135b06ea9136ee2d9a926a7548b2bf',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yr3F\";i:1557493630;}',1557497230),('d8b6cbe986f43a4dbe366f777e57062d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"h9S6\";i:1557493631;}',1557497231),('5f62f6c03dfb506184663de2a7d15986',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"eKh8\";i:1557493633;}',1557497233),('331079393992ca2446bc6408fd33980b',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"GO9T\";i:1557493634;}',1557497234),('efc68251e697a2102cad3d7755cd5f70',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"VTyq\";i:1557493635;}',1557497235),('c879e622b6a40cc2e33d93b361e36e2d',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"W95Y\";i:1557493641;}',1557497241),('3db17190039bd21b2dae516ae20e96ad',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"QcDZ\";i:1557493642;}',1557497242),('635ddbe389be4daa35038797b421e078',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"H46k\";i:1557539880;}',1557543480),('e6f0947cee728ca208f3ef7d18e2cd34',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"WbIT\";i:1557539880;}',1557543480),('abeeee806ebaeef5fba38203d4730ca7',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"gf09\";i:1557539880;}',1557543480),('2f67ed72c8eeddb176078cff2e434534',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"NC4d\";i:1557539886;}',1557543486),('c1f3f0726e9031b346f6bd3576c02086',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jneR\";i:1557539887;}',1557543487),('cd464dce10b96119d0ca9867dd288664',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Z58Z\";i:1557539892;}',1557543492),('d545170d295c8f0e1f105256b75a1be9',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"kMsQ\";i:1557539892;}',1557543492),('96abaf7cbab78f9b73e66a373e3f2e74',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"SeeO\";i:1557539892;}',1557543492),('6a79f1e004f3d952a7d0c1e14cce8f98',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"ikZ3\";i:1557539892;}',1557543492),('90d15c8a11e19f6409427755c8c9de39',2,'114.87.189.169','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"jqgn\";i:1557539893;}',1557543493),('3261bd1ffb8d11521d83a6387ea8200e',2,'116.230.230.164','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"Yy3R\";i:1557645035;}',1557648635),('a4f11c3fac8c9ae2a89d9210c087a19d',2,'120.228.135.126','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"icDl\";i:1557656842;}',1557660442),('0605394a2a2d4a2d38d51672f1049664',2,'120.228.135.126','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"DINw\";i:1557656843;}',1557660443),('a1fabf08df195c92660dafad85e8c6ac',2,'120.228.135.126','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"OXVF\";i:1557656843;}',1557660443),('c108a005f21b1038fac94440c156be6e',2,'120.228.135.126','acid|s:1:\"2\";uniacid|i:2;token|a:1:{s:4:\"wltx\";i:1557656846;}',1557660446);
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
INSERT INTO `ims_core_settings` VALUES ('copyright','a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}'),('authmode','i:1;'),('close','a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}'),('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}'),('site','s:0:\"\";'),('cloudip','a:0:{}'),('module_ban','a:0:{}'),('module_upgrade','a:0:{}'),('module_receive_ban','a:0:{}'),('basic','a:1:{s:8:\"template\";s:7:\"default\";}'),('platform','a:5:{s:5:\"token\";s:32:\"ip88YcfPJ41pR88c00cRz70XYPrx8oRX\";s:14:\"encodingaeskey\";s:43:\"t06XK6itHobkTJibXAhto709kkaxxxxX0KaIItKTo7k\";s:9:\"appsecret\";s:0:\"\";s:5:\"appid\";s:0:\"\";s:9:\"authstate\";i:1;}');
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
  PRIMARY KEY (`id`),
  KEY `index_openid` (`openid`),
  KEY `index_uniacid` (`uniacid`),
  KEY `photos_index_babyid` (`id`),
  KEY `photos_index_schoolid` (`schoolid`),
  KEY `photos_index_classid` (`classid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_baby`
--

LOCK TABLES `ims_hr_album_baby` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_baby` DISABLE KEYS */;
INSERT INTO `ims_hr_album_baby` VALUES (1,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','https://mdcdn.iamlj.com/images/2/hr_album/2019-05-03/baby-simple.jpg','刘小靖的头像','刘小靖','1',546,100,0,1,1,1556720660,3,1,'小龙人幼儿园','大班'),(7,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','李小红','https://mdcdn.iamlj.com/images/2/hr_album/2019-05-03/baby-simple.jpg','李小红的头像','李小红','4',546,100,0,1,1,1556720660,3,1,'龙阳路幼儿园','大班'),(5,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','https://mdcdn.iamlj.com/images/2/hr_album/2019-05-03/baby-simple.jpg','刘小靖的头像','刘小靖','2',546,100,0,1,1,1556720660,3,1,'大海幼儿园','小班'),(6,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','https://mdcdn.iamlj.com/images/2/hr_album/2019-05-03/baby-simple.jpg','王小帅的头像','王小帅','3',546,100,0,1,1,1556720660,3,1,'张江幼儿园','中班');
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
INSERT INTO `ims_hr_album_data` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','送上我亲手制作的相册，快看看吧','qiangwei','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/j0NQ66p666K9rfrY6ABG6b67R666Qk.png\";}}','http://dl.stream.qqmusic.qq.com/C1000003FhfU2GR1tu.m4a?fromtag=0',4,0,'',0,1,0,1556720660),(2,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，SADASDAS','shiguang','a:1:{i:0;a:2:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/n2SH07hsqUdq279q79zqFqqn4Noqln.jpg\";s:4:\"text\";s:0:\"\";}}','http://dl.stream.qqmusic.qq.com/C100004TSZYg2HaHQi.m4a?fromtag=0',2,0,'',0,1,0,1556726053),(3,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/ngGggi9JJwPI3ZGKIz37jvmA2JOid2.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556726138),(4,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/fZNbiV2OymfziBIF8m0nnIFif344Yo.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,1,0,1556726164),(5,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/rbiR03BWS035h0I53iOo5723PS735i.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,1,0,1556726206),(6,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/NeZVbXK66EKqyWve9B7MKBBCZi7kXB.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728235),(7,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/Bnu7g0577l47N4IrFwJKunrO7GkOj4.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728253),(8,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:60:\"images/2/hr_album/2019/05/pKqDl9iLzx6E9e5QeK95QDGzL9kg9L.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556728365),(9,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019/05/02/S1okoPL3dssoPOlHlm0oHF0OdOrw1S.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',2,0,'',0,0,0,1556728453),(10,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/WIzqk2XOsyKQX5Os5FZWf7aVyYzlsI.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',4,0,'',0,1,0,1556734332),(11,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/vUNFJL0L93349NJH3zjfuzJ9tJ93w3.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',4,0,'',0,1,0,1556734347),(12,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:2:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/lA6CavcUuAl6al6KPY8Sl8sKwCcp8Y.png\";}i:1;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/D3Cc06QCCZblCQWb8WBbzLAlIIBIAW.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556805120),(13,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/G6vEed2MMvi6vxeXgDvN2nx0dVXg66.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556807335),(14,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/xvxxKxPvPvVV7gGD0D0VYgVx0lV7kX.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556807427),(15,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/zYypyN40Hyg0cNWpf0CynxFynfWf4R.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556807992),(16,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:63:\"images/2/hr_album/2019-05-02/atj2eTJn2QwpNCP2qpmBNzctEPC6qc.jpg\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556809300),(17,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:107:\"http://tmp/wx27fc7192979a4e38.o6zAJsw3bkHShZ_GO_RYlrSHOWzg.0QFOp3DzPtN8c428e702665098bfcf750f6194c7b24f.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',1,0,'',0,0,0,1556845940),(18,2,'null','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132','这是我家宝贝的相册，快来看看','dongri','a:1:{i:0;a:1:{s:4:\"pics\";s:107:\"http://tmp/wx27fc7192979a4e38.o6zAJsw3bkHShZ_GO_RYlrSHOWzg.bd3tBQOiWUMoc428e702665098bfcf750f6194c7b24f.png\";}}','http://dl.stream.qqmusic.qq.com/C100002OrhQA0bNYFg.m4a?fromtag=0',0,0,'',0,0,0,1556850008);
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
  `schoolid` int(10) DEFAULT NULL,
  `schoolname` varchar(50) NOT NULL,
  `schooladdress` varchar(50) NOT NULL,
  `classname` varchar(50) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_classid` (`id`),
  KEY `photos_index_schoolid` (`schoolid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_hr_album_school_class`
--

LOCK TABLES `ims_hr_album_school_class` WRITE;
/*!40000 ALTER TABLE `ims_hr_album_school_class` DISABLE KEYS */;
INSERT INTO `ims_hr_album_school_class` VALUES (1,'小龙人幼儿园',3,'小龙人幼儿园','上海市杨浦区军工路 100 号','大班',1556720660);
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
INSERT INTO `ims_hr_album_user` VALUES (1,2,'oYYSe4rLo-tZRloaCqVKz2ZIa8MA','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erjd6fpws2w8w8oJeMGsicpCUpg0PYS3RiaR890QTasEGAd9qibFoNn40BpmwMnsgN99ticlM1H6nXibiaw/132',0.00,0,0,1556720634),(2,2,'','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132',0.00,0,0,1556804172),(3,2,'','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epAMmOtJxksp0KFVj6Dy8RFPzpmc6ksRzrXLibSzsUNST2tN8AhGKoCqicVA0ELZxCgrnZt8ZpwQlug/132',0.00,0,0,1556845913),(4,2,'ouTc44yoKOZnViKR8naTnGjhwIKI','王让','https://wx.qlogo.cn/mmopen/vi_32/hAnkVF6mvYGqzBgg16pZfGCgPxA3Vo6UZ59rTVHichKk58QFcxmJUnGNoA1qUPbqIyrOF5npm1ibYnXSjwabymFA/132',0.00,0,0,1556938716),(5,2,'ouTc44yr9HR7Mh15n-PhzARr2wHk','刘靖','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erAZEcrzfZNCaMqWRnncZeu4jpDW1W2fJicmEOm95L67Sjw092I6CNToPIXUb42JsPvM8yzOIUC2GA/132',0.00,0,0,1556942286),(6,2,'ouTc44z7TkTGUbjsQgsTStGYd9DI','陈雅吉','https://wx.qlogo.cn/mmhead/neQPOcP08vKbavL02TuUG27knwtaEib7oicLJEa7ibsTfo/132',0.00,0,0,1556943875),(7,2,'ouTc447q2buIMepz1156JEOy4mgo','阿怪','https://wx.qlogo.cn/mmopen/vi_32/uPdoKACKvpzAccdbwTY9svhhYF85w2pY8xdBRBIj1w95LIEiaHsBbOIXZRCPn93nfosYr9wb9SiaJZ59FCdNq6hQ/132',0.00,0,0,1556947260),(8,2,'ouTc442v8f_OxOMKecLziGyko91Y','涂云球．教育','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLDD56gZQQ7LPJ7ogvlwqWkLdGQKEx3e6Py5sEKLChcbDickPTC9k1IathOJrER0g3O8IRALFeOkoA/132',0.00,0,0,1556947961),(9,2,'ouTc444SSpgPEEJORC0wh5AFN674','李斌','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLiaqn31LORUf5LLcEVytR4wia3xWMZXyM8fjvpwcaWhJCDkQ7SZbHXhEReypfuWfkzQsbFfARcqmIw/132',0.00,0,0,1556948795),(10,2,'ouTc448H0XTUT3BWo_AZr58IIm-w','Andy','https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEL5ksSbZChA7oaPicOS1oKhXoRxw0lA1QZxYTqtnG8xBzQZv3qUoGtt8DKfFVnLzqg3ia8MGR0OXHkw/132',0.00,0,1,1557063418),(11,2,'ouTc447G2TdM52i1b7qgyCFLS-FE','一只特立独行的猪','https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epa15oRIPf8lgWgXLiaiadaBZbcQ2ibG94ucRodicl66JJhy6r8TtNLy9JfFlXP59WnNCibnwc6ZdNOLzg/132',0.00,0,0,1557066739);
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_visit`
--

LOCK TABLES `ims_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_stat_visit` DISABLE KEYS */;
INSERT INTO `ims_stat_visit` VALUES (1,1,'we7_account',1,20190504,'web');
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
INSERT INTO `ims_uni_account_modules` VALUES (1,2,'hr_album',1,'a:20:{s:9:\"spacename\";s:12:\"蒙大教育\";s:10:\"remoteskin\";s:1:\"1\";s:6:\"mpname\";s:0:\"\";s:8:\"deftitle\";s:42:\"这是我家宝贝的相册，快来看看\";s:8:\"baseskin\";s:6:\"dongri\";s:6:\"remote\";a:5:{s:4:\"type\";i:3;s:3:\"ftp\";a:9:{s:3:\"ssl\";i:0;s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"21\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:4:\"pasv\";i:0;s:3:\"dir\";s:0:\"\";s:3:\"url\";s:0:\"\";s:8:\"overtime\";i:0;}s:6:\"alioss\";a:4:{s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:3:\"url\";s:0:\"\";s:6:\"bucket\";s:9:\"请选择\";}s:5:\"qiniu\";a:4:{s:9:\"accesskey\";s:40:\"c1HeRi-0zzp-vvIySFCmsShxapOdiKFoBeziDSkz\";s:9:\"secretkey\";s:40:\"nERfgvtgrVcMpEXsJd4N3PjeTKWMsxA07ZbmxCsQ\";s:6:\"bucket\";s:6:\"mengda\";s:3:\"url\";s:23:\"https://mdcdn.iamlj.com\";}s:3:\"cos\";a:5:{s:5:\"appid\";s:0:\"\";s:8:\"secretid\";s:0:\"\";s:9:\"secretkey\";s:0:\"\";s:6:\"bucket\";s:0:\"\";s:3:\"url\";s:0:\"\";}}s:6:\"review\";s:1:\"0\";s:8:\"sharepic\";s:60:\"images/2/hr_album/2019/05/j5ws14iLiOO16nLZw3oLss4so7O1So.jpg\";s:4:\"kfbg\";s:62:\"images/2/hr_album/2019/05/02aS6RpfxSjPJzS1ffYfM22irM1RI5FR.jpg\";s:6:\"morebg\";s:60:\"images/2/hr_album/2019/05/DVW8Kk72ZwLRIQSVO08LiP6V7v2zNd.png\";s:6:\"ishare\";s:1:\"0\";s:5:\"isico\";N;s:8:\"wxyellow\";s:1:\"0\";s:5:\"ispay\";s:1:\"0\";s:6:\"dsdesc\";s:6:\"打赏\";s:5:\"llads\";s:0:\"\";s:4:\"iskf\";s:1:\"0\";s:7:\"paydesc\";s:24:\"打赏页面文字描述\";s:10:\"list_style\";s:1:\"2\";s:10:\"templateid\";s:20:\"打赏通知模板ID\";}',0,0);
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
INSERT INTO `ims_users` VALUES (1,0,1,0,'admin','de20e9363ac29865c18f74f50300a4463564e748','ca7659ab',0,0,1556718796,'',1557540488,'116.236.177.50','',0,0,0,'',0);
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

-- Dump completed on 2019-05-13  5:54:16
