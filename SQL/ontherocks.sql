# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29)
# Database: ontherocks
# Generation Time: 2014-09-24 17:33:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table craft_assetfiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfiles`;

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` smallint(6) unsigned DEFAULT NULL,
  `height` smallint(6) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(159,1,3,'Beer1.jpg','image',680,1024,427914,'2012-10-12 21:34:02','2013-03-19 22:19:37','2013-03-19 22:21:46','dabab4b4-156a-428c-8533-a0e56de5ad4d'),
	(160,1,3,'Champagne.jpg','image',600,800,95513,'2012-10-12 21:46:10','2013-03-19 22:19:38','2013-03-19 22:21:46','496249bf-2e09-4e83-9ccf-a7cf4af8d521'),
	(161,1,3,'Beer3.jpg','image',2592,1944,1688801,'2013-01-16 01:06:46','2013-03-19 22:19:38','2013-03-19 22:21:46','8ae44933-f3a2-4a3b-9f0f-141488ec6475'),
	(162,1,3,'Beer2.jpg','image',612,612,103184,'2013-01-16 00:58:37','2013-03-19 22:19:38','2013-03-19 22:21:46','a5cf3fbe-cbb9-40dc-a7cc-3951f5a93911'),
	(163,1,3,'ChampagneWithStrawberry.jpg','image',612,612,109860,'2013-01-14 23:42:54','2013-03-19 22:19:38','2013-03-19 22:21:46','5ffee3a4-8c6d-4751-95e2-f4df30e78b6f'),
	(164,1,3,'Cosmopolitan.jpg','image',1024,765,418148,'2012-10-13 03:19:58','2013-03-19 22:19:38','2013-03-19 22:21:46','18e2ac3b-a7c4-4c2e-b67d-760b08f58412'),
	(165,1,3,'EspressoMartini1.jpg','image',1024,727,309627,'2012-10-12 09:20:54','2013-03-19 22:19:38','2013-03-19 22:21:46','a024ebca-6a52-4979-b2c1-3bc018285639'),
	(166,1,3,'EspressoMartini2.jpg','image',1280,956,412123,'2012-10-12 22:57:57','2013-03-19 22:19:38','2013-03-19 22:21:46','d8f99d13-b3d8-4c78-850a-4bb9d414da78'),
	(167,1,3,'GinAndTonic1.jpg','image',791,1024,91134,'2012-10-12 22:58:44','2013-03-19 22:19:38','2013-03-19 22:21:46','c7bb3619-0f8b-42af-abb0-f9a677b1371f'),
	(168,1,3,'GinAndTonic2.jpg','image',1767,1440,327357,'2013-01-16 00:52:47','2013-03-19 22:19:38','2013-03-19 22:21:46','c2e4c9bf-0464-47dc-8978-b63463179816'),
	(169,1,3,'GinAndTonic3.jpg','image',2592,1936,2161429,'2013-01-16 00:59:11','2013-03-19 22:19:39','2013-03-19 22:21:47','d8b8d7c7-913f-4256-b164-02bf84712183'),
	(170,1,3,'MaiKaiMartini1.jpg','image',683,1024,106367,'2012-10-12 22:57:24','2013-03-19 22:19:39','2013-03-19 22:21:47','05566a56-aedb-4b9d-a971-7dc133331f38'),
	(171,1,3,'MaiKaiMartini2.jpg','image',5184,3456,4352065,'2013-01-16 00:53:58','2013-03-19 22:19:39','2013-03-19 22:21:47','c77166f7-d110-4381-9968-6bd094ef3563'),
	(172,1,3,'Mojito.jpg','image',1280,854,281283,'2012-10-12 21:51:51','2013-03-19 22:19:39','2013-03-19 22:21:47','83a9c033-7c59-4b56-afe7-ee17306d5c70'),
	(173,1,3,'Shots.jpg','image',1000,667,484474,'2013-01-16 01:07:12','2013-03-19 22:19:39','2013-03-19 22:21:47','6f16d83c-6e0b-4ffa-978a-181a81ebbdc9'),
	(174,1,3,'TahoeDrink.jpg','image',612,612,94715,'2013-01-16 00:57:04','2013-03-19 22:19:39','2013-03-19 22:21:47','fcd158e5-39dc-440a-b635-be654e22a5ae'),
	(175,1,3,'Tequila.jpg','image',1000,667,484474,'2012-10-12 21:41:47','2013-03-19 22:19:39','2013-03-19 22:21:47','84a0f042-ad56-4ebc-8d55-3c8befe0d175'),
	(176,1,3,'Vodka.jpg','image',678,1024,139108,'2012-10-12 23:01:18','2013-03-19 22:19:39','2013-03-19 22:21:47','16e7e281-e983-498b-92ed-3173c4fdc470'),
	(177,1,3,'VodkaMidoriSplice.jpg','image',1280,956,351922,'2012-10-12 22:59:45','2013-03-19 22:19:39','2013-03-19 22:21:47','b3e89cef-60d7-41fd-82ea-c6f18ebbdbed'),
	(178,1,3,'Whiskey1.jpg','image',1024,681,113920,'2012-10-12 21:41:11','2013-03-19 22:19:40','2013-03-19 22:21:47','fffaf090-3074-4cfa-93c8-fb7bc318a486'),
	(179,1,3,'Whiskey2.jpg','image',1000,667,467753,'2012-10-12 21:41:35','2013-03-19 22:19:40','2013-03-19 22:21:47','14536b60-8649-418c-ae7b-d7608f89ea47'),
	(180,1,3,'WhiskeySour1.jpg','image',1000,667,493718,'2012-10-12 21:41:41','2013-03-19 22:19:40','2013-03-19 22:21:48','3efd817f-b888-46d2-b197-c06cf431e208'),
	(181,1,3,'WhiskeySour2.jpg','image',1000,667,483013,'2013-01-16 01:07:26','2013-03-19 22:19:40','2013-03-19 22:21:48','d3196491-ab42-433d-8bff-0947d57be227'),
	(182,1,3,'Wine1.jpg','image',960,960,84822,'2012-10-12 21:39:58','2013-03-19 22:19:40','2013-03-19 22:21:48','d56e1ce4-0e4a-4f13-9e26-09529a7862d3'),
	(183,1,3,'Wine2.jpg','image',612,612,125261,'2013-01-16 00:57:17','2013-03-19 22:19:40','2013-03-19 22:21:48','27a90be4-db39-4369-80d8-8e6fe8d4d2dd');

/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetfolders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfolders`;

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(3,NULL,1,'Drinks','','2013-03-19 22:16:59','2013-03-19 22:16:59','a62c983d-c088-4087-bd77-680f04e7629c'),
	(4,3,1,'Test','Test/','2013-05-15 11:17:05','2013-05-15 11:17:05','0657bcba-1338-4da8-a944-9a39ceec4044');

/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetindexdata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetindexdata`;

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_assetsources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetsources`;

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;

INSERT INTO `craft_assetsources` (`id`, `fieldLayoutId`, `name`, `type`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'Drinks','Local','{\"path\":\"..\\/public\\/images\\/drinks\\/\",\"url\":\"\\/images\\/drinks\\/\"}',1,'2012-10-12 22:28:01','2013-03-19 22:20:38','29d9a013-b5fb-4d8d-a7f9-15edec759da7');

/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assettransformindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransformindex`;

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_assettransforms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransforms`;

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`) USING BTREE,
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categories`;

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categorygroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups`;

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categorygroups_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups_i18n`;

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nestedUrlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_content`;

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_heading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_siteIntro` text COLLATE utf8_unicode_ci,
  `field_body` text COLLATE utf8_unicode_ci,
  `field_description` text COLLATE utf8_unicode_ci,
  `field_metaDescription` text COLLATE utf8_unicode_ci,
  `field_linkColor` char(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_locale_fk` (`locale`),
  KEY `craft_content_title_idx` (`title`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_heading`, `field_siteIntro`, `field_body`, `field_description`, `field_metaDescription`, `field_linkColor`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(5,3,'en_us','Amaretto',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:55','69969241-dd7c-4ac2-bdaf-6a5b4ca3c087'),
	(6,4,'en_us','Apricot Brandy',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:55','b0e99106-dbfc-4cdf-82cc-a7ddbe6ace78'),
	(7,5,'en_us','Bailey\'s Irish Cream',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:55','171292d0-4765-43f1-9a78-f51d240f4460'),
	(8,6,'en_us','Bourbon',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:55','1b2bf87c-c9b3-4343-9363-8a2844331d9d'),
	(9,7,'en_us','Whiskey',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:55','3486d4a7-506a-47f4-8206-14a72be76a46'),
	(10,8,'en_us','Cachaça',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:55','1949b068-8804-4fef-ba3a-2742e139c876'),
	(11,9,'en_us','Champagne',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:55','594e258c-a791-487a-b60d-978314788209'),
	(12,10,'en_us','Apple Schnapps',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','716e1835-cc1f-4365-9e78-3d9e66270063'),
	(13,11,'en_us','White Rum',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','4f34c9ef-ad02-48e4-a45e-c9c7f2fa55b4'),
	(14,12,'en_us','Blue Curaçao',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','141aa33a-e679-4924-9f03-3d72ed4e9bb2'),
	(15,13,'en_us','Brandy',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','47a3526a-6c33-4365-a1e6-f31e80859ee9'),
	(16,14,'en_us','Campari',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','9d428e4d-6eef-4448-ba3a-1ab3aea98bad'),
	(17,15,'en_us','Cherry Brandy',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','fe5aa8a3-3769-4a43-840f-22edb908c956'),
	(18,16,'en_us','Cognac',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','ebaab56f-afdb-4e54-9de0-ac18314f1c62'),
	(19,17,'en_us','Cointreau',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','a25b70e6-7d11-4dfc-a49b-759d53d30148'),
	(20,18,'en_us','Crème de Cacao',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','a779274c-45b0-4ef9-8d5b-f2f38adfa277'),
	(21,19,'en_us','Crème de Cassis',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','46697c5b-4506-4faf-b633-f66b7a831188'),
	(22,20,'en_us','Crème de Yvette',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','e26f9967-6710-4950-9d24-497e26feeddb'),
	(23,21,'en_us','Demerara Rum',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','243cd229-57d6-4052-a555-6b68ea6d4351'),
	(24,22,'en_us','Drambuie',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','5ff5a57a-d3a8-4a92-9a0c-1d93e4b5af2d'),
	(25,23,'en_us','White Wine',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','676e91ce-b9a3-480c-b5c1-8f1a128a4a06'),
	(26,24,'en_us','Dry Vermouth',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','8a3683a2-f131-4222-ab59-ed86837248a1'),
	(27,25,'en_us','Galliano Liqueur',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','4f1b3d81-cf39-444a-80c4-8d8eccb37500'),
	(28,26,'en_us','Gin',NULL,NULL,NULL,'<p>Gin is a spirit which derives its predominant flavour from juniper berries. From its earliest beginnings in the Middle Ages, gin has evolved over the course of a millennium from a herbal medicine to an object of commerce in the spirits industry. Today, the gin category is one of the most popular and widely distributed range of spirits, and is represented by products of various origins, styles, and flavor profiles that all revolve around juniper as a common ingredient.</p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','8e4d3988-5b28-4431-a06a-8eac5725fbf0'),
	(29,27,'en_us','Grand Marnier',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:56','01489103-3632-4f99-9a19-63d1d20c47b4'),
	(30,28,'en_us','Green Chartreuse',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','9cc502e1-7434-443b-8796-0d689441107e'),
	(31,29,'en_us','Sweet Vermouth',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','08820a53-dcab-4de1-b64a-a198cff9500b'),
	(32,30,'en_us','Kahlúa',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','6f027fdf-f106-442b-ad01-2b6ac328d0e7'),
	(33,31,'en_us','Kirsch',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','cb325c09-93ba-44e9-bc5a-9f826594152e'),
	(34,32,'en_us','Midori',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','68b8381d-6259-49e0-a595-053e0399fae2'),
	(35,33,'en_us','Peach Brandy',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','19f40ba1-bbbf-481a-8734-5b604f589e88'),
	(36,34,'en_us','Port',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','8e41b98b-239a-45ec-b5fd-4831f1e04253'),
	(37,35,'en_us','Scotch',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','f1592784-5c38-4aae-8109-aea892e6171b'),
	(38,36,'en_us','Sloe Gin',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','f981bc45-ee10-4460-bfa7-3e8b2971b9c6'),
	(39,37,'en_us','Tequila',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','80f7ab63-f08a-43c5-a8ab-312b7aa27ce7'),
	(40,38,'en_us','Triple Sec',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','73564933-c81d-4623-8b43-e703a802ec36'),
	(41,39,'en_us','Vodka',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','8dcaad51-fa8c-4a10-a280-274a1735e723'),
	(42,40,'en_us','Vodka Citron',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','a87b9c45-3785-41df-8f83-d64adbecf2ef'),
	(43,41,'en_us','Yellow Chartreuse',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','5094d26b-dcb0-4999-bdbe-dd4f21148864'),
	(44,42,'en_us','Coconut Cream',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','2d0d076e-d82b-4748-ab2a-448378d1ff48'),
	(45,43,'en_us','Coke',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','45db1f80-0511-4c7f-952a-696804c86b43'),
	(46,44,'en_us','Cranberry Juice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:57','72f542de-b88f-4aef-a11a-56bf3e332f6b'),
	(47,45,'en_us','Egg Yolk',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','c0705a7c-13c3-478f-99cf-89d9c0307c05'),
	(48,46,'en_us','Cream',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','c4bdee72-d1c6-4a75-bcf7-b46171a04f68'),
	(49,47,'en_us','Milk',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','c6ccefa5-464c-4bd6-9f84-50b693e1d22b'),
	(50,48,'en_us','Peach Puree',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','3f1aba9d-9ccf-4cc9-be91-0f10f733deaf'),
	(51,49,'en_us','Ginger Ale',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','df4a7aed-7c3c-443a-b89f-a614142ed722'),
	(52,50,'en_us','Gomme Syrup',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','218cb5bd-4de7-4be3-a2fb-732420413935'),
	(53,51,'en_us','Grapefruit',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','d45ad4e3-dca3-46d8-9317-770f34b903fd'),
	(54,52,'en_us','Grenadine',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','10ea5654-f221-46c2-bf72-4b9a7fa19099'),
	(55,53,'en_us','Iced Tea',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','c261c64a-7cc2-4977-a876-81fb623c3680'),
	(56,54,'en_us','Lemon Juice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','8ac1f769-6e7b-4e08-97c3-cc8f45d5567a'),
	(57,55,'en_us','Lime Juice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','786c0ab3-ea31-4a2b-a9b0-da1490159908'),
	(58,56,'en_us','Orange Juice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','2758e79c-39b3-4ac2-a315-bd7e85c4c7d2'),
	(59,57,'en_us','Passion Fruit Juice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','5ee1a83d-d4b7-4495-b529-847ae0880639'),
	(60,58,'en_us','Pineapple Juice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','320fb4f9-f724-470c-bf2e-c3cef34a117f'),
	(61,59,'en_us','Club Soda',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','c3e9ddb4-65e0-40e4-a259-a40a35195fef'),
	(62,60,'en_us','Simple Syrup',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','5d7a578d-aa4d-4cbd-82a7-f61f6b221822'),
	(63,61,'en_us','Sweet & Sour Mix',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:58','c749d6aa-a09e-40bd-9a3a-439c4806cb1f'),
	(64,62,'en_us','Tomato Juice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','bfc2dfab-2770-49da-a9c2-06d40564ab29'),
	(65,63,'en_us','Tonic Water',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','71ad70c5-9b8b-4f89-acb4-c303a752e722'),
	(66,64,'en_us','Water',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','70c2d00f-43d8-4d3a-8416-0e0d38435822'),
	(67,118,'en_us','Beer',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','78fc4bbf-5c6a-4559-9aec-7987e217e481'),
	(68,119,'en_us','Irish Whiskey',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','57a5b780-b6b3-4494-8bd3-0130d84d6400'),
	(69,120,'en_us','Red Wine',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','ab0ee202-20ed-4e00-a8fd-142bb774d013'),
	(70,121,'en_us','Espresso',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','5eed83db-0b54-41a8-9f9c-af77cbac7c14'),
	(73,65,'en_us','Alexander',NULL,NULL,NULL,'<p>The <b>Alexander</b> is a gin cocktail consisting of gin, Chocolate Liqueur (Crème de cacao), and Cream.</p><p><br></p><p>The most common variation of the Alexander is the Brandy Alexander, made with brandy instead of gin. Similarly, a Coffee Alexander substitutes coffee liqueur (such as Kahlúa) for gin, and a Blue Alexander substitutes blue curacao for crème de cacao. Other variations exist.</p><p><br></p><p>In Jack\'s Manual (1910) there is another cocktail called The Alexander, this is a mixture of Rye Whisky and Bénédictine it is unclear whether or not this has any relation to the cream-based version.</p>\r\n',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','38352529-5e82-4ef9-98c5-d264fbf5503a'),
	(74,66,'en_us','Americano',NULL,NULL,NULL,'<p><p>The Americano is an IBA Official Cocktail composed of Campari, sweet vermouth, and club soda. The cocktail was first served in creator Gaspare Campari\'s bar, Caffè Campari, in the 1860s. It was originally known as the \"Milano-Torino\" because of its ingredients: Campari, the bitter liqueur, is from Milan and Cinzano, the vermouth, is from Turin (Torino). It is popular belief that in the early 1900s, the Italians noticed a surge of Americans who enjoyed the cocktail. As a compliment to the Americans, the cocktail later became known as the \"Americano\". A more unlikely explanation is that the name was derived from the word \"amaro\", which means \"bitter\" in Italian.</p><p><br></p><p>It is the first drink ordered by James Bond in the first novel in Ian Fleming\'s series, Casino Royale. In the short story \"From a View to a Kill\" Bond chooses an Americano as an appropriate drink for a mere café; suggesting that \"in cafés you have to drink the least offensive of the musical comedy drinks that go with them.\" Bond always stipulates Perrier, for in his opinion expensive soda water was the cheapest way to improve a poor drink.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','7530f984-896c-475c-ac25-40f6b725d488'),
	(75,67,'en_us','Apple Martini',NULL,NULL,NULL,'<p>An apple martini (appletini for short) is a cocktail containing vodka and one or more of apple juice, apple cider, apple liqueur, or apple brandy. Optionally, vermouth may be included, as in a regular martini. Typically, the apple vodka is shaken or stirred with a sweet and sour mix and then strained into a cocktail glass.</p><p><br></p><p>A common variation of the appletini is the \"Rumpletini\", with a light rum in place of the vodka.</p><p></p><p><br></p><p>The appletini can also be made with \"martini bianco\" in a long drink glass and filled with apple juice.</p><p></p>\r\n',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','ee14731a-5ca3-4146-bdbd-e45c1464657d'),
	(76,68,'en_us','B-52',NULL,NULL,NULL,'<p><p>The B-52 (also B52 or Bifi) cocktail is a layered shot composed of a coffee liqueur (Kahlúa), an Irish Cream (Baileys Irish Cream), and a triple sec (Grand Marnier). When prepared properly, the ingredients separate into three distinctly visible layers. The layering is due to the relative densities of the ingredients.</p><p><br></p><p>The name refers to the US B-52 Stratofortress long-range bomber. This bomber was used in the Vietnam War for the release of incendiary bombs, which likely inspired today\'s flaming variant of the cocktail; another hypothesis centers on B-52 combat losses (\"Burns like a B-52 over Hanoi\").</p><p><br></p><p>One story behind the B-52 is that it was invented by Peter Fich, a head bartender at the Banff Springs Hotel in Banff, Alberta. He named all of his new drinks after favourite bands, albums and songs. This drink was, of course, named after the band of the same name. One of his first customers for a B-52 owned restaurants in various cities in Alberta and liked the drink so much that he put it on the menu. This is why this, the first shooter, is commonly believed to originate at the Keg Steakhouse in Calgary, Alberta in 1977. The B-52 is also rumored to have been created by Adam Honigman, a bartender at New York City\'s Maxwell Plum.</p><p><br></p><p>The B-52\'s widespread popularity has resulted in many variations, each earning a slightly different designation. All together, the drinks are referred to as the B-50 series of layered cocktails.</p><p><br></p><p>The drink became a North London favourite in late 2009 when Arsenal&nbsp;striker Nicklas Bendtner changed his shirt number from 26 to 52, earning himself the nickname \"B52\" in the process. After the tall Dane scored the winner in a league cup tie with Liverpool on 28 October 2009, local Islington bars reported a huge surge in the popularity of the shooter. A barmaid at The Bailey pub on Holloway Road recounted a story from the night: \"It was mayhem. One lanky bloke ordered shots for the whole bar after he [Bendtner] scored. I didn\'t even know how to make a B52.\"</p><p><br></p><p>There are special machines that can prepare a B-52 (or other multi-layered cocktails) in only a few seconds. However, an experienced bartender usually relies on the traditional, hand-made preparation. This method of the preparation is called \"building\", as opposed to blending or shaking, thus, B-52s are \"built\".</p><p><br></p><p>B-52s are usually served in a shot glass or sherry glass, although a heatproof glass is required when a \"flaming B-52\" is served. First, a coffee liqueur, such as Tia Maria or Kahlúa, is poured into the glass. Next, Bailey\'s Irish Cream is poured very slowly over the back of a cold bar spoon, taking care to avoid disturbing the lower layer as the second liquor is poured on top. Just as carefully, Grand Marnier is poured atop the Irish Cream using the bar spoon.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','9c8055ee-4277-4c2a-a631-f82d1e5ac0d0'),
	(77,69,'en_us','Bacardi Cocktail',NULL,NULL,NULL,'<p><p>The Bacardi cocktail is an IBA Official Cocktail made primarily with Bacardi Superior. It is served as a \"pre-dinner\" cocktail.</p><p><br></p><p>The Bacardi Cocktail was originally the same as the Daiquiri, containing rum, lime juice, and sugar; The Grenadine version of the Bacardi Cocktail originated in the US, while the original non-red Bacardi company recipe originated from Cuba.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','6f4fdbb5-2fed-44c1-a921-5e4233219dbb'),
	(78,70,'en_us','Banana Daiquiri',NULL,NULL,NULL,'<p><p>The name Daiquirí is also the name of a beach near Santiago, Cuba, and an iron mine in that area, and it is a word of Taíno origin. The daiquiri was&nbsp;supposedly invented by an American mining engineer, named Jennings Cox, who happened to be in Cuba at the time of the Spanish-American War.</p><p><br></p><p>Originally the drink was served in a tall glass packed with cracked ice. A teaspoon of sugar was poured over the ice and the juice of one or two limes was squeezed over the sugar. Two or three ounces of Bacardi rum completed the mixture. The glass was then frosted by stirring with a long-handled spoon. Later the Daiquirí evolved to be mixed in a shaker with the same ingredients but with shaved ice. After a thorough shaking, it was poured into a chilled flute glass. An article in the March 14, 1937 edition of the Miami Herald as well as private correspondence of J.F. Linthicum, one of the American engineers working for the Spanish American Ore Company near the town of Daiquirí who was present during the evolution of the recipe, both confirm the recipe and early history. Mr. Linthicum told his children that the rum came at least in part from the ration provided by the British Navy to some of his fellow engineers working at the nearby bauxite mines.</p><p><br></p><p>Consumption of the drink remained localized until 1909, when Admiral Lucius W. Johnson, a U.S. Navy medical officer, tried Cox\'s drink. Johnson subsequently introduced it to the Army and Navy Club in Washington, D.C., and drinkers of the daiquirí increased over the space of a few decades. The daiquirí was one of the favorite drinks of writer Ernest Hemingway and president John F. Kennedy.</p><p><br></p><p>The drink became popular in the 1940s. Wartime rationing made whiskey, vodka, etc., hard to come by, yet because of Roosevelt\'s Good Neighbor policy (which opened up trade and travel relations with Latin America, Cuba and the Caribbean), rum was easily obtainable. The Good Neighbor Policy (also known as \'The Pan-American program\'), helped make Latin America seem fashionable. Consequently, rum-based drinks (once frowned upon as being the domain of sailors and down-and-outs), also became fashionable, and the Daiquirí saw a tremendous rise in popularity in the US.</p><p><br></p><p>The basic recipe for a Daiquirí is also similar to the grog British sailors drank aboard ship from the 1740s onwards. By 1795 the Royal Navy daily grog ration contained rum, water, ¾ ounce of lemon or lime juice, and 2 ounces of sugar. This was a common drink across the Caribbean, and as soon as ice became available this was included instead of the water.</p><p><br></p><p>Variations include the Banana Daiquiri, which is the same as a regular daiquiri, except half of a banana is placed in the drink.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','0084d13b-8c00-4ef5-93cc-36439f5290b4'),
	(79,71,'en_us','Bellini',NULL,NULL,NULL,'<p><p>A Bellini cocktail is a mixture of Prosecco sparkling wine and peach purée. Originating in Venice, it is one of Italy\'s most popular long drinks.</p><p><br></p><p>The Bellini was invented sometime between 1934 and 1948 by Giuseppe Cipriani, founder of Harry\'s Bar in Venice, Italy. Because of its unique pink color, which reminded Cipriani of the color of the toga of a saint in a painting by 15th-century Venetian artist Giovanni Bellini, he named the drink the Bellini.</p><p><br></p><p>The drink started as a seasonal specialty at Harry\'s Bar, a favorite haunt of Ernest Hemingway, Sinclair Lewis and Orson Welles. Later, it also became popular at the bar\'s New York counterpart. After an entrepreneurial Frenchman set up a business to ship fresh white peach pureé to both locations, it was a year-round favorite.</p><p><br></p><p>Today the Bellini is an IBA Official Cocktail, thus indicating its popularity and making it a well-known cocktail to many professional bartenders.</p><p><br></p><p>The Bellini consists of puréed white peaches and Prosecco, an Italian sparkling wine. Marinating fresh peaches in wine is an Italian tradition. The original recipe was made with a bit of raspberry or cherry juice to give the drink a pink glow. Due, in part, to the limited availability of both white peaches and Prosecco, several variations exist.</p><p><br></p><p>California produces a white peach that works well, and yellow peaches or peach nectar can be substituted, especially if peaches are out of season and the flavor would be very bland. Other fruits or even flavored liqueurs (peach schnapps, for example) are sometimes substituted for the peach puree.</p><p><br></p><p>The Cipriani family produces Bellini Base for the signature cocktail of the Harry\'s Bar restaurants.</p><p><br></p><p>Other sparkling wines are commonly used in place of Prosecco, though richly flavored French champagne does not pair well with the light, fruity flavor of the Bellini. For a non-alcoholic version, sparkling juice or seltzer is used in place of the champagne.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','f203cd1c-4dd4-463b-abca-0cbac583e30b'),
	(80,72,'en_us','Black Russian',NULL,NULL,NULL,'<p><p>The Black Russian is a cocktail of vodka and coffee liqueur. It contains either three parts vodka and two parts coffee liqueur, per the Kahlúa bottle\'s label, or five parts vodka to two parts coffee liqueur, per IBA specified ingredients. It is sometimes made with cola, in which case it is referred to as a Dirty Black Russian, as opposed to Clean when without it. Traditionally the drink is made by pouring the vodka over ice cubes or cracked ice in an old-fashioned glass, followed by the coffee liqueur.</p><p><br></p><p>This combination first appeared in 1949, and is ascribed to Gustave Tops, a Belgian barman, who created it at the Hotel Metropole in Brussels in honor of Perle Mesta, then U.S. ambassador to Luxembourg. The cocktail owes its name to the use of vodka, a stereotypical Russian spirit, and the blackness of the coffee liqueur.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:57:59','cee9c9c7-94ba-47ea-8152-92beee587c84'),
	(81,73,'en_us','Bloody Mary',NULL,NULL,NULL,'<p><p>A Bloody Mary is a popular cocktail containing vodka, tomato juice, and usually other spices or flavorings such as Worcestershire sauce, Tabasco sauce, piri piri sauce, beef consomme or bouillon, horseradish, celery, olive, salt, black pepper, cayenne pepper, lemon juice, and celery salt. It has been called \"the world\'s most complex cocktail.\"</p><p><br></p><p>The Bloody Mary\'s origin is unclear. Fernand Petiot claimed to have invented the drink in 1921 while working at the New York Bar in Paris, which later became Harry\'s New York Bar, a frequent Paris hangout for Ernest Hemingway and other American expatriates. Two other claims have some plausibility. The first is that it was invented in the 1930s at New York’s 21 Club by a bartender named Henry Zbikiewicz, who was charged with mixing Bloody Marys. A second claim attributes its invention to the comedian George Jessel, who frequented the 21 Club. In 1939, Lucius Beebe printed in his gossip column This New York one of the earliest U.S. references to this drink, along with the original recipe: \"George Jessel’s newest pick-me-up which is receiving attention from the town’s paragraphers is called a Bloody Mary: half tomato juice, half vodka.\"</p><p><br></p><p>Fernand Petiot seemed to corroborate Jessel\'s claim when the bartender spoke to The New Yorker magazine in July 1964, saying:</p><p><br></p><p>\"I initiated the Bloody Mary of today,\" he told us. \"Jessel said he created it, but it was really nothing but vodka and tomato juice when I took it over. I cover the bottom of the shaker with four large dashes of salt, two dashes of black pepper, two dashes of cayenne pepper, and a layer of Worcestershire sauce; I then add a dash of lemon juice and some cracked ice, put in two ounces of vodka and two ounces of thick tomato juice, shake, strain, and pour. We serve a hundred to a hundred and fifty Bloody Marys a day here in the King Cole Room and in the other restaurants and the banquet rooms.\"\"</p><p><br></p><p>The name \"Bloody Mary\" is associated with a number of historical figures—particularly Queen Mary I of England (whose 16th-century persecution of Protestants earned her the nickname)—and fictional women from folklore. Some drink aficionados believe the inspiration for the name was Hollywood star Mary Pickford. Others trace the name to a waitress named Mary who worked at a Chicago bar called the Bucket of Blood.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','44930935-519e-4765-b978-aa184682beae'),
	(82,74,'en_us','Blue Hawaii',NULL,NULL,NULL,'<p><p>The Blue Hawaii is a tropical cocktail made of rum, pineapple juice, Curacao, sweet and sour mix, and sometimes vodka as well. It should not be confused with the similarly named Blue Hawaiian cocktail that contains creme of coconut instead of sweet and sour mix.</p><p><br></p><p>The Blue Hawaii was invented in 1957 by Harry Yee, legendary head bartender of the Hilton Hawaiian Village (formerly the Kaiser Hawaiian Village) in Waikiki, Hawaii when a sales representative of Dutch distiller Bols asked him to design a drink that featured their blue color of Curaçao liqueur. After experimenting with several variations he settled on a version somewhat different than the most popular version today, but with the signature blue color, pineapple wedge, and cocktail umbrella.</p><p><br></p><p>The name \"Blue Hawaii\" is related only indirectly to the 1961 Elvis Presley film of the same name, and apparently derives instead from the film\'s title song, a hit composed by Leo Robin for the 1937 Bing Crosby film Waikiki Wedding. It was Yee who named the drink which, along with the films and songs, many other tropical drinks he invented, and tiki bars such as Trader Vic, did much to popularize a faux Hawaiian tiki culture, both in Hawaii itself and on the Mainland. The era was immediately pre-statehood, a time when Hawaii was thought of by most Americans as playground for the rich. Tourism and development was already significant, but all centered around Waikiki and at only a small fraction of today\'s levels – about 100,000 visitors per year then, compared to seven million today.</p><p><br></p><p>A Blue Hawaii is typically served on the rocks. As with most tropical drinks, there are many variations in preparation, presentation, and ingredients. Hence, it is often blended with ice, margarita-like, to be served as a frozen cocktail. Many variations of glassware are used, the more whimsical the better: tiki mugs, cocktail glasses, parfait glasses, or carved out coconuts or pineapples.</p><p><br></p><p>The base liquor is usually light rum but vodka may be partially or completely substituted as a matter of taste. Similarly, a flavored rum or vodka such as Malibu Rum may eliminate the need for crème of coconut, or the coconut flavor may be omitted entirely (coconut milk, a very different product, should not be used). Even the pineapple juice is sometimes left out in favor of sour mix. The only constant, in fact, is the name and the blue Curaçao.</p><p><br></p><p>Because it is easy and inexpensive to make, it is often served as a punch. At its simplest, it is a bottle or two of plain or coconut-flavored light rum, a bottle of blue curacao, a can of pineapple juice, and a bag of ice, mixed together in a punchbowl. The Blue Hawaii is seasonal, often considered a summer or warm weather drink. Occasionally, because it contains yellow pineapple juice, the Blue Hawaii will have a green coloration instead.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','b8ebbd6b-457b-4514-becc-586a91604550'),
	(83,75,'en_us','Brandy Alexander',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','6a885f55-c768-4203-90e9-ecfea2768095'),
	(84,76,'en_us','Brandy Egg Nog',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','382831dc-2235-4504-8a05-4245d8eed11d'),
	(85,77,'en_us','Bronx',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','91bec4aa-174c-41ad-8374-508d2ba3f51d'),
	(86,78,'en_us','Mimosa',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','950db886-afc5-4b87-a22e-56915c62c455'),
	(87,79,'en_us','Caipirinha',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','71974c1b-96f4-48b0-bf29-d4c40fd73203'),
	(88,80,'en_us','Champagne Cooler',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','85d2b60f-ad2e-4d17-b0ef-37e2e03b4391'),
	(89,81,'en_us','Christmas Cocktail',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','539fa74c-1e06-4b7d-b4ff-4b5bd0a6b9ec'),
	(90,82,'en_us','Cosmopolitan',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','384322c5-4a08-431b-abdb-221d011be95d'),
	(91,83,'en_us','Cuba Libre',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:00','5dac0be5-6262-4201-9801-a59f941c99e1'),
	(92,84,'en_us','Daiquiri',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','96a103a9-4dd8-4733-a14f-85040623a0fa'),
	(93,85,'en_us','French Connection',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','c5b1f9f2-8753-4a6c-9638-0f0618efeb89'),
	(94,86,'en_us','Gibson',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','9644d4ce-72b0-4ca8-85b1-c746c8e6288b'),
	(95,87,'en_us','Gimlet',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','25e7c573-aaff-45ac-ae57-a3b3ed04f353'),
	(96,89,'en_us','Gin Fizz',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','ab34803d-e768-4a15-93b8-f42cfdb1101b'),
	(97,90,'en_us','Gin Rickey',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','c39eff71-321a-4d42-86d0-844605f17fe1'),
	(98,91,'en_us','Godfather',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','c416fb2a-22aa-43e2-ab38-e9562ec974d6'),
	(99,92,'en_us','Godmother',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','dce8d80d-13a3-466a-81e7-438350e2bd69'),
	(100,93,'en_us','Golden Cadillac',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','9823effb-942f-40d2-ad6a-1b9bdacc254b'),
	(101,94,'en_us','Harvey Wallbanger',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:01','4a8785b0-e9f7-4122-a190-17864d6f408a'),
	(102,95,'en_us','Horse\'s Neck',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','dd00e963-9e6c-49f6-9362-efbab97fcdde'),
	(103,96,'en_us','Ice Pick',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','f52d34ff-b994-4bec-bf6a-ad1d85d24766'),
	(104,97,'en_us','Japanese Slipper',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','a5552385-d960-4516-b52a-46c808498469'),
	(105,98,'en_us','John Collins',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','59943912-7dbf-4470-90e0-3851d92f1262'),
	(106,99,'en_us','Kamikaze',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','76e8f202-99fb-4fe3-a218-e3af4821751a'),
	(107,100,'en_us','Kir',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','e698ce48-b40c-4098-96b1-3999e85eab36'),
	(108,101,'en_us','Kir Royale',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','48f13a0f-902f-45cd-b525-f3e050033a3a'),
	(109,102,'en_us','Long Island Iced Tea',NULL,NULL,NULL,'',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','dd85a7dd-4eb2-4a5a-8f76-289768883f92'),
	(110,103,'en_us','Manhattan',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','9fcfda13-45de-4466-816c-f1aee900fb92'),
	(111,104,'en_us','Margarita',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','5f496ef8-c567-450a-bfb8-f7718d592106'),
	(112,105,'en_us','Martini',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:02','79731b0f-f497-48d0-b75c-15b3e99bb977'),
	(113,106,'en_us','Negroni',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','6cfa771c-415c-426a-9b5f-0fd2be8fd962'),
	(114,107,'en_us','Piña Colada',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','f5479b78-395b-4e0a-934c-f5846ac673b4'),
	(115,108,'en_us','Porto Flip',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','185e5a13-08aa-4ad7-a066-9fc19c29f1f5'),
	(116,109,'en_us','Rob Roy',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','0ee48fad-382a-4479-a6d3-da0dbe0d903f'),
	(117,110,'en_us','Rusty Nail',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','317976ba-6940-4dfb-8b73-fabca673fc24'),
	(118,111,'en_us','Salty Dog',NULL,NULL,NULL,'<p>Salty Dogs are great.</p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','8b53a48f-c668-4942-89ad-03c0af4d237d'),
	(119,112,'en_us','Screwdriver',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','ba44f715-b66b-4404-8a30-1c919e2d3d80'),
	(120,113,'en_us','Sex on the Beach',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','dd213b29-4df7-429e-8c58-3e7df17baed5'),
	(121,114,'en_us','Singapore Sling',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','b54ba365-1756-4e31-9d4b-403863699d1a'),
	(122,115,'en_us','Tequila Sunrise',NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','d1760a0b-df58-4b16-826d-c6d011bf8b12'),
	(123,116,'en_us','Whiskey Sour',NULL,NULL,NULL,'<p><p>The whiskey sour is a mixed drink containing whiskey (often Bourbon), lemon juice, sugar, and optionally, a dash of egg white to make it a Boston Sour. It is shaken and served either straight or over ice.</p><p><br></p><p>The traditional garnish is half an orange slice and a maraschino cherry.</p><p><br></p><p>A notable variant of the whiskey sour is the Ward 8, which often is based either in Bourbon or rye whiskey, with both lemon and orange juices, and grenadine syrup as the sweetener. The egg white sometimes employed in other whiskey sours is generally not included in this variation.</p><p><br></p><p>In 1962, the Universidad del Cuyo published a story which cited a Peruvian newspaper called El Comercio de Iquique as indicating that Eliott Stubb created the \"whisky sour\" in 1872. El Comercio de Iquique was published by Modesto Molina between 1874 and 1879. However, the oldest historical mention of a whisky sour prepared in the world comes from a newspaper published in Wisconsin in 1870.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','b88322fe-ed50-45f1-bade-9c63b2229630'),
	(124,117,'en_us','White Russian',NULL,NULL,NULL,'<p>Description</p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:03','0e839912-8a55-4529-812d-324547457d49'),
	(125,122,'en_us','Espresso Martini',NULL,NULL,NULL,'<p></p><p>The martini is a cocktail made with gin and vermouth, and garnished with an olive or a lemon twist. Over the years, the martini has become one of the best-known mixed alcoholic beverages. H. L. Mencken called the martini \"the only American invention as perfect as the sonnet\" and E. B. White called it \"the elixir of quietude\"</p><p>Pouring all ingredients into a mixing glass with ice cubes, the ingredients are mixed then strained and served \"straight up\" (without ice) in a chilled cocktail glass and garnished with either a green olive or a twist of lemon (a strip of the peel, usually squeezed or twisted to express volatile oils onto the surface of the drink).[citation needed]</p><p>A martini may also be made on the rocks, that is, with the ingredients poured over ice cubes and served in an old-fashioned glass.</p><p>Although there are many variations, in modern practice the standard martini is a mix of gin coupled with dry vermouth usually in a five-to-one ratio. Shaker mixing is common due to influences of popular culture, notably the fictional spy James Bond, who sometimes asked for his vodka martini to be \"shaken, not stirred\". However, stirring has a long history. Harry Craddock\'s Savoy Cocktail Book (1930) prescribes stirring for all its martini recipes. Somerset Maugham\'s opinion was that \"a Martini should always be stirred, not shaken, so that the molecules lie sensuously on top of one another\".</p><p>Noël Coward suggested that a perfect martini should be made by \"filling a glass with gin then waving it in the general direction of Italy\" (which along with France is a major producer of vermouth). Luis Buñuel considered it enough to hold up a glass of gin next to a bottle of vermouth and let a beam of sunlight pass through. Winston Churchill was said to whisper the word \'Vermouth\' to a freshly poured glass of gin. Dorothy Parker expressed her opinion: \"I like to have a martini/two at the very most./Three, I\'m under the table./Four, I\'m under my host\".</p><p>The martini was originally made with sweet vermouth. A person who wanted a \"dry martini\" asked for one made with white vermouth. Until World War II the standard proportion was 1 part vermouth to 3 to 3 ½ parts gin. These days the dryness of a martini refers to the amount of vermouth used in the drink, with a very dry martini having little or none. Conversely, a wet martini has a significant amount of vermouth added.</p><p>A dirty martini contains a splash of olive brine or olive juice.</p><p><span style=\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif; font-size: 15px; line-height: 1.45em;\">If you prefer cocktail onion (on skewer) instead of olives in your martini, you would order a Gibson. Other people bypass the gin completely and use vodka instead, creating a kangaroo cocktail, or \"vodka martini\".</span></p><p>The exact origin of the martini is unclear. Numerous cocktails with names and ingredients similar to the modern-day martini were first seen in bartending guides of the late 19th century. For example, in the 1888 Bartender\'s Manual there was a recipe for a drink that consisted of half a wine glass of Old Tom Gin and a half a wine glass of vermouth. In 1863, an Italian vermouth maker started marketing their product under the brand name of Martini. This product is still available today, although it is now better known as Martini & Rossi.</p><p><span style=\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif; font-size: 15px; line-height: 1.45em;\">Another popular theory suggests it evolved from a cocktail called the Martinez served at the Occidental Hotel in San Francisco sometime in the early 1860s, which people frequented before taking an evening ferry to the nearby town of Martinez. Alternatively, the people of Martinez say the drink was first created by a bartender in their town. Another theory links the first dry martini to the name of a bartender who concocted the drink at the Knickerbocker Hotel in New York City in 1911 or 1912. The self-styled Court of Historical Review in San Francisco ruled that the martini was invented in San Francisco. A court in Martinez, California, recently overturned this decision. (These \"courts\" have neither legal nor academic authority and are primarily for entertainment.)</span></p><p>But it was Prohibition and the relative ease of illegal gin manufacture that led to the martini\'s rise as the predominant cocktail of the mid 20th century in the United States. With the repeal of Prohibition, and the ready availability of quality gin, the drink became progressively dryer. In the 1970s and 80s, the martini came to be seen as old-fashioned and was replaced by more intricate cocktails and wine spritzers, but the mid-1990s saw a resurgence in the drink and an explosion of new versions.</p><p>Some newer drinks include the word \"martini\" or the suffix \"-tini\" in the name (e.g., appletini, peach martini, chocolate martini, espresso martini). These are named after the martini cocktail glass they use and generally contain vodka like the kangaroo cocktail, but share little else with the drink.</p><p></p>\r\n',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','8e1c7c89-d723-4d2f-86f5-f9e9a7b5e202'),
	(126,123,'en_us','Mojito',NULL,NULL,NULL,'<p><p>Traditionally, a mojito is a cocktail that consists of five ingredients: white rum, sugar (traditionally sugar cane juice), lime juice, sparkling water and mint. The original Cuban recipe uses spearmint or yerba buena, a mint variety very popular on the island. Its combination of sweetness, refreshing citrus and mint flavors is intended to complement the potent kick of the rum, and have made this clear highball a popular summer drink. The cocktail has a relatively low alcohol content (about 10 percent alcohol by volume).</p><p><br></p><p>When preparing a mojito, lime juice is added to sugar (or syrup) and mint leaves. The mixture is then gently mashed with a muddler. The mint leaves should only be bruised to release the essential oils and should not be shredded. Then rum is added and the mixture is briefly stirred to dissolve the sugar and to lift the mint leaves up from the bottom for better presentation. Finally, the drink is topped with whole ice cubes and sparkling soda water. Mint leaves and lime wedges are used to garnish the glass.</p><p><br></p><p>The mojito is one of the most famous rum-based highballs. There are several versions of the mojito.</p><p><br></p><p>Cuba is the birthplace of the Mojito, although the exact origin of this classic cocktail is the subject of debate. One story traces the Mojito to a similar 19th century drink known as \"El Draque\", after Francis Drake. It was made initially with tafia/aguardiente, a primitive predecessor of rum, but rum was used as soon as it became widely available to the British (ca. 1650). Mint, lime and sugar were also helpful in hiding the harsh taste of this spirit. While this drink was not called a Mojito at this time, it was still the original combination of these ingredients.</p><p><br></p><p>Some historians contend that African slaves who worked in the Cuban sugar cane fields during the 19th century were instrumental in the cocktail\'s origin. Guarapo, the sugar cane juice often used in Mojitos, was a popular drink amongst the slaves who helped coin the name of the sweet nectar.</p><p><br></p><p>There are several theories behind the origin of the name Mojito; one such theory holds that name relates to mojo, a Cuban seasoning made from lime and used to flavour dishes. Another theory is that the name Mojito is simply a derivative of mojadito (Spanish for \"a little wet\") or simply the diminutive of mojado (\"wet\"). Due to the vast influence of immigration from the Canary Islands, the term probably came from the mojo creole marinades adapted in Cuba using citrus vs traditional Isleno types. In the US Marine Corps there is a drink called mojo derived from mixing any liquor you have and fresh fruits, oranges, lemons, etc. and is called \"MOJO\".</p><p><br></p><p>The Mojito was a favorite drink of author Ernest Hemingway. Ernest Hemingway made the bar called La Bodeguita del Medio famous as he became one of its regulars and he wrote \"My mojito in La Bodeguita, My daiquiri in El Floridita.\" This expression in English can still be read on the wall of the bar today, in his handwriting.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','7e3289bf-87d7-4ef1-8c1c-605086df7ae8'),
	(127,124,'en_us','Midori Splice',NULL,NULL,NULL,'<p><p>To “splice” something means to join or unite it with something else.</p><p>And the Midori Splice does exactly that, achieving a perfectly balanced union of coconut-flavored rum, pineapple juice and cream.</p><p>It takes the same flavors from the Midori Pina Colada and rounds them into a slightly milder finish.</p><p>In flair bartending circles, the same drink is known as an “Alien Secretion.”</p><p>Made in a blender and served in a beer mug, the Midori Splice can also be great for a party trick.</p></p>',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','a0032ad8-32c9-4853-a7a6-cb0ec4e0da6a'),
	(128,125,'en_us','Mai Kai Martini',NULL,NULL,NULL,'<p>Combine the pineapple juice, blue curacao, vodka, rum, vermouth and lime wedge in a shaker. Shake for 1 minute. Serve cold. Repeat for additional servings.<br></p>\r\n',NULL,NULL,'2013-02-23 00:15:05','2014-04-04 00:58:04','8e6ea1fb-41dd-46eb-b099-28683b08d83e'),
	(129,141,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','6c1d56e8-4993-429e-b4c4-7d6c28077c0a'),
	(130,135,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','343add3e-1e20-4da2-8f7e-8d9fe4494094'),
	(131,132,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','4d06579a-b3aa-439e-9eac-90efc80eeea6'),
	(132,134,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','2f29db35-d832-471e-ae9c-d6133f2d2d41'),
	(133,139,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','7a71dc64-438d-4c62-bcfd-14b044a64a10'),
	(134,138,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','d348fba0-3ab1-4eb5-9422-4b7ef0972fe7'),
	(135,137,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','02b5139a-f994-45b6-af92-c8f897818571'),
	(136,140,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','0ef844cc-7e3e-4827-97e3-8885415564f2'),
	(137,136,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','c4ae1d04-fc53-4f06-b5a5-1e608e51faeb'),
	(138,142,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','9a598188-830d-4840-81f0-9e2a548d3d06'),
	(139,131,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','9744a0be-4baa-43d3-86b9-230554d51a0a'),
	(140,133,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2013-02-23 00:15:06','78101664-da44-45ea-9cb1-2a8809c6b888'),
	(141,130,'en_us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-02-23 00:15:06','2014-04-04 00:58:05','deb1a862-b82f-41bb-b4ce-865b870bf778'),
	(142,157,'en_us',NULL,NULL,NULL,NULL,NULL,'On the Rocks is a demo site built with Craft.',NULL,'2013-02-23 00:15:06','2014-04-04 00:58:04','52556ab5-8a69-4f9d-a940-a96ae976127f'),
	(144,184,'en_us','Gin and Tonic','',NULL,NULL,'<p>A gin and tonic is a highball cocktail made with gin and tonic water poured over ice. It is usually garnished with a slice or wedge of lime. The amount of gin varies according to taste. Suggested ratios of gin-to-tonic are 1:1, 1:2, 1:3, and 2:3.<br></p>',NULL,'#a5c051','2013-03-19 22:57:24','2014-04-04 00:58:04','5004f5f3-4343-48a4-88ec-bc3609098927'),
	(269,159,'en_us','Beer1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','508bf626-a2a5-413d-a259-ae2d6c9d7c55'),
	(270,162,'en_us','Beer2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','5edeac5a-2c72-4fab-a95a-d6c3c1ef0e1d'),
	(271,161,'en_us','Beer3',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','cfb24620-60f8-4dbb-88f4-9fd244b0993c'),
	(272,160,'en_us','Champagne',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','1a56f52c-ca94-40df-a097-21b19226e24f'),
	(273,163,'en_us','ChampagneWithStrawberry',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','73d992aa-6c82-49c4-9f4d-61c1674dfb0e'),
	(274,164,'en_us','Cosmopolitan',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','50b0d6c6-8149-4e0b-bda2-99353745f0a0'),
	(275,165,'en_us','EspressoMartini1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','a7005124-9598-4f9e-bece-775b50bf63a6'),
	(276,166,'en_us','EspressoMartini2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','1fc8b795-22aa-45f7-b8cc-afbaed6d241c'),
	(277,167,'en_us','GinAndTonic1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','1c2bb759-7b48-4d27-97ac-5ff06ff96ef7'),
	(278,168,'en_us','GinAndTonic2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','d277b9f9-c59c-443e-9682-a7259c989bf6'),
	(279,169,'en_us','GinAndTonic3',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','044e1134-6130-4453-a42e-3985f1d45da2'),
	(280,170,'en_us','MaiKaiMartini1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','6f78526f-f931-4bba-bb1e-f7b3a192f7b7'),
	(281,171,'en_us','MaiKaiMartini2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','f77cb241-be90-4442-8e33-f0a5b3cc45c5'),
	(282,172,'en_us','Mojito',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:54','e7f964a0-1ab0-435b-a0ef-ab6db9db57dd'),
	(283,173,'en_us','Shots',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','c66d6ff3-510a-4dc6-885e-5f99b05ca8b2'),
	(284,174,'en_us','TahoeDrink',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','84254de5-c6e1-44ae-98c8-55a626240134'),
	(285,175,'en_us','Tequila',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','3df41333-d22d-4a55-b1ef-192abf6db76e'),
	(286,176,'en_us','Vodka',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','b21c4b12-730f-49db-a92f-7bc3c19df4f8'),
	(287,177,'en_us','VodkaMidoriSplice',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','c6dcacd6-f1b4-4899-a97a-b583e49dec06'),
	(288,178,'en_us','Whiskey1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','ea6a48ef-add2-47d2-bc2b-825b92a39637'),
	(289,179,'en_us','Whiskey2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','f62f2ce0-a430-4264-b423-81997fe02de6'),
	(290,180,'en_us','WhiskeySour1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','ae8a93f9-dcf1-4227-9501-6c2de4ed094a'),
	(291,181,'en_us','WhiskeySour2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','b1f0471d-2d23-47e3-a487-8763c78f99b6'),
	(292,182,'en_us','Wine1',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','878353b7-6888-4863-bea2-259dca6cf3cf'),
	(293,183,'en_us','Wine2',NULL,NULL,NULL,NULL,NULL,NULL,'2013-09-23 13:11:53','2014-04-04 00:57:55','9a9b67f4-63ff-4080-8481-f7733122c08b'),
	(294,186,'en_us','Homepage','Tales from the Cocktail','<p>\r\n	Welcome to <em style=\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif;\">On the Rocks</em>, a breathtaking adventure through… a Craft demo site!\r\n</p>','','',NULL,NULL,'2013-09-23 13:16:31','2014-04-04 00:58:04','5cb3cd97-2960-4917-a386-efb3fb09958f'),
	(295,88,'en_us','Entry 88',NULL,NULL,NULL,NULL,NULL,NULL,'2013-12-18 22:38:43','2014-04-04 00:58:01','a83d0978-c5f5-4a6c-93e4-d4b617c725ab');

/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_deprecationerrors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_deprecationerrors`;

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements`;

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_idx` (`archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(3,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:55','2397673a-3389-42b3-ae8c-a22e7be9ba00'),
	(4,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:55','7b921aa9-dc5e-4f2b-8b0d-5d86377436f7'),
	(5,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:55','8ea5f50a-0446-4678-83e8-8a7c0344371c'),
	(6,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:55','0a680d11-8b6e-4168-874e-352b28826cc1'),
	(7,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:55','22b9f104-0d86-4b14-9550-59f5d23ddfa9'),
	(8,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:55','c51c1b8d-f32c-4ae2-a56f-b7b15dc5d67c'),
	(9,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:55','a5b3ded8-fe9d-487e-a679-1042020ef854'),
	(10,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','67040bcb-6b78-44f5-89ab-3f06b8d17be9'),
	(11,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','85cd97f8-4977-4c00-a818-ab0c1ddae173'),
	(12,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','fcf95f40-1070-4c31-a595-ba475cc8121d'),
	(13,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','a913dc4e-2795-4cb8-83d0-cbd56191c0ac'),
	(14,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','384fefc2-093a-4602-8156-1afa8e42690f'),
	(15,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','e914a399-5c0f-4f00-8381-6fa22fe88cf2'),
	(16,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','3a2aaa6e-5433-468f-9b45-9e29b9af9462'),
	(17,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','c0f25939-19e2-4b24-ba51-c76a155cc72b'),
	(18,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','2a42aa8c-d885-4943-ad00-7383241c7a07'),
	(19,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','873a3d75-d7d7-4cf8-a706-bc52f90b54bc'),
	(20,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','75458d17-11f3-4c4f-9311-a7c30e61eed2'),
	(21,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','b7f814b8-34fc-4f6e-ae59-2e94c3c77e17'),
	(22,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','1f46638e-ef90-4e95-a216-9fbe0c0e6f68'),
	(23,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','f57e91e3-6a10-402e-95e8-ae08e3ec5b8b'),
	(24,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','8b018e0e-2e1a-41ba-bd93-ae2cca3e8204'),
	(25,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','6b7993b8-998d-4999-989a-f527dd239b0a'),
	(26,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','397f88b0-15ff-4a5a-9d88-f92d2eebefee'),
	(27,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:56','d4a93dae-8131-4e1b-b1dd-afe0bf7343a5'),
	(28,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','4356afa1-eaaf-4279-af20-c7f262968b83'),
	(29,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','f8a2ce40-d1d7-4c06-b981-b46d1f6ee354'),
	(30,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','782921ca-b2b2-4b2f-852b-3999abcdbbb7'),
	(31,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','9897b5d9-e948-4d0b-91e7-a5403f0c26f2'),
	(32,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','145d5d12-e1c7-4eda-8b8c-02a240752458'),
	(33,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','536dd42e-4210-494a-9143-b75e2e9516d5'),
	(34,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','9a001c25-2c4a-43d2-9e20-d54a74d2c24a'),
	(35,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','6361bdea-4b6f-4349-a791-107551a1fa81'),
	(36,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','11855460-009e-4dd3-88c2-f1ece45b1e44'),
	(37,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','ad7cc31f-068c-419e-a1e8-c1109cb7b19c'),
	(38,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','0a7c2b46-00b9-422b-9dbe-9c22261dfce6'),
	(39,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','47943380-2a33-451f-86eb-662e24e6a99e'),
	(40,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','22b045f2-1d75-4457-8350-d5a464e155f7'),
	(41,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','11b4494e-4657-488c-b56a-b3b2993f6c23'),
	(42,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','297633b3-26ff-4708-9380-9070889b8973'),
	(43,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','9f6aefb7-bd51-4681-a5cc-7707219fc079'),
	(44,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','4de7d0a2-66de-41dc-af1b-6fc02627432b'),
	(45,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:57','26782c8f-ba5d-4cbc-ac0e-5c6a13cdaee1'),
	(46,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','6441d73c-cb05-4ad3-a1dc-f2152d97be23'),
	(47,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','71cbd794-9515-4f06-9091-256e89073e9f'),
	(48,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','6728b9f7-7a48-4fbe-948e-b1dbdcab4be2'),
	(49,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','4732f229-3f65-40e8-b829-c26fe3084d07'),
	(50,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','a17949dc-2dbf-4fe4-bf4b-65b440c715a1'),
	(51,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','13bc760e-5a23-4f17-bd12-6ec31ec97c9c'),
	(52,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','2763ca47-72e1-48f3-b8d5-2b6c779547d9'),
	(53,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','376b3f61-f630-4a6c-94d7-2ae4403be82f'),
	(54,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','f88f4a34-08e1-45bf-9030-a644fa059f1c'),
	(55,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','0d12f6b8-fdfb-4524-a385-56b56bddbde2'),
	(56,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','c8d4158e-dee4-4162-8ed2-c395079806e5'),
	(57,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','f35f9a9d-b9ee-441f-bed7-fdd73f849fc7'),
	(58,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','78132129-e7e7-43cb-b4eb-9270e58bd711'),
	(59,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','5287a912-9de2-4c00-ab2d-bc0bf50f7909'),
	(60,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','185e9547-944c-4787-abb5-37a161b964a6'),
	(61,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:58','ef15e037-a7a1-458e-b80a-391375c940b2'),
	(62,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','f03e71c9-0e73-4eef-ad50-286207eefa0f'),
	(63,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','e513c928-8bbe-4250-b536-20f583ee2e48'),
	(64,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','be5c3e20-00a3-4b89-a03a-3e3d12aca331'),
	(65,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','a1c4a9f8-798d-4aea-ab82-6ef305754834'),
	(66,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','8480d35e-b2a5-4c16-aef9-324a61484366'),
	(67,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','ae1be1d9-d8d8-44a4-95e4-cc1a81e221c8'),
	(68,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','6f6b8bb3-248c-4016-a561-0c083708219f'),
	(69,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','38a3813c-b5eb-4ce2-bc00-9d5a0a544e96'),
	(70,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','591233dc-75d6-4d6f-a6a9-cbbf91f1cdee'),
	(71,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','74f13b88-c926-4e8d-9152-4b3a0431f006'),
	(72,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:57:59','1a2f6119-03c9-4636-8efe-d2d62accf269'),
	(73,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','e3a3be00-e04e-46d2-99d2-c50ab03911bd'),
	(74,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','5ff687bd-95eb-4682-b4ca-924d9837754d'),
	(75,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','8803d5dd-9fbd-47c1-b181-807a330e8f15'),
	(76,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','ec995e11-6284-4e07-a79a-9866117252d5'),
	(77,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','dfb29504-470f-4709-96ae-12e05cb57d48'),
	(78,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','c6e4b2c2-a95e-4189-b1d7-319595b492f7'),
	(79,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','1d3d261f-8caa-4d55-a3ee-37aa1dfd3c81'),
	(80,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','ffa03961-5648-4ebe-9c5d-8634bb202e53'),
	(81,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','58e90d05-269a-4c74-b868-8b731c41ac52'),
	(82,'Entry',1,0,'2013-02-23 00:15:03','2014-04-04 00:58:00','a20793a6-4c4d-4d58-8a8b-5e8a5a197801'),
	(83,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:00','5ed97805-bee0-4c1e-ba26-9661bc9766a3'),
	(84,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','a75c0a95-f70b-411c-a13d-f9ff27287bdb'),
	(85,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','ae44df3c-45ef-44f5-a050-a44398e98bfc'),
	(86,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','4f438a72-fce2-47ba-a537-0b16376f48f5'),
	(87,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','f5b23436-dc9a-498e-b605-584509c8748e'),
	(88,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','5547a270-81bf-4628-9534-3c77895f48ea'),
	(89,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','2c1c76c5-a413-4df1-8d2d-5cffc66e0963'),
	(90,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','1d9f5c90-2e44-41ae-9bc2-b9ec59ec0069'),
	(91,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','ad2415fa-7193-4c7e-8fc9-0b6b0f14e766'),
	(92,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','e18c466d-3266-4659-9230-77cf97238125'),
	(93,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','26d1550b-f1a5-46d8-abc6-59c23541d004'),
	(94,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:01','a6fb9c1b-aa1c-4cab-a539-4027fa9c6e2e'),
	(95,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','4f1d032b-ba06-4f6c-b8d4-498e880fd3f6'),
	(96,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','efe6295d-9a59-4f82-8f9b-cb12f40ae897'),
	(97,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','fd1d6753-0657-4d9a-81e3-33dda38da799'),
	(98,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','60067934-be5f-477d-88bd-e150cc80c86a'),
	(99,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','543948d6-ef8e-4371-8506-ee5f60c68744'),
	(100,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','fee3c6c8-271c-4fc3-bfab-bc12a18dd5d5'),
	(101,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','0985b4a7-b1e7-4283-a254-0757d5694415'),
	(102,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','46525e0f-75a7-48f9-9c8b-b88bc81230f4'),
	(103,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','12fea100-2ada-4a61-ab7b-914916e7a256'),
	(104,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','2bdb11f9-8705-48e4-98bc-79cd23e6196b'),
	(105,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','15273fd2-a98d-4d49-921a-ede7448dccb4'),
	(106,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:02','4b2798b6-4a48-4d76-b4c2-97a3cff4a6ac'),
	(107,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','89fb739e-df8f-4b0e-9a50-6d4b2ea2410b'),
	(108,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','c63d9ee3-e2c5-4a88-a0b6-d6eae9dda049'),
	(109,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','6a88467b-c5d2-438c-a0bc-685e0cec052f'),
	(110,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','064cd1d5-889d-41d5-99b0-9a622c89ee17'),
	(111,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','b37ec777-62c2-433b-89ad-85bd85f195e2'),
	(112,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','6bc72a50-d0dc-49db-8300-a4f3b290679d'),
	(113,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','a789cb5d-57d8-472a-a844-2dad17fe3ba8'),
	(114,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','6e708b1f-3272-4b06-9ec5-ca7b7c22f582'),
	(115,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','9872581d-7585-4c19-9e41-3dd9a6169897'),
	(116,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','1b986193-da62-4d20-85d4-d8c4a4ec676a'),
	(117,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:03','a38189b8-0b75-4ee6-87cf-506f965f427e'),
	(118,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','3a167fea-2961-4d12-b94a-10d1237bc3ad'),
	(119,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','477e7d1e-6aff-449d-a7f9-98125b146434'),
	(120,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','c0baaef6-e8de-4977-be5c-290775d9ac82'),
	(121,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','2dc29149-27cc-40ea-bb94-1193480884a8'),
	(122,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','c30eefc4-14de-4c92-aa38-97c4e45a9cbb'),
	(123,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','6bd454ab-d7d9-4c5b-839c-d9b9d6ad7119'),
	(124,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','36d1755c-5be8-4c14-a9e3-e5566bfb11e1'),
	(125,'Entry',1,0,'2013-02-23 00:15:04','2014-04-04 00:58:04','59ff4237-89dc-4318-a0f8-8ae6bfd85cdb'),
	(130,'User',1,0,'2013-02-23 00:15:05','2014-04-04 00:58:05','a0f598bb-bbb3-47f9-81f5-82e184ab1a4e'),
	(131,'User',1,0,'2013-02-23 00:15:05','2013-02-23 00:15:05','27e85c3b-beed-46f9-95ba-9bc574b26716'),
	(132,'User',1,0,'2013-02-23 00:15:05','2013-02-23 00:15:05','03990684-f662-4480-9ec5-ea0b3a495b12'),
	(133,'User',1,0,'2013-02-23 00:15:05','2013-02-23 00:15:05','df5d01dd-a85c-4c00-a37f-a83245e3facc'),
	(134,'User',1,0,'2013-02-23 00:15:05','2013-02-23 00:15:05','a016242f-4c3b-4797-87bf-f7d1a1be0ad5'),
	(135,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','9a417b1d-d821-4e22-a8bc-699a30e0b701'),
	(136,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','5feb6006-5c58-42c8-b06c-d845e47fb9e6'),
	(137,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','03b79e39-aee6-41c7-92e8-60f57b3f8b79'),
	(138,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','560a69a3-8a1d-46c5-bd94-cfa1d5fdaa07'),
	(139,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','c5022abc-9fe0-4567-b67f-9a3263f953a9'),
	(140,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','9400ff1b-3083-4134-8505-d2b806081e38'),
	(141,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','18f0bbe3-0425-479e-bdbc-00d9c1d8326a'),
	(142,'User',1,0,'2013-02-23 00:15:06','2013-02-23 00:15:06','2bcca3f4-479a-427a-bbc5-6c99739c1460'),
	(157,'GlobalSet',1,0,'2013-02-23 00:15:06','2014-04-04 00:58:04','d10b8f6f-36b4-410c-995a-701a0b00ee30'),
	(159,'Asset',1,0,'2013-03-19 22:19:37','2014-04-04 00:57:54','6b52ba52-1bcd-4329-982f-6ccefb761e46'),
	(160,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','d78982de-c01a-43d3-9f06-8a4e4d0bf25b'),
	(161,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','7976a9ed-71ae-4001-bcaa-0af99f5ff3a4'),
	(162,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','72ebfd1b-c05a-4289-96d4-86683ad6813b'),
	(163,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','57063e91-9601-43b8-bb31-e423f6e7aff3'),
	(164,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','fac38bb5-81c9-4448-b480-9a002926211d'),
	(165,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','7894f736-8ce6-4d94-8b72-cbb7ee88d407'),
	(166,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','39943e2b-6760-49f5-abcc-60b92c0c61e6'),
	(167,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','67c474f2-7dfd-47fc-aea8-8166fcb58688'),
	(168,'Asset',1,0,'2013-03-19 22:19:38','2014-04-04 00:57:54','ee18869f-b09b-44e8-9500-11d29fc58354'),
	(169,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:54','82230280-cbb0-4303-accd-3fcb93ffb634'),
	(170,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:54','00c47bc4-0f3a-41a4-a030-84537a973d6e'),
	(171,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:54','7631e23d-a169-48ee-9ceb-a7bc4164cbc3'),
	(172,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:54','3db70e80-e0bf-415c-9834-a060f8af300e'),
	(173,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:55','3798eced-c371-4896-9401-8c2ac8a0a887'),
	(174,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:55','3424875b-7b0b-4780-aeaf-fbec4d473b47'),
	(175,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:55','7bd921c9-f955-4ae2-9ff7-59e72ef2ef9b'),
	(176,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:55','19dd2ec4-36ee-48c6-a1a7-28801b448c42'),
	(177,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:55','3868ff28-e3cb-4f3c-b367-36333c2b3906'),
	(178,'Asset',1,0,'2013-03-19 22:19:39','2014-04-04 00:57:55','65e4be34-cb8e-41ea-809b-24655a159b56'),
	(179,'Asset',1,0,'2013-03-19 22:19:40','2014-04-04 00:57:55','277e22ff-152d-45e3-9141-0c2b57ca8539'),
	(180,'Asset',1,0,'2013-03-19 22:19:40','2014-04-04 00:57:55','e55cfda1-355e-4036-8462-bc27c610fffb'),
	(181,'Asset',1,0,'2013-03-19 22:19:40','2014-04-04 00:57:55','6097c2b0-dc6d-4af4-9ad1-25011336c41a'),
	(182,'Asset',1,0,'2013-03-19 22:19:40','2014-04-04 00:57:55','c33d68d3-9dbe-433d-9bb0-3ef5d06b0ea1'),
	(183,'Asset',1,0,'2013-03-19 22:19:40','2014-04-04 00:57:55','4c3aca86-8f37-4e4e-b470-67953c6414bd'),
	(184,'Entry',1,0,'2013-03-19 22:57:24','2014-04-04 00:58:04','b31fca49-b90a-4e29-878f-33128bd98477'),
	(186,'Entry',1,0,'2013-09-23 13:16:31','2014-04-04 00:58:04','26cde3fd-8a6f-47f4-be03-300b081c1e8f');

/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements_i18n`;

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_elements_i18n` WRITE;
/*!40000 ALTER TABLE `craft_elements_i18n` DISABLE KEYS */;

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(3,3,'en_us','amaretto','ingredients/amaretto',1,'2013-02-23 00:15:05','2014-04-04 00:57:55','925a1bfa-89c0-4b64-8eca-ec044243ab41'),
	(4,4,'en_us','apricot-brandy','ingredients/apricot-brandy',1,'2013-02-23 00:15:05','2014-04-04 00:57:55','2bd1aa7d-c599-4e3d-b128-537c13df099f'),
	(5,5,'en_us','bailey-s-irish-cream','ingredients/bailey-s-irish-cream',1,'2013-02-23 00:15:05','2014-04-04 00:57:55','2144a53c-0efa-457c-a6ca-83ae5263eae9'),
	(6,6,'en_us','bourbon','ingredients/bourbon',1,'2013-02-23 00:15:05','2014-04-04 00:57:55','ad65be88-8cdb-441f-bc7e-18c2a64493f7'),
	(7,7,'en_us','whiskey','ingredients/whiskey',1,'2013-02-23 00:15:05','2014-04-04 00:57:55','56f31818-3c58-48c5-9b1c-3321f6d5ed51'),
	(8,8,'en_us','cachaa','ingredients/cachaa',1,'2013-02-23 00:15:05','2014-04-04 00:57:55','b36aeb80-eb8f-4780-9c11-48bbf72c0a2a'),
	(9,9,'en_us','champagne','ingredients/champagne',1,'2013-02-23 00:15:05','2014-04-04 00:57:55','83b14c6e-bd29-49ad-9a23-3ec65b920156'),
	(10,10,'en_us','apple-schnapps','ingredients/apple-schnapps',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','f7c8f05b-26dc-42cb-810e-ab7b2b7660ad'),
	(11,11,'en_us','white-rum','ingredients/white-rum',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','fb69b72d-7b1d-426d-9825-c6793272547a'),
	(12,12,'en_us','blue-curaao','ingredients/blue-curaao',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','fae90504-dd85-4ce1-abf9-1e9fb481f4ad'),
	(13,13,'en_us','brandy','ingredients/brandy',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','04186689-b4b1-45d3-8de8-f59852ef4198'),
	(14,14,'en_us','campari','ingredients/campari',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','511bbb15-fcf9-4bc8-aa68-9c38fb506608'),
	(15,15,'en_us','cherry-brandy','ingredients/cherry-brandy',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','70ebc994-e0bd-4dde-95f0-4efccf10b431'),
	(16,16,'en_us','cognac','ingredients/cognac',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','dcce8b42-6669-40b7-8cd6-a684962479b0'),
	(17,17,'en_us','cointreau','ingredients/cointreau',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','e1694b71-14eb-47f5-b3fa-40c3eadd4b03'),
	(18,18,'en_us','crme-de-cacao','ingredients/crme-de-cacao',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','439c46ee-a276-4e8c-a350-97f80f67c334'),
	(19,19,'en_us','crme-de-cassis','ingredients/crme-de-cassis',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','09b6f449-5ddd-439e-a072-4c41e7fa788b'),
	(20,20,'en_us','crme-de-yvette','ingredients/crme-de-yvette',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','f4b6e330-2cc4-4a1d-8441-0356f99656eb'),
	(21,21,'en_us','demerara-rum','ingredients/demerara-rum',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','f604e50f-d7e2-491a-b743-125e42d39429'),
	(22,22,'en_us','drambuie','ingredients/drambuie',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','9d364b60-5e56-430e-bc81-55e6dffa74c6'),
	(23,23,'en_us','white-wine','ingredients/white-wine',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','0b157fd0-b430-4443-bd17-82b45ae68b52'),
	(24,24,'en_us','dry-vermouth','ingredients/dry-vermouth',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','dae92a04-1017-4e20-ac56-638c697e780a'),
	(25,25,'en_us','galliano-liqueur','ingredients/galliano-liqueur',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','ea426a4d-1add-4e97-951f-4992d24ea5e3'),
	(26,26,'en_us','gin','ingredients/gin',1,'2013-02-23 00:15:05','2014-04-04 00:57:56','27f9dfd6-10bd-48cc-be90-b4f51a2316b0'),
	(27,27,'en_us','grand-marnier','ingredients/grand-marnier',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','c34163f0-e8fb-4e55-b869-bf40c7622955'),
	(28,28,'en_us','green-chartreuse','ingredients/green-chartreuse',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','29c8049d-de3a-4f1c-8da8-4d35ba9721e7'),
	(29,29,'en_us','sweet-vermouth','ingredients/sweet-vermouth',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','79dd4b2f-fb5a-4fa1-97c0-2875b074a6b3'),
	(30,30,'en_us','kahla','ingredients/kahla',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','55e1f54b-161d-47b7-8374-9134d3be3f30'),
	(31,31,'en_us','kirsch','ingredients/kirsch',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','8774c439-d19a-4bcd-943a-72476b11065a'),
	(32,32,'en_us','midori','ingredients/midori',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','fbfcd2fc-f19a-40fd-9009-22823db16760'),
	(33,33,'en_us','peach-brandy','ingredients/peach-brandy',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','cd4bc9a2-521f-4fa4-b57f-75d2773de10e'),
	(34,34,'en_us','port','ingredients/port',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','64fe7b4a-c195-4110-8cc2-085ea6d7e8b2'),
	(35,35,'en_us','scotch','ingredients/scotch',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','e989e94f-1e4c-4d7d-b0f3-1d22d25f1fce'),
	(36,36,'en_us','sloe-gin','ingredients/sloe-gin',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','77bd59e7-c27f-483a-bbc9-31abf49b9ace'),
	(37,37,'en_us','tequila','ingredients/tequila',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','91a5b8ac-29d0-4440-8924-815f3e9a87c5'),
	(38,38,'en_us','triple-sec','ingredients/triple-sec',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','03f2cdf0-a605-4dc9-a760-52f093c94e08'),
	(39,39,'en_us','vodka','ingredients/vodka',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','a1bdbd60-dd69-47d7-8bf7-a6d5c9c7787c'),
	(40,40,'en_us','vodka-citron','ingredients/vodka-citron',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','7f5626df-c112-49f8-898f-c34a2a350476'),
	(41,41,'en_us','yellow-chartreuse','ingredients/yellow-chartreuse',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','4cd6da25-6d31-4b40-a1cc-4d34ec7be519'),
	(42,42,'en_us','coconut-cream','ingredients/coconut-cream',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','bf9db3d7-6918-4aeb-b2f2-c1159b810ca5'),
	(43,43,'en_us','coke','ingredients/coke',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','82e1f607-2d8e-43d6-8b8a-8a904126fcc5'),
	(44,44,'en_us','cranberry-juice','ingredients/cranberry-juice',1,'2013-02-23 00:15:05','2014-04-04 00:57:57','558bbbbf-aff0-40d9-94d4-44634345f7ba'),
	(45,45,'en_us','egg-yolk','ingredients/egg-yolk',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','3f1b3fc5-b73b-46d8-8069-8760364ff445'),
	(46,46,'en_us','cream','ingredients/cream',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','95d9d327-0506-4635-b20a-a7a1c846f116'),
	(47,47,'en_us','milk','ingredients/milk',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','e5953181-5d7d-4936-ad1a-3194319f8a62'),
	(48,48,'en_us','peach-puree','ingredients/peach-puree',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','a023423f-40c8-43ef-9d3d-ac5775a8c943'),
	(49,49,'en_us','ginger-ale','ingredients/ginger-ale',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','14baff7f-2aa4-45ed-8eae-0ffe2da3bbe5'),
	(50,50,'en_us','gomme-syrup','ingredients/gomme-syrup',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','f42002b6-5d07-4480-9830-6de7be3e1428'),
	(51,51,'en_us','grapefruit','ingredients/grapefruit',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','b0a50363-ac52-4805-b3c7-236d1b59c669'),
	(52,52,'en_us','grenadine','ingredients/grenadine',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','3ba2afe7-4602-40f0-a36a-57c6fa09601f'),
	(53,53,'en_us','iced-tea','ingredients/iced-tea',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','08bd8aec-f2f4-4ad4-afa1-850559847f2f'),
	(54,54,'en_us','lemon-juice','ingredients/lemon-juice',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','cb11fa92-e6c6-4454-bb89-e35496e6f9b9'),
	(55,55,'en_us','lime-juice','ingredients/lime-juice',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','afebf28a-5dce-4223-834c-272a9e560c22'),
	(56,56,'en_us','orange-juice','ingredients/orange-juice',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','03ae29fe-5949-4fb6-882a-40f32d2e9734'),
	(57,57,'en_us','passion-fruit-juice','ingredients/passion-fruit-juice',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','db95638a-47b3-4abd-8da2-792591926c75'),
	(58,58,'en_us','pineapple-juice','ingredients/pineapple-juice',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','ca40faf9-5c23-4c17-9895-5b52157c94a4'),
	(59,59,'en_us','club-soda','ingredients/club-soda',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','b2508192-632b-4314-95a7-19c5e6c168d8'),
	(60,60,'en_us','simple-syrup','ingredients/simple-syrup',1,'2013-02-23 00:15:05','2014-04-04 00:57:58','e6e8f576-bb5f-40b9-800c-1f55966ef52b'),
	(61,61,'en_us','sweet-sour-mix','ingredients/sweet-sour-mix',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','cf1f4615-aa2a-40eb-b340-4037f521ff1b'),
	(62,62,'en_us','tomato-juice','ingredients/tomato-juice',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','3f0ace9a-b9de-4dd3-9ab8-a48f41fa40d1'),
	(63,63,'en_us','tonic-water','ingredients/tonic-water',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','bcff1c7e-48f3-4dc3-bbdf-3fda90290ce5'),
	(64,64,'en_us','water','ingredients/water',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','3f04c383-dc37-44b4-9f88-f1434fa61a10'),
	(65,65,'en_us','alexander','cocktails/alexander',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','8ee33f85-a541-4ac0-8810-787cb6c04f96'),
	(66,66,'en_us','americano','cocktails/americano',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','78181f3f-8f47-44f5-8386-f4ae2977d2b2'),
	(67,67,'en_us','apple-martini','cocktails/apple-martini',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','b95a2264-1d2e-48ac-a6e2-55acc2fe3014'),
	(68,68,'en_us','b-52','cocktails/b-52',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','73d522b7-5d38-4d8c-8ae9-3a5a57f6252a'),
	(69,69,'en_us','bacardi-cocktail','cocktails/bacardi-cocktail',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','7f71fd7c-10cb-47a9-b18b-62fe19d09fff'),
	(70,70,'en_us','banana-daiquiti','cocktails/banana-daiquiti',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','fd473c83-b785-458a-8d52-6e63d297e569'),
	(71,71,'en_us','bellini','cocktails/bellini',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','6f78f3c3-518a-4e77-b8ee-019f2ce341fe'),
	(72,72,'en_us','black-russian','cocktails/black-russian',1,'2013-02-23 00:15:05','2014-04-04 00:57:59','46e6a40c-a99e-4f07-b58a-2162ac3011af'),
	(73,73,'en_us','bloody-mary','cocktails/bloody-mary',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','3e88edc8-8868-4da5-b657-6ca97da9dd0f'),
	(74,74,'en_us','blue-hawaii','cocktails/blue-hawaii',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','446a1481-0be3-4d82-8818-bcbf944b3079'),
	(75,75,'en_us','brandy-alexander','cocktails/brandy-alexander',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','3aeccb1f-f5ca-42bd-ad3f-d5f0f43277d5'),
	(76,76,'en_us','brandy-egg-nog','cocktails/brandy-egg-nog',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','83e8a0ea-6739-4b01-96b0-7b37fe44b5f1'),
	(77,77,'en_us','bronx','cocktails/bronx',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','347faef4-90ec-4cae-9738-b74d783970f8'),
	(78,78,'en_us','mimosa','cocktails/mimosa',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','5645adcf-851f-4056-85f9-c6036c7f3bfe'),
	(79,79,'en_us','caipirinha','cocktails/caipirinha',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','ba7ed73c-3fd1-4eb8-b2a8-e16e1dd5abd1'),
	(80,80,'en_us','champagne-cooler','cocktails/champagne-cooler',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','a69fa4b6-c170-4daf-aaaa-4531a019542c'),
	(81,81,'en_us','christmas-cocktail','cocktails/christmas-cocktail',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','2a1ea260-cde2-47de-826d-eb23647753c6'),
	(82,82,'en_us','cosmopolitan','cocktails/cosmopolitan',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','7068e2fa-264e-4b89-9b2e-60e350cbc818'),
	(83,83,'en_us','cuba-libre','cocktails/cuba-libre',1,'2013-02-23 00:15:05','2014-04-04 00:58:00','92474fd1-8259-49e9-afb2-6a675c6b52d7'),
	(84,84,'en_us','daiquiri','cocktails/daiquiri',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','f08180a6-3f3e-4bb2-9ab6-69bd031580ee'),
	(85,85,'en_us','french-connection','cocktails/french-connection',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','0554669e-6d5f-4219-8da8-17542021cdda'),
	(86,86,'en_us','gibson','cocktails/gibson',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','a8bf0285-8368-4bf2-a262-0d0ef69d712e'),
	(87,87,'en_us','gimlet','cocktails/gimlet',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','8b240537-6bc5-4193-90c1-455152cc8e95'),
	(88,88,'en_us','entry-88','cocktails/entry-88',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','8b06180b-dfee-469c-8e40-8564b9e09e24'),
	(89,89,'en_us','gin-fizz','cocktails/gin-fizz',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','b441f38b-294e-4d0e-8b3a-156eaa074f83'),
	(90,90,'en_us','gin-rickey','cocktails/gin-rickey',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','8041c623-3100-4add-b0dc-adf0a34ee26a'),
	(91,91,'en_us','godfather','cocktails/godfather',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','4e6b0788-0e72-4ce6-956a-6a21b2cc81b8'),
	(92,92,'en_us','godmother','cocktails/godmother',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','d9ae2066-ea2d-4b1e-82a9-68d291a9c495'),
	(93,93,'en_us','golden-cadillac','cocktails/golden-cadillac',1,'2013-02-23 00:15:05','2014-04-04 00:58:01','af2597e9-cf4d-456d-bef4-cee6cafb5397'),
	(94,94,'en_us','harvey-wallbanger','cocktails/harvey-wallbanger',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','17aac964-d397-44b7-8ec0-966a5de33e47'),
	(95,95,'en_us','horse-s-neck','cocktails/horse-s-neck',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','2ea4d11d-a38f-4a0f-9719-4022b5fceb9c'),
	(96,96,'en_us','ice-pick','cocktails/ice-pick',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','4872b10a-e5ad-48ab-acd8-d53919959408'),
	(97,97,'en_us','japanese-slipper','cocktails/japanese-slipper',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','a4dfc4ec-2fe1-4bd0-8978-f5d1505e772e'),
	(98,98,'en_us','john-collins','cocktails/john-collins',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','86ad6ea7-4432-4cec-b6e8-b9100f7086d3'),
	(99,99,'en_us','kamikaze','cocktails/kamikaze',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','6c29e027-dde2-4190-96da-913f7e7956a8'),
	(100,100,'en_us','kir','cocktails/kir',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','b34b1d50-06f1-4039-bcf2-99601b528f66'),
	(101,101,'en_us','kir-royale','cocktails/kir-royale',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','02a4832b-3c7d-491e-84e0-385cc614b1f0'),
	(102,102,'en_us','long-island-iced-tea','cocktails/long-island-iced-tea',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','6ce85c37-b61b-44b7-9e0b-4cbab006db18'),
	(103,103,'en_us','manhattan','cocktails/manhattan',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','f196031f-808e-4490-8a5e-0e31a679869f'),
	(104,104,'en_us','margarita','cocktails/margarita',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','531a89a0-76bd-4cb9-9e32-7e662321f365'),
	(105,105,'en_us','martini','cocktails/martini',1,'2013-02-23 00:15:05','2014-04-04 00:58:02','1be29bd5-af96-4dc1-8861-01697a5decdc'),
	(106,106,'en_us','negroni','cocktails/negroni',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','0e15a7cd-d0fc-4d43-93a3-f4a92f6662f2'),
	(107,107,'en_us','pina-colada','cocktails/pina-colada',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','420a07c7-89a8-451c-967b-01b778687dc9'),
	(108,108,'en_us','porto-flip','cocktails/porto-flip',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','3ef53075-3f80-42ca-81c8-4ad3313101c3'),
	(109,109,'en_us','rob-roy','cocktails/rob-roy',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','15e46076-e93d-40c0-b2b7-3edbdb965b60'),
	(110,110,'en_us','rusty-nail','cocktails/rusty-nail',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','f19716e1-2c6a-4005-a8d7-c72519b1f4a0'),
	(111,111,'en_us','salty-dog','cocktails/salty-dog',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','ca0f0dee-b3e6-4b8a-b470-ffa45c378ec3'),
	(112,112,'en_us','screwdriver','cocktails/screwdriver',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','efc258a6-0f2b-4b03-b3b5-edefc89be4ff'),
	(113,113,'en_us','sex-on-the-beach','cocktails/sex-on-the-beach',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','ddecf8f1-eadc-4441-8b27-4666b2f1eca8'),
	(114,114,'en_us','singapore-sling','cocktails/singapore-sling',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','2b0223f5-c77d-44c6-bbd2-7d9883b0c0cb'),
	(115,115,'en_us','tequila-sunrise','cocktails/tequila-sunrise',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','9b5feb47-8606-4e0e-aeef-70128637799c'),
	(116,116,'en_us','whiskey-sour','cocktails/whiskey-sour',1,'2013-02-23 00:15:05','2014-04-04 00:58:03','1c69286d-86a2-4b60-86b1-25e9763450f4'),
	(117,117,'en_us','white-russian','cocktails/white-russian',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','d12b5a97-e911-45ee-a3b2-0a51495b1e5c'),
	(118,118,'en_us','beer','ingredients/beer',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','9b08cc74-b6ea-4bd6-a4c7-d19c9dcbbd2d'),
	(119,119,'en_us','irish-whiskey','ingredients/irish-whiskey',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','47f7aa5a-c2cf-4be7-94ac-e3f837e1b647'),
	(120,120,'en_us','red-wine','ingredients/red-wine',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','5c37d373-a4ca-48c5-87f3-56aa237a0bea'),
	(121,121,'en_us','espresso','ingredients/espresso',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','50b090d5-d903-4702-bd2d-d12ce13606a2'),
	(122,122,'en_us','espresso-martini','cocktails/espresso-martini',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','f6eda844-7188-4e89-af0f-16aa6aa047df'),
	(123,123,'en_us','mojito','cocktails/mojito',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','dcca3ace-b382-4633-8813-51182afad971'),
	(124,124,'en_us','midori-splice','cocktails/midori-splice',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','b12cd752-f64b-409a-9198-b35ce732cb1c'),
	(125,125,'en_us','mai-kai-martini','cocktails/mai-kai-martini',1,'2013-02-23 00:15:05','2014-04-04 00:58:04','5f83a1c5-351e-48c0-ad7d-074079dc2fae'),
	(130,157,'en_us','',NULL,1,'2013-02-23 00:15:06','2014-04-04 00:58:04','2b75c16b-2689-441a-acb0-3e08969c6689'),
	(132,184,'en_us','gin-and-tonic','cocktails/gin-and-tonic',1,'2013-03-19 22:57:24','2014-04-04 00:58:04','59103a05-1624-4787-9566-41bba0f48e7d'),
	(134,186,'en_us','homepage','__home__',1,'2013-09-23 13:16:31','2014-04-04 00:58:04','55a091d7-91ea-4110-a748-4c5aa6aa48b9'),
	(135,130,'en_us','',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:58:05','41b32354-c30e-4350-9791-76c83bcccd30'),
	(136,131,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','2d1d969a-3321-4267-9e5d-ecf773f416b2'),
	(137,132,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','9fa738b2-2255-479e-8c92-685fad475bc1'),
	(138,133,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','1862ec9d-ecff-496a-a781-3918c5f40913'),
	(139,134,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','952ecad2-f242-4fb1-b0b0-838777f997b2'),
	(140,135,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','d103670d-7091-4bf2-9955-42fad119b170'),
	(141,136,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','7cb3a91c-a9dc-4ee3-a3e1-8e462eddaaf3'),
	(142,137,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','094480e4-4da3-4d6b-a951-e96ff4cddffd'),
	(143,138,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','fe62a44b-938e-46d4-b3f1-df57b02716a9'),
	(144,139,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','f328df2a-5a23-48de-8f2b-e231c78745fe'),
	(145,140,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','9672ad52-3bc1-4a7e-b87d-4863f421d1e3'),
	(146,141,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','fba32816-55bd-438b-8a6f-beb7c85c1466'),
	(147,142,'en_us',NULL,NULL,1,'2013-12-18 22:38:43','2013-12-18 22:38:43','e7ed8800-8477-49c7-8ac1-24985084dca3'),
	(148,159,'en_us','beer1',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','e64f11b5-f4c8-42c4-86a2-d738e76657f5'),
	(149,160,'en_us','champagne',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','7ea229ef-5866-4d6d-9eb9-fdabf276e0f2'),
	(150,161,'en_us','beer3',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','a423646e-b4d6-4bd9-b8bb-280937854032'),
	(151,162,'en_us','beer2',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','2e326072-926d-4807-932c-75dde7bc847f'),
	(152,163,'en_us','champagnewithstrawberry',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','27d06740-4965-420e-a15a-86f1eaf37537'),
	(153,164,'en_us','cosmopolitan',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','5bdbe8c4-8fa7-4027-b5f3-9bdddf637124'),
	(154,165,'en_us','espressomartini1',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','943b4467-e0f6-4ed4-bf8e-764b3e91df73'),
	(155,166,'en_us','espressomartini2',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','35a57bcf-484a-4b7d-8abd-51399307223a'),
	(156,167,'en_us','ginandtonic1',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','bcc0d707-cbbe-43eb-ac94-748388139c70'),
	(157,168,'en_us','ginandtonic2',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','d9aecd84-d39f-474f-aefb-49318abb5a75'),
	(158,169,'en_us','ginandtonic3',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','45753acd-7e0d-4648-af11-0b94d9ca73a6'),
	(159,170,'en_us','maikaimartini1',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','a88e9ee2-d504-4802-b9da-f67187cc4204'),
	(160,171,'en_us','maikaimartini2',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','d2999f26-b44f-4da1-8089-163fece2d850'),
	(161,172,'en_us','mojito',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:54','f1d66689-ade3-4804-b22f-db11d2ccea0a'),
	(162,173,'en_us','shots',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','8b6bb8ac-65bd-476a-89a9-2a04799ac430'),
	(163,174,'en_us','tahoedrink',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','db30b53a-269d-41f5-b391-ecacb63ae8d8'),
	(164,175,'en_us','tequila',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','cc814827-0286-4db9-a494-32445278a8f1'),
	(165,176,'en_us','vodka',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','5a2fc221-e894-44fd-b9ff-0a8c648ce512'),
	(166,177,'en_us','vodkamidorisplice',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','a0fceada-e8f4-4276-81f0-8888419e5253'),
	(167,178,'en_us','whiskey1',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','d3b7de6a-ecdc-4020-9f2f-814c4265bd74'),
	(168,179,'en_us','whiskey2',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','0c08a56c-d7f2-44ae-b4f3-fe01d0092709'),
	(169,180,'en_us','whiskeysour1',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','3b34a9f4-f7ee-4115-9cc8-89f62324d43a'),
	(170,181,'en_us','whiskeysour2',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','52dade70-cc12-44e9-8ca2-a9b8b1b27d8f'),
	(171,182,'en_us','wine1',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','d705a291-5efc-4935-89ed-8c5414330c15'),
	(172,183,'en_us','wine2',NULL,1,'2013-12-18 22:38:43','2014-04-04 00:57:55','e112f53f-40ae-4812-adeb-37892c818fb3');

/*!40000 ALTER TABLE `craft_elements_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_emailmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_emailmessages`;

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`),
  CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# Dump of table craft_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entries`;

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  KEY `craft_entries_sectionId_idx` (`sectionId`) USING BTREE,
  KEY `craft_entries_typeId_idx` (`typeId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(3,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:43:00','2013-09-23 13:13:08','91d5e0f2-dffe-4c00-b5e9-f241fc068c05'),
	(4,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:43:19','2013-09-23 13:13:08','6f360525-6c81-4321-84ce-3d550773ad1b'),
	(5,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:44:21','2013-09-23 13:13:08','a258991a-43ff-43cd-99bf-03a1f9e09149'),
	(6,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:44:36','2013-09-23 13:13:08','17e74901-c33a-46f2-b6b8-645ab47806ec'),
	(7,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:44:40','2013-09-23 13:13:08','472e1e20-9a51-4d06-a076-43e8336bdd66'),
	(8,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:45:10','2013-09-23 13:13:08','6628f67d-16be-4154-b6d8-ad95e4dbdc16'),
	(9,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:45:15','2013-09-23 13:13:08','49056222-8ef8-45c4-bb08-aa2b9ac3e887'),
	(10,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:45:24','2013-09-23 13:13:08','0803dcb5-2bcc-4605-b8c3-6e095df9d997'),
	(11,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:45:36','2013-09-23 13:13:08','fcdd80e5-5def-4583-bc9b-a6785709c1de'),
	(12,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:46:01','2013-09-23 13:13:08','3afce547-7f8f-49f5-af86-f578ffae230d'),
	(13,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:46:05','2013-09-23 13:13:08','90f5e0ca-783f-47c3-a0d9-ad25d3f182d5'),
	(14,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:46:08','2013-09-23 13:13:08','083b9b64-2107-489f-bc88-aa1338a145c9'),
	(15,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:46:41','2013-09-23 13:13:08','fc7130c7-3b36-421b-aebf-3c8d2a0b6eb2'),
	(16,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:46:48','2013-09-23 13:13:08','f2838ef0-324e-406b-b32e-6a5d6478ea3a'),
	(17,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:46:55','2013-09-23 13:13:08','002789ef-eb55-4a5f-a161-0ab1a1549c55'),
	(18,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:47:50','2013-09-23 13:13:08','b6edf3ba-2174-47ae-87e2-5e8903b970da'),
	(19,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:48:15','2013-09-23 13:13:08','1b2698e3-b9ba-430b-a11f-46fcd5422ad4'),
	(20,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:48:33','2013-09-23 13:13:08','a1c89fbd-313f-47ad-bf8b-0084df9e7b5e'),
	(21,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:48:51','2013-09-23 13:13:08','4130179d-c2c2-458a-91f8-f1d96bd5d269'),
	(22,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:48:55','2013-09-23 13:13:08','a7ee86b0-fb52-44bf-8c4b-61b0b389b60d'),
	(23,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:49:08','2013-09-23 13:13:08','8093f8a9-35ba-426b-86e2-feab2817e839'),
	(24,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:49:15','2013-09-23 13:13:08','61e8aa27-e698-4d87-937b-7e3bbb611ac4'),
	(25,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:49:25','2013-09-23 13:13:08','5b0cb907-4d18-4c2e-8994-f24219366399'),
	(26,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:49:29','2013-09-23 13:13:08','5fda7a59-ad68-4686-8d6e-d6fd0b0718de'),
	(27,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:49:34','2013-09-23 13:13:08','5fa7878e-83ee-407b-99ec-de44c2fbbcc6'),
	(28,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:49:45','2013-09-23 13:13:08','907ecb39-182c-4cfd-ab6a-f34f9256f6ed'),
	(29,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:49:51','2013-09-23 13:13:08','b329f169-097d-434a-854a-57d7b14caeb9'),
	(30,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:50:15','2013-09-23 13:13:08','0ee162d6-7875-44cf-b971-70238b96af13'),
	(31,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:50:22','2013-09-23 13:13:08','3bc9c524-5a58-4d35-8600-0df762bc077f'),
	(32,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:50:32','2013-09-23 13:13:08','54fc55db-8796-4e48-88c8-016a38ce8b0a'),
	(33,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:50:36','2013-09-23 13:13:08','dc9822b5-03a8-477b-9d25-8f1bd6abc575'),
	(34,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:50:44','2013-09-23 13:13:08','f78dce9e-072f-4a14-a142-fdec58fa8655'),
	(35,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:50:48','2013-09-23 13:13:08','afb776e6-c8fe-44f5-873d-1630dc409c54'),
	(36,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:50:51','2013-09-23 13:13:08','ae4a9dde-ac21-41a2-8bc6-3d9c4d9caaf1'),
	(37,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:51:16','2013-09-23 13:13:08','28e2672a-3f38-46e7-9ef6-7e343ab3f507'),
	(38,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:51:27','2013-09-23 13:13:08','7ca682e0-1b13-4f8f-8745-86c4f255a8ee'),
	(39,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:51:31','2013-09-23 13:13:08','48d44882-cb4a-4416-a2e1-ff225d692957'),
	(40,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:51:34','2013-09-23 13:13:08','f7c16231-b068-49ff-82b0-64d73939c329'),
	(41,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 19:51:48','2013-09-23 13:13:08','f84d5698-3c79-486f-bfbe-03236b49affa'),
	(42,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:37:11','2013-09-23 13:13:08','80c9dc16-9eff-40eb-bac6-208345691c77'),
	(43,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:38:01','2013-09-23 13:13:08','5323c279-8402-454b-8d5e-e0d6573b3bfb'),
	(44,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:38:52','2013-09-23 13:13:08','e40a8078-b39a-43a3-bd1d-c289f9f38bb6'),
	(45,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:39:08','2013-09-23 13:13:08','44e5a5ec-793c-449b-bc57-8b44a892c3d5'),
	(46,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:39:28','2013-09-23 13:13:08','008b46c8-9d75-41e7-a12e-7f1b1e6595ac'),
	(47,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:40:06','2013-09-23 13:13:08','3bb9ff14-6cc1-4abd-aca2-e6b50212fd0e'),
	(48,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:40:33','2013-09-23 13:13:08','5bbdfffe-f9fc-4dfb-abf6-7ac42febad4d'),
	(49,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:41:10','2013-09-23 13:13:08','dc6ca89f-b1df-44fc-9311-89b3d8a2dea8'),
	(50,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:42:35','2013-09-23 13:13:08','693edc7c-09a7-4902-b076-c7022f97b165'),
	(51,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:42:54','2013-09-23 13:13:08','f666319d-bca1-47c1-9a50-54430726c059'),
	(52,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:43:17','2013-09-23 13:13:08','c9929fcd-5c8d-471d-aec3-dca0c32822cb'),
	(53,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:45:07','2013-09-23 13:13:08','a5c9e67d-9db7-4a13-bc8b-8a4cd94ec102'),
	(54,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:45:24','2013-09-23 13:13:08','8fc19396-6ef1-432f-b8b5-511e2ed29298'),
	(55,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:45:41','2013-09-23 13:13:08','698eac6a-2a47-4721-8f68-cfc390319bf6'),
	(56,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:47:03','2013-09-23 13:13:08','0709d584-c502-4f41-8501-ac2f51ad9c63'),
	(57,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:47:24','2013-09-23 13:13:08','a479ff6c-51dc-41cc-a8b4-038874f387c3'),
	(58,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:47:45','2013-09-23 13:13:08','2d17de98-ab62-4a19-bba0-eac84e0710cf'),
	(59,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:48:16','2013-09-23 13:13:08','7ec5dcd4-bab0-4498-8bae-6e5b1f2f71b5'),
	(60,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:49:35','2013-09-23 13:13:08','1b1b969c-7150-44c6-82db-c6c7626b2d0f'),
	(61,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:50:00','2013-09-23 13:13:08','d40dc053-47d1-4134-b678-873baf8eb751'),
	(62,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:50:17','2013-09-23 13:13:08','2a455ca2-ae8a-4f60-8e80-fbec9cb81d11'),
	(63,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:50:34','2013-09-23 13:13:08','e4182bc7-8e5e-4f5c-aca8-b71470e336ee'),
	(64,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:51:31','2013-09-23 13:13:08','3c5e426c-cb0e-4b73-8af7-cbbe664897ef'),
	(65,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:54:03','2013-09-23 13:13:08','995335ae-35bc-4e3b-a556-35bd3826caa1'),
	(66,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:55:18','2013-09-23 13:13:08','c05e8c0b-88b6-40b8-a4c8-8c08e4a1b48e'),
	(67,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:57:12','2013-09-23 13:13:08','6b59ad11-779c-4012-9746-13661fce72a8'),
	(68,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:59:11','2013-09-23 13:13:08','b25090a7-de9c-4936-b3b2-9239a1d372f7'),
	(69,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 20:59:55','2013-09-23 13:13:08','18014f67-daab-4c80-887d-891a1de47cb8'),
	(70,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:01:24','2013-09-23 13:13:08','29de1776-7410-4146-a5cc-1076a69d9411'),
	(71,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:02:58','2013-09-23 13:13:08','7ffe93e0-e3bd-4c42-adee-ca0684433e87'),
	(72,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:03:48','2013-09-23 13:13:08','de49e057-94ca-441a-9c4e-28c4ffdbb6e3'),
	(73,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:04:42','2013-09-23 13:13:08','d24fa4c1-87b7-4dd5-a8ee-4a69ade5c434'),
	(74,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:05:28','2013-09-23 13:13:08','5bf15566-b559-476f-9c44-100b7bf3bc39'),
	(75,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:06:25','2013-09-23 13:13:08','61335844-d7b8-444d-a326-4547fe42de68'),
	(76,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:27:00','2013-09-23 13:13:08','d3fef410-0dc9-4856-873c-d2cb6c51fe8c'),
	(77,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:29:23','2013-09-23 13:13:08','94c396ca-047f-4022-9979-317fcf132591'),
	(78,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:31:19','2013-09-23 13:13:08','35704cfe-e723-4aed-be01-8cfb7cf61abb'),
	(79,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:32:49','2013-09-23 13:13:08','7171f1d8-203a-44b1-9992-5468ddcb2670'),
	(80,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:34:03','2013-09-23 13:13:08','fb7a4fba-df74-49fb-806a-c05b74b7932e'),
	(81,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:35:14','2013-09-23 13:13:08','ac5b46ac-6ae2-4b2c-bcb0-9b6476568d5f'),
	(82,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:37:33','2013-09-23 13:13:08','d78dc6c7-116e-47cc-aa12-4ecf7f5886dd'),
	(83,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:38:09','2013-09-23 13:13:08','13da7bfe-5923-4402-9d8d-232f7bce058d'),
	(84,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:38:55','2013-09-23 13:13:08','e0894d28-d410-48c8-8639-33bbe1aeac27'),
	(85,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:39:52','2013-09-23 13:13:08','deef61fc-dcae-4f7f-b630-e19d6e673d9d'),
	(86,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:41:09','2013-09-23 13:13:08','3bfbb867-0954-429c-9cec-2d08959e4789'),
	(87,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:41:40','2013-09-23 13:13:08','d9aea58b-40ba-45bb-82b6-573343ccb92b'),
	(88,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:42:09','2013-09-23 13:13:08','44ff2573-ee1c-42d4-81d7-eba8643e6e4e'),
	(89,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:44:00','2013-09-23 13:13:08','bb0647c5-b4f2-425c-a2bf-e662db0f0a0d'),
	(90,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:45:42','2013-09-23 13:13:08','fceddbe9-4942-4801-a373-6f1ed563feb8'),
	(91,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:46:50','2013-09-23 13:13:08','819bfb84-5b46-4e8a-b8e7-cd43de75dc4b'),
	(92,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:55:05','2013-09-23 13:13:08','d3d3e930-7664-41ea-a3bf-780b2f75cea2'),
	(93,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:55:38','2013-09-23 13:13:08','6711d3e3-a6a8-41fc-bd77-a97dae94f39b'),
	(94,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:57:06','2013-09-23 13:13:08','0b6d2f77-e315-45fb-9118-85fd4085f1c0'),
	(95,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:57:50','2013-09-23 13:13:08','abaae65c-26d6-41f3-ba2d-6a79200a4d68'),
	(96,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:58:30','2013-09-23 13:13:08','e8b5486a-0613-4ba0-aba0-ba0d0c3be37c'),
	(97,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:59:05','2013-09-23 13:13:08','43619ec8-6aa3-4789-9b75-92bbfa614848'),
	(98,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 21:59:42','2013-09-23 13:13:08','64a21dd1-597f-4c1f-abc3-629309555111'),
	(99,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:00:15','2013-09-23 13:13:08','e8a77688-01e3-4ac4-8308-9359bced3af6'),
	(100,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:01:12','2013-09-23 13:13:08','1d844e50-26ea-4f9b-9ec5-a86a98b6a628'),
	(101,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:01:49','2013-09-23 13:13:08','9358cc28-c7b1-482c-945d-b42eb39e8346'),
	(102,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:03:44','2013-09-23 13:13:08','c33df851-f2d9-4958-846f-6826318471c2'),
	(103,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:04:11','2013-09-23 13:13:08','2a28dbfa-67e6-4b0a-ade0-b19b071ef99b'),
	(104,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:04:59','2013-09-23 13:13:08','ebc82ee8-7c5c-4669-b35f-95a1ff04e7c5'),
	(105,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:05:37','2013-09-23 13:13:08','bf6634db-fcd1-4fca-9e47-acf1bbd2ccc5'),
	(106,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:06:23','2013-09-23 13:13:08','9ca50334-4f2e-4bbf-a166-4d1c659c62d1'),
	(107,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:09:45','2013-09-23 13:13:08','5fb1475e-9466-4c0f-9383-7da8a261760b'),
	(108,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:10:36','2013-09-23 13:13:08','4515ece3-44a4-49e6-8f64-7119690cc1a7'),
	(109,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:11:13','2013-09-23 13:13:08','eafb0b32-7470-42fb-894d-27697b414b92'),
	(110,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:11:45','2013-09-23 13:13:08','b34e3ae0-ee96-4fc2-abf6-5746d94650a1'),
	(111,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:12:40','2013-09-23 13:13:08','e75d4041-16a9-4d7e-b841-3119f867bea9'),
	(112,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:13:28','2013-09-23 13:13:08','d8898a06-3b71-458d-b88f-6b463f172417'),
	(113,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:14:54','2013-09-23 13:13:08','dbb4b382-9086-44ae-9b0a-75beceea8aea'),
	(114,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:16:38','2013-09-23 13:13:08','08c09eea-d91e-4c7c-a872-4fda3e4ca2de'),
	(115,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:17:49','2013-09-23 13:13:08','2ff641da-3780-4d21-a6ee-80e95f2e7222'),
	(116,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:18:43','2013-09-23 13:13:08','a2e7538c-6014-4cf5-8285-f38c80ca5a17'),
	(117,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 22:20:52','2013-09-23 13:13:08','05dce56e-b2e9-4928-980d-99df5eedb185'),
	(118,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 23:30:51','2013-09-23 13:13:08','2eeae44b-969f-4bbd-87a9-a92e92c58003'),
	(119,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 23:31:51','2013-09-23 13:13:08','3a3a81a3-207b-4bd5-9f12-1644a29a2bc1'),
	(120,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 23:33:52','2013-09-23 13:13:08','eef6720b-107c-4798-82d9-f81184166fce'),
	(121,2,2,130,'2012-10-12 00:00:00',NULL,'2012-10-12 23:35:05','2013-09-23 13:13:08','8901f195-b563-4c94-8460-1bf82146b97f'),
	(122,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 23:40:47','2013-09-23 13:13:08','dc635aa6-2c0e-4737-a73f-43ec9382fb29'),
	(123,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 23:42:22','2013-09-23 13:13:08','421d8916-6c77-4f3d-aa47-4fd2067ab090'),
	(124,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-12 23:43:37','2013-09-23 13:13:08','a7087d24-b688-43e1-8563-5e6db8411190'),
	(125,3,3,130,'2012-10-12 00:00:00',NULL,'2012-10-14 17:17:45','2013-09-23 13:13:08','5d80ffd7-c828-4c4c-8ca7-3cd415445272'),
	(184,3,3,130,'2013-03-18 08:00:00',NULL,'2013-03-19 22:57:24','2013-09-23 13:13:08','bb1e344d-b55a-49fc-81b8-cfdce4c5c9bd'),
	(186,4,4,NULL,'2013-09-23 13:16:31',NULL,'2013-09-23 13:16:31','2013-09-23 13:17:27','ccea1090-1567-40f8-a817-e47d72856f45');

/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entrydrafts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrydrafts`;

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_entrydrafts` WRITE;
/*!40000 ALTER TABLE `craft_entrydrafts` DISABLE KEYS */;

INSERT INTO `craft_entrydrafts` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `name`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,184,3,130,'en_us','Draft 1',NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":1363564800,\"expiryDate\":null,\"enabled\":\"1\",\"tags\":[],\"fields\":{\"10\":\"<p><\\/p><p><img src=\\\"http:\\/\\/s3.amazonaws.com\\/pixelandtonic-us\\/misc\\/drinks\\/01_Darcy_O%E2%80%99Neil\\/gin-and-tonic.jpg\\\" style=\\\"float: right; margin: 0px 0px 10px 10px; width: 250px; \\\" alt=\\\"\\\">A gin and tonic is a highball cocktail made with gin and tonic water poured over ice. It is usually garnished with a slice or wedge of lime. The amount of gin varies according to taste. Suggested ratios of gin-to-tonic are 1:1, 1:2, 1:3, and 2:3.<\\/p><p>In some countries, gin and tonic is marketed pre-mixed in single-serving cans. In the United States, most bars will substitute soda water (from a soda gun) for the tonic; to get a real gin and tonic, mixologist Dale DeGroff recommends specifying bottled tonic. Alternatively, one can add tonic syrup to soda water.<\\/p><p>It is commonly referred to as a \\\"G and T\\\" in the UK, USA, Canada and Ireland. Some brands will replace the word \\\"gin\\\" with their own brand or initial in recipes. For instance, \\\"Sapphire and Tonic\\\" for Bombay Sapphire, \\\"Hendrick\'s and Tonic\\\" for Hendrick\'s Gin (garnished with cucumber to further distinguish it), or \\\"T&T\\\" for Tanqueray.<\\/p><p>In some parts of the world (e.g., German countries, France, Korea, Italy, Greece, Spain, Turkey, Belgium), it is called \\\"Gin Tonic\\\".<\\/p><p><\\/p>\",\"8\":[\"\",\"26\",\"63\"],\"6\":[\"\",\"167\",\"168\",\"169\"]}}','2013-04-16 01:02:43','2014-09-24 17:30:50','13cc26f6-8eca-41fe-8704-1e307b5d533a');

/*!40000 ALTER TABLE `craft_entrydrafts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entrytypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrytypes`;

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,3,'Blog','blog',1,'Title',NULL,NULL,'2013-09-23 13:13:08','2013-09-23 13:13:08','a9d31df1-fb04-4d48-b317-ecc890e9786d'),
	(2,2,10,'Ingredients','ingredients',1,'Title',NULL,NULL,'2013-09-23 13:13:08','2013-09-23 13:13:08','7e988898-baf1-4f00-b3e1-1e5f6978c33f'),
	(3,3,16,'Cocktails','cocktails',1,'Title',NULL,NULL,'2013-09-23 13:13:08','2013-09-23 13:13:08','30576b97-a2f4-433d-94c2-b61a5f44e5a7'),
	(4,4,18,'Homepage','homepage',0,NULL,'{section.name|raw}',NULL,'2013-09-23 13:16:31','2014-09-24 17:31:21','6bc37324-7822-4bd0-8f55-38a10f47f2e5');

/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entryversions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entryversions`;

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_entryversions` WRITE;
/*!40000 ALTER TABLE `craft_entryversions` DISABLE KEYS */;

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,184,3,130,'en_us',1,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":\"1363651200\",\"expiryDate\":null,\"enabled\":\"1\",\"tags\":[],\"fields\":{\"10\":\"\",\"8\":[\"\",\"26\",\"63\"],\"6\":[\"\",\"167\",\"168\",\"169\"]}}','2013-03-29 20:47:36','2014-09-24 17:30:50','5c900426-8e55-476f-b62b-532890dfac3e'),
	(2,184,3,130,'en_us',2,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":\"1363651200\",\"expiryDate\":null,\"enabled\":\"1\",\"tags\":[],\"fields\":{\"10\":\"\",\"8\":[\"\",\"26\",\"63\"],\"6\":[\"\",\"167\",\"168\",\"169\"]}}','2013-03-29 20:47:43','2014-09-24 17:30:50','45559c67-7263-46f1-a42f-de26d0f4a91f'),
	(3,184,3,130,'en_us',3,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":1363593600,\"expiryDate\":null,\"enabled\":\"1\",\"tags\":[],\"fields\":{\"10\":\"<p><\\/p><p><img src=\\\"http:\\/\\/s3.amazonaws.com\\/pixelandtonic-us\\/misc\\/drinks\\/01_Darcy_O%E2%80%99Neil\\/gin-and-tonic.jpg\\\" style=\\\"float: right; margin: 0px 0px 10px 10px; width: 250px; \\\" alt=\\\"\\\">A gin and tonic is a highball cocktail made with gin and tonic water poured over ice. It is usually garnished with a slice or wedge of lime. The amount of gin varies according to taste. Suggested ratios of gin-to-tonic are 1:1, 1:2, 1:3, and 2:3.<\\/p><p>In some countries, gin and tonic is marketed pre-mixed in single-serving cans. In the United States, most bars will substitute soda water (from a soda gun) for the tonic; to get a real gin and tonic, mixologist Dale DeGroff recommends specifying bottled tonic. Alternatively, one can add tonic syrup to soda water.<\\/p><p>It is commonly referred to as a \\\"G and T\\\" in the UK, USA, Canada and Ireland. Some brands will replace the word \\\"gin\\\" with their own brand or initial in recipes. For instance, \\\"Sapphire and Tonic\\\" for Bombay Sapphire, \\\"Hendrick\'s and Tonic\\\" for Hendrick\'s Gin (garnished with cucumber to further distinguish it), or \\\"T&amp;T\\\" for Tanqueray.<\\/p><p>In some parts of the world (e.g., German countries, France, Korea, Italy, Greece, Spain, Turkey, Belgium), it is called \\\"Gin Tonic\\\".<\\/p><p><\\/p>\",\"8\":[\"\",\"26\",\"63\"],\"6\":[\"\",\"167\",\"168\",\"169\"]}}','2013-04-16 00:50:55','2014-09-24 17:30:50','2d6d513e-ef64-47e2-81da-06c20f8b5e41'),
	(4,26,2,130,'en_us',1,NULL,'{\"authorId\":\"130\",\"title\":\"Gin\",\"slug\":\"gin\",\"postDate\":1350000000,\"expiryDate\":null,\"enabled\":1,\"tags\":[],\"fields\":{\"10\":\"<p>Gin is a spirit which derives its predominant flavour from juniper berries. From its earliest beginnings in the Middle Ages, gin has evolved over the course of a millennium from a herbal medicine to an object of commerce in the spirits industry. Today, the gin category is one of the most popular and widely distributed range of spirits, and is represented by products of various origins, styles, and flavor profiles that all revolve around juniper as a common ingredient.<\\/p>\"}}','2013-05-14 21:37:51','2014-09-24 17:30:50','be351359-7391-4f3a-86b8-6a756a836e59'),
	(5,184,3,130,'en_us',4,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":1363593600,\"expiryDate\":null,\"enabled\":1,\"tags\":[],\"fields\":{\"10\":\"<p><br><\\/p>\",\"1\":\"\",\"8\":[\"26\",\"63\"],\"14\":\"#000000\",\"6\":[\"167\",\"168\",\"169\"]}}','2013-05-30 20:20:58','2014-09-24 17:30:50','1ad10dd3-e09d-46c9-a697-1757f8e50ed9'),
	(6,184,3,130,'en_us',5,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":1363593600,\"expiryDate\":null,\"enabled\":1,\"tags\":[],\"fields\":{\"10\":\"<p><br><\\/p>\",\"1\":\"\",\"14\":\"#000000\"}}','2013-05-30 20:22:03','2014-09-24 17:30:50','565f5bba-75e0-4d23-9eab-062eca332abd'),
	(7,184,3,130,'en_us',6,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":1363593600,\"expiryDate\":null,\"enabled\":1,\"tags\":[],\"fields\":{\"10\":\"<p>A gin and tonic is a highball cocktail made with gin and tonic water poured over ice. It is usually garnished with a slice or wedge of lime. The amount of gin varies according to taste. Suggested ratios of gin-to-tonic are 1:1, 1:2, 1:3, and 2:3.<br><\\/p>\\r\\n\",\"1\":\"\",\"8\":[\"26\",\"63\"],\"14\":\"#99b43c\",\"6\":[\"168\",\"167\",\"169\"]}}','2013-05-30 20:24:14','2014-09-24 17:30:50','5303234c-ccb1-499c-8f79-350341c70bf3'),
	(8,184,3,130,'en_us',7,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":1363593600,\"expiryDate\":null,\"enabled\":1,\"tags\":[],\"fields\":{\"10\":\"\",\"1\":\"\",\"14\":\"#000000\"}}','2013-05-30 20:33:29','2014-09-24 17:30:50','bd81e5f3-9359-4ba7-9573-cd94a637c52a'),
	(10,184,3,130,'en_us',8,NULL,'{\"authorId\":\"130\",\"title\":\"Gin and Tonic\",\"slug\":\"gin-and-tonic\",\"postDate\":1363593600,\"expiryDate\":null,\"enabled\":1,\"tags\":[],\"fields\":{\"10\":\"<p>A gin and tonic is a highball cocktail made with gin and tonic water poured over ice. It is usually garnished with a slice or wedge of lime. The amount of gin varies according to taste. Suggested ratios of gin-to-tonic are 1:1, 1:2, 1:3, and 2:3.<br><\\/p>\",\"1\":\"\",\"8\":[\"26\",\"63\"],\"14\":\"#a5c051\",\"6\":[\"168\",\"167\",\"169\"]}}','2013-06-03 19:36:10','2014-09-24 17:30:50','53d317cf-558d-4609-a9a0-57447877bbc2'),
	(11,186,4,130,'en_us',1,NULL,'{\"authorId\":null,\"title\":\"Homepage\",\"slug\":\"homepage\",\"postDate\":1379942191,\"expiryDate\":null,\"enabled\":1,\"fields\":{\"5\":\"\",\"10\":\"\",\"1\":\"Tales from the Cocktail\",\"2\":\"<p>\\r\\n\\tWelcome to <em style=\\\"font-family: Arial, Helvetica, Verdana, Tahoma, sans-serif;\\\">On the Rocks<\\/em>, a breathtaking adventure through\\u2026 a Craft demo site!\\r\\n<\\/p>\"}}','2013-09-23 13:17:27','2014-09-24 17:30:50','7ec9ea07-cac8-4ece-a8d9-bec6fdc505b1');

/*!40000 ALTER TABLE `craft_entryversions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldgroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldgroups`;

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Homepage','2013-02-23 00:15:02','2013-03-19 23:12:05','00e72c35-11d0-4115-b325-708aa052a3ee'),
	(3,'Blog','2013-02-23 00:15:05','2013-02-23 00:15:05','323e3656-657b-46be-a23b-f7fe75633b8e'),
	(5,'Drinks','2013-02-23 00:15:05','2013-03-19 23:16:48','ddaf27c8-48e7-429b-ad53-e2beb14bb540'),
	(7,'Assets','2013-02-23 00:15:06','2013-02-23 00:15:06','08fa8b8f-cdd9-44a7-ad0b-eff1ce9cecdb'),
	(8,'Globals','2013-02-23 00:15:06','2013-02-23 00:15:06','ce487019-fff5-4fc9-b1b8-97d421790d24'),
	(9,'Tags (Auto-created)','2013-09-23 13:11:53','2013-09-23 13:11:53','dffe5c7f-aa90-4b61-9ec7-3a0766dec133');

/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayoutfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) DEFAULT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(5,3,3,5,1,2,'2013-02-23 00:15:05','2013-02-23 00:15:05','8fb6cf14-b1d7-43dc-baa9-ebb58ecd3b0b'),
	(13,7,NULL,13,0,1,'2013-02-23 00:15:06','2013-02-23 00:15:06','c66f0e0e-03e3-476c-8340-0a8add58f647'),
	(21,10,8,10,0,1,'2013-02-24 06:01:31','2013-02-24 06:01:31','2bc78b0b-05ae-46ca-a218-66177334cba5'),
	(22,10,8,6,0,2,'2013-02-24 06:01:31','2013-02-24 06:01:31','b8ca4c75-cbd1-4ff1-b6c2-be56ce1f61c3'),
	(41,16,15,6,0,1,'2013-05-30 20:21:40','2013-05-30 20:21:40','a73d1511-5add-4b3c-90ef-8bdd64b6d44d'),
	(42,16,15,8,0,2,'2013-05-30 20:21:40','2013-05-30 20:21:40','b63e777e-c29f-4953-8717-7e41122f4fad'),
	(43,16,15,14,0,3,'2013-05-30 20:21:40','2013-05-30 20:21:40','ff32a2be-85f6-44c6-8b3c-6debbd4e664e'),
	(44,16,15,10,0,4,'2013-05-30 20:21:40','2013-05-30 20:21:40','e275cf96-57d6-481f-a9cc-3efc6606ac11'),
	(45,18,16,1,0,1,'2013-09-23 13:17:06','2013-09-23 13:17:06','55ac0d40-cc15-4eaf-a9bc-e03470b478d5'),
	(46,18,16,2,0,2,'2013-09-23 13:17:06','2013-09-23 13:17:06','5cda30e2-308d-456f-9fd4-8ccc70d08ed3');

/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouts`;

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(3,'Entry','2013-02-23 00:15:05','2013-02-23 00:15:05','277af4b2-f280-4e70-ac62-8ca0961244ab'),
	(7,'GlobalSet','2013-02-23 00:15:06','2013-03-08 20:47:42','7a35ce95-6141-4f56-8103-6442a687f48d'),
	(10,'Entry','2013-02-24 06:01:31','2013-02-24 06:01:31','495a71e8-4b88-4f55-bf92-5a96a7b7714d'),
	(16,'Entry','2013-05-30 20:21:40','2013-05-30 20:21:40','f428b496-1ba6-4d6d-926a-444b43ee4c2f'),
	(18,'Entry','2013-09-23 13:17:06','2013-09-23 13:17:06','93641ab3-9172-4a8c-a8d5-77d070b64e0b');

/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouttabs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(3,3,'Content',1,'2013-02-23 00:15:05','2013-02-23 00:15:05','182ed9cc-f82c-4bb5-809e-580276484b2a'),
	(8,10,'Content',1,'2013-02-24 06:01:31','2013-02-24 06:01:31','4efd2fd3-be27-481c-b80a-518cbc8e39ff'),
	(15,16,'Content',1,'2013-05-30 20:21:40','2013-05-30 20:21:40','ddac94f9-ab81-4b85-b945-61edde01d087'),
	(16,18,'Content',1,'2013-09-23 13:17:06','2013-09-23 13:17:06','8d61de37-35fb-4f70-b74d-5c1e068a81eb');

/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fields`;

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  KEY `craft_fields_context_idx` (`context`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'Heading','heading','global','',0,'PlainText','{\"maxLength\":\"\",\"maxLengthUnit\":\"words\",\"initialRows\":\"4\",\"placeholder\":\"Enter text\\u2026\"}','2013-02-23 00:15:02','2013-05-30 19:53:00','7cab3a97-c808-41d8-932d-b0745696a718'),
	(2,1,'Site Intro','siteIntro','global','',0,'RichText','{\"minHeight\":\"100\"}','2013-02-23 00:15:02','2013-02-23 00:15:02','1f743a26-7704-41aa-84f5-65086252a93e'),
	(5,3,'Body','body','global','This is what shows up on the main entry page.',1,'RichText','{\"configFile\":\"Standard.json\",\"cleanupHtml\":\"1\"}','2013-02-23 00:15:05','2013-06-03 18:45:05','3dec8c6e-98ac-4d94-921f-e835dda41186'),
	(6,5,'Photos','photos','global','',0,'Assets','{\"limit\":\"12\",\"sources\":[\"folder:3\"]}','2013-02-23 00:15:05','2014-04-04 00:57:26','a17a43e8-e563-4269-bdfe-1a509ab3c2b7'),
	(8,5,'Ingredients','ingredients','global','Select the ingredients in this cocktail.',0,'Entries','{\"limit\":\"\",\"reverseHandle\":\"\",\"sources\":[\"section:2\"]}','2013-02-23 00:15:05','2014-04-04 00:57:26','aea29374-87b5-4994-920a-9788be303402'),
	(10,5,'Description','description','global','',0,'RichText','{\"minHeight\":\"100\"}','2013-02-23 00:15:05','2013-02-23 00:15:05','cde26465-debe-497a-b43f-397e7e1b4b21'),
	(13,8,'Meta Description','metaDescription','global','',0,'PlainText','{\"maxLength\":\"\",\"maxLengthUnit\":\"words\",\"multiline\":\"1\",\"initialRows\":\"4\",\"placeholder\":\"Enter text\\u2026\"}','2013-02-23 00:15:06','2013-05-30 19:53:00','c56b7915-be54-4f12-ac78-fb1cf2bd1bb7'),
	(14,5,'Link Color','linkColor','global','',0,'Color',NULL,'2013-05-14 22:30:09','2013-05-14 22:30:09','497d5e18-2a16-410f-be3b-d364b9f3dc90'),
	(15,9,'Tags','tags','global',NULL,0,'Tags','{\"source\":\"taggroup:1\"}','2013-09-23 13:11:53','2014-04-04 00:57:26','f92ae73d-3fa9-4f41-9488-cfe492365fc0');

/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_globalsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_globalsets`;

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(157,'Globals','globals',7,'2013-03-08 20:47:42','2013-03-08 20:47:42','8201dee6-970f-4ac7-bbeb-95a652789a6c');

/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_info`;

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `build` int(11) unsigned NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDate` datetime NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `track` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;

INSERT INTO `craft_info` (`id`, `version`, `build`, `schemaVersion`, `releaseDate`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `track`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'2.2',2588,'2.2.1','2014-09-24 00:30:44',2,'On the Rocks','http://ontherocks.dev','America/Los_Angeles',1,0,'stable','1970-01-01 00:33:32','2014-09-24 17:31:21','9915844a-dd8c-4227-80a7-ef05f5c7572c');

/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_locales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_locales`;

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_locales` WRITE;
/*!40000 ALTER TABLE `craft_locales` DISABLE KEYS */;

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	('en_us',1,'2013-02-23 00:15:01','2013-02-23 00:15:01','626ac316-2b76-4c36-9fd2-44fdf90a44d7');

/*!40000 ALTER TABLE `craft_locales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocks`;

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_matrixblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocktypes`;

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_migrations`;

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'m000000_000000_base','2012-12-01 06:30:04','2012-12-01 06:30:04','2012-12-01 06:30:04','631aba67-769f-4d7e-858f-1e0390fbaff1'),
	(37,NULL,'m130323_052325_make_postdate_nullable','2013-03-28 13:22:54','2013-03-28 13:22:54','2013-03-28 13:22:54','64b5cfb0-0bb5-4a52-bfee-91313e24405a'),
	(38,NULL,'m130325_181058_shunnedmessages','2013-03-28 13:22:55','2013-03-28 13:22:55','2013-03-28 13:22:55','624f885d-9549-4402-be3a-fc956a25bdf1'),
	(39,NULL,'m130402_205054_site_timezone_setting','2013-04-03 04:36:38','2013-04-03 04:36:38','2013-04-03 04:36:38','4dc708df-1019-4963-8455-1b8ce83ceb80'),
	(40,NULL,'m130417_000000_add_htaccess_again','2013-04-09 17:25:37','2013-04-09 17:25:37','2013-04-09 17:25:37','dbe84f16-9218-4125-8ae2-281ee6954f7f'),
	(41,NULL,'m130416_000001_add_crop_position','2013-04-24 13:49:17','2013-04-24 13:49:17','2013-04-24 13:49:17','6c8a49f6-cff2-4127-8956-95647357e26c'),
	(42,NULL,'m130416_000002_clean_email_format','2013-04-24 13:49:17','2013-04-24 13:49:17','2013-04-24 13:49:17','3328e7a2-6328-4e0e-af56-17eab2c635f0'),
	(43,NULL,'m130428_133703_longer_slugs','2013-04-29 22:35:41','2013-04-29 22:35:41','2013-04-29 22:35:41','778cbd5c-3e5d-40b3-8737-c9ad1dabfe40'),
	(44,NULL,'m130507_153059_entry_cascade_deletes','2013-05-14 00:00:27','2013-05-14 00:00:27','2013-05-14 00:00:27','219ec67d-213b-4129-8467-a9d5c1810ad6'),
	(45,NULL,'m130604_000000_add_track_to_info','2013-05-14 20:42:33','2013-05-14 20:42:33','2013-05-14 20:42:33','eab4d7ea-2a32-46b5-8226-7adedf003219'),
	(46,NULL,'m130604_000000_create_searchindex','2013-05-14 20:42:33','2013-05-14 20:42:33','2013-05-14 20:42:33','2bc151cb-46c2-45c8-aa75-835ce9522953'),
	(47,NULL,'m130604_000000_relations','2013-05-14 20:42:34','2013-05-14 20:42:34','2013-05-14 20:42:34','cdbf6ef2-8fe0-401d-876d-a5b93e485ad2'),
	(48,NULL,'m130604_000000_placeholders','2013-05-30 19:53:00','2013-05-30 19:53:00','2013-05-30 19:53:00','9d15ec4e-cd8e-4de5-bc03-d3d144e21979'),
	(49,NULL,'m130603_000000_add_track_to_info','2013-06-04 17:45:24','2013-06-04 17:45:24','2013-06-04 17:45:24','d1728c29-ca00-4d28-90e0-ed1ce85c3432'),
	(50,NULL,'m130605_221646_add_enabled_to_widgets','2013-09-23 13:11:53','2013-09-23 13:11:53','2013-09-23 13:11:53','01cc6d33-e171-4edf-9c36-4ef4da5fbb99'),
	(51,NULL,'m130613_000000_add_cascade_delete_to_relations','2013-09-23 13:11:53','2013-09-23 13:11:53','2013-09-23 13:11:53','b41bde86-7abb-478a-b501-1d6141a02b99'),
	(52,NULL,'m130729_000000_titles','2013-09-23 13:11:53','2013-09-23 13:11:53','2013-09-23 13:11:53','55cfa02c-f73a-428e-b558-f9481cc5b093'),
	(53,NULL,'m130729_000001_tags','2013-09-23 13:11:53','2013-09-23 13:11:53','2013-09-23 13:11:53','88499691-e0ef-4393-b641-bc847453be28'),
	(54,NULL,'m130730_000000_fix_tags_fieldlayout','2013-09-23 13:11:53','2013-09-23 13:11:53','2013-09-23 13:11:53','926be197-cbe3-4ae2-a754-2ac311c7465a'),
	(55,NULL,'m130805_193351_drop_orphaned_field_layouts','2013-09-23 13:11:53','2013-09-23 13:11:53','2013-09-23 13:11:53','a97077a6-caa9-4c1e-9c20-8f884dc7de88'),
	(56,NULL,'m130805_193360_add_cascade_delete_to_relations_retro','2013-09-23 13:11:54','2013-09-23 13:11:54','2013-09-23 13:11:54','e8b8b143-b219-4aa0-ba82-6af29f434b33'),
	(57,NULL,'m130806_000000_drop_orphaned_elements','2013-09-23 13:11:54','2013-09-23 13:11:54','2013-09-23 13:11:54','da1e596c-2f55-47a3-a707-d181082eb3a0'),
	(58,NULL,'m130815_000000_add_cascade_delete_to_relations_again','2013-09-23 13:11:54','2013-09-23 13:11:54','2013-09-23 13:11:54','f941bcaf-3c59-4ff7-a112-52a7d9ef5b38'),
	(59,NULL,'m130908_000000_entry_draft_and_revision_deletes','2013-09-23 13:11:54','2013-09-23 13:11:54','2013-09-23 13:11:54','9017e80f-22be-4222-b1a8-0c1332e1775e'),
	(60,NULL,'m130909_000000_fix_tags','2013-09-23 13:11:54','2013-09-23 13:11:54','2013-09-23 13:11:54','945bfefa-5385-4dcd-a3b4-1c6a7cc4c992'),
	(61,NULL,'m130917_000000_drop_users_enctype','2013-09-23 13:13:08','2013-09-23 13:13:08','2013-09-23 13:13:08','4fadb945-9fce-4e0a-afb1-5f081f5bec72'),
	(62,NULL,'m130917_000001_big_names_and_handles','2013-09-23 13:13:08','2013-09-23 13:13:08','2013-09-23 13:13:08','77abf440-288c-4b87-bd54-bf6569aff4ad'),
	(63,NULL,'m130917_000002_entry_types','2013-09-23 13:13:08','2013-09-23 13:13:08','2013-09-23 13:13:08','f7ad9be1-0617-45b9-a68b-9be1c725a9ed'),
	(64,NULL,'m130917_000003_section_types','2013-09-23 13:13:09','2013-09-23 13:13:09','2013-09-23 13:13:09','fbb7aa29-8ef2-43fe-95b7-33859acd2f5c'),
	(65,NULL,'m131105_000000_content_column_field_prefixes','2013-12-18 22:38:42','2013-12-18 22:38:42','2013-12-18 22:38:42','e7c1c5e3-7608-4f3c-919f-6556a1313baa'),
	(66,NULL,'m131105_000002_schema_version','2013-12-18 22:38:42','2013-12-18 22:38:42','2013-12-18 22:38:42','9fad13e5-c2a2-4cb6-9724-25c8e3ba07cf'),
	(67,NULL,'m131105_000003_field_contexts','2013-12-18 22:38:42','2013-12-18 22:38:42','2013-12-18 22:38:42','dc849ad4-287e-47be-aeb5-dbb38f77e4f8'),
	(68,NULL,'m131105_000004_matrix','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','9b27195f-51b6-44a8-925c-7bea36a102e2'),
	(69,NULL,'m131105_000004_matrix_blocks','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','5828659a-0b36-4c8a-96af-05aaf0a46c94'),
	(70,NULL,'m131105_000005_correct_tag_field_layouts','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','feaae539-466d-48de-9696-7ada33ae1132'),
	(71,NULL,'m131105_000006_remove_gethelp_widget_for_non_admins','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','6dd4e5b5-186a-4e30-ad42-499439788d4e'),
	(72,NULL,'m131105_000007_new_relation_column_names','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','8c8bc59b-9135-417d-ba64-54baf183c520'),
	(73,NULL,'m131105_000008_add_values_for_unknown_asset_kinds','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','b1fa465d-250d-421f-b1e3-c2f97ebccbf9'),
	(74,NULL,'m131108_000000_add_missing_content_and_i18n_rows','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','fc711eed-dfce-412f-a79b-98a21a581da8'),
	(75,NULL,'m131108_000000_drop_sized_icons','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','45d74278-7486-49b0-ab00-d7a4878529e7'),
	(76,NULL,'m131108_000000_undo_nested_matrix','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','66300409-eceb-4344-8023-87e90aa792a3'),
	(77,NULL,'m131122_000000_add_missing_content_and_i18n_rows','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','7937befc-dc4a-4678-8ac9-26972c4bfcb5'),
	(78,NULL,'m131206_000000_add_migrations_to_db','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','1dbb011b-ed96-4b51-9f28-d6382de78673'),
	(79,NULL,'m131209_000000_remove_recent_transform_indexes','2013-12-18 22:38:43','2013-12-18 22:38:43','2013-12-18 22:38:43','3f226177-3268-40cf-b2f5-e9b028ceb38b'),
	(80,NULL,'m131203_000000_allow_orphan_assets','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','030ad474-51f0-48c3-8f52-8293a062c180'),
	(81,NULL,'m131212_000001_add_missing_fk_to_emailmessages','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','cc67a5c8-6f0f-4e73-b370-ed86621722c4'),
	(82,NULL,'m140123_000000_update_widget_sort_orders','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','ce37620d-c2ce-48e6-8df9-f5e1d3b0bee6'),
	(83,NULL,'m140212_000000_clean_up_structures','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','6373ed21-2685-4fbf-a8a8-e5f8d0b52b05'),
	(84,NULL,'m140217_000000_add_missing_indexes','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','81feb3df-feaf-406e-bf6a-f3043cee0f28'),
	(85,NULL,'m140223_000000_add_missing_element_rows','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','2058fab7-ede3-48e7-899b-35874ee364c9'),
	(86,NULL,'m140325_000000_fix_matrix_settings','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','301f9129-5e13-4c2e-b13b-c2b1ae274389'),
	(87,NULL,'m140401_000000_assignUserPermissions_permission','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','b8443911-85c5-42b0-8396-ce301ff24bd7'),
	(88,NULL,'m140401_000000_delete_the_deleted_files','2014-04-04 00:57:25','2014-04-04 00:57:25','2014-04-04 00:57:25','4f24742d-b3ae-4e4d-ba34-01df4ea67e33'),
	(89,NULL,'m140401_000001_structures','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','ee22c611-e4ca-433a-98a4-de13fb4802f1'),
	(90,NULL,'m140401_000002_elements_i18n_tweaks','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','1b062349-8a55-4608-a205-a01fa8ace5bd'),
	(91,NULL,'m140401_000003_tag_groups','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','91f775d7-0893-4f92-bcc6-4ee6a1b6277c'),
	(92,NULL,'m140401_000004_add_unverifiedemail_column_to_users','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','f3e1d000-3c51-4e1b-bc99-676a3696410f'),
	(93,NULL,'m140401_000005_translatable_matrix_fields','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','0d2dbc79-571d-4da3-a25f-0470ff757434'),
	(94,NULL,'m140401_000006_translatable_relation_fields','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','c30b0a75-5020-48bb-a1f1-cb93075e6a1d'),
	(95,NULL,'m140401_000007_add_enabledbydefault_column_to_sections_i18n','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','bdd28420-11ee-451f-aa34-f4597a7e8369'),
	(96,NULL,'m140401_000008_fullpath_to_path','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','cd919095-f71e-404b-9d63-90df8ac61cb0'),
	(97,NULL,'m140401_000009_asset_field_layouts','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','15bc0c76-b2e2-4b0f-a7a7-3560690055c4'),
	(98,NULL,'m140401_000010_no_section_default_author','2014-04-04 00:57:26','2014-04-04 00:57:26','2014-04-04 00:57:26','7b9f90fc-10dd-4683-a1d6-3252567dfb51'),
	(99,NULL,'m140401_000011_categories','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','07321ba7-93ce-4ce9-9f69-a2f50e1b286e'),
	(100,NULL,'m140401_000012_templatecaches','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','3267576e-a5c6-4bad-b0cd-f787da271a5a'),
	(101,NULL,'m140401_000013_allow_temp_source_transforms','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','725eb20c-0aed-4b46-ac62-1525296ebbb7'),
	(102,NULL,'m140401_000014_entry_title_formats','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','f35f3e1f-181f-4ac0-bd85-c7bdb7206c37'),
	(103,NULL,'m140401_000015_tasks','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','453937f3-4f33-4f21-819e-041daa9a4762'),
	(104,NULL,'m140401_000016_varchar_classes','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','43fce712-0d92-4d71-b8c4-f8e92ebf3102'),
	(105,NULL,'m140401_000017_add_transform_quality','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','a2127007-48e2-4c83-bfcb-0ed24ea1c545'),
	(106,NULL,'m140401_000018_locale_routes','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','5dbc12d6-c8e1-413e-865c-6468212ca36b'),
	(107,NULL,'m140401_000019_editions','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','dc887525-61e8-43f2-b70c-c483e84d17ee'),
	(108,NULL,'m140401_000019_rackspace_auth_api','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','e8846b02-ac03-498b-a1b1-1a5407234c84'),
	(109,NULL,'m140401_000020_deprecationerrors_table','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','fb3caf3d-d5a8-40af-8aab-c0f240e445ad'),
	(110,NULL,'m140401_000021_client_user','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','77140cfd-0769-4beb-8efd-def3d5a4d5d5'),
	(111,NULL,'m140401_100000_resave_elements','2014-04-04 00:57:27','2014-04-04 00:57:27','2014-04-04 00:57:27','b1343f9e-dfbb-4c9c-9a01-818b114ab140'),
	(112,NULL,'m140401_100002_delete_compiled_templates','2014-04-04 00:57:28','2014-04-04 00:57:28','2014-04-04 00:57:28','0cda949c-177a-477b-9bde-4282ad9a53fe'),
	(113,NULL,'m140403_000000_allow_orphan_assets_again','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','7b31148f-63ba-404f-bdec-6f8cc9f23966'),
	(114,NULL,'m140508_000000_fix_disabled_matrix_blocks','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','4b85f2c5-a215-4123-bfcd-95d263ff9c58'),
	(115,NULL,'m140520_000000_add_id_column_to_templatecachecriteria','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','e8f0c3be-34ba-4a3e-92ae-743c8ee0932e'),
	(116,NULL,'m140603_000000_draft_names','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','84c9a8b9-8e56-4133-bed3-a5a8de16c644'),
	(117,NULL,'m140603_000001_draft_notes','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','c251e26b-c281-40dd-a491-0e490fe3de90'),
	(118,NULL,'m140603_000002_version_nums','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','ef266dbb-9f35-4de8-aca5-5df3448c7503'),
	(119,NULL,'m140603_000003_version_toggling','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','36d238d8-526a-47ee-ba5f-c2bd358b8307'),
	(120,NULL,'m140603_000004_tokens','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','c02693f4-dd8e-4f69-a798-25af315528c2'),
	(121,NULL,'m140603_000005_asset_sources','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','e8d855b2-9180-4b5a-8086-fc546641d992'),
	(122,NULL,'m140716_000001_allow_temp_source_transforms_again','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','40e4fc71-3ecd-4f38-bb60-9de06b75bb5b'),
	(123,NULL,'m140731_000001_resave_elements_with_assets_in_temp_sources','2014-09-24 17:30:50','2014-09-24 17:30:50','2014-09-24 17:30:50','cdb4bbaf-1b71-49d4-bfd3-ff37e68267a1'),
	(124,NULL,'m140730_000001_add_filename_and_format_to_transformindex','2014-09-24 17:31:21','2014-09-24 17:31:21','2014-09-24 17:31:21','59fd04e5-43eb-4388-af4c-f918c3d54687'),
	(125,NULL,'m140815_000001_add_format_to_transforms','2014-09-24 17:31:21','2014-09-24 17:31:21','2014-09-24 17:31:21','2255b9a6-54d0-4ce3-8b12-dd22be4a651a'),
	(126,NULL,'m140822_000001_allow_more_than_128_items_per_field','2014-09-24 17:31:21','2014-09-24 17:31:21','2014-09-24 17:31:21','45e3a005-be9e-4487-9567-80583f895ece'),
	(127,NULL,'m140829_000001_single_title_formats','2014-09-24 17:31:21','2014-09-24 17:31:21','2014-09-24 17:31:21','83aee323-e266-4ef5-bf2c-b271cccb7d20'),
	(128,NULL,'m140831_000001_extended_cache_keys','2014-09-24 17:31:21','2014-09-24 17:31:21','2014-09-24 17:31:21','cd89b131-0ef7-40c1-8bc5-c39df8990993'),
	(129,NULL,'m140922_000001_delete_orphaned_matrix_blocks','2014-09-24 17:31:21','2014-09-24 17:31:21','2014-09-24 17:31:21','cfbde4c4-9ebb-4e3b-b399-f2d03884832f');

/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_plugins`;

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# Dump of table craft_rackspaceaccess
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_rackspaceaccess`;

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_relations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_relations`;

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_idx` (`sourceId`),
  KEY `craft_relations_targetId_idx` (`targetId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(302,8,111,NULL,51,1,'2012-12-10 15:48:48','2013-05-14 20:42:34','f5bb059e-1988-45f1-a606-ede1b982c5e6'),
	(303,8,111,NULL,39,3,'2012-12-10 15:48:48','2013-05-14 20:42:34','5735b391-19da-49c7-a3d5-a9fe5602d318'),
	(307,8,117,NULL,39,2,'2012-12-11 12:38:09','2013-05-14 20:42:34','44555d40-eb07-447d-b46a-acd98960a2ef'),
	(330,8,78,NULL,9,1,'2013-03-19 22:54:49','2013-05-14 20:42:34','dec63f60-01c3-440a-9fdf-fd602aa73dbe'),
	(331,8,78,NULL,56,1,'2013-03-19 22:54:49','2013-05-14 20:42:34','ba768a7a-195b-431c-b08f-91091de4ef0a'),
	(334,8,122,NULL,121,1,'2013-03-19 22:56:22','2013-05-14 20:42:34','b196485b-f384-4511-8fa8-6bb51da12129'),
	(342,8,125,NULL,13,1,'2013-03-19 22:57:58','2013-05-14 20:42:34','b5726dc2-9eb3-41a1-8d3e-976e0fc2aef2'),
	(345,8,123,NULL,11,1,'2013-03-19 22:59:51','2013-05-14 20:42:34','1d260583-eeff-4440-bbf5-0f2f6df7af6b'),
	(346,8,123,NULL,55,1,'2013-03-19 22:59:51','2013-05-14 20:42:34','2e94a93f-085a-486c-a490-07808756474f'),
	(347,8,123,NULL,59,1,'2013-03-19 22:59:51','2013-05-14 20:42:34','011f502f-c20d-4da1-b40b-9d33871ae787'),
	(359,8,124,NULL,39,1,'2013-03-19 23:03:37','2013-05-14 20:42:34','97524b1e-3376-492e-9a97-5bafd5b139dc'),
	(360,8,184,NULL,26,1,'2013-06-03 19:36:10','2013-06-03 19:36:10','c6d45621-7087-405a-b9ab-0e2843962ce4'),
	(361,8,184,NULL,63,2,'2013-06-03 19:36:10','2013-06-03 19:36:10','f874d0fa-8800-4d8d-a0b9-152a2df036ff'),
	(362,6,184,NULL,168,1,'2013-06-03 19:36:10','2013-06-03 19:36:10','0ecb72ec-7505-4b34-b13e-4546319d3a89'),
	(363,6,184,NULL,167,2,'2013-06-03 19:36:10','2013-06-03 19:36:10','b56ee5df-19a6-427e-b7da-6df5b95f9a77'),
	(364,6,184,NULL,169,3,'2013-06-03 19:36:10','2013-06-03 19:36:10','665ad44e-374a-42a6-a7a2-ca09acc718a5');

/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_routes`;

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_routes_urlPattern_unq_idx` (`urlPattern`),
  KEY `craft_routes_locale_idx` (`locale`),
  CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_routes` WRITE;
/*!40000 ALTER TABLE `craft_routes` DISABLE KEYS */;

INSERT INTO `craft_routes` (`id`, `locale`, `urlParts`, `urlPattern`, `template`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'[\"archive\\/\",[\"year\",\"\\\\d{4}\"]]','archive\\/(?P<year>\\d{4})','archive/_year',1,'2013-05-15 11:52:06','2013-05-15 11:52:06','3ec319f8-96d7-4768-8412-473b727b3323');

/*!40000 ALTER TABLE `craft_routes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_searchindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_searchindex`;

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`)
VALUES
	(26,'title',0,'en_us',' gin '),
	(26,'slug',0,'en_us',' gin '),
	(26,'field',10,'en_us',' gin is a spirit which derives its predominant flavour from juniper berries from its earliest beginnings in the middle ages gin has evolved over the course of a millennium from a herbal medicine to an object of commerce in the spirits industry today the gin category is one of the most popular and widely distributed range of spirits and is represented by products of various origins styles and flavor profiles that all revolve around juniper as a common ingredient '),
	(159,'filename',0,'en_us',' beer1 jpg '),
	(159,'extension',0,'en_us',' jpg '),
	(159,'kind',0,'en_us',' image '),
	(160,'filename',0,'en_us',' champagne jpg '),
	(160,'extension',0,'en_us',' jpg '),
	(160,'kind',0,'en_us',' image '),
	(161,'filename',0,'en_us',' beer3 jpg '),
	(161,'extension',0,'en_us',' jpg '),
	(161,'kind',0,'en_us',' image '),
	(162,'filename',0,'en_us',' beer2 jpg '),
	(162,'extension',0,'en_us',' jpg '),
	(162,'kind',0,'en_us',' image '),
	(163,'filename',0,'en_us',' champagnewithstrawberry jpg '),
	(163,'extension',0,'en_us',' jpg '),
	(163,'kind',0,'en_us',' image '),
	(164,'filename',0,'en_us',' cosmopolitan jpg '),
	(164,'extension',0,'en_us',' jpg '),
	(164,'kind',0,'en_us',' image '),
	(165,'filename',0,'en_us',' espressomartini1 jpg '),
	(165,'extension',0,'en_us',' jpg '),
	(165,'kind',0,'en_us',' image '),
	(166,'filename',0,'en_us',' espressomartini2 jpg '),
	(166,'extension',0,'en_us',' jpg '),
	(166,'kind',0,'en_us',' image '),
	(167,'filename',0,'en_us',' ginandtonic1 jpg '),
	(167,'extension',0,'en_us',' jpg '),
	(167,'kind',0,'en_us',' image '),
	(168,'filename',0,'en_us',' ginandtonic2 jpg '),
	(168,'extension',0,'en_us',' jpg '),
	(168,'kind',0,'en_us',' image '),
	(169,'filename',0,'en_us',' ginandtonic3 jpg '),
	(169,'extension',0,'en_us',' jpg '),
	(169,'kind',0,'en_us',' image '),
	(170,'filename',0,'en_us',' maikaimartini1 jpg '),
	(170,'extension',0,'en_us',' jpg '),
	(170,'kind',0,'en_us',' image '),
	(171,'filename',0,'en_us',' maikaimartini2 jpg '),
	(171,'extension',0,'en_us',' jpg '),
	(171,'kind',0,'en_us',' image '),
	(172,'filename',0,'en_us',' mojito jpg '),
	(172,'extension',0,'en_us',' jpg '),
	(172,'kind',0,'en_us',' image '),
	(173,'filename',0,'en_us',' shots jpg '),
	(173,'extension',0,'en_us',' jpg '),
	(173,'kind',0,'en_us',' image '),
	(174,'filename',0,'en_us',' tahoedrink jpg '),
	(174,'extension',0,'en_us',' jpg '),
	(174,'kind',0,'en_us',' image '),
	(175,'filename',0,'en_us',' tequila jpg '),
	(175,'extension',0,'en_us',' jpg '),
	(175,'kind',0,'en_us',' image '),
	(176,'filename',0,'en_us',' vodka jpg '),
	(176,'extension',0,'en_us',' jpg '),
	(176,'kind',0,'en_us',' image '),
	(177,'filename',0,'en_us',' vodkamidorisplice jpg '),
	(177,'extension',0,'en_us',' jpg '),
	(177,'kind',0,'en_us',' image '),
	(178,'filename',0,'en_us',' whiskey1 jpg '),
	(178,'extension',0,'en_us',' jpg '),
	(178,'kind',0,'en_us',' image '),
	(179,'filename',0,'en_us',' whiskey2 jpg '),
	(179,'extension',0,'en_us',' jpg '),
	(179,'kind',0,'en_us',' image '),
	(180,'filename',0,'en_us',' whiskeysour1 jpg '),
	(180,'extension',0,'en_us',' jpg '),
	(180,'kind',0,'en_us',' image '),
	(181,'filename',0,'en_us',' whiskeysour2 jpg '),
	(181,'extension',0,'en_us',' jpg '),
	(181,'kind',0,'en_us',' image '),
	(182,'filename',0,'en_us',' wine1 jpg '),
	(182,'extension',0,'en_us',' jpg '),
	(182,'kind',0,'en_us',' image '),
	(183,'filename',0,'en_us',' wine2 jpg '),
	(183,'extension',0,'en_us',' jpg '),
	(183,'kind',0,'en_us',' image '),
	(3,'title',0,'en_us',' amaretto '),
	(3,'slug',0,'en_us',' amaretto '),
	(4,'title',0,'en_us',' apricot brandy '),
	(4,'slug',0,'en_us',' apricot brandy '),
	(5,'title',0,'en_us',' bailey s irish cream '),
	(5,'slug',0,'en_us',' bailey s irish cream '),
	(6,'title',0,'en_us',' bourbon '),
	(6,'slug',0,'en_us',' bourbon '),
	(7,'title',0,'en_us',' whiskey '),
	(7,'slug',0,'en_us',' whiskey '),
	(8,'title',0,'en_us',' cachaca '),
	(8,'slug',0,'en_us',' cachaa '),
	(9,'title',0,'en_us',' champagne '),
	(9,'slug',0,'en_us',' champagne '),
	(10,'title',0,'en_us',' apple schnapps '),
	(10,'slug',0,'en_us',' apple schnapps '),
	(11,'title',0,'en_us',' white rum '),
	(11,'slug',0,'en_us',' white rum '),
	(12,'title',0,'en_us',' blue curacao '),
	(12,'slug',0,'en_us',' blue curaao '),
	(13,'title',0,'en_us',' brandy '),
	(13,'slug',0,'en_us',' brandy '),
	(14,'title',0,'en_us',' campari '),
	(14,'slug',0,'en_us',' campari '),
	(15,'title',0,'en_us',' cherry brandy '),
	(15,'slug',0,'en_us',' cherry brandy '),
	(16,'title',0,'en_us',' cognac '),
	(16,'slug',0,'en_us',' cognac '),
	(17,'title',0,'en_us',' cointreau '),
	(17,'slug',0,'en_us',' cointreau '),
	(18,'title',0,'en_us',' creme de cacao '),
	(18,'slug',0,'en_us',' crme de cacao '),
	(19,'title',0,'en_us',' creme de cassis '),
	(19,'slug',0,'en_us',' crme de cassis '),
	(20,'title',0,'en_us',' creme de yvette '),
	(20,'slug',0,'en_us',' crme de yvette '),
	(21,'title',0,'en_us',' demerara rum '),
	(21,'slug',0,'en_us',' demerara rum '),
	(22,'title',0,'en_us',' drambuie '),
	(22,'slug',0,'en_us',' drambuie '),
	(23,'title',0,'en_us',' white wine '),
	(23,'slug',0,'en_us',' white wine '),
	(24,'title',0,'en_us',' dry vermouth '),
	(24,'slug',0,'en_us',' dry vermouth '),
	(25,'title',0,'en_us',' galliano liqueur '),
	(25,'slug',0,'en_us',' galliano liqueur '),
	(27,'title',0,'en_us',' grand marnier '),
	(27,'slug',0,'en_us',' grand marnier '),
	(28,'title',0,'en_us',' green chartreuse '),
	(28,'slug',0,'en_us',' green chartreuse '),
	(29,'title',0,'en_us',' sweet vermouth '),
	(29,'slug',0,'en_us',' sweet vermouth '),
	(30,'title',0,'en_us',' kahlua '),
	(30,'slug',0,'en_us',' kahla '),
	(31,'title',0,'en_us',' kirsch '),
	(31,'slug',0,'en_us',' kirsch '),
	(32,'title',0,'en_us',' midori '),
	(32,'slug',0,'en_us',' midori '),
	(33,'title',0,'en_us',' peach brandy '),
	(33,'slug',0,'en_us',' peach brandy '),
	(34,'title',0,'en_us',' port '),
	(34,'slug',0,'en_us',' port '),
	(35,'title',0,'en_us',' scotch '),
	(35,'slug',0,'en_us',' scotch '),
	(36,'title',0,'en_us',' sloe gin '),
	(36,'slug',0,'en_us',' sloe gin '),
	(37,'title',0,'en_us',' tequila '),
	(37,'slug',0,'en_us',' tequila '),
	(38,'title',0,'en_us',' triple sec '),
	(38,'slug',0,'en_us',' triple sec '),
	(39,'title',0,'en_us',' vodka '),
	(39,'slug',0,'en_us',' vodka '),
	(40,'title',0,'en_us',' vodka citron '),
	(40,'slug',0,'en_us',' vodka citron '),
	(41,'title',0,'en_us',' yellow chartreuse '),
	(41,'slug',0,'en_us',' yellow chartreuse '),
	(42,'title',0,'en_us',' coconut cream '),
	(42,'slug',0,'en_us',' coconut cream '),
	(43,'title',0,'en_us',' coke '),
	(43,'slug',0,'en_us',' coke '),
	(44,'title',0,'en_us',' cranberry juice '),
	(44,'slug',0,'en_us',' cranberry juice '),
	(45,'title',0,'en_us',' egg yolk '),
	(45,'slug',0,'en_us',' egg yolk '),
	(46,'title',0,'en_us',' cream '),
	(46,'slug',0,'en_us',' cream '),
	(47,'title',0,'en_us',' milk '),
	(47,'slug',0,'en_us',' milk '),
	(48,'title',0,'en_us',' peach puree '),
	(48,'slug',0,'en_us',' peach puree '),
	(49,'title',0,'en_us',' ginger ale '),
	(49,'slug',0,'en_us',' ginger ale '),
	(50,'title',0,'en_us',' gomme syrup '),
	(50,'slug',0,'en_us',' gomme syrup '),
	(51,'title',0,'en_us',' grapefruit '),
	(51,'slug',0,'en_us',' grapefruit '),
	(52,'title',0,'en_us',' grenadine '),
	(52,'slug',0,'en_us',' grenadine '),
	(53,'title',0,'en_us',' iced tea '),
	(53,'slug',0,'en_us',' iced tea '),
	(54,'title',0,'en_us',' lemon juice '),
	(54,'slug',0,'en_us',' lemon juice '),
	(55,'title',0,'en_us',' lime juice '),
	(55,'slug',0,'en_us',' lime juice '),
	(56,'title',0,'en_us',' orange juice '),
	(56,'slug',0,'en_us',' orange juice '),
	(57,'title',0,'en_us',' passion fruit juice '),
	(57,'slug',0,'en_us',' passion fruit juice '),
	(58,'title',0,'en_us',' pineapple juice '),
	(58,'slug',0,'en_us',' pineapple juice '),
	(59,'title',0,'en_us',' club soda '),
	(59,'slug',0,'en_us',' club soda '),
	(60,'title',0,'en_us',' simple syrup '),
	(60,'slug',0,'en_us',' simple syrup '),
	(61,'title',0,'en_us',' sweet sour mix '),
	(61,'slug',0,'en_us',' sweet sour mix '),
	(62,'title',0,'en_us',' tomato juice '),
	(62,'slug',0,'en_us',' tomato juice '),
	(63,'title',0,'en_us',' tonic water '),
	(63,'slug',0,'en_us',' tonic water '),
	(64,'title',0,'en_us',' water '),
	(64,'slug',0,'en_us',' water '),
	(65,'title',0,'en_us',' alexander '),
	(65,'slug',0,'en_us',' alexander '),
	(65,'field',10,'en_us',' the alexander is a gin cocktail consisting of gin chocolate liqueur creme de cacao and cream the most common variation of the alexander is the brandy alexander made with brandy instead of gin similarly a coffee alexander substitutes coffee liqueur such as kahlua for gin and a blue alexander substitutes blue curacao for creme de cacao other variations exist in jack s manual 1910 there is another cocktail called the alexander this is a mixture of rye whisky and benedictine it is unclear whether or not this has any relation to the cream based version '),
	(66,'title',0,'en_us',' americano '),
	(66,'slug',0,'en_us',' americano '),
	(66,'field',10,'en_us',' the americano is an iba official cocktail composed of campari sweet vermouth and club soda the cocktail was first served in creator gaspare campari s bar caffe campari in the 1860s it was originally known as the milano torino because of its ingredients campari the bitter liqueur is from milan and cinzano the vermouth is from turin torino it is popular belief that in the early 1900s the italians noticed a surge of americans who enjoyed the cocktail as a compliment to the americans the cocktail later became known as the americano a more unlikely explanation is that the name was derived from the word amaro which means bitter in italian it is the first drink ordered by james bond in the first novel in ian fleming s series casino royale in the short story from a view to a kill bond chooses an americano as an appropriate drink for a mere cafe suggesting that in cafes you have to drink the least offensive of the musical comedy drinks that go with them bond always stipulates perrier for in his opinion expensive soda water was the cheapest way to improve a poor drink '),
	(67,'title',0,'en_us',' apple martini '),
	(67,'slug',0,'en_us',' apple martini '),
	(67,'field',10,'en_us',' an apple martini appletini for short is a cocktail containing vodka and one or more of apple juice apple cider apple liqueur or apple brandy optionally vermouth may be included as in a regular martini typically the apple vodka is shaken or stirred with a sweet and sour mix and then strained into a cocktail glass a common variation of the appletini is the rumpletini with a light rum in place of the vodka the appletini can also be made with martini bianco in a long drink glass and filled with apple juice '),
	(68,'title',0,'en_us',' b 52 '),
	(68,'slug',0,'en_us',' b 52 '),
	(68,'field',10,'en_us',' the b 52 also b52 or bifi cocktail is a layered shot composed of a coffee liqueur kahlua an irish cream baileys irish cream and a triple sec grand marnier when prepared properly the ingredients separate into three distinctly visible layers the layering is due to the relative densities of the ingredients the name refers to the us b 52 stratofortress long range bomber this bomber was used in the vietnam war for the release of incendiary bombs which likely inspired today s flaming variant of the cocktail another hypothesis centers on b 52 combat losses burns like a b 52 over hanoi one story behind the b 52 is that it was invented by peter fich a head bartender at the banff springs hotel in banff alberta he named all of his new drinks after favourite bands albums and songs this drink was of course named after the band of the same name one of his first customers for a b 52 owned restaurants in various cities in alberta and liked the drink so much that he put it on the menu this is why this the first shooter is commonly believed to originate at the keg steakhouse in calgary alberta in 1977 the b 52 is also rumored to have been created by adam honigman a bartender at new york city s maxwell plum the b 52 s widespread popularity has resulted in many variations each earning a slightly different designation all together the drinks are referred to as the b 50 series of layered cocktails the drink became a north london favourite in late 2009 when arsenal striker nicklas bendtner changed his shirt number from 26 to 52 earning himself the nickname b52 in the process after the tall dane scored the winner in a league cup tie with liverpool on 28 october 2009 local islington bars reported a huge surge in the popularity of the shooter a barmaid at the bailey pub on holloway road recounted a story from the night it was mayhem one lanky bloke ordered shots for the whole bar after he bendtner scored i didn t even know how to make a b52 there are special machines that can prepare a b 52 or other multi layered cocktails in only a few seconds however an experienced bartender usually relies on the traditional hand made preparation this method of the preparation is called building as opposed to blending or shaking thus b 52s are built b 52s are usually served in a shot glass or sherry glass although a heatproof glass is required when a flaming b 52 is served first a coffee liqueur such as tia maria or kahlua is poured into the glass next bailey s irish cream is poured very slowly over the back of a cold bar spoon taking care to avoid disturbing the lower layer as the second liquor is poured on top just as carefully grand marnier is poured atop the irish cream using the bar spoon '),
	(69,'title',0,'en_us',' bacardi cocktail '),
	(69,'slug',0,'en_us',' bacardi cocktail '),
	(69,'field',10,'en_us',' the bacardi cocktail is an iba official cocktail made primarily with bacardi superior it is served as a pre dinner cocktail the bacardi cocktail was originally the same as the daiquiri containing rum lime juice and sugar the grenadine version of the bacardi cocktail originated in the us while the original non red bacardi company recipe originated from cuba '),
	(70,'title',0,'en_us',' banana daiquiri '),
	(70,'slug',0,'en_us',' banana daiquiti '),
	(70,'field',10,'en_us',' the name daiquiri is also the name of a beach near santiago cuba and an iron mine in that area and it is a word of taino origin the daiquiri was supposedly invented by an american mining engineer named jennings cox who happened to be in cuba at the time of the spanish american war originally the drink was served in a tall glass packed with cracked ice a teaspoon of sugar was poured over the ice and the juice of one or two limes was squeezed over the sugar two or three ounces of bacardi rum completed the mixture the glass was then frosted by stirring with a long handled spoon later the daiquiri evolved to be mixed in a shaker with the same ingredients but with shaved ice after a thorough shaking it was poured into a chilled flute glass an article in the march 14 1937 edition of the miami herald as well as private correspondence of j f linthicum one of the american engineers working for the spanish american ore company near the town of daiquiri who was present during the evolution of the recipe both confirm the recipe and early history mr linthicum told his children that the rum came at least in part from the ration provided by the british navy to some of his fellow engineers working at the nearby bauxite mines consumption of the drink remained localized until 1909 when admiral lucius w johnson a u s navy medical officer tried cox s drink johnson subsequently introduced it to the army and navy club in washington d c and drinkers of the daiquiri increased over the space of a few decades the daiquiri was one of the favorite drinks of writer ernest hemingway and president john f kennedy the drink became popular in the 1940s wartime rationing made whiskey vodka etc hard to come by yet because of roosevelt s good neighbor policy which opened up trade and travel relations with latin america cuba and the caribbean rum was easily obtainable the good neighbor policy also known as the pan american program helped make latin america seem fashionable consequently rum based drinks once frowned upon as being the domain of sailors and down and outs also became fashionable and the daiquiri saw a tremendous rise in popularity in the us the basic recipe for a daiquiri is also similar to the grog british sailors drank aboard ship from the 1740s onwards by 1795 the royal navy daily grog ration contained rum water ounce of lemon or lime juice and 2 ounces of sugar this was a common drink across the caribbean and as soon as ice became available this was included instead of the water variations include the banana daiquiri which is the same as a regular daiquiri except half of a banana is placed in the drink '),
	(71,'title',0,'en_us',' bellini '),
	(71,'slug',0,'en_us',' bellini '),
	(71,'field',10,'en_us',' a bellini cocktail is a mixture of prosecco sparkling wine and peach puree originating in venice it is one of italy s most popular long drinks the bellini was invented sometime between 1934 and 1948 by giuseppe cipriani founder of harry s bar in venice italy because of its unique pink color which reminded cipriani of the color of the toga of a saint in a painting by 15th century venetian artist giovanni bellini he named the drink the bellini the drink started as a seasonal specialty at harry s bar a favorite haunt of ernest hemingway sinclair lewis and orson welles later it also became popular at the bar s new york counterpart after an entrepreneurial frenchman set up a business to ship fresh white peach puree to both locations it was a year round favorite today the bellini is an iba official cocktail thus indicating its popularity and making it a well known cocktail to many professional bartenders the bellini consists of pureed white peaches and prosecco an italian sparkling wine marinating fresh peaches in wine is an italian tradition the original recipe was made with a bit of raspberry or cherry juice to give the drink a pink glow due in part to the limited availability of both white peaches and prosecco several variations exist california produces a white peach that works well and yellow peaches or peach nectar can be substituted especially if peaches are out of season and the flavor would be very bland other fruits or even flavored liqueurs peach schnapps for example are sometimes substituted for the peach puree the cipriani family produces bellini base for the signature cocktail of the harry s bar restaurants other sparkling wines are commonly used in place of prosecco though richly flavored french champagne does not pair well with the light fruity flavor of the bellini for a non alcoholic version sparkling juice or seltzer is used in place of the champagne '),
	(72,'title',0,'en_us',' black russian '),
	(72,'slug',0,'en_us',' black russian '),
	(72,'field',10,'en_us',' the black russian is a cocktail of vodka and coffee liqueur it contains either three parts vodka and two parts coffee liqueur per the kahlua bottle s label or five parts vodka to two parts coffee liqueur per iba specified ingredients it is sometimes made with cola in which case it is referred to as a dirty black russian as opposed to clean when without it traditionally the drink is made by pouring the vodka over ice cubes or cracked ice in an old fashioned glass followed by the coffee liqueur this combination first appeared in 1949 and is ascribed to gustave tops a belgian barman who created it at the hotel metropole in brussels in honor of perle mesta then u s ambassador to luxembourg the cocktail owes its name to the use of vodka a stereotypical russian spirit and the blackness of the coffee liqueur '),
	(73,'title',0,'en_us',' bloody mary '),
	(73,'slug',0,'en_us',' bloody mary '),
	(73,'field',10,'en_us',' a bloody mary is a popular cocktail containing vodka tomato juice and usually other spices or flavorings such as worcestershire sauce tabasco sauce piri piri sauce beef consomme or bouillon horseradish celery olive salt black pepper cayenne pepper lemon juice and celery salt it has been called the world s most complex cocktail the bloody mary s origin is unclear fernand petiot claimed to have invented the drink in 1921 while working at the new york bar in paris which later became harry s new york bar a frequent paris hangout for ernest hemingway and other american expatriates two other claims have some plausibility the first is that it was invented in the 1930s at new york s 21 club by a bartender named henry zbikiewicz who was charged with mixing bloody marys a second claim attributes its invention to the comedian george jessel who frequented the 21 club in 1939 lucius beebe printed in his gossip column this new york one of the earliest u s references to this drink along with the original recipe george jessel s newest pick me up which is receiving attention from the town s paragraphers is called a bloody mary half tomato juice half vodka fernand petiot seemed to corroborate jessel s claim when the bartender spoke to the new yorker magazine in july 1964 saying i initiated the bloody mary of today he told us jessel said he created it but it was really nothing but vodka and tomato juice when i took it over i cover the bottom of the shaker with four large dashes of salt two dashes of black pepper two dashes of cayenne pepper and a layer of worcestershire sauce i then add a dash of lemon juice and some cracked ice put in two ounces of vodka and two ounces of thick tomato juice shake strain and pour we serve a hundred to a hundred and fifty bloody marys a day here in the king cole room and in the other restaurants and the banquet rooms the name bloody mary is associated with a number of historical figures particularly queen mary i of england whose 16th century persecution of protestants earned her the nickname and fictional women from folklore some drink aficionados believe the inspiration for the name was hollywood star mary pickford others trace the name to a waitress named mary who worked at a chicago bar called the bucket of blood '),
	(74,'title',0,'en_us',' blue hawaii '),
	(74,'slug',0,'en_us',' blue hawaii '),
	(74,'field',10,'en_us',' the blue hawaii is a tropical cocktail made of rum pineapple juice curacao sweet and sour mix and sometimes vodka as well it should not be confused with the similarly named blue hawaiian cocktail that contains creme of coconut instead of sweet and sour mix the blue hawaii was invented in 1957 by harry yee legendary head bartender of the hilton hawaiian village formerly the kaiser hawaiian village in waikiki hawaii when a sales representative of dutch distiller bols asked him to design a drink that featured their blue color of curacao liqueur after experimenting with several variations he settled on a version somewhat different than the most popular version today but with the signature blue color pineapple wedge and cocktail umbrella the name blue hawaii is related only indirectly to the 1961 elvis presley film of the same name and apparently derives instead from the film s title song a hit composed by leo robin for the 1937 bing crosby film waikiki wedding it was yee who named the drink which along with the films and songs many other tropical drinks he invented and tiki bars such as trader vic did much to popularize a faux hawaiian tiki culture both in hawaii itself and on the mainland the era was immediately pre statehood a time when hawaii was thought of by most americans as playground for the rich tourism and development was already significant but all centered around waikiki and at only a small fraction of today s levels about 100 000 visitors per year then compared to seven million today a blue hawaii is typically served on the rocks as with most tropical drinks there are many variations in preparation presentation and ingredients hence it is often blended with ice margarita like to be served as a frozen cocktail many variations of glassware are used the more whimsical the better tiki mugs cocktail glasses parfait glasses or carved out coconuts or pineapples the base liquor is usually light rum but vodka may be partially or completely substituted as a matter of taste similarly a flavored rum or vodka such as malibu rum may eliminate the need for creme of coconut or the coconut flavor may be omitted entirely coconut milk a very different product should not be used even the pineapple juice is sometimes left out in favor of sour mix the only constant in fact is the name and the blue curacao because it is easy and inexpensive to make it is often served as a punch at its simplest it is a bottle or two of plain or coconut flavored light rum a bottle of blue curacao a can of pineapple juice and a bag of ice mixed together in a punchbowl the blue hawaii is seasonal often considered a summer or warm weather drink occasionally because it contains yellow pineapple juice the blue hawaii will have a green coloration instead '),
	(75,'title',0,'en_us',' brandy alexander '),
	(75,'slug',0,'en_us',' brandy alexander '),
	(76,'title',0,'en_us',' brandy egg nog '),
	(76,'slug',0,'en_us',' brandy egg nog '),
	(77,'title',0,'en_us',' bronx '),
	(77,'slug',0,'en_us',' bronx '),
	(78,'title',0,'en_us',' mimosa '),
	(78,'slug',0,'en_us',' mimosa '),
	(78,'field',8,'en_us',' champagne orange juice '),
	(78,'field',14,'en_us',''),
	(78,'field',10,'en_us',''),
	(79,'field',6,'en_us',''),
	(79,'field',8,'en_us',''),
	(79,'title',0,'en_us',' caipirinha '),
	(79,'slug',0,'en_us',' caipirinha '),
	(80,'title',0,'en_us',' champagne cooler '),
	(80,'slug',0,'en_us',' champagne cooler '),
	(81,'title',0,'en_us',' christmas cocktail '),
	(81,'slug',0,'en_us',' christmas cocktail '),
	(82,'title',0,'en_us',' cosmopolitan '),
	(82,'slug',0,'en_us',' cosmopolitan '),
	(83,'title',0,'en_us',' cuba libre '),
	(83,'slug',0,'en_us',' cuba libre '),
	(84,'title',0,'en_us',' daiquiri '),
	(84,'slug',0,'en_us',' daiquiri '),
	(85,'title',0,'en_us',' french connection '),
	(85,'slug',0,'en_us',' french connection '),
	(86,'title',0,'en_us',' gibson '),
	(86,'slug',0,'en_us',' gibson '),
	(87,'title',0,'en_us',' gimlet '),
	(87,'slug',0,'en_us',' gimlet '),
	(89,'title',0,'en_us',' gin fizz '),
	(89,'slug',0,'en_us',' gin fizz '),
	(90,'title',0,'en_us',' gin rickey '),
	(90,'slug',0,'en_us',' gin rickey '),
	(91,'title',0,'en_us',' godfather '),
	(91,'slug',0,'en_us',' godfather '),
	(92,'title',0,'en_us',' godmother '),
	(92,'slug',0,'en_us',' godmother '),
	(93,'title',0,'en_us',' golden cadillac '),
	(93,'slug',0,'en_us',' golden cadillac '),
	(94,'title',0,'en_us',' harvey wallbanger '),
	(94,'slug',0,'en_us',' harvey wallbanger '),
	(95,'title',0,'en_us',' horse s neck '),
	(95,'slug',0,'en_us',' horse s neck '),
	(96,'title',0,'en_us',' ice pick '),
	(96,'slug',0,'en_us',' ice pick '),
	(97,'title',0,'en_us',' japanese slipper '),
	(97,'slug',0,'en_us',' japanese slipper '),
	(98,'title',0,'en_us',' john collins '),
	(98,'slug',0,'en_us',' john collins '),
	(99,'title',0,'en_us',' kamikaze '),
	(99,'slug',0,'en_us',' kamikaze '),
	(100,'title',0,'en_us',' kir '),
	(100,'slug',0,'en_us',' kir '),
	(101,'title',0,'en_us',' kir royale '),
	(101,'slug',0,'en_us',' kir royale '),
	(102,'title',0,'en_us',' long island iced tea '),
	(102,'slug',0,'en_us',' long island iced tea '),
	(103,'title',0,'en_us',' manhattan '),
	(103,'slug',0,'en_us',' manhattan '),
	(104,'title',0,'en_us',' margarita '),
	(104,'slug',0,'en_us',' margarita '),
	(105,'title',0,'en_us',' martini '),
	(105,'slug',0,'en_us',' martini '),
	(106,'title',0,'en_us',' negroni '),
	(106,'slug',0,'en_us',' negroni '),
	(107,'title',0,'en_us',' pina colada '),
	(107,'slug',0,'en_us',' pina colada '),
	(108,'title',0,'en_us',' porto flip '),
	(108,'slug',0,'en_us',' porto flip '),
	(109,'title',0,'en_us',' rob roy '),
	(109,'slug',0,'en_us',' rob roy '),
	(110,'title',0,'en_us',' rusty nail '),
	(110,'slug',0,'en_us',' rusty nail '),
	(111,'title',0,'en_us',' salty dog '),
	(111,'slug',0,'en_us',' salty dog '),
	(111,'field',10,'en_us',' salty dogs are great '),
	(111,'field',8,'en_us',' grapefruit vodka '),
	(111,'field',14,'en_us',''),
	(112,'field',6,'en_us',''),
	(112,'field',8,'en_us',''),
	(112,'title',0,'en_us',' screwdriver '),
	(112,'slug',0,'en_us',' screwdriver '),
	(113,'title',0,'en_us',' sex on the beach '),
	(113,'slug',0,'en_us',' sex on the beach '),
	(114,'title',0,'en_us',' singapore sling '),
	(114,'slug',0,'en_us',' singapore sling '),
	(115,'title',0,'en_us',' tequila sunrise '),
	(115,'slug',0,'en_us',' tequila sunrise '),
	(116,'title',0,'en_us',' whiskey sour '),
	(116,'slug',0,'en_us',' whiskey sour '),
	(116,'field',10,'en_us',' the whiskey sour is a mixed drink containing whiskey often bourbon lemon juice sugar and optionally a dash of egg white to make it a boston sour it is shaken and served either straight or over ice the traditional garnish is half an orange slice and a maraschino cherry a notable variant of the whiskey sour is the ward 8 which often is based either in bourbon or rye whiskey with both lemon and orange juices and grenadine syrup as the sweetener the egg white sometimes employed in other whiskey sours is generally not included in this variation in 1962 the universidad del cuyo published a story which cited a peruvian newspaper called el comercio de iquique as indicating that eliott stubb created the whisky sour in 1872 el comercio de iquique was published by modesto molina between 1874 and 1879 however the oldest historical mention of a whisky sour prepared in the world comes from a newspaper published in wisconsin in 1870 '),
	(117,'title',0,'en_us',' white russian '),
	(117,'slug',0,'en_us',' white russian '),
	(117,'field',10,'en_us',' description '),
	(117,'field',8,'en_us',' vodka '),
	(117,'field',14,'en_us',''),
	(118,'title',0,'en_us',' beer '),
	(118,'slug',0,'en_us',' beer '),
	(119,'title',0,'en_us',' irish whiskey '),
	(119,'slug',0,'en_us',' irish whiskey '),
	(120,'title',0,'en_us',' red wine '),
	(120,'slug',0,'en_us',' red wine '),
	(121,'title',0,'en_us',' espresso '),
	(121,'slug',0,'en_us',' espresso '),
	(122,'title',0,'en_us',' espresso martini '),
	(122,'slug',0,'en_us',' espresso martini '),
	(122,'field',10,'en_us',' the martini is a cocktail made with gin and vermouth and garnished with an olive or a lemon twist over the years the martini has become one of the best known mixed alcoholic beverages h l mencken called the martini the only american invention as perfect as the sonnet and e b white called it the elixir of quietude pouring all ingredients into a mixing glass with ice cubes the ingredients are mixed then strained and served straight up without ice in a chilled cocktail glass and garnished with either a green olive or a twist of lemon a strip of the peel usually squeezed or twisted to express volatile oils onto the surface of the drink citation needed a martini may also be made on the rocks that is with the ingredients poured over ice cubes and served in an old fashioned glass although there are many variations in modern practice the standard martini is a mix of gin coupled with dry vermouth usually in a five to one ratio shaker mixing is common due to influences of popular culture notably the fictional spy james bond who sometimes asked for his vodka martini to be shaken not stirred however stirring has a long history harry craddock s savoy cocktail book 1930 prescribes stirring for all its martini recipes somerset maugham s opinion was that a martini should always be stirred not shaken so that the molecules lie sensuously on top of one another noel coward suggested that a perfect martini should be made by filling a glass with gin then waving it in the general direction of italy which along with france is a major producer of vermouth luis bunuel considered it enough to hold up a glass of gin next to a bottle of vermouth and let a beam of sunlight pass through winston churchill was said to whisper the word vermouth to a freshly poured glass of gin dorothy parker expressed her opinion i like to have a martini two at the very most three i m under the table four i m under my host the martini was originally made with sweet vermouth a person who wanted a dry martini asked for one made with white vermouth until world war ii the standard proportion was 1 part vermouth to 3 to 3 parts gin these days the dryness of a martini refers to the amount of vermouth used in the drink with a very dry martini having little or none conversely a wet martini has a significant amount of vermouth added a dirty martini contains a splash of olive brine or olive juice if you prefer cocktail onion on skewer instead of olives in your martini you would order a gibson other people bypass the gin completely and use vodka instead creating a kangaroo cocktail or vodka martini the exact origin of the martini is unclear numerous cocktails with names and ingredients similar to the modern day martini were first seen in bartending guides of the late 19th century for example in the 1888 bartender s manual there was a recipe for a drink that consisted of half a wine glass of old tom gin and a half a wine glass of vermouth in 1863 an italian vermouth maker started marketing their product under the brand name of martini this product is still available today although it is now better known as martini rossi another popular theory suggests it evolved from a cocktail called the martinez served at the occidental hotel in san francisco sometime in the early 1860s which people frequented before taking an evening ferry to the nearby town of martinez alternatively the people of martinez say the drink was first created by a bartender in their town another theory links the first dry martini to the name of a bartender who concocted the drink at the knickerbocker hotel in new york city in 1911 or 1912 the self styled court of historical review in san francisco ruled that the martini was invented in san francisco a court in martinez california recently overturned this decision these courts have neither legal nor academic authority and are primarily for entertainment but it was prohibition and the relative ease of illegal gin manufacture that led to the martini s rise as the predominant cocktail of the mid 20th century in the united states with the repeal of prohibition and the ready availability of quality gin the drink became progressively dryer in the 1970s and 80s the martini came to be seen as old fashioned and was replaced by more intricate cocktails and wine spritzers but the mid 1990s saw a resurgence in the drink and an explosion of new versions some newer drinks include the word martini or the suffix tini in the name e g appletini peach martini chocolate martini espresso martini these are named after the martini cocktail glass they use and generally contain vodka like the kangaroo cocktail but share little else with the drink '),
	(122,'field',8,'en_us',' espresso '),
	(122,'field',14,'en_us',''),
	(123,'title',0,'en_us',' mojito '),
	(123,'slug',0,'en_us',' mojito '),
	(123,'field',10,'en_us',' traditionally a mojito is a cocktail that consists of five ingredients white rum sugar traditionally sugar cane juice lime juice sparkling water and mint the original cuban recipe uses spearmint or yerba buena a mint variety very popular on the island its combination of sweetness refreshing citrus and mint flavors is intended to complement the potent kick of the rum and have made this clear highball a popular summer drink the cocktail has a relatively low alcohol content about 10 percent alcohol by volume when preparing a mojito lime juice is added to sugar or syrup and mint leaves the mixture is then gently mashed with a muddler the mint leaves should only be bruised to release the essential oils and should not be shredded then rum is added and the mixture is briefly stirred to dissolve the sugar and to lift the mint leaves up from the bottom for better presentation finally the drink is topped with whole ice cubes and sparkling soda water mint leaves and lime wedges are used to garnish the glass the mojito is one of the most famous rum based highballs there are several versions of the mojito cuba is the birthplace of the mojito although the exact origin of this classic cocktail is the subject of debate one story traces the mojito to a similar 19th century drink known as el draque after francis drake it was made initially with tafia aguardiente a primitive predecessor of rum but rum was used as soon as it became widely available to the british ca 1650 mint lime and sugar were also helpful in hiding the harsh taste of this spirit while this drink was not called a mojito at this time it was still the original combination of these ingredients some historians contend that african slaves who worked in the cuban sugar cane fields during the 19th century were instrumental in the cocktail s origin guarapo the sugar cane juice often used in mojitos was a popular drink amongst the slaves who helped coin the name of the sweet nectar there are several theories behind the origin of the name mojito one such theory holds that name relates to mojo a cuban seasoning made from lime and used to flavour dishes another theory is that the name mojito is simply a derivative of mojadito spanish for a little wet or simply the diminutive of mojado wet due to the vast influence of immigration from the canary islands the term probably came from the mojo creole marinades adapted in cuba using citrus vs traditional isleno types in the us marine corps there is a drink called mojo derived from mixing any liquor you have and fresh fruits oranges lemons etc and is called mojo the mojito was a favorite drink of author ernest hemingway ernest hemingway made the bar called la bodeguita del medio famous as he became one of its regulars and he wrote my mojito in la bodeguita my daiquiri in el floridita this expression in english can still be read on the wall of the bar today in his handwriting '),
	(123,'field',8,'en_us',' white rum lime juice club soda '),
	(123,'field',14,'en_us',''),
	(124,'field',6,'en_us',''),
	(125,'field',6,'en_us',''),
	(124,'title',0,'en_us',' midori splice '),
	(124,'slug',0,'en_us',' midori splice '),
	(124,'field',10,'en_us',' to splice something means to join or unite it with something else and the midori splice does exactly that achieving a perfectly balanced union of coconut flavored rum pineapple juice and cream it takes the same flavors from the midori pina colada and rounds them into a slightly milder finish in flair bartending circles the same drink is known as an alien secretion made in a blender and served in a beer mug the midori splice can also be great for a party trick '),
	(124,'field',8,'en_us',' vodka '),
	(124,'field',14,'en_us',''),
	(125,'title',0,'en_us',' mai kai martini '),
	(125,'slug',0,'en_us',' mai kai martini '),
	(125,'field',10,'en_us',' combine the pineapple juice blue curacao vodka rum vermouth and lime wedge in a shaker shake for 1 minute serve cold repeat for additional servings '),
	(125,'field',8,'en_us',' brandy '),
	(125,'field',14,'en_us',''),
	(184,'title',0,'en_us',' gin and tonic '),
	(184,'slug',0,'en_us',' gin and tonic '),
	(184,'field',14,'en_us',' a5c051 '),
	(185,'title',0,'en_us',' hey '),
	(185,'slug',0,'en_us',' hey '),
	(185,'field',5,'en_us',' hey '),
	(184,'field',6,'en_us',' ginandtonic2 ginandtonic1 ginandtonic3 '),
	(130,'fullname',0,'en_us',''),
	(130,'slug',0,'en_us',''),
	(184,'field',8,'en_us',' gin tonic water '),
	(157,'slug',0,'en_us',''),
	(130,'firstname',0,'en_us',''),
	(130,'lastname',0,'en_us',''),
	(184,'field',10,'en_us',' a gin and tonic is a highball cocktail made with gin and tonic water poured over ice it is usually garnished with a slice or wedge of lime the amount of gin varies according to taste suggested ratios of gin to tonic are 1 1 1 2 1 3 and 2 3 '),
	(1,'field',1,'en_us',' tales from the cocktail '),
	(1,'field',2,'en_us',' welcome to on the rocks a breathtaking adventure through a craft demo site '),
	(157,'field',13,'en_us',' on the rocks is a demo site built with craft '),
	(130,'username',0,'en_us',' admin '),
	(130,'email',0,'en_us',' support buildwithcraft com '),
	(186,'slug',0,'en_us',' homepage '),
	(186,'title',0,'en_us',' homepage '),
	(186,'field',1,'en_us',' tales from the cocktail '),
	(186,'field',2,'en_us',' welcome to on the rocks a breathtaking adventure through a craft demo site '),
	(159,'slug',0,'en_us',''),
	(159,'title',0,'en_us',' beer1 '),
	(160,'slug',0,'en_us',''),
	(160,'title',0,'en_us',' champagne '),
	(161,'slug',0,'en_us',''),
	(161,'title',0,'en_us',' beer3 '),
	(162,'slug',0,'en_us',''),
	(162,'title',0,'en_us',' beer2 '),
	(163,'slug',0,'en_us',''),
	(163,'title',0,'en_us',' champagnewithstrawberry '),
	(164,'slug',0,'en_us',''),
	(164,'title',0,'en_us',' cosmopolitan '),
	(165,'slug',0,'en_us',''),
	(165,'title',0,'en_us',' espressomartini1 '),
	(166,'slug',0,'en_us',''),
	(166,'title',0,'en_us',' espressomartini2 '),
	(167,'slug',0,'en_us',''),
	(167,'title',0,'en_us',' ginandtonic1 '),
	(168,'slug',0,'en_us',''),
	(168,'title',0,'en_us',' ginandtonic2 '),
	(169,'slug',0,'en_us',''),
	(169,'title',0,'en_us',' ginandtonic3 '),
	(170,'slug',0,'en_us',''),
	(170,'title',0,'en_us',' maikaimartini1 '),
	(171,'slug',0,'en_us',''),
	(171,'title',0,'en_us',' maikaimartini2 '),
	(172,'slug',0,'en_us',''),
	(172,'title',0,'en_us',' mojito '),
	(173,'slug',0,'en_us',''),
	(173,'title',0,'en_us',' shots '),
	(174,'slug',0,'en_us',''),
	(174,'title',0,'en_us',' tahoedrink '),
	(175,'slug',0,'en_us',''),
	(175,'title',0,'en_us',' tequila '),
	(176,'slug',0,'en_us',''),
	(176,'title',0,'en_us',' vodka '),
	(177,'slug',0,'en_us',''),
	(177,'title',0,'en_us',' vodkamidorisplice '),
	(178,'slug',0,'en_us',''),
	(178,'title',0,'en_us',' whiskey1 '),
	(179,'slug',0,'en_us',''),
	(179,'title',0,'en_us',' whiskey2 '),
	(180,'slug',0,'en_us',''),
	(180,'title',0,'en_us',' whiskeysour1 '),
	(181,'slug',0,'en_us',''),
	(181,'title',0,'en_us',' whiskeysour2 '),
	(182,'slug',0,'en_us',''),
	(182,'title',0,'en_us',' wine1 '),
	(183,'slug',0,'en_us',''),
	(183,'title',0,'en_us',' wine2 '),
	(3,'field',10,'en_us',''),
	(3,'field',6,'en_us',''),
	(4,'field',10,'en_us',''),
	(4,'field',6,'en_us',''),
	(5,'field',10,'en_us',''),
	(5,'field',6,'en_us',''),
	(6,'field',10,'en_us',''),
	(6,'field',6,'en_us',''),
	(7,'field',10,'en_us',''),
	(7,'field',6,'en_us',''),
	(8,'field',10,'en_us',''),
	(8,'field',6,'en_us',''),
	(9,'field',10,'en_us',''),
	(9,'field',6,'en_us',''),
	(10,'field',10,'en_us',''),
	(10,'field',6,'en_us',''),
	(11,'field',10,'en_us',''),
	(11,'field',6,'en_us',''),
	(12,'field',10,'en_us',''),
	(12,'field',6,'en_us',''),
	(13,'field',10,'en_us',''),
	(13,'field',6,'en_us',''),
	(14,'field',10,'en_us',''),
	(14,'field',6,'en_us',''),
	(15,'field',10,'en_us',''),
	(15,'field',6,'en_us',''),
	(16,'field',10,'en_us',''),
	(16,'field',6,'en_us',''),
	(17,'field',10,'en_us',''),
	(17,'field',6,'en_us',''),
	(18,'field',10,'en_us',''),
	(18,'field',6,'en_us',''),
	(19,'field',10,'en_us',''),
	(19,'field',6,'en_us',''),
	(20,'field',10,'en_us',''),
	(20,'field',6,'en_us',''),
	(21,'field',10,'en_us',''),
	(21,'field',6,'en_us',''),
	(22,'field',10,'en_us',''),
	(22,'field',6,'en_us',''),
	(23,'field',10,'en_us',''),
	(23,'field',6,'en_us',''),
	(24,'field',10,'en_us',''),
	(24,'field',6,'en_us',''),
	(25,'field',10,'en_us',''),
	(25,'field',6,'en_us',''),
	(26,'field',6,'en_us',''),
	(27,'field',10,'en_us',''),
	(27,'field',6,'en_us',''),
	(28,'field',10,'en_us',''),
	(28,'field',6,'en_us',''),
	(29,'field',10,'en_us',''),
	(29,'field',6,'en_us',''),
	(30,'field',10,'en_us',''),
	(30,'field',6,'en_us',''),
	(31,'field',10,'en_us',''),
	(31,'field',6,'en_us',''),
	(32,'field',10,'en_us',''),
	(32,'field',6,'en_us',''),
	(33,'field',10,'en_us',''),
	(33,'field',6,'en_us',''),
	(34,'field',10,'en_us',''),
	(34,'field',6,'en_us',''),
	(35,'field',10,'en_us',''),
	(35,'field',6,'en_us',''),
	(36,'field',10,'en_us',''),
	(36,'field',6,'en_us',''),
	(37,'field',10,'en_us',''),
	(37,'field',6,'en_us',''),
	(38,'field',10,'en_us',''),
	(38,'field',6,'en_us',''),
	(39,'field',10,'en_us',''),
	(39,'field',6,'en_us',''),
	(40,'field',10,'en_us',''),
	(40,'field',6,'en_us',''),
	(41,'field',10,'en_us',''),
	(41,'field',6,'en_us',''),
	(42,'field',10,'en_us',''),
	(42,'field',6,'en_us',''),
	(43,'field',10,'en_us',''),
	(43,'field',6,'en_us',''),
	(44,'field',10,'en_us',''),
	(44,'field',6,'en_us',''),
	(45,'field',10,'en_us',''),
	(45,'field',6,'en_us',''),
	(46,'field',10,'en_us',''),
	(46,'field',6,'en_us',''),
	(47,'field',10,'en_us',''),
	(47,'field',6,'en_us',''),
	(48,'field',10,'en_us',''),
	(48,'field',6,'en_us',''),
	(49,'field',10,'en_us',''),
	(49,'field',6,'en_us',''),
	(50,'field',10,'en_us',''),
	(50,'field',6,'en_us',''),
	(51,'field',10,'en_us',''),
	(51,'field',6,'en_us',''),
	(52,'field',10,'en_us',''),
	(52,'field',6,'en_us',''),
	(53,'field',10,'en_us',''),
	(53,'field',6,'en_us',''),
	(54,'field',10,'en_us',''),
	(54,'field',6,'en_us',''),
	(55,'field',10,'en_us',''),
	(55,'field',6,'en_us',''),
	(56,'field',10,'en_us',''),
	(56,'field',6,'en_us',''),
	(57,'field',10,'en_us',''),
	(57,'field',6,'en_us',''),
	(58,'field',10,'en_us',''),
	(58,'field',6,'en_us',''),
	(59,'field',10,'en_us',''),
	(59,'field',6,'en_us',''),
	(60,'field',10,'en_us',''),
	(60,'field',6,'en_us',''),
	(61,'field',10,'en_us',''),
	(61,'field',6,'en_us',''),
	(62,'field',10,'en_us',''),
	(62,'field',6,'en_us',''),
	(63,'field',10,'en_us',''),
	(63,'field',6,'en_us',''),
	(64,'field',10,'en_us',''),
	(64,'field',6,'en_us',''),
	(65,'field',6,'en_us',''),
	(65,'field',8,'en_us',''),
	(65,'field',14,'en_us',''),
	(66,'field',6,'en_us',''),
	(66,'field',8,'en_us',''),
	(66,'field',14,'en_us',''),
	(67,'field',6,'en_us',''),
	(67,'field',8,'en_us',''),
	(67,'field',14,'en_us',''),
	(68,'field',6,'en_us',''),
	(68,'field',8,'en_us',''),
	(68,'field',14,'en_us',''),
	(69,'field',6,'en_us',''),
	(69,'field',8,'en_us',''),
	(69,'field',14,'en_us',''),
	(70,'field',6,'en_us',''),
	(70,'field',8,'en_us',''),
	(70,'field',14,'en_us',''),
	(71,'field',6,'en_us',''),
	(71,'field',8,'en_us',''),
	(71,'field',14,'en_us',''),
	(72,'field',6,'en_us',''),
	(72,'field',8,'en_us',''),
	(72,'field',14,'en_us',''),
	(73,'field',6,'en_us',''),
	(73,'field',8,'en_us',''),
	(73,'field',14,'en_us',''),
	(74,'field',6,'en_us',''),
	(74,'field',8,'en_us',''),
	(74,'field',14,'en_us',''),
	(75,'field',6,'en_us',''),
	(75,'field',8,'en_us',''),
	(75,'field',14,'en_us',''),
	(75,'field',10,'en_us',''),
	(76,'field',6,'en_us',''),
	(76,'field',8,'en_us',''),
	(76,'field',14,'en_us',''),
	(76,'field',10,'en_us',''),
	(77,'field',6,'en_us',''),
	(77,'field',8,'en_us',''),
	(77,'field',14,'en_us',''),
	(77,'field',10,'en_us',''),
	(78,'field',6,'en_us',''),
	(79,'field',14,'en_us',''),
	(79,'field',10,'en_us',''),
	(80,'field',6,'en_us',''),
	(80,'field',8,'en_us',''),
	(80,'field',14,'en_us',''),
	(80,'field',10,'en_us',''),
	(81,'field',6,'en_us',''),
	(81,'field',8,'en_us',''),
	(81,'field',14,'en_us',''),
	(81,'field',10,'en_us',''),
	(82,'field',6,'en_us',''),
	(82,'field',8,'en_us',''),
	(82,'field',14,'en_us',''),
	(82,'field',10,'en_us',''),
	(83,'field',6,'en_us',''),
	(83,'field',8,'en_us',''),
	(83,'field',14,'en_us',''),
	(83,'field',10,'en_us',''),
	(84,'field',6,'en_us',''),
	(84,'field',8,'en_us',''),
	(84,'field',14,'en_us',''),
	(84,'field',10,'en_us',''),
	(85,'field',6,'en_us',''),
	(85,'field',8,'en_us',''),
	(85,'field',14,'en_us',''),
	(85,'field',10,'en_us',''),
	(86,'field',6,'en_us',''),
	(86,'field',8,'en_us',''),
	(86,'field',14,'en_us',''),
	(86,'field',10,'en_us',''),
	(87,'field',6,'en_us',''),
	(87,'field',8,'en_us',''),
	(87,'field',14,'en_us',''),
	(87,'field',10,'en_us',''),
	(88,'field',6,'en_us',''),
	(88,'field',8,'en_us',''),
	(88,'field',14,'en_us',''),
	(88,'field',10,'en_us',''),
	(88,'slug',0,'en_us',''),
	(88,'title',0,'en_us',' entry 88 '),
	(89,'field',6,'en_us',''),
	(89,'field',8,'en_us',''),
	(89,'field',14,'en_us',''),
	(89,'field',10,'en_us',''),
	(90,'field',6,'en_us',''),
	(90,'field',8,'en_us',''),
	(90,'field',14,'en_us',''),
	(90,'field',10,'en_us',''),
	(91,'field',6,'en_us',''),
	(91,'field',8,'en_us',''),
	(91,'field',14,'en_us',''),
	(91,'field',10,'en_us',''),
	(92,'field',6,'en_us',''),
	(92,'field',8,'en_us',''),
	(92,'field',14,'en_us',''),
	(92,'field',10,'en_us',''),
	(93,'field',6,'en_us',''),
	(93,'field',8,'en_us',''),
	(93,'field',14,'en_us',''),
	(93,'field',10,'en_us',''),
	(94,'field',6,'en_us',''),
	(94,'field',8,'en_us',''),
	(94,'field',14,'en_us',''),
	(94,'field',10,'en_us',''),
	(95,'field',6,'en_us',''),
	(95,'field',8,'en_us',''),
	(95,'field',14,'en_us',''),
	(95,'field',10,'en_us',''),
	(96,'field',6,'en_us',''),
	(96,'field',8,'en_us',''),
	(96,'field',14,'en_us',''),
	(96,'field',10,'en_us',''),
	(97,'field',6,'en_us',''),
	(97,'field',8,'en_us',''),
	(97,'field',14,'en_us',''),
	(97,'field',10,'en_us',''),
	(98,'field',6,'en_us',''),
	(98,'field',8,'en_us',''),
	(98,'field',14,'en_us',''),
	(98,'field',10,'en_us',''),
	(99,'field',6,'en_us',''),
	(99,'field',8,'en_us',''),
	(99,'field',14,'en_us',''),
	(99,'field',10,'en_us',''),
	(100,'field',6,'en_us',''),
	(100,'field',8,'en_us',''),
	(100,'field',14,'en_us',''),
	(100,'field',10,'en_us',''),
	(101,'field',6,'en_us',''),
	(101,'field',8,'en_us',''),
	(101,'field',14,'en_us',''),
	(101,'field',10,'en_us',''),
	(102,'field',6,'en_us',''),
	(102,'field',8,'en_us',''),
	(102,'field',14,'en_us',''),
	(102,'field',10,'en_us',''),
	(103,'field',6,'en_us',''),
	(103,'field',8,'en_us',''),
	(103,'field',14,'en_us',''),
	(103,'field',10,'en_us',''),
	(104,'field',6,'en_us',''),
	(104,'field',8,'en_us',''),
	(104,'field',14,'en_us',''),
	(104,'field',10,'en_us',''),
	(105,'field',6,'en_us',''),
	(105,'field',8,'en_us',''),
	(105,'field',14,'en_us',''),
	(105,'field',10,'en_us',''),
	(106,'field',6,'en_us',''),
	(106,'field',8,'en_us',''),
	(106,'field',14,'en_us',''),
	(106,'field',10,'en_us',''),
	(107,'field',6,'en_us',''),
	(107,'field',8,'en_us',''),
	(107,'field',14,'en_us',''),
	(107,'field',10,'en_us',''),
	(108,'field',6,'en_us',''),
	(108,'field',8,'en_us',''),
	(108,'field',14,'en_us',''),
	(108,'field',10,'en_us',''),
	(109,'field',6,'en_us',''),
	(109,'field',8,'en_us',''),
	(109,'field',14,'en_us',''),
	(109,'field',10,'en_us',''),
	(110,'field',6,'en_us',''),
	(110,'field',8,'en_us',''),
	(110,'field',14,'en_us',''),
	(110,'field',10,'en_us',''),
	(111,'field',6,'en_us',''),
	(112,'field',14,'en_us',''),
	(112,'field',10,'en_us',''),
	(113,'field',6,'en_us',''),
	(113,'field',8,'en_us',''),
	(113,'field',14,'en_us',''),
	(113,'field',10,'en_us',''),
	(114,'field',6,'en_us',''),
	(114,'field',8,'en_us',''),
	(114,'field',14,'en_us',''),
	(114,'field',10,'en_us',''),
	(115,'field',6,'en_us',''),
	(115,'field',8,'en_us',''),
	(115,'field',14,'en_us',''),
	(115,'field',10,'en_us',''),
	(116,'field',6,'en_us',''),
	(116,'field',8,'en_us',''),
	(116,'field',14,'en_us',''),
	(117,'field',6,'en_us',''),
	(118,'field',10,'en_us',''),
	(118,'field',6,'en_us',''),
	(119,'field',10,'en_us',''),
	(119,'field',6,'en_us',''),
	(120,'field',10,'en_us',''),
	(120,'field',6,'en_us',''),
	(121,'field',10,'en_us',''),
	(121,'field',6,'en_us',''),
	(122,'field',6,'en_us',''),
	(123,'field',6,'en_us','');

/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections`;

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  KEY `craft_sections_structureId_fk` (`structureId`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'Blog','blog','channel',1,'blog/_entry',1,'2012-10-12 19:24:30','2014-09-24 17:30:50','c651e939-5d0b-4bdb-bc0d-9c372389eafc'),
	(2,NULL,'Ingredients','ingredients','channel',1,'ingredients/_entry',1,'2012-10-12 19:25:06','2014-09-24 17:30:50','3699243a-bb14-4059-ae3f-595a6d476b24'),
	(3,NULL,'Cocktails','cocktails','channel',1,'cocktails/_entry',1,'2012-10-12 19:26:20','2014-09-24 17:30:50','3516f9f0-262a-4682-9fcd-077757fc22da'),
	(4,NULL,'Homepage','homepage','single',1,'index',1,'2013-09-23 13:16:31','2014-09-24 17:30:50','4b6b1833-0b3c-4f45-9ec9-c4b51abeba6a');

/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections_i18n`;

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) DEFAULT '1',
  `urlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nestedUrlFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_sections_i18n` WRITE;
/*!40000 ALTER TABLE `craft_sections_i18n` DISABLE KEYS */;

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en_us',1,'blog/{slug}',NULL,'2013-02-23 00:15:02','2013-02-23 00:15:02','80d68b73-9872-4e44-853f-f56f7520ccf5'),
	(2,2,'en_us',1,'ingredients/{slug}',NULL,'2013-02-23 00:15:02','2013-02-23 00:15:02','0cd6f153-303b-4383-a9bc-26db689581ce'),
	(3,3,'en_us',1,'cocktails/{slug}',NULL,'2013-02-23 00:15:02','2013-02-23 00:15:02','f79bb555-4c2e-48af-8714-66d82409348b'),
	(4,4,'en_us',1,'__home__',NULL,'2013-09-23 13:16:31','2013-09-23 13:16:31','4d5f874a-7209-42a9-9956-90039358bc31');

/*!40000 ALTER TABLE `craft_sections_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sessions`;

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# Dump of table craft_shunnedmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_shunnedmessages`;

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_structureelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structureelements`;

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(10) unsigned DEFAULT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_structures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structures`;

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `movePermission` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_systemsettings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_systemsettings`;

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_systemsettings` WRITE;
/*!40000 ALTER TABLE `craft_systemsettings` DISABLE KEYS */;

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'email','{\"protocol\":\"php\",\"emailAddress\":\"support@buildwithcraft.com\",\"senderName\":\"On the Rocks\",\"template\":\"\"}','2012-10-12 19:24:30','2013-03-19 23:08:02','9dd1f5ee-4f0b-4676-bd73-a794c652a288'),
	(2,'users','{\"allowPublicRegistration\":true}','2013-03-19 23:46:34','2013-03-19 23:46:34','e0b084c0-e090-42cd-9ab7-f1bdb2797c1c');

/*!40000 ALTER TABLE `craft_systemsettings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_taggroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_taggroups`;

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Default','default',NULL,'2013-09-23 13:11:53','2013-09-23 13:11:53','46bf0aad-36be-4b08-95b6-dbb4a1185a84');

/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tags`;

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tags_groupId_name_unq_idx` (`groupId`,`name`),
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# Dump of table craft_tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tasks`;

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecachecriteria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecachecriteria`;

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`),
  CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecacheelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecacheelements`;

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecaches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecaches`;

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_expiryDate_cacheKey_locale_path_idx` (`expiryDate`,`cacheKey`,`locale`,`path`),
  KEY `craft_templatecaches_locale_fk` (`locale`),
  CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tokens`;

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups`;

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# Dump of table craft_usergroups_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups_users`;

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# Dump of table craft_userpermissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions`;

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_userpermissions_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_userpermissions_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_users`;

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_users`;

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) NOT NULL,
  `status` enum('locked','suspended','pending','active','archived') COLLATE utf8_unicode_ci DEFAULT 'pending',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `admin`, `client`, `status`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(130,'admin',NULL,'','','support@buildwithcraft.com','$2a$08$4YI.LHEoHtlNxlM4KEClD.8Ovw/RKHl8AKvrO9XdTd./5eWTyIcjO','en_us',1,0,'active','2014-09-24 17:30:05','127.0.0.1',NULL,NULL,'2013-05-19 23:02:09','2013-03-19 23:37:29',NULL,NULL,NULL,0,'2012-10-14 06:06:43','2012-10-14 06:06:43','2014-09-24 17:30:05','0d9c0018-3dc3-47c0-b102-7ae94c061c52');

/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_widgets`;

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` tinyint(4) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(6,130,'QuickPost',3,'{\"section\":\"3\",\"fields\":[\"8\"]}',1,'2012-10-15 14:09:01','2013-03-19 23:39:22','fea9448e-f77d-40f2-a2e2-023ad9e4b767'),
	(7,130,'QuickPost',2,'{\"section\":\"2\",\"fields\":[\"10\"]}',1,'2012-10-15 14:10:39','2013-03-19 23:39:22','0f20af75-4767-48b4-bdde-229f0428824a'),
	(8,130,'RecentEntries',4,'{\"section\":\"*\",\"limit\":\"5\"}',1,'2012-10-15 14:10:53','2013-03-19 23:39:22','6659c4e2-65f4-4229-8d8d-8d0896b0a124'),
	(10,130,'Updates',1,'[]',1,'2012-12-11 12:06:00','2013-03-19 23:39:22','90543902-8355-4b6d-a6ff-865d3bd9546e');

/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
