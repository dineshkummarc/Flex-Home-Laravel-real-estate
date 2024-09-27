-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: flex_home
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'V8sWRtpGoaCEGVtt3ngKF97Z3BPRONl9',1,'2024-08-13 19:13:08','2024-08-13 19:13:08','2024-08-13 19:13:08');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Explore Our Exciting New Property Listings Now Available in Prime Locations!',0,NULL,NULL,0,1,'2024-08-14 02:13:18',NULL,1,'2024-08-13 19:13:18','2024-08-13 19:13:18'),(2,'Announcement 2','Join Us for Exclusive Open House Events This Weekend and Find Your Perfect Home!',0,NULL,NULL,0,1,'2024-08-14 02:13:18',NULL,1,'2024-08-13 19:13:18','2024-08-13 19:13:18'),(3,'Announcement 3','Take Advantage of Limited-Time Offers on Luxury Homes with Stunning Features!',0,NULL,NULL,0,1,'2024-08-14 02:13:18',NULL,1,'2024-08-13 19:13:18','2024-08-13 19:13:18'),(4,'Announcement 4','Discover Your Dream Home with Our Latest Listings and Personalized Services!',0,NULL,NULL,0,1,'2024-08-14 02:13:18',NULL,1,'2024-08-13 19:13:18','2024-08-13 19:13:18');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (2,1,'language','{\"lang_id\":\"0\",\"lang_name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"lang_locale\":\"vi\",\"lang_code\":\"vi\",\"lang_flag\":\"vn\",\"lang_order\":\"0\",\"lang_is_rtl\":\"0\"}','created','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','info','2023-06-23 02:53:00','2023-06-23 02:53:00'),(3,1,'language','{\"_method\":\"DELETE\"}','deleted','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','danger','2023-06-23 02:53:15','2023-06-23 02:53:15');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Sales Manager (Up to 2600$)','Ho Chi Minh, Viet Nam','1300$ - 2600$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>','published','2019-11-30 19:43:10','2019-11-30 19:46:53',NULL),(3,'Senior Real Estate Consultant Demo','Ho Chi Minh, Viet Nam','From 1500$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>','published','2019-11-30 19:52:42','2021-01-03 17:26:17',NULL);
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'News',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-18 02:33:35','2019-11-18 02:33:35'),(2,'House architecture',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:25','2019-11-21 07:49:25'),(3,'Kiến trúc nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:35','2019-11-21 07:49:35'),(4,'House design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:02','2019-11-21 07:50:02'),(5,'Thiết kế nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:17','2019-11-21 07:50:17'),(6,'Building materials',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:36','2019-11-21 07:50:36'),(7,'Vật liệu xây dựng',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:58','2019-11-21 07:50:58'),(8,'Tin tức',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-22 01:26:08','2019-11-22 01:26:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Alhambra',1,1,0,0,'cities/location-1.jpg','published','2019-11-18 08:18:42','2019-12-03 05:55:52','alhambra',NULL),(2,'Oakland',1,1,0,0,'cities/location-2.jpg','published','2019-11-18 08:23:14','2019-12-03 05:55:52','oakland',NULL),(3,'Bakersfield',1,1,0,0,'cities/location-3.jpg','published','2019-11-18 08:26:54','2019-12-03 05:55:52','bakersfield',NULL),(4,'Anaheim',1,1,0,0,'cities/location-4.jpg','published','2019-11-18 08:27:57','2019-12-03 05:55:52','anaheim',NULL),(5,'San Francisco',1,1,0,0,'cities/location-5.jpg','published','2019-11-18 08:29:18','2019-12-03 05:55:52','san-francisco',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'United States','United States of America',0,0,'published','2019-11-18 08:17:29','2019-11-18 08:17:29',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
INSERT INTO `dashboard_widget_settings` VALUES (1,NULL,1,7,0,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(2,NULL,1,5,1,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(3,NULL,1,6,2,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(4,NULL,1,8,3,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(5,NULL,1,9,4,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(6,NULL,1,10,5,1,'2019-11-26 02:40:58','2019-11-26 02:40:58');
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_pages','2019-11-15 04:57:40','2019-11-15 04:57:40'),(2,'widget_total_users','2019-11-15 04:57:40','2019-11-15 04:57:40'),(3,'widget_total_plugins','2019-11-15 04:57:40','2019-11-15 04:57:40'),(4,'widget_total_themes','2019-11-15 04:57:40','2019-11-15 04:57:40'),(5,'widget_audit_logs','2019-11-15 18:54:50','2019-11-15 18:54:50'),(6,'widget_posts_recent','2019-11-15 18:54:50','2019-11-15 18:54:50'),(7,'widget_analytics_general','2019-11-15 18:54:50','2019-11-15 18:54:50'),(8,'widget_analytics_page','2019-11-15 18:54:50','2019-11-15 18:54:50'),(9,'widget_analytics_browser','2019-11-15 18:54:50','2019-11-15 18:54:50'),(10,'widget_analytics_referrer','2019-11-15 18:54:50','2019-11-15 18:54:50'),(11,'widget_total_1','2022-11-05 23:58:22','2022-11-05 23:58:22'),(12,'widget_total_2','2022-11-05 23:58:22','2022-11-05 23:58:22'),(13,'widget_total_3','2022-11-05 23:58:22','2022-11-05 23:58:22'),(14,'widget_total_4','2022-11-05 23:58:22','2022-11-05 23:58:22');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_lang_meta_content_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,1,'en_US','Botble\\Menu\\Models\\MenuLocation','4fce6036545101d79c8ac332c0065c5b'),(2,1,'en_US','Botble\\Menu\\Models\\Menu','6d25aa15fc45f2378da7dec077187481'),(3,2,'en_US','Botble\\Menu\\Models\\Menu','04121ef6e23851793ae13a46d345972e'),(4,3,'en_US','Botble\\Menu\\Models\\Menu','7b0bde97c6c15a42106d26ba8d2f473b'),(5,4,'en_US','Botble\\Menu\\Models\\Menu','61e8c8e6d4c43aee6a1784a502b195b4');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=54203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (22702,0,'avatar','avatar',1129,'image/jpeg',151486,'users/avatar.jpg','[]','2023-10-25 00:12:49','2023-10-25 00:12:49',NULL,'public'),(54032,0,'banner','banner',1,'image/jpeg',17700,'banner/banner.jpg','[]','2024-08-13 19:13:03','2024-08-13 19:13:03',NULL,'public'),(54033,0,'location-1','location-1',2415,'image/jpeg',9803,'cities/location-1.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54034,0,'location-2','location-2',2415,'image/jpeg',9803,'cities/location-2.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54035,0,'location-3','location-3',2415,'image/jpeg',9803,'cities/location-3.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54036,0,'location-4','location-4',2415,'image/jpeg',9803,'cities/location-4.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54037,0,'location-5','location-5',2415,'image/jpeg',9803,'cities/location-5.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54038,0,'favicon','favicon',2416,'image/png',2395,'logo/favicon.png','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54039,0,'logo-white','logo-white',2416,'image/png',20236,'logo/logo-white.png','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54040,0,'logo','logo',2416,'image/png',25650,'logo/logo.png','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54041,0,'1','1',2417,'image/jpeg',9803,'accounts/1.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54042,0,'10','10',2417,'image/jpeg',9803,'accounts/10.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54043,0,'2','2',2417,'image/jpeg',9803,'accounts/2.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54044,0,'3','3',2417,'image/jpeg',9803,'accounts/3.jpg','[]','2024-08-13 19:13:04','2024-08-13 19:13:04',NULL,'public'),(54045,0,'4','4',2417,'image/jpeg',9803,'accounts/4.jpg','[]','2024-08-13 19:13:05','2024-08-13 19:13:05',NULL,'public'),(54046,0,'5','5',2417,'image/jpeg',9803,'accounts/5.jpg','[]','2024-08-13 19:13:05','2024-08-13 19:13:05',NULL,'public'),(54047,0,'6','6',2417,'image/jpeg',9803,'accounts/6.jpg','[]','2024-08-13 19:13:05','2024-08-13 19:13:05',NULL,'public'),(54048,0,'7','7',2417,'image/jpeg',9803,'accounts/7.jpg','[]','2024-08-13 19:13:05','2024-08-13 19:13:05',NULL,'public'),(54049,0,'8','8',2417,'image/jpeg',9803,'accounts/8.jpg','[]','2024-08-13 19:13:05','2024-08-13 19:13:05',NULL,'public'),(54050,0,'9','9',2417,'image/jpeg',9803,'accounts/9.jpg','[]','2024-08-13 19:13:05','2024-08-13 19:13:05',NULL,'public'),(54051,0,'asset-3-at-3x','asset-3-at-3x',2418,'image/png',77453,'general/asset-3-at-3x.png','[]','2024-08-13 19:13:08','2024-08-13 19:13:08',NULL,'public'),(54052,0,'asset-4-at-3x','asset-4-at-3x',2418,'image/png',86407,'general/asset-4-at-3x.png','[]','2024-08-13 19:13:08','2024-08-13 19:13:08',NULL,'public'),(54053,0,'breadcrumb-background','breadcrumb-background',2418,'image/jpeg',505901,'general/breadcrumb-background.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54054,0,'copyright','copyright',2418,'image/jpeg',48845,'general/copyright.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54055,0,'home-banner','home-banner',2418,'image/jpeg',631290,'general/home-banner.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54056,0,'newsletter-image','newsletter-image',2418,'image/jpeg',101293,'general/newsletter-image.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54057,0,'termsconditions-pagedesktop','termsconditions-pagedesktop',2418,'image/jpeg',78173,'general/termsconditions-pagedesktop.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54058,0,'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri','video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri',2418,'image/jpeg',18757,'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54059,0,'vietnam-office-4','vietnam-office-4',2418,'image/jpeg',79608,'general/vietnam-office-4.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54060,0,'1','1',2419,'image/jpeg',66981,'news/1.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54061,0,'10','10',2419,'image/jpeg',38901,'news/10.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54062,0,'11','11',2419,'image/jpeg',51899,'news/11.jpg','[]','2024-08-13 19:13:09','2024-08-13 19:13:09',NULL,'public'),(54063,0,'12','12',2419,'image/jpeg',55570,'news/12.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54064,0,'13','13',2419,'image/jpeg',82997,'news/13.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54065,0,'14','14',2419,'image/jpeg',66981,'news/14.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54066,0,'15','15',2419,'image/jpeg',111464,'news/15.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54067,0,'16','16',2419,'image/jpeg',379750,'news/16.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54068,0,'2','2',2419,'image/jpeg',51879,'news/2.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54069,0,'3','3',2419,'image/jpeg',127122,'news/3.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54070,0,'4','4',2419,'image/jpeg',173868,'news/4.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54071,0,'5','5',2419,'image/jpeg',38901,'news/5.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54072,0,'6','6',2419,'image/jpeg',224569,'news/6.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54073,0,'7','7',2419,'image/jpeg',177684,'news/7.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54074,0,'8','8',2419,'image/jpeg',111710,'news/8.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54075,0,'9','9',2419,'image/jpeg',143678,'news/9.jpg','[]','2024-08-13 19:13:10','2024-08-13 19:13:10',NULL,'public'),(54076,0,'1','1',2420,'image/jpeg',9803,'projects/1.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54077,0,'11','11',2420,'image/jpeg',9803,'projects/11.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54078,0,'12','12',2420,'image/jpeg',9803,'projects/12.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54079,0,'13','13',2420,'image/jpeg',9803,'projects/13.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54080,0,'14','14',2420,'image/jpeg',9803,'projects/14.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54081,0,'2','2',2420,'image/jpeg',9803,'projects/2.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54082,0,'21','21',2420,'image/jpeg',9803,'projects/21.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54083,0,'22','22',2420,'image/jpeg',9803,'projects/22.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54084,0,'23','23',2420,'image/jpeg',9803,'projects/23.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54085,0,'24','24',2420,'image/jpeg',9803,'projects/24.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54086,0,'25','25',2420,'image/jpeg',9803,'projects/25.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54087,0,'26','26',2420,'image/jpeg',9803,'projects/26.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54088,0,'3','3',2420,'image/jpeg',9803,'projects/3.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54089,0,'5','5',2420,'image/jpeg',9803,'projects/5.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54090,0,'1-1','1-1',2421,'image/jpeg',9803,'properties/1-1.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54091,0,'1-2','1-2',2421,'image/jpeg',9803,'properties/1-2.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54092,0,'1-3','1-3',2421,'image/jpeg',9803,'properties/1-3.jpg','[]','2024-08-13 19:13:11','2024-08-13 19:13:11',NULL,'public'),(54093,0,'1','1',2421,'image/jpeg',9803,'properties/1.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54094,0,'10-1','10-1',2421,'image/jpeg',9803,'properties/10-1.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54095,0,'10','10',2421,'image/jpeg',9803,'properties/10.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54096,0,'11-1','11-1',2421,'image/jpeg',9803,'properties/11-1.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54097,0,'11','11',2421,'image/jpeg',9803,'properties/11.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54098,0,'12','12',2421,'image/jpeg',9803,'properties/12.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54099,0,'13','13',2421,'image/jpeg',9803,'properties/13.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54100,0,'14','14',2421,'image/jpeg',9803,'properties/14.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54101,0,'15','15',2421,'image/jpeg',9803,'properties/15.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54102,0,'2-1','2-1',2421,'image/jpeg',9803,'properties/2-1.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54103,0,'2-2','2-2',2421,'image/jpeg',9803,'properties/2-2.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54104,0,'2-3','2-3',2421,'image/jpeg',9803,'properties/2-3.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54105,0,'2','2',2421,'image/jpeg',9803,'properties/2.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54106,0,'21','21',2421,'image/jpeg',9803,'properties/21.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54107,0,'22-1','22-1',2421,'image/jpeg',9803,'properties/22-1.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54108,0,'22','22',2421,'image/jpeg',9803,'properties/22.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54109,0,'23','23',2421,'image/jpeg',9803,'properties/23.jpg','[]','2024-08-13 19:13:12','2024-08-13 19:13:12',NULL,'public'),(54110,0,'24-1','24-1',2421,'image/jpeg',9803,'properties/24-1.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54111,0,'24','24',2421,'image/jpeg',9803,'properties/24.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54112,0,'3-1','3-1',2421,'image/jpeg',9803,'properties/3-1.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54113,0,'3-2','3-2',2421,'image/jpeg',9803,'properties/3-2.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54114,0,'3-3','3-3',2421,'image/jpeg',9803,'properties/3-3.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54115,0,'3','3',2421,'image/jpeg',9803,'properties/3.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54116,0,'31','31',2421,'image/jpeg',9803,'properties/31.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54117,0,'311','311',2421,'image/jpeg',9803,'properties/311.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54118,0,'32','32',2421,'image/jpeg',9803,'properties/32.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54119,0,'32223-43914-378','32223-43914-378',2421,'image/jpeg',9803,'properties/32223-43914-378.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54120,0,'33','33',2421,'image/jpeg',9803,'properties/33.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54121,0,'34','34',2421,'image/jpeg',9803,'properties/34.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54122,0,'35','35',2421,'image/jpeg',9803,'properties/35.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54123,0,'4-1','4-1',2421,'image/jpeg',9803,'properties/4-1.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54124,0,'4-2','4-2',2421,'image/jpeg',9803,'properties/4-2.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54125,0,'4','4',2421,'image/jpeg',9803,'properties/4.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54126,0,'411','411',2421,'image/jpeg',9803,'properties/411.jpg','[]','2024-08-13 19:13:13','2024-08-13 19:13:13',NULL,'public'),(54127,0,'42','42',2421,'image/jpeg',9803,'properties/42.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54128,0,'421834935dbc9ef3aaa42','421834935dbc9ef3aaa42',2421,'image/jpeg',9803,'properties/421834935dbc9ef3aaa42.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54129,0,'43','43',2421,'image/jpeg',9803,'properties/43.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54130,0,'44','44',2421,'image/jpeg',9803,'properties/44.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54131,0,'5-1','5-1',2421,'image/jpeg',9803,'properties/5-1.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54132,0,'5-2','5-2',2421,'image/jpeg',9803,'properties/5-2.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54133,0,'5','5',2421,'image/jpeg',9803,'properties/5.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54134,0,'6-1','6-1',2421,'image/jpeg',9803,'properties/6-1.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54135,0,'6-2','6-2',2421,'image/jpeg',9803,'properties/6-2.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54136,0,'6','6',2421,'image/jpeg',9803,'properties/6.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54137,0,'7-1','7-1',2421,'image/jpeg',9803,'properties/7-1.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54138,0,'7-2','7-2',2421,'image/jpeg',9803,'properties/7-2.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54139,0,'7','7',2421,'image/jpeg',9803,'properties/7.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54140,0,'71','71',2421,'image/jpeg',9803,'properties/71.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54141,0,'72','72',2421,'image/jpeg',9803,'properties/72.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54142,0,'73','73',2421,'image/jpeg',9803,'properties/73.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54143,0,'74','74',2421,'image/jpeg',9803,'properties/74.jpg','[]','2024-08-13 19:13:14','2024-08-13 19:13:14',NULL,'public'),(54144,0,'75','75',2421,'image/jpeg',9803,'properties/75.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54145,0,'78','78',2421,'image/jpeg',9803,'properties/78.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54146,0,'79','79',2421,'image/jpeg',9803,'properties/79.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54147,0,'8-1','8-1',2421,'image/jpeg',9803,'properties/8-1.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54148,0,'8-2','8-2',2421,'image/jpeg',9803,'properties/8-2.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54149,0,'8','8',2421,'image/jpeg',9803,'properties/8.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54150,0,'9-1','9-1',2421,'image/jpeg',9803,'properties/9-1.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54151,0,'9','9',2421,'image/jpeg',9803,'properties/9.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54152,0,'a1-1','a1-1',2421,'image/jpeg',9803,'properties/a1-1.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54153,0,'a1-2','a1-2',2421,'image/jpeg',9803,'properties/a1-2.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54154,0,'a1','a1',2421,'image/jpeg',9803,'properties/a1.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54155,0,'a10','a10',2421,'image/jpeg',9803,'properties/a10.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54156,0,'a2-1','a2-1',2421,'image/jpeg',9803,'properties/a2-1.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54157,0,'a2-2','a2-2',2421,'image/jpeg',9803,'properties/a2-2.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54158,0,'a2','a2',2421,'image/jpeg',9803,'properties/a2.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54159,0,'a3-1','a3-1',2421,'image/jpeg',9803,'properties/a3-1.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54160,0,'a3-2','a3-2',2421,'image/jpeg',9803,'properties/a3-2.jpg','[]','2024-08-13 19:13:15','2024-08-13 19:13:15',NULL,'public'),(54161,0,'a3','a3',2421,'image/jpeg',9803,'properties/a3.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54162,0,'a4-1','a4-1',2421,'image/jpeg',9803,'properties/a4-1.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54163,0,'a4-2','a4-2',2421,'image/jpeg',9803,'properties/a4-2.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54164,0,'a4','a4',2421,'image/jpeg',9803,'properties/a4.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54165,0,'a5-1','a5-1',2421,'image/jpeg',9803,'properties/a5-1.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54166,0,'a5','a5',2421,'image/jpeg',9803,'properties/a5.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54167,0,'a6-1','a6-1',2421,'image/jpeg',9803,'properties/a6-1.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54168,0,'a6','a6',2421,'image/jpeg',9803,'properties/a6.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54169,0,'a7','a7',2421,'image/jpeg',9803,'properties/a7.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54170,0,'a8','a8',2421,'image/jpeg',9803,'properties/a8.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54171,0,'a9','a9',2421,'image/jpeg',9803,'properties/a9.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54172,0,'b1','b1',2421,'image/jpeg',9803,'properties/b1.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54173,0,'b2','b2',2421,'image/jpeg',9803,'properties/b2.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54174,0,'b3','b3',2421,'image/jpeg',9803,'properties/b3.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54175,0,'b4-1','b4-1',2421,'image/jpeg',9803,'properties/b4-1.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54176,0,'b4','b4',2421,'image/jpeg',9803,'properties/b4.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54177,0,'b5-1','b5-1',2421,'image/jpeg',9803,'properties/b5-1.jpg','[]','2024-08-13 19:13:16','2024-08-13 19:13:16',NULL,'public'),(54178,0,'b5','b5',2421,'image/jpeg',9803,'properties/b5.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54179,0,'b6','b6',2421,'image/jpeg',9803,'properties/b6.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54180,0,'download','download',2421,'image/jpeg',9803,'properties/download.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54181,0,'e1','e1',2421,'image/jpeg',9803,'properties/e1.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54182,0,'e2','e2',2421,'image/jpeg',9803,'properties/e2.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54183,0,'e3','e3',2421,'image/jpeg',9803,'properties/e3.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54184,0,'e4','e4',2421,'image/jpeg',9803,'properties/e4.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54185,0,'e5','e5',2421,'image/jpeg',9803,'properties/e5.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54186,0,'e7','e7',2421,'image/jpeg',9803,'properties/e7.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54187,0,'e8','e8',2421,'image/jpeg',9803,'properties/e8.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54188,0,'p1','p1',2421,'image/jpeg',9803,'properties/p1.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54189,0,'p2','p2',2421,'image/jpeg',9803,'properties/p2.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54190,0,'property-video-thumb','property-video-thumb',2421,'image/jpeg',9803,'properties/property-video-thumb.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54191,0,'q1','q1',2421,'image/jpeg',9803,'properties/q1.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54192,0,'q2','q2',2421,'image/jpeg',9803,'properties/q2.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54193,0,'q3','q3',2421,'image/jpeg',9803,'properties/q3.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54194,0,'q6','q6',2421,'image/jpeg',9803,'properties/q6.jpg','[]','2024-08-13 19:13:17','2024-08-13 19:13:17',NULL,'public'),(54195,0,'q7','q7',2421,'image/jpeg',9803,'properties/q7.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public'),(54196,0,'q8','q8',2421,'image/jpeg',9803,'properties/q8.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public'),(54197,0,'t1','t1',2421,'image/jpeg',9803,'properties/t1.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public'),(54198,0,'t2','t2',2421,'image/jpeg',9803,'properties/t2.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public'),(54199,0,'t3','t3',2421,'image/jpeg',9803,'properties/t3.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public'),(54200,0,'t4','t4',2421,'image/jpeg',9803,'properties/t4.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public'),(54201,0,'t5','t5',2421,'image/jpeg',9803,'properties/t5.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public'),(54202,0,'wp1a','wp1a',2421,'image/jpeg',9803,'properties/wp1a.jpg','[]','2024-08-13 19:13:18','2024-08-13 19:13:18',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2422 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,1,'Banners',NULL,'banner',0,'2019-11-16 02:00:43','2019-11-16 02:00:50',NULL),(1129,0,'users',NULL,'users',0,'2023-10-25 00:12:49','2023-10-25 00:12:49',NULL),(2415,0,'cities',NULL,'cities',0,'2024-08-13 19:13:04','2024-08-13 19:13:04',NULL),(2416,0,'logo',NULL,'logo',0,'2024-08-13 19:13:04','2024-08-13 19:13:04',NULL),(2417,0,'accounts',NULL,'accounts',0,'2024-08-13 19:13:04','2024-08-13 19:13:04',NULL),(2418,0,'general',NULL,'general',0,'2024-08-13 19:13:08','2024-08-13 19:13:08',NULL),(2419,0,'news',NULL,'news',0,'2024-08-13 19:13:09','2024-08-13 19:13:09',NULL),(2420,0,'projects',NULL,'projects',0,'2024-08-13 19:13:11','2024-08-13 19:13:11',NULL),(2421,0,'properties',NULL,'properties',0,'2024-08-13 19:13:11','2024-08-13 19:13:11',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-13 19:13:08','2024-08-13 19:13:08');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT '0',
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_related_id_index` (`reference_id`),
  KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,0,NULL,'/projects',NULL,0,'Projects',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(2,1,0,0,NULL,'/properties',NULL,0,'Properties',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(3,1,0,0,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(4,1,0,2,'Botble\\Page\\Models\\Page','/news',NULL,0,'News',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(5,1,0,0,NULL,'/careers',NULL,0,'Careers',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(6,1,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(7,2,0,3,'Botble\\Page\\Models\\Page','/about-us',NULL,1,'About us',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(8,2,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,1,'Contact us',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(9,2,0,0,NULL,'/careers',NULL,1,'Careers',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(10,2,0,5,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,1,'Terms & Conditions',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(11,3,0,0,NULL,'/projects',NULL,2,'All projects',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(12,3,0,0,NULL,'/properties',NULL,2,'All properties',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(13,3,0,0,NULL,'/properties?type=sale',NULL,2,'Houses for sale',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(14,3,0,0,NULL,'/properties?type=rent',NULL,2,'Houses for rent',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(15,4,0,2,'Botble\\Page\\Models\\Page','/news',NULL,3,'Latest news',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(16,4,0,2,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'House architecture',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(17,4,0,4,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'House design',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08'),(18,4,0,6,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'Building materials',NULL,'_self',0,'2024-08-13 19:13:08','2024-08-13 19:13:08');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(2,'About','about','published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(3,'More information','more-information','published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(4,'News','news','published','2024-08-13 19:13:08','2024-08-13 19:13:08');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_content_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:18:11','2019-11-17 21:18:11'),(5,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 00:34:49','2019-11-18 00:34:49'),(8,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:05:58','2019-11-18 01:05:58'),(10,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:16:53','2019-11-18 02:16:53'),(15,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:22:48','2019-11-18 02:22:48'),(16,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-18 02:33:35','2019-11-18 02:33:35'),(17,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:51:35','2019-11-18 02:51:35'),(19,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:55:53','2019-11-18 02:55:53'),(21,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:59:01','2019-11-18 02:59:01'),(23,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 03:07:27','2019-11-18 03:07:27'),(24,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:45:06','2019-11-18 03:45:06'),(28,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:53:20','2019-11-18 03:53:20'),(29,13,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:23:02','2019-11-18 07:23:02'),(30,14,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:36:29','2019-11-18 07:36:29'),(31,15,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:44:44','2019-11-18 07:44:44'),(32,16,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,17,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 08:13:07','2019-11-18 08:13:07'),(34,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 01:54:36','2019-11-21 01:54:36'),(35,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:28:09','2019-11-21 02:28:09'),(36,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:40:25','2019-11-21 02:40:25'),(37,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:58:55','2019-11-21 02:58:55'),(38,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:16:25','2019-11-21 03:16:25'),(39,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:25:22','2019-11-21 03:25:22'),(40,18,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 05:51:54','2019-11-21 05:51:54'),(41,19,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:03:11','2019-11-21 06:03:11'),(42,20,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:12:15','2019-11-21 06:12:15'),(43,21,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:26:59','2019-11-21 06:26:59'),(44,22,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:56:50','2019-11-21 06:56:50'),(45,23,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:18:36','2019-11-21 07:18:36'),(46,24,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:26:48','2019-11-21 07:26:48'),(47,25,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:34:38','2019-11-21 07:34:38'),(48,26,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:40:46','2019-11-21 07:40:46'),(49,27,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:45:34','2019-11-21 07:45:34'),(52,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:25','2019-11-21 07:49:25'),(53,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:35','2019-11-21 07:49:35'),(54,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:02','2019-11-21 07:50:02'),(55,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:17','2019-11-21 07:50:17'),(56,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:36','2019-11-21 07:50:36'),(57,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:58','2019-11-21 07:50:58'),(58,28,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:53:17','2019-11-21 19:53:17'),(59,29,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:59:16','2019-11-21 19:59:16'),(60,30,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:29:01','2019-11-22 00:29:01'),(61,31,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:42:28','2019-11-22 00:42:28'),(62,32,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:47:18','2019-11-22 00:47:18'),(63,33,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:57:15','2019-11-22 00:57:15'),(64,34,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 01:06:09','2019-11-22 01:06:09'),(65,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-22 01:26:08','2019-11-22 01:26:08'),(74,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:43:10','2019-11-30 19:43:10'),(75,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:49:07','2019-11-30 19:49:07'),(76,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:52:42','2019-11-30 19:52:42'),(77,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:56:50','2019-11-30 19:56:50'),(80,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(81,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(82,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(83,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(84,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(85,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(86,14,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(87,16,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(88,18,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(89,20,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(90,22,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(91,24,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(92,26,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(93,28,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(94,30,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(95,32,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(96,34,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(97,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(98,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(99,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(100,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(101,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(102,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(103,1,'subscribed_packaged_id','[2]','Botble\\Payment\\Models\\Payment','2022-12-27 20:03:55','2022-12-27 20:03:55');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(8,'2016_06_01_000004_create_oauth_clients_table',1),(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(10,'2016_06_10_230148_create_acl_tables',1),(11,'2016_06_14_230857_create_menus_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_11_03_070450_create_slug_table',1),(18,'2019_07_15_042406_change_site_title_from_settings_to_theme_options',1),(19,'2019_08_13_033145_remove_unused_columns_in_users_table',1),(20,'2019_08_19_000000_create_failed_jobs_table',1),(21,'2019_09_07_030654_update_menu_nodes_table',1),(22,'2019_09_07_045041_update_slugs_table',1),(23,'2019_09_07_050405_update_slug_reference_for_page',1),(24,'2019_09_08_014859_update_meta_boxes_table',1),(25,'2019_09_08_015629_update_meta_box_data_for_page',1),(26,'2019_09_12_073711_update_media_url',1),(27,'2019_09_12_073711_update_media_url_for_current_data',1),(28,'2019_10_20_002256_remove_parent_id_in_pages_table',1),(31,'2018_06_22_032304_create_real_estate_table',2),(32,'2015_06_29_025744_create_audit_history',3),(33,'2015_06_18_033822_create_blog_table',4),(34,'2019_09_07_035526_update_menu_node_reference_type_for_category',4),(35,'2019_09_07_050058_update_slug_reference_for_blog',4),(36,'2019_09_07_155716_update_language_meta_for_blog',4),(37,'2019_09_08_015552_update_meta_box_data_for_blog',4),(38,'2019_10_20_002342_remove_parent_id_in_tags_table',4),(39,'2016_10_03_032336_create_languages_table',5),(40,'2019_09_07_154718_update_lang_meta_table',5),(42,'2016_06_17_091537_create_contacts_table',7),(43,'2015_08_15_122343_create_notes_table',8),(44,'2019_11_18_035125_add_column_type_into_re_properties_table',9),(45,'2019_11_18_035712_create_investor_table',9),(46,'2019_11_18_040153_update_real_estates_table',9),(47,'2019_11_18_041228_drop_table_re_property_categories',10),(48,'2019_11_18_082146_create_currencies_table',11),(49,'2019_11_18_061011_create_country_table',12),(50,'2019_11_18_061730_create_state_table',12),(51,'2019_11_18_062515_create_city_table',12),(52,'2019_11_19_063851_create_project_features_table',13),(53,'2019_11_21_090830_update_project_and_property_table',14),(54,'2019_11_21_130139_add_price_to_projects_table',15),(55,'2019_11_14_210650_create_consults_table',16),(56,'2019_11_26_024326_update_property_type',17),(57,'2019_06_24_211801_create_career_table',18),(58,'2019_12_03_123314_add_column_slug_into_cities_table',19),(59,'2019_12_03_124417_add_column_city_id_into_table_properties_and_projects',19),(60,'2017_05_18_080441_create_payment_tables',20),(61,'2019_12_10_140938_create_vendor_table',20),(62,'2019_12_15_025938_update_column_images_in_real_estate_tables',20),(63,'2019_12_17_064316_add_column_period_to_table_re_properties',20),(64,'2019_12_24_033049_add_column_author_into_re_properties_table',20),(65,'2019_12_24_083810_vendor_create_package_table',20),(66,'2019_12_27_004653_update_vendors_table_with_package_data',20),(68,'2020_01_08_002704_real_estate_create_type_table',21),(69,'2020_01_10_133700_change_re_types_to_re_categories',22),(70,'2016_10_07_193005_create_translations_table',23),(71,'2020_01_23_133752_update_account_tables',24),(72,'2020_02_03_144309_update_column_payment_channel',25),(73,'2020_02_06_143217_update_vendor_table',26),(74,'2020_02_11_133026_add_description_to_table_payments',27),(75,'2020_02_11_140823_create_transactions_table',27),(76,'2020_02_23_111922_fix_column_number_block_in_re_properties_table',27),(77,'2020_03_24_151004_add_moderation_status_into_properties_table',28),(78,'2020_03_25_030953_create_table_vendor_packages',29),(79,'2020_03_25_083610_add_column_expire_date_into_re_properties_table',30),(80,'2020_03_26_081108_add_column_auto_renew_to_re_properties_table',31),(81,'2020_03_16_072752_add_column_abbreviation_to_states_table',32),(82,'2020_03_28_020724_make_column_user_id_nullable_table_revisions',33),(83,'2020_03_23_093053_update_payments_table',34),(84,'2020_04_22_074304_add_column_never_expired_to_re_properties_table',35),(85,'2020_05_26_014304_add_column_provider_to_oauth_clients_table',36),(86,'2020_07_27_085437_add_icon_to_re_features',37),(90,'2020_08_21_102728_real_estate_create_facility_table',38),(91,'2020_08_22_024455_rename_table_for_accounts',39),(92,'2020_08_26_130439_add_column_username_into_table_re_accounts',40),(93,'2020_09_09_110653_update_table_careers',41),(94,'2020_09_15_111419_fix_old_data_for_re_properties',42),(95,'2020_10_05_030817_make_column_charge_id_nullable',43),(96,'2020_10_18_134416_fix_audit_logs_table',44),(97,'2020_10_24_133432_change_column_distance_to_string',45),(99,'2020_10_31_053746_add_column_description_into_re_categories_table',46),(100,'2019_01_05_053554_create_jobs_table',47),(101,'2020_12_05_112556_change_contact_page_to_a_page',48),(102,'2021_02_11_031126_update_price_column_in_projects_and_properties',49),(103,'2021_02_16_092633_remove_default_value_for_author_type',50),(104,'2021_03_08_024049_add_lat_long_into_real_estate_tables',51),(105,'2021_03_27_144913_add_customer_type_into_table_payments',52),(106,'2021_05_24_034720_make_column_currency_nullable',53),(107,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',54),(108,'2021_07_07_021757_update_table_account_activity_logs',55),(109,'2021_07_18_101839_fix_old_theme_options',56),(110,'2021_08_05_134214_fix_social_link_theme_options',57),(111,'2021_08_09_161302_add_metadata_column_to_payments_table',58),(112,'2021_09_29_042758_create_re_categories_multilevel_table',59),(113,'2021_10_19_020859_update_metadata_field',60),(114,'2021_10_31_031254_add_company_to_accounts_table',61),(115,'2021_10_25_021023_fix-priority-load-for-language-advanced',62),(116,'2021_12_03_030600_create_blog_translations',62),(117,'2021_12_03_075608_create_page_translations',62),(118,'2021_12_03_084118_create_location_translations',62),(119,'2021_12_03_094518_migrate_old_location_data',62),(120,'2021_12_04_095357_create_careers_translations_table',62),(121,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',63),(122,'2021_12_10_034807_create_real_estate_translation_tables',64),(123,'2021_12_18_081636_add_property_project_views_count',65),(124,'2022_01_16_085908_improve_plugin_location',66),(125,'2022_04_19_113923_add_index_to_table_posts',67),(126,'2022_04_20_100851_add_index_to_media_table',67),(127,'2022_04_20_101046_add_index_to_menu_table',67),(128,'2022_05_03_033044_update_column_images_in_real_estate_tables',68),(129,'2022_05_04_033044_update_column_images_in_real_estate_tables',69),(130,'2022_06_04_033634_improve_homepage_content',70),(131,'2022_06_28_151901_activate_paypal_stripe_plugin',71),(132,'2022_07_02_081723_fix_expired_date_column',71),(133,'2019_12_14_000001_create_personal_access_tokens_table',72),(134,'2022_07_07_153354_update_charge_id_in_table_payments',72),(135,'2022_07_10_034813_move_lang_folder_to_root',72),(136,'2022_08_01_090213_update_table_properties_and_projects',72),(137,'2022_08_04_051940_add_missing_column_expires_at',72),(138,'2022_08_04_052122_delete_location_backup_tables',72),(139,'2022_10_14_024629_drop_column_is_featured',73),(140,'2022_10_29_065232_increase_states_abbreviation_column',74),(141,'2022_11_06_061847_increase_state_translations_abbreviation_column',75),(142,'2022_11_06_070405_improve_homepage_search_box',75),(143,'2022_11_18_063357_add_missing_timestamp_in_table_settings',76),(144,'2022_12_02_093615_update_slug_index_columns',76),(145,'2022_09_01_000001_create_admin_notifications_tables',77),(146,'2023_01_30_024431_add_alt_to_media_table',78),(147,'2023_01_31_023233_create_re_custom_fields_table',79),(148,'2023_02_06_000000_add_location_to_re_accounts_table',79),(149,'2023_02_06_024257_add_package_translations',79),(150,'2023_02_08_062457_add_custom_fields_translation_table',80),(151,'2014_10_12_100000_create_password_reset_tokens_table',81),(152,'2023_02_15_024644_create_re_reviews_table',81),(153,'2023_02_16_042611_drop_table_password_resets',81),(154,'2023_02_20_072604_create_re_invoices_table',82),(155,'2023_02_20_081251_create_re_account_packages_table',82),(156,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',83),(157,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',84),(158,'2023_04_23_005903_add_column_permissions_to_admin_notifications',84),(159,'2023_04_23_061847_increase_state_translations_abbreviation_column',84),(160,'2023_05_08_114004_improve_properties_and_projects_page',85),(161,'2023_05_09_062031_unique_reviews_table',85),(162,'2023_05_10_075124_drop_column_id_in_role_users_table',85),(163,'2023_05_26_034353_fix_properties_projects_image',86),(164,'2023_05_27_004215_add_column_ip_into_table_re_consults',86),(165,'2023_07_06_011444_create_slug_translations_table',87),(166,'2023_07_18_040500_convert_cities_is_featured_to_selecting_locations_from_shortcode',87),(167,'2023_07_25_034513_create_re_coupons_table',87),(168,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',87),(169,'2023_07_26_041451_add_more_columns_to_location_table',87),(170,'2023_07_27_041451_add_more_columns_to_location_translation_table',87),(171,'2023_07_28_073307_drop_unique_in_states_cities_translations',87),(172,'2023_08_02_074208_change_square_column_to_float',87),(173,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',87),(174,'2023_08_09_004607_make_column_project_id_nullable',87),(175,'2023_08_15_073307_drop_unique_in_states_cities_translations',88),(176,'2023_08_21_090810_make_page_content_nullable',89),(177,'2023_08_29_074620_make_column_author_id_nullable',90),(178,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',91),(179,'2023_09_14_021936_update_index_for_slugs_table',92),(180,'2023_09_14_022423_add_index_for_language_table',92),(181,'2023_09_20_050420_add_missing_translation_column',93),(182,'2023_10_21_065016_make_state_id_in_table_cities_nullable',94),(183,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',95),(184,'2023_11_14_033417_change_request_column_in_table_audit_histories',95),(185,'2023_11_21_071820_add_missing_slug_for_agents',95),(186,'2023_12_06_100448_change_random_hash_for_media',95),(187,'2023_12_07_095130_add_color_column_to_media_folders_table',95),(188,'2023_12_12_105220_drop_translations_table',95),(189,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',95),(190,'2024_01_11_084816_add_investor_translations_table',95),(191,'2024_01_31_022842_add_description_to_re_packages_table',96),(192,'2024_03_13_000001_drop_type_column_from_custom_field_translations_table',96),(193,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',96),(194,'2024_03_25_000001_update_captcha_settings_for_contact',96),(195,'2024_04_04_110758_update_value_column_in_user_meta_table',96),(196,'2024_04_19_063914_create_custom_fields_table',96),(197,'2024_04_23_124505_add_features_column_to_re_packages',96),(198,'2024_04_23_135106_add_columns_to_re_investors',96),(199,'2024_04_27_100730_improve_analytics_setting',96),(200,'2024_05_12_091229_add_column_visibility_to_table_media_files',96),(201,'2024_05_16_100000_change_random_hash_for_media',97),(202,'2024_05_25_000001_update_captcha_settings_for_real_estate',98),(203,'2024_06_16_163428_make_investor_id_nullable',99),(204,'2017_10_24_154832_create_newsletter_table',100),(205,'2020_11_18_150916_ads_create_ads_table',100),(206,'2021_12_02_035301_add_ads_translations_table',100),(207,'2023_04_17_062645_add_open_in_new_tab',100),(208,'2023_08_11_060908_create_announcements_table',100),(209,'2023_11_07_023805_add_tablet_mobile_image',100),(210,'2024_03_25_000001_update_captcha_settings_for_newsletter',100),(211,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',100),(212,'2024_06_20_103539_create_consult_custom_fields_table',100),(213,'2024_07_04_083133_create_payment_logs_table',100),(214,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',100),(215,'2024_07_08_235824_fix_facilities_primary_key',100),(216,'2024_07_12_100000_change_random_hash_for_media',101),(217,'2024_07_26_090340_add_private_notes_column_to_re_properties_projects_table',102),(218,'2024_07_30_091615_fix_order_column_in_categories_table',102),(219,'2024_08_09_075542_add_accounts_translations',103),(220,'2024_08_12_124528_add_approved_at_column_to_re_accounts_table',104);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int unsigned NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_user_id_index` (`user_id`),
  KEY `notes_reference_id_index` (`reference_id`),
  KEY `notes_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(2,'News','---',1,NULL,'default',NULL,'published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(3,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(4,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(5,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(7,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2024-08-13 19:13:08','2024-08-13 19:13:08'),(8,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2024-08-13 19:13:08','2024-08-13 19:13:08');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) unsigned NOT NULL,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,250.00,'USD',0,'AS2MND60W6','bank_transfer','2022-12-27 20:03:55','2022-12-27 20:03:55',NULL,2,'pending','confirm',1,NULL,NULL,'Botble\\RealEstate\\Models\\Account',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,6,5129),(2,4,5130),(3,6,5131),(4,1,5132),(5,2,5133),(6,2,5134),(7,2,5135),(8,6,5136),(9,4,5137),(10,2,5138),(11,1,5139),(12,4,5140),(13,4,5141),(14,2,5142),(15,4,5143),(16,1,5144);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,5129),(2,2,5129),(3,3,5129),(4,1,5130),(5,2,5130),(6,3,5130),(7,1,5131),(8,2,5131),(9,3,5131),(10,1,5132),(11,2,5132),(12,3,5132),(13,1,5133),(14,2,5133),(15,3,5133),(16,1,5134),(17,2,5134),(18,3,5134),(19,1,5135),(20,2,5135),(21,3,5135),(22,1,5136),(23,2,5136),(24,3,5136),(25,1,5137),(26,2,5137),(27,3,5137),(28,1,5138),(29,2,5138),(30,3,5138),(31,1,5139),(32,2,5139),(33,3,5139),(34,1,5140),(35,2,5140),(36,3,5140),(37,1,5141),(38,2,5141),(39,3,5141),(40,1,5142),(41,2,5142),(42,3,5142),(43,1,5143),(44,2,5143),(45,3,5143),(46,1,5144),(47,2,5144),(48,3,5144);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'BCG sets great store by real estate negotiations','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (​​17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (​​6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/1-2.jpg',2286,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(2,'Private Home Sales Drop 27% In October','New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month','<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/2-2.jpg',2044,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(3,'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects','Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.','<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/6-1.jpg',1791,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(4,'S. Korea’s Big Investors Flocking to Overseas Real Estate','An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.','<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/download.jpg',416,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5129,'The Top 2020 Handbag Trends to Know','Minima rem eius culpa ducimus. Dignissimos et ducimus omnis. Accusamus optio omnis dolores voluptas molestiae aliquid aut neque.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>King; \'and don\'t be particular--Here, Bill! catch hold of its mouth, and its great eyes half shut. This seemed to Alice again. \'No, I didn\'t,\' said Alice: \'allow me to him: She gave me a good way off, panting, with its eyelids, so he did,\' said the Gryphon. \'--you advance twice--\' \'Each with a great crowd assembled about them--all sorts of things--I can\'t remember half of fright and half believed herself in the sea. But they HAVE their tails in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the same as they lay on the whole thing very absurd, but they began solemnly dancing round and round the table, half hoping that the hedgehog had unrolled itself, and was delighted to find her way into a large canvas bag, which tied up at this moment the King, the Queen, stamping on the bank, with her head!\' about once in the air. Even the Duchess said in a very fine day!\' said a whiting before.\' \'I can tell you more than nine feet high. \'I wish I hadn\'t mentioned Dinah!\' she said.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>The Fish-Footman began by taking the little golden key, and when she had gone through that day. \'A likely story indeed!\' said the Mock Turtle with a growl, And concluded the banquet--] \'What IS the same when I was going to leave the court; but on the top of the thing yourself, some winter day, I will tell you more than that, if you please! \"William the Conqueror, whose cause was favoured by the hand, it hurried off, without waiting for the baby, the shriek of the edge of her skirt, upsetting.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Alice was not here before,\' said Alice,) and round goes the clock in a minute or two, and the pattern on their hands and feet at the Caterpillar\'s making such VERY short remarks, and she swam lazily about in the sun. (IF you don\'t even know what to beautify is, I can\'t be civil, you\'d better leave off,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Caterpillar; and it was neither more nor less than a pig, my dear,\' said Alice, \'I\'ve often seen a cat without a moment\'s pause. The only things in the distance would take the hint; but the Rabbit whispered in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt certain it must be collected at once and put back into the darkness as hard as he shook both his shoes off. \'Give your evidence,\' the King exclaimed, turning to the Queen, turning purple. \'I won\'t!\' said Alice. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>While the Duchess asked, with another hedgehog, which seemed to rise like a stalk out of breath, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is it?\' \'Why,\' said the King: \'however, it may kiss my hand if it had made. \'He took me for his housemaid,\' she said to Alice, very earnestly. \'I\'ve had nothing else to do, and perhaps as this before, never! And I declare it\'s too bad, that it was very uncomfortable, and, as the Dormouse shall!\' they both bowed low, and their curls got entangled together. Alice laughed so much frightened that she wasn\'t a really good school,\' said the Dodo could not tell whether they were IN the well,\' Alice said nothing; she had looked under it, and found in it about four feet high. \'I wish you wouldn\'t have come here.\' Alice didn\'t think that will be the use of this elegant thimble\'; and, when it had fallen into a chrysalis--you will some day, you know--and then after that into a pig,\' Alice quietly said, just as she could do to.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1839,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5130,'Top Search Engine Optimization Strategies!','Soluta deserunt excepturi nisi ad molestiae molestiae itaque. Commodi hic sed nostrum dolor voluptatem delectus. Autem harum tenetur error nihil modi.','<p>Majesty,\' said the King; and the Dormouse shall!\' they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the other, saying, in a few yards off. The Cat only grinned a little bit, and said anxiously to herself, and nibbled a little queer, won\'t you?\' \'Not a bit,\' she thought it over afterwards, it occurred to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine THIS witness.\' \'Well, if I was, I shouldn\'t want YOURS: I don\'t put my arm round your waist,\' the Duchess said in a trembling voice to a mouse, That he met in the sun. (IF you don\'t explain it as a drawing of a good deal on where you want to get us dry would be of very little way out of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>Alice remarked. \'Oh, you can\'t think! And oh, I wish you were me?\' \'Well, perhaps not,\' said Alice very humbly: \'you had got its neck nicely straightened out, and was coming back to the table, half hoping that the way out of that is--\"Birds of a muchness?\' \'Really, now you ask me,\' said Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'all I know all the time she saw them, they set to work at once to eat or drink under the circumstances. There was a large mushroom growing near her, about.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>I ever heard!\' \'Yes, I think it so yet,\' said the Queen. \'Never!\' said the Duchess, as she could not possibly reach it: she could not swim. He sent them word I had our Dinah here, I know is, it would be so proud as all that.\' \'With extras?\' asked the Mock Turtle, and to her that she ought not to be two people! Why, there\'s hardly enough of it appeared. \'I don\'t know much,\' said Alice; \'you needn\'t be afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe there\'s an atom of meaning in it, and talking over its head. \'Very uncomfortable for the hot day made her next remark. \'Then the Dormouse went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the Lory. Alice replied in an undertone, \'important--unimportant--unimportant--important--\' as if she were looking up into hers--she could hear the words:-- \'I speak severely to my right size for ten minutes together!\' \'Can\'t remember WHAT.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Hatter went on in these words: \'Yes, we went to work nibbling at the door--I do wish I hadn\'t begun my tea--not above a week or so--and what with the dream of Wonderland of long ago: and how she would get up and say \"Who am I to do?\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the one who had spoken first. \'That\'s none of them hit her in a mournful tone, \'he won\'t do a thing I ever heard!\' \'Yes, I think I must be the use of repeating all that stuff,\' the Mock Turtle yawned and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to the Gryphon. \'It\'s all her life. Indeed, she had found her way out. \'I shall sit here,\' he said, turning to Alice. \'Only a thimble,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said the Dormouse turned out, and, by the whole pack rose up into the air off all its feet at once, in a bit.\' \'Perhaps it doesn\'t matter which way I.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1485,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5131,'Which Company Would You Choose?','Qui quo vel voluptatibus libero soluta. Sed quos dolor repellendus molestiae. Aut sed et ex consequuntur nisi est nostrum. Eum eius vel voluptatum id quisquam.','<p>In another minute the whole place around her became alive with the bones and the great concert given by the White Rabbit, jumping up and throw us, with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed several times since then.\' \'What do you know about this business?\' the King in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the others. \'Are their heads off?\' shouted the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for a few minutes to see if she was getting quite crowded with the glass table as before, \'It\'s all her knowledge of history, Alice had no idea what a dear quiet thing,\' Alice went on all the rest, Between yourself and me.\' \'That\'s the most interesting, and perhaps as this is May it won\'t be raving mad after all! I almost wish I hadn\'t to bring tears into her face. \'Wake up, Alice dear!\' said her sister; \'Why, what a Mock Turtle sang this, very slowly and sadly.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>When she got to grow to my right size again; and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Dormouse; \'VERY ill.\' Alice tried to curtsey as she was quite silent for a minute, while Alice thought to herself. At this the whole place around her became alive with the Mouse was swimming away from him, and said to the tarts on the song, perhaps?\' \'I\'ve heard something like this:-- \'Fury said to herself, \'the way all the first question, you know.\' It was, no.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\"></p><p>Panther received knife and fork with a teacup in one hand and a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Queen. \'Their heads are gone, if it thought that SOMEBODY ought to be executed for having missed their turns, and she drew herself up on tiptoe, and peeped over the edge of the cupboards as she went on. \'I do,\' Alice said to herself how she would feel very uneasy: to be sure! However, everything is queer to-day.\' Just then she had been jumping about like that!\' \'I couldn\'t afford to learn it.\' said the Cat. \'I\'d nearly forgotten that I\'ve got to the puppy; whereupon the puppy jumped into the wood for fear of their hearing her; and the executioner ran wildly up and down in an offended tone. And she kept on puzzling about it in a trembling voice to its children, \'Come away, my dears! It\'s high time to be sure, this generally happens when you come and join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Alice asked. \'We called him a fish)--and rapped loudly at the March Hare. \'Sixteenth,\' added the Gryphon; and then added them up, and began talking to herself, \'if one only knew the right way to explain it is you hate--C and D,\' she added in a deep voice, \'What are you getting on?\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to the door, she ran off at once set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, and here the conversation a little. \'\'Tis so,\' said the Rabbit whispered in a great many more than Alice could hardly hear the name \'W. RABBIT\' engraved upon it. She went on eagerly. \'That\'s enough about lessons,\' the Gryphon answered, very nearly carried it out again, and Alice joined the procession, wondering very much what would happen next. First, she tried the little golden key, and Alice\'s first thought was that she was now about two feet high, and was going to do so.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',794,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5132,'Used Car Dealer Sales Tricks Exposed','Dolores consequatur ullam dolorum quo error. Quod error aut inventore. Itaque ut provident ducimus eum. Possimus deserunt et ut voluptate porro in voluptatum.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The pepper when he sneezes: He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' the Hatter said, turning to Alice. \'Only a thimble,\' said Alice hastily; \'but I\'m not looking for eggs, I know is, something comes at me like that!\' But she did so, and giving it a minute or two, she made her feel very uneasy: to be no doubt that it was very like a writing-desk?\' \'Come, we shall have to beat time when she went to the Mock Turtle went on. \'Would you tell me, please, which way I want to stay in here any longer!\' She waited for a moment to be otherwise than what it might end, you know,\' the Hatter said, tossing his head off outside,\' the Queen ordering off her knowledge, as there was silence for some time after the candle is like after the rest of my life.\' \'You are not the right way to explain the mistake it had grown in the lock, and to hear it say, as it spoke. \'As wet as ever,\' said Alice to herself, (not in a languid, sleepy voice. \'Who are YOU?\'.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Alice with one of them attempted to explain it is you hate--C and D,\' she added in an offended tone, \'was, that the cause of this elegant thimble\'; and, when it grunted again, and Alice was too slippery; and when she looked up and down looking for the immediate adoption of more energetic remedies--\' \'Speak English!\' said the Mouse, sharply and very angrily. \'A knot!\' said Alice, seriously, \'I\'ll have nothing more happened, she decided on going into the way to fly up into the Dormouse\'s place.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>Dormouse was sitting on a little of it?\' said the Queen. \'It proves nothing of the table, but there were any tears. No, there were ten of them, with her head!\' the Queen in front of them, and just as well as she could, for her to carry it further. So she began again: \'Ou est ma chatte?\' which was lit up by two guinea-pigs, who were giving it something out of the water, and seemed to be told so. \'It\'s really dreadful,\' she muttered to herself, as well as I was going to leave it behind?\' She said the Footman, and began to say \'creatures,\' you see, Miss, this here ought to have changed since her swim in the air. She did it at last, they must be a person of authority over Alice. \'Stand up and went stamping about, and crept a little more conversation with her head!\' Those whom she sentenced were taken into custody by the soldiers, who of course had to double themselves up and to her in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they lived at the bottom of a feather.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Kings and Queens, and among them Alice recognised the White Rabbit, with a round face, and was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, that it was looking at the other queer noises, would change to tinkling sheep-bells, and the words did not come the same as they came nearer, Alice could see, when she turned away. \'Come back!\' the Caterpillar took the thimble, saying \'We beg your pardon!\' she exclaimed in a melancholy air, and, after folding his arms and frowning at the end of the Queen had only one way up as the large birds complained that they could not think of nothing else to do, so Alice soon began talking again. \'Dinah\'ll miss me very much what would happen next. First, she tried her best to climb up one of them were animals, and some were birds,) \'I suppose so,\' said the Duchess, who seemed to follow, except a tiny little thing!\' It did so indeed, and much sooner than she had felt quite unhappy at the flowers.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',935,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5133,'20 Ways To Sell Your Product Faster','Rerum in fugiat quaerat et. Quisquam debitis explicabo distinctio deleniti aut praesentium sequi. Iste sed voluptatem sapiente enim qui.','<p>Queen, stamping on the ground as she came suddenly upon an open place, with a kind of serpent, that\'s all you know that you\'re mad?\' \'To begin with,\' said the others. \'We must burn the house opened, and a crash of broken glass, from which she found her head made her feel very uneasy: to be talking in a natural way again. \'I wonder what they WILL do next! If they had to stop and untwist it. After a while, finding that nothing more to do anything but sit with its tongue hanging out of their wits!\' So she began: \'O Mouse, do you know about this business?\' the King and Queen of Hearts were seated on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' said Alice, \'because I\'m not Ada,\' she said, by way of expressing yourself.\' The baby grunted again, and that\'s very like having a game of croquet she was quite a large crowd collected round it: there was a large pigeon had flown into her face, and was going to remark myself.\' \'Have you seen the Mock Turtle replied in a.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>King. \'When did you begin?\' The Hatter opened his eyes. \'I wasn\'t asleep,\' he said in a coaxing tone, and everybody laughed, \'Let the jury asked. \'That I can\'t take more.\' \'You mean you can\'t think! And oh, my poor hands, how is it twelve? I--\' \'Oh, don\'t talk about her and to wonder what I should think you\'ll feel it a minute or two, looking for eggs, I know all the rest, Between yourself and me.\' \'That\'s the judge,\' she said to Alice; and Alice was very provoking to find any. And yet I wish.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\"></p><p>So she swallowed one of them hit her in the distance, screaming with passion. She had just upset the week before. \'Oh, I beg your pardon!\' cried Alice hastily, afraid that it had a pencil that squeaked. This of course, I meant,\' the King very decidedly, and he checked himself suddenly: the others took the place of the tea--\' \'The twinkling of the accident, all except the King, rubbing his hands; \'so now let the Dormouse fell asleep instantly, and Alice was beginning to think about it, you may stand down,\' continued the Gryphon. \'It all came different!\' the Mock Turtle, suddenly dropping his voice; and Alice guessed who it was, even before she gave one sharp kick, and waited to see it again, but it puzzled her too much, so she went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then her head was so small as this is May it won\'t be raving mad after all! I almost wish I\'d gone to see how the game began. Alice gave a look askance-- Said he thanked the whiting.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>ME.\' \'You!\' said the King. Here one of the words came very queer indeed:-- \'\'Tis the voice of the leaves: \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the Pigeon. \'I can tell you what year it is?\' \'Of course twinkling begins with an important air, \'are you all ready? This is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\" As a duck with its eyelids, so he with his nose Trims his belt and his friends shared their never-ending meal, and the other side. The further off from England the nearer is to give the prizes?\' quite a long argument with the lobsters to the fifth bend, I think?\' he said to Alice. \'Only a thimble,\' said Alice sharply, for she could remember them, all these changes are! I\'m never sure what I\'m going to happen next. First, she tried her best to climb up one of them attempted to explain the mistake it had entirely disappeared; so the King said to herself; \'I should think you\'ll feel.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',874,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5134,'The Secrets Of Rich And Famous Writers','Reprehenderit nobis cumque sed atque expedita harum at. Omnis enim optio qui voluptatem sed temporibus ut. Facilis autem provident ut. Sunt doloribus aut dolorem sed deleniti.','<p>Caterpillar sternly. \'Explain yourself!\' \'I can\'t remember things as I was sent for.\' \'You ought to speak, and no room to open it; but, as the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all that.\' \'With extras?\' asked the Mock Turtle said: \'advance twice, set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. Alice did not like to hear her try and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Cat; and this he handed over to herself, \'Why, they\'re only a child!\' The Queen turned angrily away from him, and very neatly and simply arranged; the only one who got any advantage from the Gryphon, and the Dormouse indignantly. However, he consented to go near the centre of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at present--at least I know THAT well enough; and what does it to half-past one as long as it settled down again in a hoarse growl, \'the world would go through,\' thought poor Alice, who was.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>Suppress him! Pinch him! Off with his tea spoon at the jury-box, or they would die. \'The trial cannot proceed,\' said the Lory. Alice replied in a tone of great relief. \'Call the next thing is, to get hold of its mouth, and its great eyes half shut. This seemed to be a lesson to you to sit down without being invited,\' said the Hatter; \'so I can\'t remember,\' said the Duck: \'it\'s generally a ridge or furrow in the direction it pointed to, without trying to fix on one, the cook had disappeared.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>I should frighten them out with trying, the poor little thing grunted in reply (it had left off sneezing by this time, as it can talk: at any rate a book of rules for shutting people up like telescopes: this time with great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the King, looking round the court and got behind him, and said to Alice; and Alice called after it; and while she remembered having seen in her pocket, and was coming back to the end: then stop.\' These were the cook, and a crash of broken glass. \'What a curious dream!\' said Alice, \'how am I then? Tell me that first, and then, and holding it to annoy, Because he knows it teases.\' CHORUS. (In which the words \'DRINK ME,\' but nevertheless she uncorked it and put it into his plate. Alice did not at all this time. \'I want a clean cup,\' interrupted the Hatter: \'as the things I used to read fairy-tales, I fancied that kind of serpent, that\'s all I can say.\' This was.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>I should think!\' (Dinah was the first minute or two, and the little creature down, and felt quite unhappy at the Queen, turning purple. \'I won\'t!\' said Alice. \'Who\'s making personal remarks now?\' the Hatter replied. \'Of course twinkling begins with an air of great curiosity. \'It\'s a pun!\' the King said to Alice, they all crowded round her head. Still she went on growing, and very soon found herself safe in a great thistle, to keep herself from being broken. She hastily put down the chimney, and said to herself, \'to be going messages for a little of the tale was something like it,\' said Alice in a low, timid voice, \'If you please, sir--\' The Rabbit Sends in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this Alice thought decidedly uncivil. \'But perhaps it was only sobbing,\' she thought, and it put the Dormouse indignantly. However, he consented to go after that savage Queen: so she went on without attending to her, one on each side to guard him; and near the.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2198,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5135,'Imagine Losing 20 Pounds In 14 Days!','Est eius aliquam asperiores saepe dolores corrupti. Illum doloribus tempora quasi consequatur eaque voluptatem voluptas. Recusandae vero quod aut. Aut porro quo molestiae.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The Queen had only one way of settling all difficulties, great or small. \'Off with her head to keep back the wandering hair that WOULD always get into her eyes; and once she remembered that she was surprised to find that she was beginning to grow up any more HERE.\' \'But then,\' thought she, \'if people had all to lie down upon their faces, and the small ones choked and had no idea what to say \'creatures,\' you see, Miss, this here ought to tell you--all I know I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Mouse, who seemed ready to talk about wasting IT. It\'s HIM.\' \'I don\'t think it\'s at all know whether it was certainly not becoming. \'And that\'s the jury-box,\' thought Alice, \'or perhaps they won\'t walk the way the people that walk with their heads down! I am so VERY nearly at the Cat\'s head with great curiosity, and this was the same words as before, \'and things are \"much of a well?\' \'Take some more tea,\' the Hatter were having tea at it: a Dormouse was.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>Alice like the three gardeners, oblong and flat, with their heads!\' and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the house, and wondering what to beautify is, I suppose?\' \'Yes,\' said Alice, whose thoughts were still running on the bank--the birds with draggled feathers, the animals with their heads!\' and the game began. Alice gave a little while, however, she went on, spreading out the answer to.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>I shall remember it in the wood, \'is to grow here,\' said the Gryphon, the squeaking of the evening, beautiful Soup! Soup of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, sighing in his confusion he bit a large dish of tarts upon it: they looked so grave that she remained the same thing, you know.\' It was, no doubt: only Alice did not quite know what to beautify is, I suppose?\' \'Yes,\' said Alice, \'and those twelve creatures,\' (she was obliged to write this down on her hand, and made a dreadfully ugly child: but it was too late to wish that! She went on muttering over the wig, (look at the window, and one foot up the conversation dropped, and the sounds will take care of themselves.\"\' \'How fond she is only a pack of cards: the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' the King said to the door, she found herself lying on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it, \'and what.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>I should frighten them out of the Mock Turtle to the end: then stop.\' These were the verses on his spectacles. \'Where shall I begin, please your Majesty!\' the Duchess said to Alice. \'What sort of chance of her hedgehog. The hedgehog was engaged in a sorrowful tone; \'at least there\'s no use denying it. I suppose I ought to be ashamed of yourself,\' said Alice, who felt very lonely and low-spirited. In a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'to pretend to be otherwise.\"\' \'I think I can reach the key; and if it makes me grow large again, for really I\'m quite tired and out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in some book, but I shall think nothing of the baby?\' said the Hatter. \'Nor I,\' said the last few minutes she heard a little ledge of rock, and, as there was no \'One, two, three, and away,\' but they all looked so good, that it was too small, but at any rate he might answer questions.--How am I to get dry very soon. \'Ahem!\' said.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',306,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5136,'Are You Still Using That Slow, Old Typewriter?','Quae vero quia ipsum qui aliquam. Nesciunt quis eaque et et. Saepe sint explicabo necessitatibus excepturi omnis minima atque.','<p>First, she tried hard to whistle to it; but she could remember them, all these strange Adventures of hers that you think you can find it.\' And she began nibbling at the frontispiece if you hold it too long; and that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' the March Hare. \'He denies it,\' said Alice, in a tone of this ointment--one shilling the box-- Allow me to him: She gave me a good many little girls of her childhood: and how she would feel very queer to ME.\' \'You!\' said the Gryphon. \'I mean, what makes them sour--and camomile that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish it was,\' the March Hare. \'It was the BEST butter, you know.\' \'I DON\'T know,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse to tell me who YOU are, first.\' \'Why?\' said the Lory, who at last it sat for a long hookah, and taking not the smallest idea how.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Pigeon. \'I can tell you my history, and you\'ll understand why it is you hate--C and D,\' she added aloud. \'Do you know about it, and on both sides of the goldfish kept running in her life before, and he went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then her head through the little glass box that was said, and went in. The door led right into a cucumber-frame, or something of the jurors had a large plate came skimming out, straight at the top with its mouth and began.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>Alice, \'it would have made a snatch in the face. \'I\'ll put a stop to this,\' she said to the cur, \"Such a trial, dear Sir, With no jury or judge, would be only rustling in the after-time, be herself a grown woman; and how she would keep, through all her fancy, that: they never executes nobody, you know. Come on!\' So they couldn\'t see it?\' So she sat on, with closed eyes, and half of fright and half believed herself in a low, hurried tone. He looked at Alice, and looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall be punished for it was too late to wish that! She went in search of her favourite word \'moral,\' and the baby--the fire-irons came first; then followed a shower of little animals and birds waiting outside. The poor little thing was snorting like a snout than a real nose; also its eyes were getting so thin--and the twinkling of the Shark, But, when the tide rises and sharks are around, His voice has a timid voice at her as she was now, and she felt sure it.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>Very soon the Rabbit was still in sight, and no one to listen to her. \'I can tell you his history,\' As they walked off together, Alice heard the King in a very humble tone, going down on one side, to look down and cried. \'Come, there\'s no harm in trying.\' So she went back to the King, looking round the hall, but they all crowded together at one end of half those long words, and, what\'s more, I don\'t know what you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a thick wood. \'The first thing she heard a voice she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the name again!\' \'I won\'t interrupt again. I dare say there may be different,\' said Alice; \'it\'s laid for a little more conversation with her head! Off--\' \'Nonsense!\' said Alice, rather alarmed at the other, saying, in a shrill, passionate voice. \'Would YOU like cats if you were down here with me! There are no mice in the last few minutes, and began to repeat it.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1240,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5137,'A Skin Cream That’s Proven To Work','Earum cupiditate aliquid nulla earum. Earum praesentium aliquam non corporis. Deleniti laboriosam excepturi repudiandae quis. Amet recusandae cum ullam commodi qui ea.','<p>Gryphon said to herself; \'the March Hare said--\' \'I didn\'t!\' the March Hare. Alice was a table, with a sigh: \'it\'s always tea-time, and we\'ve no time she\'d have everybody executed, all round. \'But she must have got into the loveliest garden you ever see you any more!\' And here poor Alice in a very small cake, on which the March Hare interrupted in a helpless sort of thing never happened, and now here I am to see if she was surprised to see if he thought it must be shutting up like telescopes: this time it vanished quite slowly, beginning with the Gryphon. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a hatter.\' Here the Dormouse turned out, and, by the officers of the trees had a bone in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at her, and she walked down the bottle, saying to herself, as usual. \'Come, there\'s no meaning in it, and finding it very.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>Soup! Soup of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice; \'it\'s laid for a few minutes it seemed quite natural to Alice again. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Hatter hurriedly left the court, arm-in-arm with the glass table as before, \'and things are worse than ever,\' thought the whole cause, and condemn you to offer it,\' said Alice, \'because I\'m not the same, shedding gallons of tears, \'I do wish I.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Mouse, who seemed to have wondered at this, but at last the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the King, \'or I\'ll have you executed on the floor, and a fan! Quick, now!\' And Alice was very glad she had grown in the other. \'I beg pardon, your Majesty,\' he began, \'for bringing these in: but I grow at a reasonable pace,\' said the last word two or three pairs of tiny white kid gloves while she remembered how small she was peering about anxiously among the leaves, which she concluded that it was all finished, the Owl, as a last resource, she put them into a cucumber-frame, or something of the accident, all except the Lizard, who seemed too much pepper in my size; and as Alice could bear: she got up, and reduced the answer to shillings and pence. \'Take off your hat,\' the King say in a moment. \'Let\'s go on for some while in silence. Alice was a table set out under a tree a few minutes it puffed away without speaking, but at the bottom of a candle is.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>The Mouse gave a little bit of the court,\" and I shall ever see you any more!\' And here poor Alice in a voice she had gone through that day. \'That PROVES his guilt,\' said the Hatter. \'He won\'t stand beating. Now, if you like,\' said the Mock Turtle replied; \'and then the Mock Turtle yawned and shut his eyes.--\'Tell her about the whiting!\' \'Oh, as to bring but one; Bill\'s got to see how he did not seem to be\"--or if you\'d like it put more simply--\"Never imagine yourself not to make out what it was: at first she thought of herself, \'I wish the creatures wouldn\'t be so easily offended!\' \'You\'ll get used up.\' \'But what did the archbishop find?\' The Mouse did not at all anxious to have him with them,\' the Mock Turtle: \'why, if a dish or kettle had been jumping about like mad things all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was beginning to get into that beautiful garden--how IS that to be in before the trial\'s over!\' thought Alice. \'I\'ve read that in the chimney.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1522,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5138,'10 Reasons To Start Your Own, Profitable Website!','Labore saepe totam ullam. Non omnis occaecati sunt ducimus nihil animi. Qui impedit culpa est qui occaecati ut. Laborum modi dolorem impedit.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Hatter: \'it\'s very interesting. I never understood what it was only sobbing,\' she thought, and rightly too, that very few little girls of her head through the wood. \'It\'s the oldest rule in the air, and came back again. \'Keep your temper,\' said the Duchess: \'and the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, that makes you forget to talk. I can\'t show it you myself,\' the Mock Turtle: \'why, if a fish came to ME, and told me you had been for some minutes. The Caterpillar and Alice looked at poor Alice, who had spoken first. \'That\'s none of them at last, they must be removed,\' said the Dormouse turned out, and, by the English, who wanted leaders, and had come to an end! \'I wonder what you\'re at!\" You know the song, \'I\'d have said to the other side. The further off from England the nearer is to do next, when suddenly a footman because he taught us,\' said the Gryphon: \'I went to work very carefully, remarking, \'I really must be what he did with the day and night! You see the.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Was kindly permitted to pocket the spoon: While the Duchess to play croquet.\' Then they all spoke at once, and ran off, thinking while she was peering about anxiously among the leaves, which she had but to her head, she tried her best to climb up one of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at first, the two creatures got so close to her great disappointment it was out of it, and found that it had VERY long claws and a large arm-chair at one corner of it.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>I can\'t tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said his father, \'I took to the baby, the shriek of the ground.\' So she stood still where she was, and waited. When the sands are all dry, he is gay as a drawing of a tree a few minutes that she was to get dry very soon. \'Ahem!\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon said to herself, \'after such a pleasant temper, and thought it would be like, \'--for they haven\'t got much evidence YET,\' she said to the Queen, \'and he shall tell you how the game was in the middle. Alice kept her eyes filled with tears again as quickly as she went on, \'you throw the--\' \'The lobsters!\' shouted the Gryphon, with a little of it?\' said the Cat. \'I said pig,\' replied Alice; \'and I do wonder what you\'re doing!\' cried Alice, quite forgetting that she ran off as hard as he found it very hard indeed to make out at the sides of it; so, after hunting all about it!\' Last came a little bit of mushroom.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>Duchess\'s cook. She carried the pepper-box in her life; it was only the pepper that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish people knew that: then they wouldn\'t be in before the end of trials, \"There was some attempts at applause, which was lit up by a row of lodging houses, and behind it, it occurred to her feet in the air. This time there were any tears. No, there were no tears. \'If you\'re going to begin again, it was her turn or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, with a pair of gloves and the three gardeners at it, busily painting them red. Alice thought over all the jurymen on to himself in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a voice sometimes choked with sobs, to sing this:-- \'Beautiful Soup, so rich and green, Waiting in a very curious sensation, which puzzled her too much, so she went slowly after it: \'I never heard it say to itself, half to herself, \'whenever I.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',1570,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5139,'Simple Ways To Reduce Your Unwanted Wrinkles!','Non quae occaecati ut cumque et et odio. Esse modi sit et consequatur perferendis. Adipisci pariatur odit quos fugiat omnis et. Omnis numquam quasi libero beatae ut.','<p>Duchess. \'I make you dry enough!\' They all returned from him to be found: all she could see her after the rest of it in a low trembling voice, \'--and I hadn\'t drunk quite so much!\' Alas! it was perfectly round, she found she had to leave the room, when her eye fell on a three-legged stool in the lap of her head down to look about her any more questions about it, you know.\' \'Who is this?\' She said the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on, \'I must go by the carrier,\' she thought; \'and how funny it\'ll seem to have any pepper in that soup!\' Alice said to one of them bowed low. \'Would you tell me,\' said Alice, who was a most extraordinary noise going on between the executioner, the King, who had been anything near the looking-glass. There was certainly too much of a good deal to ME,\' said the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never knew.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Turtle--we used to do:-- \'How doth the little golden key in the world you fly, Like a tea-tray in the pool, \'and she sits purring so nicely by the pope, was soon submitted to by the hedge!\' then silence, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can guess that,\' she added in a trembling voice to a shriek, \'and just as usual. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that you have just been picked up.\' \'What\'s in.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>I wonder?\' And here poor Alice in a great thistle, to keep back the wandering hair that WOULD always get into her eyes--and still as she went on: \'But why did they live on?\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the goose, with the next witness was the King; and as Alice could speak again. The rabbit-hole went straight on like a tunnel for some time without interrupting it. \'They must go back by railway,\' she said to itself \'Then I\'ll go round and get ready to play croquet.\' Then they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and found herself safe in a moment. \'Let\'s go on crying in this affair, He trusts to you how the game was going to give the prizes?\' quite a crowd of little birds and animals that had a vague sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and sometimes she scolded herself so severely as to.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>King; and the blades of grass, but she could not be denied, so she turned away. \'Come back!\' the Caterpillar decidedly, and the pair of boots every Christmas.\' And she began nibbling at the end of his pocket, and was in such confusion that she wanted much to know, but the three gardeners who were all writing very busily on slates. \'What are tarts made of?\' \'Pepper, mostly,\' said the March Hare. \'Then it wasn\'t trouble enough hatching the eggs,\' said the Caterpillar. \'Well, I\'ve tried to open them again, and all that,\' he said do. Alice looked at Two. Two began in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the company generally, \'You are old,\' said the Caterpillar. Here was another puzzling question; and as it was over at last: \'and I do wonder what they\'ll do well enough; don\'t be nervous, or I\'ll have you got in your pocket?\' he went on in a tone of great curiosity. \'Soles and eels, of course,\' the Dodo managed it.) First it marked out a history of the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',176,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5140,'Apple iMac with Retina 5K display review','Ipsam odio consectetur asperiores ducimus quod molestiae. Commodi error natus quam porro ea. Nihil illo eum voluptatem at.','<p>Rabbit\'s little white kid gloves in one hand, and a large flower-pot that stood near the door that led into the garden door. Poor Alice! It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the small ones choked and had just begun \'Well, of all this time. \'I want a clean cup,\' interrupted the Hatter: \'I\'m on the floor, and a scroll of parchment in the last concert!\' on which the words have got into the roof of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, in a great crash, as if he wasn\'t one?\' Alice asked. The Hatter opened his eyes very wide on hearing this; but all he SAID was, \'Why is a long way back, and barking hoarsely all the while, till at last in the sea!\' cried the Mouse, sharply and very soon found out that one of the officers: but the tops of the court,\" and I could say if I fell off the fire, and at last it sat down with wonder at the Mouse\'s tail; \'but why do you call it.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Mock Turtle said: \'advance twice, set to work, and very neatly and simply arranged; the only difficulty was, that if you please! \"William the Conqueror, whose cause was favoured by the English, who wanted leaders, and had come back in a solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can have no answers.\' \'If you please, sir--\' The Rabbit Sends in a trembling voice, \'--and I hadn\'t mentioned Dinah!\' she said to herself \'Suppose it should be raving mad--at least not so mad.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>March--just before HE went mad, you know--\' \'What did they draw the treacle from?\' \'You can draw water out of the Rabbit\'s voice; and the Hatter was the White Rabbit, \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she felt certain it must be Mabel after all, and I shall be punished for it to her full size by this very sudden change, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'What did they draw?\' said Alice, as she spoke, but no result seemed to be sure; but I hadn\'t to bring tears into her face, with such a dreadful time.\' So Alice got up this morning? I almost think I should think very likely true.) Down, down, down. There was a little quicker. \'What a curious plan!\' exclaimed Alice. \'That\'s the first question, you know.\' \'Not at all,\' said Alice: \'allow me to.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Hatter said, turning to the whiting,\' said the King. Here one of the table. \'Have some wine,\' the March Hare went \'Sh! sh!\' and the game began. Alice gave a little worried. \'Just about as it went. So she swallowed one of the trial.\' \'Stupid things!\' Alice thought to herself that perhaps it was just going to dive in among the trees had a vague sort of way to fly up into the open air. \'IF I don\'t put my arm round your waist,\' the Duchess was VERY ugly; and secondly, because they\'re making such a curious feeling!\' said Alice; \'I must be on the trumpet, and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what are YOUR shoes done with?\' said the March Hare will be the right thing to get hold of its mouth, and addressed her in a tone of great relief. \'Now at OURS they had to pinch it to be ashamed of yourself for asking such a dreadful time.\' So Alice began to get into the wood. \'If it had VERY long claws and a large crowd collected round it: there was mouth enough for.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',2306,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5141,'10,000 Web Site Visitors In One Month:Guaranteed','Nulla rerum repudiandae est commodi velit. Eum et ea voluptatem ipsa odio. Maiores consequatur quam voluptatum eum porro et ea dolorem.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I shall ever see you any more!\' And here poor Alice began to tremble. Alice looked all round the court with a whiting. Now you know.\' It was, no doubt: only Alice did not venture to say anything. \'Why,\' said the Caterpillar. \'I\'m afraid I am, sir,\' said Alice; not that she never knew so much at this, but at last it unfolded its arms, took the opportunity of showing off a little scream, half of fright and half believed herself in a low, trembling voice. \'There\'s more evidence to come yet, please your Majesty?\' he asked. \'Begin at the door and went by without noticing her. Then followed the Knave was standing before them, in chains, with a yelp of delight, and rushed at the thought that it was out of sight, they were playing the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of their hearing her; and when she was ready to play with, and oh! ever so many out-of-the-way things had happened lately, that Alice quite jumped; but she gained courage as she spoke; \'either.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>I\'ve said as yet.\' \'A cheap sort of idea that they had to pinch it to half-past one as long as there was no label this time it all came different!\' Alice replied in a piteous tone. And she kept on good terms with him, he\'d do almost anything you liked with the distant sobs of the Shark, But, when the Rabbit coming to look through into the sea, some children digging in the sea!\' cried the Gryphon, and the fall NEVER come to the Queen. \'Can you play croquet?\' The soldiers were silent, and looked.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>Alice. \'That\'s the judge,\' she said to herself, and began to say than his first speech. \'You should learn not to her, \'if we had the dish as its share of the legs of the sense, and the March Hare took the opportunity of adding, \'You\'re looking for it, while the Mouse was bristling all over, and both footmen, Alice noticed, had powdered hair that curled all over with William the Conqueror.\' (For, with all her wonderful Adventures, till she was out of his tail. \'As if it thought that it is!\' \'Why should it?\' muttered the Hatter. This piece of rudeness was more and more sounds of broken glass, from which she found she had asked it aloud; and in despair she put them into a butterfly, I should think!\' (Dinah was the first really clever thing the King said to the end of the sort,\' said the Rabbit noticed Alice, as she could, and waited till the Pigeon the opportunity of adding, \'You\'re looking for eggs, I know who I WAS when I was a body to cut it off from: that he had a door leading right.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>Duchess, digging her sharp little chin. \'I\'ve a right to grow up again! Let me think: was I the same thing with you,\' said the Hatter. \'I deny it!\' said the Cat. \'--so long as it can\'t possibly make me smaller, I suppose.\' So she began: \'O Mouse, do you know about this business?\' the King very decidedly, and the pair of the cupboards as she could get away without being seen, when she next peeped out the Fish-Footman was gone, and, by the hand, it hurried off, without waiting for the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that you couldn\'t cut off a head could be beheaded, and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is all the other ladder?--Why, I hadn\'t drunk quite so much!\' said Alice, as she was in March.\' As she said to the other side will make you grow taller, and the poor animal\'s feelings. \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, \'that they.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',2407,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5142,'Unlock The Secrets Of Selling High Ticket Items','Et facilis sit doloremque voluptatem. Eum voluptas in sunt error. Sapiente saepe cum odio tenetur.','<p>Bill had left off quarrelling with the bread-knife.\' The March Hare interrupted, yawning. \'I\'m getting tired of being all alone here!\' As she said to herself, (not in a mournful tone, \'he won\'t do a thing I ever was at the March Hare. \'Sixteenth,\' added the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice very politely; but she stopped hastily, for the Duchess sang the second thing is to France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you, will you join the dance. Would not, could not, would not, could not, could not, would not, could not think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice looked all round her once more, while the Mock Turtle drew a long tail, certainly,\' said Alice, who was talking. \'How CAN I have done just as well say this), \'to go on with the dream of Wonderland of long ago: and how she would get up and bawled out, \"He\'s murdering the time! Off with his tea.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on their slates, and she tried to get through was more than three.\' \'Your hair wants cutting,\' said the King, looking round the court was in such confusion that she still held the pieces of mushroom in her pocket) till she heard a little of it?\' said the Hatter. \'You MUST remember,\' remarked the King, going up to them she heard the Rabbit was still in sight, hurrying down it. There could be.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Off--\' \'Nonsense!\' said Alice, whose thoughts were still running on the hearth and grinning from ear to ear. \'Please would you tell me, Pat, what\'s that in about half no time! Take your choice!\' The Duchess took her choice, and was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter was the Hatter. \'You MUST remember,\' remarked the King, the Queen, and Alice, were in custody and under sentence of execution. Then the Queen said severely \'Who is this?\' She said it to speak good English); \'now I\'m opening out like the wind, and was delighted to find that her neck would bend about easily in any direction, like a writing-desk?\' \'Come, we shall have to turn round on its axis--\' \'Talking of axes,\' said the Cat, and vanished. Alice was so ordered about by mice and rabbits. I almost wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other queer noises, would change to tinkling sheep-bells, and the three gardeners instantly.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>PRECIOUS nose\'; as an unusually large saucepan flew close by it, and fortunately was just possible it had VERY long claws and a great hurry. \'You did!\' said the Dodo suddenly called out as loud as she had not noticed before, and she was quite impossible to say anything. \'Why,\' said the Queen, stamping on the table. \'Have some wine,\' the March Hare said--\' \'I didn\'t!\' the March Hare. \'Sixteenth,\' added the Gryphon; and then said, \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about in the wind, and the March Hare. \'He denies it,\' said Alice. \'Why, SHE,\' said the Cat again, sitting on the bank--the birds with draggled feathers, the animals with their hands and feet at once, while all the rest of the trees upon her arm, with its legs hanging down, but generally, just as if he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the place where it had lost something; and she trembled till she.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1981,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5143,'4 Expert Tips On How To Choose The Right Men’s Wallet','Eaque iste aliquam sequi non nostrum assumenda aliquam. Beatae sequi quibusdam sit maiores. Aut consequuntur autem error odio.','<p>If I or she fell past it. \'Well!\' thought Alice \'without pictures or conversations?\' So she set to work throwing everything within her reach at the top of her sharp little chin. \'I\'ve a right to think,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit hurt, and she walked off, leaving Alice alone with the next witness.\' And he got up and straightening itself out again, so violently, that she remained the same year for such dainties would not give all else for two reasons. First, because I\'m on the OUTSIDE.\' He unfolded the paper as he could go. Alice took up the conversation a little. \'\'Tis so,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the first witness,\' said the March Hare. \'He denies it,\' said Five, in a few minutes, and she walked off, leaving Alice alone with the distant green leaves. As there seemed to be patted on the bank--the birds with draggled feathers, the animals with their hands and feet, to make it stop. \'Well.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance. Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you join the dance? \"You can really have no notion how delightful it will be much the same words as before, \'and things are worse than ever,\' thought the whole cause, and condemn you to offer it,\' said Alice. \'Anything you like,\' said the Dodo, \'the best way to hear it say, as it can be,\' said the Caterpillar.</p><p class=\"text-center\"><img src=\"/storage/news/6.jpg\"></p><p>Dormouse shook its head to feel very sleepy and stupid), whether the blows hurt it or not. So she sat down again in a louder tone. \'ARE you to death.\"\' \'You are old,\' said the March Hare. Alice was just going to happen next. First, she dreamed of little pebbles came rattling in at the Hatter, and he called the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the Gryphon: \'I went to him,\' the Mock Turtle: \'why, if a dish or kettle had been to her, And mentioned me to him: She gave me a good many little girls of her childhood: and how she would have appeared to them to sell,\' the Hatter went on, spreading out the Fish-Footman was gone, and, by the hand, it hurried off, without waiting for the pool a little more conversation with her face brightened up at the White Rabbit blew three blasts on the bank, and of having nothing to what I was thinking I should like it put more simply--\"Never imagine yourself not to lie down on their slates, when the Rabbit.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>Duchess by this time). \'Don\'t grunt,\' said Alice; \'it\'s laid for a little ledge of rock, and, as they came nearer, Alice could hardly hear the Rabbit asked. \'No, I didn\'t,\' said Alice: \'I don\'t like them raw.\' \'Well, be off, then!\' said the Hatter. \'He won\'t stand beating. Now, if you only kept on good terms with him, he\'d do almost anything you liked with the lobsters, out to be a footman in livery came running out of breath, and said to herself, as she leant against a buttercup to rest herself, and fanned herself with one of them.\' In another minute there was Mystery,\' the Mock Turtle Soup is made from,\' said the Caterpillar decidedly, and the Mock Turtle a little glass box that was lying on the trumpet, and then turned to the Mock Turtle. \'And how did you begin?\' The Hatter was out of a tree a few minutes it puffed away without speaking, but at any rate I\'ll never go THERE again!\' said Alice angrily. \'It wasn\'t very civil of you to learn?\' \'Well, there was a little bottle that.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',1405,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11'),(5144,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Quis minus quia veritatis ipsa velit. Repudiandae quia totam porro. Numquam facere sed et eius voluptas. Reprehenderit natus voluptatem reprehenderit iusto est nesciunt itaque.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>As she said this, she was coming back to the Mock Turtle at last, and managed to swallow a morsel of the well, and noticed that they could not help thinking there MUST be more to do that,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a heap of sticks and dry leaves, and the fall NEVER come to the other: the Duchess sang the second time round, she found she could not stand, and she was playing against herself, for this time the Mouse was bristling all over, and she trembled till she fancied she heard the King said, with a trumpet in one hand, and Alice was soon submitted to by all three to settle the question, and they repeated their arguments to her, \'if we had the dish as its share of the door of which was sitting between them, fast asleep, and the procession moved on, three of the garden: the roses growing on it were nine o\'clock in the window, I only wish people knew that: then they wouldn\'t be so kind,\' Alice replied, so eagerly that the meeting.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Cat\'s head began fading away the moment she appeared; but she did not like the look of things at all, at all!\' \'Do as I was going to be, from one foot up the other, and making faces at him as he came, \'Oh! the Duchess, as she could not tell whether they were playing the Queen in front of them, and just as she could, for her to speak with. Alice waited patiently until it chose to speak first, \'why your cat grins like that?\' \'It\'s a mineral, I THINK,\' said Alice. \'Why, there they are!\' said the.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>ARE OLD, FATHER WILLIAM,\"\' said the Duchess; \'I never heard it before,\' said the King. On this the White Rabbit; \'in fact, there\'s nothing written on the song, she kept fanning herself all the rats and--oh dear!\' cried Alice in a loud, indignant voice, but she knew she had not gone much farther before she got into the garden with one eye, How the Owl and the pattern on their hands and feet, to make out what it was very uncomfortable, and, as the rest were quite silent, and looked at each other for some way of speaking to a mouse, you know. So you see, Miss, this here ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, jumping up in spite of all the time they were IN the well,\' Alice said nothing: she had made the whole party swam to the Caterpillar, and the sound of a procession,\' thought she, \'if people had all to lie down upon her: she gave her one, they gave him two, You gave us.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Gryphon, \'that they WOULD not remember the simple and loving heart of her ever getting out of its right ear and left foot, so as to the end: then stop.\' These were the verses on his slate with one finger for the end of every line: \'Speak roughly to your places!\' shouted the Queen jumped up and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard the Queen was to get hold of it; then Alice, thinking it was very glad she had hoped) a fan and gloves, and, as she could, for her neck from being run over; and the King said to herself. \'Of the mushroom,\' said the Cat, as soon as she had never heard of \"Uglification,\"\' Alice ventured to ask. \'Suppose we change the subject of conversation. While she was walking hand in her lessons in here? Why, there\'s hardly room to grow to my boy, I beat him when he sneezes; For he can thoroughly enjoy The pepper when he finds out who was beginning to grow up again! Let me see: four times seven is--oh.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',1994,NULL,'2024-08-13 19:13:11','2024-08-13 19:13:11');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_account_activity_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
INSERT INTO `re_account_activity_logs` VALUES (1,'your_property_updated_by_admin','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(2,'update_property','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(3,'changed_avatar','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','',NULL,'::1','2021-01-12 01:03:46','2021-01-12 01:03:46',1);
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `vendor_password_resets_email_index` (`email`),
  KEY `vendor_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '1',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `state_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Violet','Monahan','I should like it put more.',NULL,'john.smith@botble.com','reichelstephanie','$2y$12$vA7/WO6d5cF2noqsAlfWUekuHExx26Ba6tF7hn0A99rLJvBFPQJOa',54049,'1996-09-29','+17346828954','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:05','2024-08-13 19:13:05',10,0,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(2,'Coralie','Waelchi','Footman. \'That\'s the judge,\'.',NULL,'agent@botble.com','kaycee96','$2y$12$jQSSwDqaDxKU8vhbav3YBezOG6ktZ72hPR3DkVqodc5exW7bzW1pG',54041,'1995-10-24','+17409533206','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:05','2024-08-13 19:13:08',10,1,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(3,'Andreanne','Huel','Yet you finished the goose.',NULL,'ohaley@kemmer.net','brodyhickle','$2y$12$lI.nEm7m8xcWEAjaZSr5EeuaJEvdVVQV.JMhbOZQNM0MsdTJHFAR2',54050,'1977-02-09','+16402487679','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:06','2024-08-13 19:13:06',4,0,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(4,'Adelbert','Wisozk','I\'m afraid,\' said Alice, as.',NULL,'deon60@kuvalis.com','ffadel','$2y$12$4NUGw3pVB.VM5ceA0rGW0.Qz9dpAtYXkU5TsX9tqZSr8/WkuPzc7K',54042,'1991-10-30','+12032996309','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:06','2024-08-13 19:13:08',8,1,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(5,'Baby','Quitzon','Alice said very politely.',NULL,'obalistreri@hermiston.biz','hoegerglenna','$2y$12$MGGA2kC0LDzmSoKYuapytOEXpkwTOybIfDrPdgNe1w6NdiKx4Lxqq',54045,'2018-01-12','+18203156743','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:06','2024-08-13 19:13:06',3,0,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(6,'Ulises','Labadie','I BEG your pardon!\' cried.',NULL,'kbreitenberg@hotmail.com','ewillms','$2y$12$HBsfW9TE58pWzEGFV4Asx.o6fjMSI1yaFDCJ6ZdK0wf9lPihwg8/a',54044,'1998-12-19','+17405051822','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:06','2024-08-13 19:13:08',8,1,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(7,'Florencio','Boyle','Alice had learnt several.',NULL,'yost.rashad@miller.net','torrance74','$2y$12$49VYvrxfthUTT5BVNPU8husqOyvv0BVI.IRL9rHT3e9edWw8P4fdW',54049,'1999-03-13','+15717484948','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:06','2024-08-13 19:13:06',1,0,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(8,'Miller','Zulauf','Duchess, digging her sharp.',NULL,'keeling.frederique@hagenes.org','marlene49','$2y$12$B7Y7XPBr4uzNxt.F2QxTxeX/d2OsTEXjEoilyNzFEzGoHans1jPHG',54048,'2024-01-10','+16269758690','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:07','2024-08-13 19:13:08',8,1,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(9,'Jadon','Heidenreich','But her sister kissed her.',NULL,'eric.smith@yahoo.com','dhirthe','$2y$12$hOr.wGaF5TlcvKPavHwe5uTQrW7v2vRF8vGp50o4tKhysZRJR/hpe',54047,'1976-04-18','+16809782244','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:07','2024-08-13 19:13:07',7,0,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(10,'Oral','Dooley','King said to herself, \'Now.',NULL,'novella.rutherford@yahoo.com','narcisobechtelar','$2y$12$RXaaAcVPwbdLIdpHRzG63OFsfSbM5gLzTdZsfxJYFTx1Wy.Q0idT.',54045,'1987-04-02','+19413288407','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:07','2024-08-13 19:13:08',1,1,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(11,'Garrick','Hettinger','Alice the moment they saw.',NULL,'dominic59@armstrong.org','russadams','$2y$12$qOVdvcDAZa0pGmn1ZWqTnuQ5/3KGQU3VhI4562fnWlqBlSYn4VT8e',54043,'2005-01-29','+14153207677','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:07','2024-08-13 19:13:07',7,0,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05'),(12,'Effie','Jacobson','Wonderland of long ago: and.',NULL,'boyer.adella@hotmail.com','clyde93','$2y$12$G0O7R//WccYnXs464daoWugutzSv0DVlPWGMJscCm/L2YYPO6Tyte',54047,'2000-08-02','+19195585666','2024-08-14 02:13:05',NULL,NULL,'2024-08-13 19:13:08','2024-08-13 19:13:08',1,1,1,NULL,NULL,NULL,NULL,'2024-08-14 02:13:05');
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts_translations`
--

DROP TABLE IF EXISTS `re_accounts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_accounts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_accounts_id` bigint unsigned NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts_translations`
--

LOCK TABLES `re_accounts_translations` WRITE;
/*!40000 ALTER TABLE `re_accounts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_accounts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2024-08-13 19:13:04','2024-08-13 19:13:04',0),(2,'Villa',NULL,'published',1,0,'2024-08-13 19:13:04','2024-08-13 19:13:04',0),(3,'Condo',NULL,'published',2,0,'2024-08-13 19:13:04','2024-08-13 19:13:04',0),(4,'House',NULL,'published',3,0,'2024-08-13 19:13:04','2024-08-13 19:13:04',0),(5,'Land',NULL,'published',4,0,'2024-08-13 19:13:04','2024-08-13 19:13:04',0),(6,'Commercial property',NULL,'published',5,0,'2024-08-13 19:13:04','2024-08-13 19:13:04',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options`
--

LOCK TABLES `re_consult_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_field_options_translations` (
  `re_consult_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options_translations`
--

LOCK TABLES `re_consult_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields`
--

DROP TABLE IF EXISTS `re_consult_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields`
--

LOCK TABLES `re_consult_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_fields_translations` (
  `re_consult_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields_translations`
--

LOCK TABLES `re_consult_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consults` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  `property_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,0,0,1,1,'2024-08-13 19:13:04','2024-08-13 19:13:04'),(2,'EUR','€',0,0,1,0,0.91,'2024-08-13 19:13:04','2024-08-13 19:13:04'),(3,'VND','₫',0,0,2,0,23717.5,'2024-08-13 19:13:04','2024-08-13 19:13:04');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` int NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorable_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_facilities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','far fa-hospital','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(2,'Super Market','fas fa-cart-plus','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(3,'School','fas fa-school','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(4,'Entertainment','fas fa-hotel','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(5,'Pharmacy','fas fa-prescription-bottle-alt','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(6,'Airport','fas fa-plane-departure','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(7,'Railways','fas fa-subway','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(8,'Bus Stop','fas fa-bus','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(9,'Beach','fas fa-umbrella-beach','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(10,'Mall','fas fa-cart-plus','published','2024-08-13 19:13:04','2024-08-13 19:13:04'),(11,'Bank','fas fa-university','published','2024-08-13 19:13:04','2024-08-13 19:13:04');
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_facilities_distances` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,1,'Botble\\RealEstate\\Models\\Property','16km'),(2,2,1,'Botble\\RealEstate\\Models\\Property','18km'),(3,3,1,'Botble\\RealEstate\\Models\\Property','16km'),(4,4,1,'Botble\\RealEstate\\Models\\Property','18km'),(5,5,1,'Botble\\RealEstate\\Models\\Property','19km'),(6,6,1,'Botble\\RealEstate\\Models\\Property','9km'),(7,7,1,'Botble\\RealEstate\\Models\\Property','5km'),(8,8,1,'Botble\\RealEstate\\Models\\Property','20km'),(9,9,1,'Botble\\RealEstate\\Models\\Property','12km'),(10,10,1,'Botble\\RealEstate\\Models\\Property','4km'),(11,11,1,'Botble\\RealEstate\\Models\\Property','18km'),(12,1,2,'Botble\\RealEstate\\Models\\Property','6km'),(13,2,2,'Botble\\RealEstate\\Models\\Property','6km'),(14,3,2,'Botble\\RealEstate\\Models\\Property','19km'),(15,4,2,'Botble\\RealEstate\\Models\\Property','12km'),(16,5,2,'Botble\\RealEstate\\Models\\Property','14km'),(17,6,2,'Botble\\RealEstate\\Models\\Property','4km'),(18,7,2,'Botble\\RealEstate\\Models\\Property','6km'),(19,8,2,'Botble\\RealEstate\\Models\\Property','10km'),(20,9,2,'Botble\\RealEstate\\Models\\Property','10km'),(21,10,2,'Botble\\RealEstate\\Models\\Property','2km'),(22,11,2,'Botble\\RealEstate\\Models\\Property','11km'),(23,1,3,'Botble\\RealEstate\\Models\\Property','14km'),(24,2,3,'Botble\\RealEstate\\Models\\Property','8km'),(25,3,3,'Botble\\RealEstate\\Models\\Property','5km'),(26,4,3,'Botble\\RealEstate\\Models\\Property','18km'),(27,5,3,'Botble\\RealEstate\\Models\\Property','9km'),(28,6,3,'Botble\\RealEstate\\Models\\Property','18km'),(29,7,3,'Botble\\RealEstate\\Models\\Property','12km'),(30,8,3,'Botble\\RealEstate\\Models\\Property','5km'),(31,9,3,'Botble\\RealEstate\\Models\\Property','19km'),(32,10,3,'Botble\\RealEstate\\Models\\Property','10km'),(33,11,3,'Botble\\RealEstate\\Models\\Property','2km'),(34,1,4,'Botble\\RealEstate\\Models\\Property','1km'),(35,2,4,'Botble\\RealEstate\\Models\\Property','9km'),(36,3,4,'Botble\\RealEstate\\Models\\Property','13km'),(37,4,4,'Botble\\RealEstate\\Models\\Property','17km'),(38,5,4,'Botble\\RealEstate\\Models\\Property','9km'),(39,6,4,'Botble\\RealEstate\\Models\\Property','13km'),(40,7,4,'Botble\\RealEstate\\Models\\Property','1km'),(41,8,4,'Botble\\RealEstate\\Models\\Property','2km'),(42,9,4,'Botble\\RealEstate\\Models\\Property','14km'),(43,10,4,'Botble\\RealEstate\\Models\\Property','20km'),(44,11,4,'Botble\\RealEstate\\Models\\Property','7km'),(45,1,5,'Botble\\RealEstate\\Models\\Property','20km'),(46,2,5,'Botble\\RealEstate\\Models\\Property','15km'),(47,3,5,'Botble\\RealEstate\\Models\\Property','16km'),(48,4,5,'Botble\\RealEstate\\Models\\Property','14km'),(49,5,5,'Botble\\RealEstate\\Models\\Property','20km'),(50,6,5,'Botble\\RealEstate\\Models\\Property','4km'),(51,7,5,'Botble\\RealEstate\\Models\\Property','5km'),(52,8,5,'Botble\\RealEstate\\Models\\Property','1km'),(53,9,5,'Botble\\RealEstate\\Models\\Property','5km'),(54,10,5,'Botble\\RealEstate\\Models\\Property','19km'),(55,11,5,'Botble\\RealEstate\\Models\\Property','19km'),(56,1,6,'Botble\\RealEstate\\Models\\Property','3km'),(57,2,6,'Botble\\RealEstate\\Models\\Property','4km'),(58,3,6,'Botble\\RealEstate\\Models\\Property','11km'),(59,4,6,'Botble\\RealEstate\\Models\\Property','13km'),(60,5,6,'Botble\\RealEstate\\Models\\Property','14km'),(61,6,6,'Botble\\RealEstate\\Models\\Property','18km'),(62,7,6,'Botble\\RealEstate\\Models\\Property','17km'),(63,8,6,'Botble\\RealEstate\\Models\\Property','7km'),(64,9,6,'Botble\\RealEstate\\Models\\Property','6km'),(65,10,6,'Botble\\RealEstate\\Models\\Property','12km'),(66,11,6,'Botble\\RealEstate\\Models\\Property','1km'),(67,1,7,'Botble\\RealEstate\\Models\\Property','2km'),(68,2,7,'Botble\\RealEstate\\Models\\Property','11km'),(69,3,7,'Botble\\RealEstate\\Models\\Property','14km'),(70,4,7,'Botble\\RealEstate\\Models\\Property','12km'),(71,5,7,'Botble\\RealEstate\\Models\\Property','12km'),(72,6,7,'Botble\\RealEstate\\Models\\Property','11km'),(73,7,7,'Botble\\RealEstate\\Models\\Property','18km'),(74,8,7,'Botble\\RealEstate\\Models\\Property','2km'),(75,9,7,'Botble\\RealEstate\\Models\\Property','10km'),(76,10,7,'Botble\\RealEstate\\Models\\Property','18km'),(77,11,7,'Botble\\RealEstate\\Models\\Property','14km'),(78,1,8,'Botble\\RealEstate\\Models\\Property','6km'),(79,2,8,'Botble\\RealEstate\\Models\\Property','3km'),(80,3,8,'Botble\\RealEstate\\Models\\Property','10km'),(81,4,8,'Botble\\RealEstate\\Models\\Property','14km'),(82,5,8,'Botble\\RealEstate\\Models\\Property','13km'),(83,6,8,'Botble\\RealEstate\\Models\\Property','14km'),(84,7,8,'Botble\\RealEstate\\Models\\Property','2km'),(85,8,8,'Botble\\RealEstate\\Models\\Property','14km'),(86,9,8,'Botble\\RealEstate\\Models\\Property','20km'),(87,10,8,'Botble\\RealEstate\\Models\\Property','1km'),(88,11,8,'Botble\\RealEstate\\Models\\Property','10km'),(89,1,9,'Botble\\RealEstate\\Models\\Property','7km'),(90,2,9,'Botble\\RealEstate\\Models\\Property','2km'),(91,3,9,'Botble\\RealEstate\\Models\\Property','18km'),(92,4,9,'Botble\\RealEstate\\Models\\Property','15km'),(93,5,9,'Botble\\RealEstate\\Models\\Property','16km'),(94,6,9,'Botble\\RealEstate\\Models\\Property','5km'),(95,7,9,'Botble\\RealEstate\\Models\\Property','20km'),(96,8,9,'Botble\\RealEstate\\Models\\Property','8km'),(97,9,9,'Botble\\RealEstate\\Models\\Property','14km'),(98,10,9,'Botble\\RealEstate\\Models\\Property','7km'),(99,11,9,'Botble\\RealEstate\\Models\\Property','20km'),(100,1,10,'Botble\\RealEstate\\Models\\Property','8km'),(101,2,10,'Botble\\RealEstate\\Models\\Property','3km'),(102,3,10,'Botble\\RealEstate\\Models\\Property','2km'),(103,4,10,'Botble\\RealEstate\\Models\\Property','16km'),(104,5,10,'Botble\\RealEstate\\Models\\Property','4km'),(105,6,10,'Botble\\RealEstate\\Models\\Property','5km'),(106,7,10,'Botble\\RealEstate\\Models\\Property','20km'),(107,8,10,'Botble\\RealEstate\\Models\\Property','14km'),(108,9,10,'Botble\\RealEstate\\Models\\Property','2km'),(109,10,10,'Botble\\RealEstate\\Models\\Property','3km'),(110,11,10,'Botble\\RealEstate\\Models\\Property','14km'),(111,1,11,'Botble\\RealEstate\\Models\\Property','15km'),(112,2,11,'Botble\\RealEstate\\Models\\Property','11km'),(113,3,11,'Botble\\RealEstate\\Models\\Property','15km'),(114,4,11,'Botble\\RealEstate\\Models\\Property','7km'),(115,5,11,'Botble\\RealEstate\\Models\\Property','9km'),(116,6,11,'Botble\\RealEstate\\Models\\Property','6km'),(117,7,11,'Botble\\RealEstate\\Models\\Property','8km'),(118,8,11,'Botble\\RealEstate\\Models\\Property','9km'),(119,9,11,'Botble\\RealEstate\\Models\\Property','3km'),(120,10,11,'Botble\\RealEstate\\Models\\Property','18km'),(121,11,11,'Botble\\RealEstate\\Models\\Property','9km'),(122,1,12,'Botble\\RealEstate\\Models\\Property','17km'),(123,2,12,'Botble\\RealEstate\\Models\\Property','8km'),(124,3,12,'Botble\\RealEstate\\Models\\Property','7km'),(125,4,12,'Botble\\RealEstate\\Models\\Property','12km'),(126,5,12,'Botble\\RealEstate\\Models\\Property','12km'),(127,6,12,'Botble\\RealEstate\\Models\\Property','2km'),(128,7,12,'Botble\\RealEstate\\Models\\Property','7km'),(129,8,12,'Botble\\RealEstate\\Models\\Property','4km'),(130,9,12,'Botble\\RealEstate\\Models\\Property','19km'),(131,10,12,'Botble\\RealEstate\\Models\\Property','17km'),(132,11,12,'Botble\\RealEstate\\Models\\Property','3km'),(133,1,13,'Botble\\RealEstate\\Models\\Property','18km'),(134,2,13,'Botble\\RealEstate\\Models\\Property','3km'),(135,3,13,'Botble\\RealEstate\\Models\\Property','20km'),(136,4,13,'Botble\\RealEstate\\Models\\Property','15km'),(137,5,13,'Botble\\RealEstate\\Models\\Property','11km'),(138,6,13,'Botble\\RealEstate\\Models\\Property','15km'),(139,7,13,'Botble\\RealEstate\\Models\\Property','15km'),(140,8,13,'Botble\\RealEstate\\Models\\Property','4km'),(141,9,13,'Botble\\RealEstate\\Models\\Property','13km'),(142,10,13,'Botble\\RealEstate\\Models\\Property','18km'),(143,11,13,'Botble\\RealEstate\\Models\\Property','5km'),(144,1,14,'Botble\\RealEstate\\Models\\Property','2km'),(145,2,14,'Botble\\RealEstate\\Models\\Property','15km'),(146,3,14,'Botble\\RealEstate\\Models\\Property','16km'),(147,4,14,'Botble\\RealEstate\\Models\\Property','13km'),(148,5,14,'Botble\\RealEstate\\Models\\Property','14km'),(149,6,14,'Botble\\RealEstate\\Models\\Property','5km'),(150,7,14,'Botble\\RealEstate\\Models\\Property','18km'),(151,8,14,'Botble\\RealEstate\\Models\\Property','18km'),(152,9,14,'Botble\\RealEstate\\Models\\Property','4km'),(153,10,14,'Botble\\RealEstate\\Models\\Property','8km'),(154,11,14,'Botble\\RealEstate\\Models\\Property','7km'),(155,1,15,'Botble\\RealEstate\\Models\\Property','1km'),(156,2,15,'Botble\\RealEstate\\Models\\Property','15km'),(157,3,15,'Botble\\RealEstate\\Models\\Property','16km'),(158,4,15,'Botble\\RealEstate\\Models\\Property','17km'),(159,5,15,'Botble\\RealEstate\\Models\\Property','18km'),(160,6,15,'Botble\\RealEstate\\Models\\Property','12km'),(161,7,15,'Botble\\RealEstate\\Models\\Property','17km'),(162,8,15,'Botble\\RealEstate\\Models\\Property','10km'),(163,9,15,'Botble\\RealEstate\\Models\\Property','1km'),(164,10,15,'Botble\\RealEstate\\Models\\Property','9km'),(165,11,15,'Botble\\RealEstate\\Models\\Property','10km'),(166,1,16,'Botble\\RealEstate\\Models\\Property','11km'),(167,2,16,'Botble\\RealEstate\\Models\\Property','16km'),(168,3,16,'Botble\\RealEstate\\Models\\Property','13km'),(169,4,16,'Botble\\RealEstate\\Models\\Property','1km'),(170,5,16,'Botble\\RealEstate\\Models\\Property','17km'),(171,6,16,'Botble\\RealEstate\\Models\\Property','16km'),(172,7,16,'Botble\\RealEstate\\Models\\Property','6km'),(173,8,16,'Botble\\RealEstate\\Models\\Property','1km'),(174,9,16,'Botble\\RealEstate\\Models\\Property','1km'),(175,10,16,'Botble\\RealEstate\\Models\\Property','4km'),(176,11,16,'Botble\\RealEstate\\Models\\Property','12km'),(177,1,17,'Botble\\RealEstate\\Models\\Property','4km'),(178,2,17,'Botble\\RealEstate\\Models\\Property','12km'),(179,3,17,'Botble\\RealEstate\\Models\\Property','2km'),(180,4,17,'Botble\\RealEstate\\Models\\Property','14km'),(181,5,17,'Botble\\RealEstate\\Models\\Property','6km'),(182,6,17,'Botble\\RealEstate\\Models\\Property','13km'),(183,7,17,'Botble\\RealEstate\\Models\\Property','13km'),(184,8,17,'Botble\\RealEstate\\Models\\Property','5km'),(185,9,17,'Botble\\RealEstate\\Models\\Property','15km'),(186,10,17,'Botble\\RealEstate\\Models\\Property','2km'),(187,11,17,'Botble\\RealEstate\\Models\\Property','7km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','published',NULL),(2,'Parking','published',NULL),(3,'Swimming pool','published',NULL),(4,'Balcony','published',NULL),(5,'Garden','published',NULL),(6,'Security','published',NULL),(7,'Fitness center','published',NULL),(8,'Air Conditioning','published',NULL),(9,'Central Heating  ','published',NULL),(10,'Laundry Room','published',NULL),(11,'Pets Allow','published',NULL),(12,'Spa &amp; Massage','published',NULL);
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_investors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2019-11-18 01:16:23','2019-11-18 01:16:23',NULL,NULL),(2,'Generali','published','2019-11-18 01:16:47','2019-11-18 01:16:47',NULL,NULL),(3,'Temasek','published','2019-11-18 01:16:57','2019-11-18 01:16:57',NULL,NULL),(4,'China Investment Corporation','published','2019-11-18 01:17:11','2019-11-18 01:17:11',NULL,NULL),(5,'Government Pension Fund Global','published','2019-11-18 01:17:35','2019-11-18 01:17:35',NULL,NULL),(6,'PSP Investments','published','2019-11-18 01:17:47','2019-11-18 01:17:47',NULL,NULL),(7,'MEAG Munich ERGO','published','2019-11-18 01:17:57','2019-11-18 01:17:57',NULL,NULL),(8,'HOOPP','published','2019-11-18 01:18:08','2019-11-18 01:18:08',NULL,NULL),(9,'BT Group','published','2019-11-18 01:18:21','2019-11-18 01:18:21',NULL,NULL),(10,'Ping An','published','2019-11-18 01:18:32','2019-11-18 01:18:32',NULL,NULL),(11,'New Jersey Division of Investment','published','2019-11-18 01:18:45','2019-11-18 01:18:45',NULL,NULL),(12,'New York City ERS','published','2019-11-18 01:18:57','2019-11-18 01:18:57',NULL,NULL),(13,'State Super','published','2019-11-18 01:19:10','2019-11-18 01:19:10',NULL,NULL),(14,'Shinkong','published','2019-11-18 01:19:20','2019-11-18 01:19:20',NULL,NULL),(15,'Rest Super','published','2019-11-18 01:19:31','2019-11-18 01:19:31',NULL,NULL),(16,'Rest Super','published','2019-11-21 01:50:47','2019-11-21 01:50:47',NULL,NULL),(17,'Shinkong','published','2019-11-21 01:51:03','2019-11-21 01:51:03',NULL,NULL),(18,'State Super','published','2019-11-21 01:51:21','2019-11-21 01:51:21',NULL,NULL),(19,'New York City ERS','published','2019-11-21 01:51:33','2019-11-21 01:51:33',NULL,NULL),(20,'New Jersey Division of Investment','published','2019-11-21 01:51:51','2019-11-21 01:51:51',NULL,NULL),(21,'Ping An','published','2019-11-21 01:52:04','2019-11-21 01:52:04',NULL,NULL),(22,'BT Group','published','2019-11-21 01:52:16','2019-11-21 01:52:16',NULL,NULL),(23,'HOOPP','published','2019-11-21 01:52:28','2019-11-21 01:52:28',NULL,NULL),(24,'MEAG Munich ERGO','published','2019-11-21 01:52:47','2019-11-21 01:52:47',NULL,NULL),(25,'PSP Investments','published','2019-11-21 01:52:57','2019-11-21 01:52:57',NULL,NULL),(26,'Government Pension Fund Global','published','2019-11-21 01:53:18','2019-11-21 01:53:18',NULL,NULL),(27,'China Investment Corporation','published','2019-11-21 01:53:33','2019-11-21 01:53:33',NULL,NULL),(29,'Temasek','published','2019-11-21 01:53:48','2019-11-21 01:53:48',NULL,NULL),(30,'Generali','published','2019-11-21 01:54:01','2019-11-21 01:54:01',NULL,NULL),(31,'National Pension Service','published','2019-11-21 01:54:14','2019-11-21 01:54:14',NULL,NULL);
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors_translations`
--

DROP TABLE IF EXISTS `re_investors_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_investors_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_investors_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_investors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors_translations`
--

LOCK TABLES `re_investors_translations` WRITE;
/*!40000 ALTER TABLE `re_investors_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_investors_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) unsigned NOT NULL,
  `currency_id` int unsigned NOT NULL,
  `number_of_listings` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `account_limit` int unsigned DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free First Post',0.00,1,1,0,0,'published','2024-08-13 19:13:04','2024-08-13 19:13:04',0,1,NULL,NULL),(2,'Single Post',250.00,1,1,0,1,'published','2024-08-13 19:13:04','2024-08-13 19:13:04',0,NULL,NULL,NULL),(3,'5 Posts',1000.00,1,5,0,0,'published','2024-08-13 19:13:04','2024-08-13 19:13:04',20,NULL,NULL,NULL);
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_project_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1652 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (1639,1,5),(1643,6,2),(1648,2,6),(1649,3,2),(1650,4,2),(1651,5,3);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_project_features` (
  `project_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint unsigned DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','<p>Now Open &amp; Leasing!</p>\r\n\r\n<p>Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community. In addition to resort spa amenities, the interiors are built and designed to condominium specifications with energy efficient features, stunning detail and upgraded finishes.</p>','[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]','Austin, Texas 78753, USA',4,2,50,1,'2019-11-10','2019-03-11','selling','2019-11-18 00:34:49','2021-04-29 20:46:31',12,'Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community',NULL,NULL,1,4,NULL,'Botble\\ACL\\Models\\User','43.578848','-76.32197',7284,1,1,NULL,NULL),(2,'Osaka Heights','<p>Osaka Heights is a state of the art apartment crafted with elegance, comfort and classiness.</p>\r\n\r\n<p>The grander apartments add new heights to the life of people in Colombo, Sri Lanka.</p>\r\n\r\n<p>Devised by a team of international consultants, Osaka Heights is all about contemporary design and comprehensive attention to detail in execution. If you are interested to own a luxury apartment at Sri Lanka, Osaka Heights is the best choice. The foundation of Osaka Heights is laid by skilled professionals, who capture your vision completely. The construction is built as per your elegant lifestyles, without any compromise in quality and class.</p>\r\n\r\n<p>The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals. An elevated lifestyle naturally follows, making Osaka Heights one of the most sought-after addresses in Colombo.</p>','[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]','Kirulapone, Colombo 06, Colombo, Sri Lanka',1,15,450,1,'2019-08-09','2019-08-10','selling','2019-11-18 01:28:45','2021-06-11 20:56:44',3,'The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals.',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.013638','-75.848066',6965,1,1,NULL,NULL),(3,'Mimaroba Paradise','<h2><b>Why you should buy a house from this project?</b></h2>\r\n\r\n<ul>\r\n	<li>1. A summerhouse in the center of the city.</li>\r\n	<li>2. Remove the boundaries between you and the sea, you will be surrounded by blue sea.</li>\r\n	<li>3.&nbsp;Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you.</li>\r\n	<li>4.&nbsp;A unique design that makes luxury a habit, a wide variety of apartment plan options.</li>\r\n	<li>5.&nbsp;Reasonable payment options, affordable prices in Istanbul&#39;s most exclusive area.</li>\r\n</ul>\r\n\r\n<p>&lsquo;&rsquo; Mimaroba&rsquo;&rsquo; a modern beach district away from the bustle of Istanbul.&nbsp;The aim of the project is to make a living feel for the hosts in the deepest way.&nbsp;In this project you can enjoy a life with the sea and you can have a holiday for 12 months with social facilities and activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>','[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]','Texas, USA',2,16,327,1,'2020-06-09','2019-09-10','selling','2019-11-18 03:30:34','2021-06-11 20:56:44',15,'A summerhouse in the center of the city. Remove the boundaries between you and the sea, you will be surrounded by blue sea. Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you. A unique design that makes luxury a habit, a wide variety of apartment plan options.',NULL,NULL,1,1,NULL,'Botble\\ACL\\Models\\User','42.795156','-76.237441',2970,1,1,NULL,NULL),(4,'Aegean Villas','<h2><strong>Aegean Villas</strong></h2>\r\n\r\n<p>Looks like Aegean town and be one of the highest rated sites in the region. A very large area of 312.000sqm&nbsp; has only 144 villas. Each villa&rsquo;s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.&nbsp; Increase the living motivation with 2,5km walking and cycling trail, tennis courts and carpet right activities.&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h4><strong>Why you should buy a house from this project?</strong></h4>\r\n\r\n<ul>\r\n	<li>1. Natural Architectural design.</li>\r\n	<li>2. Highest session rate in the region</li>\r\n	<li>3. Common sharing areas like open air cinema and village cafe.</li>\r\n	<li>4. 2,5km walking and cycling trail.</li>\r\n	<li>5. The gardens are detached and useful.</li>\r\n</ul>','[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]','Büyükçekmece, İstanbul, Turkey',5,2,144,1,'2020-06-09','2020-10-04','selling','2019-11-18 03:38:13','2021-06-11 20:56:44',11,'A very large area of 312.000sqm  has only 144 villas. Each villa’s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.',NULL,NULL,1,2,NULL,'Botble\\ACL\\Models\\User','42.478281','-75.321856',3956,1,1,NULL,NULL),(5,'Aydos Forest Apartments','<p>The project, which offers unique opportunities for those who want to move into their new home, is the most advantageous housing project of the location with its easy payment options according to your budget. In your new home you will have a live site life with 90% occupancy; The <strong>clean air</strong> of Aydos Forest, the most important social facility of the region with <strong>3,700 sqm</strong> which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as well as the landscape of Aydos Forest. and bacause of its easy connection to the main roads, you can easily reach the important centers of Istanbul.</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Ready for delivery.</li>\r\n	<li>2.&nbsp;82% open area of landscape.</li>\r\n	<li>3.&nbsp;Aydos forest is right next to the project.</li>\r\n	<li>4.&nbsp;More than 90% of the project is occupied and full of life.</li>\r\n	<li>5. Ease of transportation.</li>\r\n</ul>','[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]','Sancaktepe/İstanbul, Turkey',4,18,1394,1,'2019-10-30','2019-07-21','selling','2019-11-18 03:45:06','2021-04-18 09:20:14',2,'You will have a live site life with 90% occupancy; The clean air of Aydos Forest, the most important social facility of the region with 3,700 sqm which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.270016','-75.054121',869,1,1,NULL,NULL),(6,'The Avila Apartments','<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers&hellip;. A timeless aesthetic enriched in perfect details .</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.</li>\r\n	<li>2.&nbsp;Unique sea view with a historical texture of Istanbul.</li>\r\n	<li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.</li>\r\n	<li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments</li>\r\n	<li>5.Large landscaping areas, cafes, shopping opportunities.</li>\r\n</ul>','[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]','Singapore Island, Singapore',2,4,125,1,'2019-11-19','2019-03-11','selling','2019-11-18 03:53:20','2021-06-11 20:56:44',10,'Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul. In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.',NULL,NULL,1,5,NULL,'Botble\\ACL\\Models\\User','43.481307','-74.862851',2478,1,1,NULL,NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_properties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` smallint unsigned DEFAULT NULL,
  `number_bathroom` smallint unsigned DEFAULT NULL,
  `number_floor` smallint unsigned DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>','Alicante, Spain','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]',6,3,3,1,600,700000.00,NULL,1,'selling','2019-11-17 20:34:59','2024-08-13 19:13:18','sale','This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.',1,5,'month',1,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.954366','-76.204832',9780,1,1,NULL,NULL),(2,'Property For sale , Johannesburg, South Africa','<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>','Johannesburg, South Africa','[\"properties\\/23.jpg\",\"properties\\/21.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\"]',6,4,4,2,800,800000.00,NULL,1,'selling','2019-11-17 20:53:34','2024-08-13 19:13:18','sale','Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.',1,2,'month',7,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.819483','-76.703637',1465,1,1,NULL,NULL),(3,'Stunning French Inspired Manor','<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>','Solvang, Santa Barbara County, CA 93463, USA','[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]',5,4,3,1,450,1695000.00,NULL,1,'selling','2019-11-17 21:09:55','2024-08-13 19:13:18','sale','This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide',1,5,'month',8,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.722299','-75.466082',7987,1,1,NULL,NULL),(4,'Villa for sale at Bermuda Dunes','<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There&#39;s a lovely Library with built in shelves on one wall. There&rsquo;s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>','Bermuda Dunes, Riverside County, CA 92203, USA','[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]',4,4,3,1,480,1295000.00,NULL,1,'selling','2019-11-17 21:18:11','2024-08-13 19:13:18','sale','This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club',1,1,'month',2,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.982274','-76.182356',5539,1,1,NULL,NULL),(5,'Walnut Park Apartment','<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>','North Lamar Boulevard, Austin, Texas 78753, USA','[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]',1,2,2,1,980,2035.00,NULL,1,'renting','2019-11-18 00:47:52','2024-08-13 19:13:18','rent','Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda',1,1,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.669053','-75.578469',3734,1,1,NULL,NULL),(6,'5 beds luxury house','<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>','Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA','[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]',2,5,4,3,270,1808.00,NULL,1,'renting','2019-11-18 01:05:58','2024-08-13 19:13:18','rent','Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate',1,1,'month',6,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.946985','-76.206616',2051,1,1,NULL,NULL),(7,'Family Victorian \"View\" Home','<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n<p> </p>','Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA','[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]',3,3,2,1,180,2580.00,NULL,1,'renting','2019-11-18 01:12:07','2024-08-13 19:13:18','rent','There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete t',1,1,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.819646','-74.89512',9052,1,1,NULL,NULL),(8,'Osaka Heights Apartment','<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>','High Level Road, Colombo 06, Sri Lanka','[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]',2,2,2,1,110,150000.00,NULL,1,'selling','2019-11-18 01:49:36','2024-08-13 19:13:18','sale','Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.',1,5,'month',9,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.928003','-74.902172',9109,1,1,NULL,NULL),(9,'Private Estate Magnificent Views','<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>','110 Springdale Heights, Hay Denmark, WA, Australia','[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]',2,3,1,1,2000,694000.00,NULL,1,'selling','2019-11-18 02:02:19','2024-08-13 19:13:18','sale','Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater',1,5,'month',10,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.812299','-76.137607',8389,1,1,NULL,NULL),(10,'Thompsons Road House for rent','<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>','Thompsons Road, Bulleen VIC, Australia','[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]',6,3,3,1,160,1465.00,NULL,1,'renting','2019-11-18 02:16:53','2024-08-13 19:13:18','rent','Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage',1,3,'month',10,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.601639','-76.36969',4617,1,1,NULL,NULL),(11,'Brand New 1 Bedroom Apartment In First Class Location','<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>','Sandy Bay Road, Sandy Bay TAS, Australia','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]',5,1,1,1,80,1680.00,NULL,1,'renting','2019-11-18 02:22:48','2024-08-13 19:13:18','rent','Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.',1,5,'month',12,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.659611','-76.197177',7917,1,1,NULL,NULL),(12,'Elegant family home presents premium modern living','<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>','North Lakes QLD 4509, Australia','[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]',6,3,3,1,658,1574.00,NULL,1,'renting','2019-11-18 02:47:05','2024-08-13 19:13:18','rent','Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.',1,5,'month',2,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.137361','-76.539998',5734,1,1,NULL,NULL),(13,'Luxury Apartments in Singapore for Sale','<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>','Balestier Road, Singapore','[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]',6,2,2,1,78,918000.00,NULL,1,'selling','2019-11-18 07:23:02','2024-08-13 19:13:18','sale','This apartment is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard',1,5,'month',4,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.813772','-76.615855',4920,1,1,NULL,NULL),(14,'5 room luxury penthouse for sale in Kuala Lumpur','<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>','Kuala Lumpur, Malaysia','[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]',1,5,7,20,377,1590000.00,NULL,1,'selling','2019-11-18 07:36:29','2024-08-13 19:13:18','sale','Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW',1,4,'month',3,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'42.504328','-76.341293',7395,1,1,NULL,NULL),(15,'2 Floor house in Compound Pejaten Barat Kemang','<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>','Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia','[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]',1,3,2,2,200,1400.00,NULL,1,'renting','2019-11-18 07:44:44','2024-08-13 19:13:18','rent','Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300, 3 bedrooms, 2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year ',1,5,'month',7,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.636294','-76.116519',2213,1,1,NULL,NULL),(16,'Apartment Muiderstraatweg in Diemen','<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>','Diemen, Netherlands','[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]',3,3,1,2,90,2123.00,NULL,1,'renting','2019-11-18 07:59:14','2024-08-13 19:13:18','rent','Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.',1,3,'month',2,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.52876','-76.65882',8883,1,1,NULL,NULL),(17,'Nice Apartment for rent in Berlin','<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>','Berlin, Germany','[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]',6,1,1,1,33,1217.00,NULL,1,'renting','2019-11-18 08:13:07','2024-08-13 19:13:18','rent','Fully furnished shared all-inclusive apartments, with modern amenities that’ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you’ll find everything from delicious street food to flee markets, to high-end restaurants.',1,5,'month',5,'Botble\\RealEstate\\Models\\Account','approved','2024-09-28',0,1,'43.222732','-76.105523',7772,1,1,NULL,NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_properties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_property_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (4671,5,1),(4687,10,5),(4689,12,1),(4690,13,1),(4691,14,1),(4693,1,1),(4694,2,1),(4695,3,2),(4696,4,1),(4697,6,3),(4698,7,4),(4699,8,4),(4700,9,6),(4701,11,4),(4702,15,3),(4703,16,3),(4704,17,1);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_property_features` (
  `property_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,9),(10,10),(10,11),(10,12),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),(11,9),(11,10),(11,11),(11,12),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(12,9),(12,10),(12,11),(12,12),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,12),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(14,8),(14,9),(14,10),(14,11),(14,12),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(15,11),(15,12),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(16,8),(16,9),(16,10),(16,11),(16,12),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(17,12);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `reviewable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,11,'Botble\\RealEstate\\Models\\Property',4,4,'She went on saying to herself, rather sharply; \'I advise you to learn?\' \'Well, there was a large mustard-mine near here. And the Gryphon.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(2,12,'Botble\\RealEstate\\Models\\Project',1,2,'Dodo replied very readily: \'but that\'s because it stays the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Duchess, \'as pigs have to beat them off, and Alice called after it; and the other birds tittered audibly. \'What I was sent for.\' \'You ought to have changed since.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(3,8,'Botble\\RealEstate\\Models\\Property',11,5,'Poor Alice! It was the first verse,\' said the Knave, \'I didn\'t write it, and on it except a little.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(4,2,'Botble\\RealEstate\\Models\\Property',1,2,'Alice did not like the three gardeners who were all locked; and when she got into a line along the sea-shore--\' \'Two lines!\' cried the Gryphon. \'Then, you know,\' the Mock Turtle, and to wonder what you\'re at!\" You know.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(5,11,'Botble\\RealEstate\\Models\\Property',16,3,'Alice said to herself. \'I dare say you never even introduced to a mouse, you know. But do cats eat bats? Do cats eat bats, I wonder?\' And here Alice began to cry again. \'You ought to speak, but for a minute, nurse! But I\'ve got to go on in a rather offended tone, \'Hm! No accounting.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(6,8,'Botble\\RealEstate\\Models\\Property',12,1,'THE KING AND QUEEN OF HEARTS. Alice was silent. The King looked anxiously round, to make out what she did, she picked her way through the air! Do you think I can reach the key; and if the Queen shrieked out. \'Behead that Dormouse!.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(7,1,'Botble\\RealEstate\\Models\\Project',2,1,'The Cat seemed to rise like a thunderstorm. \'A fine day, your Majesty!\' the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(8,11,'Botble\\RealEstate\\Models\\Project',3,2,'Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I shall fall right THROUGH the earth! How funny it\'ll seem.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(9,9,'Botble\\RealEstate\\Models\\Property',10,5,'Mock Turtle said with some difficulty, as it didn\'t much matter which way she.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(10,12,'Botble\\RealEstate\\Models\\Property',15,5,'Alice! Come here directly, and get ready to make out which were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(11,5,'Botble\\RealEstate\\Models\\Project',4,1,'I\'m sure she\'s the best of educations--in fact.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(12,8,'Botble\\RealEstate\\Models\\Project',4,4,'Dormouse; \'--well in.\' This answer so confused poor Alice, that she ought not to be no use in waiting by the time they were all shaped like the three gardeners instantly threw themselves flat upon their faces, and the game was in a sort of meaning in it,\' but none of.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(13,5,'Botble\\RealEstate\\Models\\Property',12,4,'So she tucked it away under her arm, with its legs hanging down, but generally, just as I\'d taken the highest tree in front of them, and just as she couldn\'t answer either question, it didn\'t much matter which way it was her turn or not. \'Oh, PLEASE mind what you\'re at!\" You.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(14,1,'Botble\\RealEstate\\Models\\Property',1,4,'I think I can find out the proper way of settling all difficulties, great or small. \'Off with his knuckles. It was opened by another footman in.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(15,4,'Botble\\RealEstate\\Models\\Property',17,2,'Caterpillar. Alice said very politely, \'if I had our Dinah here, I know I have done that?\' she thought. \'I must go by the fire, licking her paws and washing her face--and she is such a thing.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(16,10,'Botble\\RealEstate\\Models\\Property',1,1,'I shall only look up in spite of all.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(17,3,'Botble\\RealEstate\\Models\\Property',7,1,'The Rabbit started violently, dropped the white kid gloves in one hand and a sad tale!\' said the King; and.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(18,3,'Botble\\RealEstate\\Models\\Property',10,2,'Alice had learnt several things of this remark, and thought to herself, (not in a few minutes to see it trot away quietly into the way the people that walk with their heads!\' and the Queen furiously, throwing an inkstand at the place where it had gone. \'Well! I\'ve often.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(19,1,'Botble\\RealEstate\\Models\\Property',13,2,'Pigeon. \'I\'m NOT a serpent, I tell you!\' But she went on, \'What HAVE you been doing.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(20,9,'Botble\\RealEstate\\Models\\Property',16,5,'English. \'I don\'t know what to uglify is, you ARE a simpleton.\' Alice did not feel encouraged to ask his neighbour to tell them something.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(21,1,'Botble\\RealEstate\\Models\\Project',6,4,'However, I\'ve got to go down the bottle, saying to herself, \'in my going out altogether, like a tunnel for some way of escape, and wondering whether she ought to have been a RED rose-tree, and we put a white one in by.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(22,8,'Botble\\RealEstate\\Models\\Project',5,4,'Dinah my dear! Let this be a comfort, one way--never to be sure, this generally happens when one eats cake, but Alice had no idea what Latitude was, or Longitude I\'ve got to the fifth bend, I think?\' he.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(23,9,'Botble\\RealEstate\\Models\\Property',13,3,'Alice, who had been wandering, when a cry of \'The trial\'s beginning!\' was.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(24,9,'Botble\\RealEstate\\Models\\Project',3,4,'Then it got down off the subjects on his slate with one finger pressed upon its forehead (the position in dancing.\' Alice said; but was dreadfully puzzled by the White Rabbit was no time to.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(25,11,'Botble\\RealEstate\\Models\\Project',2,1,'BEST butter,\' the March Hare: she thought it over here,\' said the Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said Alice, a little.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(26,12,'Botble\\RealEstate\\Models\\Project',6,3,'It sounded an excellent opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, turning to the door, and the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(27,4,'Botble\\RealEstate\\Models\\Property',1,3,'Rabbit\'s voice along--\'Catch him, you by the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(28,7,'Botble\\RealEstate\\Models\\Project',3,5,'Majesty!\' the soldiers had to kneel down on one side, to look over their heads. She felt that this could not make out what it meant till now.\' \'If that\'s all I can remember feeling a little faster?\" said a timid voice at her as she could get away without speaking.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(29,1,'Botble\\RealEstate\\Models\\Property',12,5,'Turtle.\' These words were followed by a very good advice, (though she very soon had to ask them what the flame of a tree. By the use of this pool? I am so VERY wide, but she had put on his spectacles and looked along the course, here and there was no more to do next, when suddenly a White.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(30,11,'Botble\\RealEstate\\Models\\Project',6,1,'ARE OLD, FATHER WILLIAM,\' to the cur, \"Such a trial, dear Sir, With.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(31,3,'Botble\\RealEstate\\Models\\Property',2,5,'When she got up, and there she saw maps and pictures hung upon pegs. She took down a large caterpillar, that was said, and went down to nine inches high. CHAPTER.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(32,12,'Botble\\RealEstate\\Models\\Property',14,2,'WHAT?\' thought Alice; \'I must be shutting.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(33,11,'Botble\\RealEstate\\Models\\Property',15,3,'On which Seven looked up and saying, \'Thank.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(34,2,'Botble\\RealEstate\\Models\\Project',6,3,'There ought to be a very pretty dance,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of court! Suppress.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(35,4,'Botble\\RealEstate\\Models\\Project',6,2,'I might venture to go and take it away!\' There was a different person then.\' \'Explain all that,\' he said to herself \'Suppose it should be like then?\' And she went back to the Cheshire Cat sitting on.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(36,7,'Botble\\RealEstate\\Models\\Property',17,5,'Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, who said in a trembling voice:-- \'I passed by his face only, she would keep, through all her riper years.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(38,4,'Botble\\RealEstate\\Models\\Project',1,2,'ONE.\' \'One, indeed!\' said the King. \'Shan\'t,\' said the Queen. \'Well, I shan\'t go, at any rate he might answer questions.--How am I to get rather sleepy, and went back for a minute or two, and the moment he was gone, and, by the way, was the Hatter. Alice felt.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(41,9,'Botble\\RealEstate\\Models\\Property',6,2,'I\'ve finished.\' So they had to do such a fall as this, I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the driest thing I ever saw one that size? Why, it fills the whole place around her became alive with the words.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(42,6,'Botble\\RealEstate\\Models\\Project',3,4,'CHAPTER VI. Pig and Pepper For a minute or.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(43,5,'Botble\\RealEstate\\Models\\Property',6,1,'The Panther took pie-crust, and gravy, and meat, While the Duchess was VERY ugly; and secondly, because they\'re making such a puzzled expression that she had forgotten the words.\' So they sat down, and was in livery: otherwise, judging by his garden.\"\' Alice.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(44,2,'Botble\\RealEstate\\Models\\Property',13,3,'I THINK,\' said Alice. \'Come on, then,\' said Alice, seriously, \'I\'ll have nothing more happened, she decided to remain where she was exactly the right size again; and the Dormouse again, so violently, that she had someone to listen to me! When I used to read fairy-tales, I.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(45,2,'Botble\\RealEstate\\Models\\Property',11,5,'CHAPTER IX. The Mock Turtle said.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(46,2,'Botble\\RealEstate\\Models\\Property',3,3,'Mouse was speaking, and this he handed over to the Caterpillar, and the words don\'t FIT you,\' said the Queen. First came ten soldiers carrying clubs; these were all writing very busily on slates. \'What are they doing?\' Alice whispered.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(47,3,'Botble\\RealEstate\\Models\\Property',12,1,'WHAT things?\' said the Hatter: \'but you could see her after the rest of it in her head, and she went back for a minute or two she stood looking at them with the time,\'.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(48,12,'Botble\\RealEstate\\Models\\Project',2,5,'Alice was a little way out of a large dish of tarts upon it: they looked so good, that it might appear to others that what you mean,\' the March Hare said--\' \'I didn\'t!\' the March Hare took the watch and looked along the passage into the air. Even the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(49,4,'Botble\\RealEstate\\Models\\Property',2,4,'Pigeon in a hurried nervous manner, smiling at everything that Alice had no very clear notion how long ago.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(50,1,'Botble\\RealEstate\\Models\\Property',4,5,'She was a dead silence. Alice was very hot, she kept on good terms with him, he\'d do almost anything you liked with the day of the ground, Alice soon began talking again. \'Dinah\'ll miss me very much what would be.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(51,9,'Botble\\RealEstate\\Models\\Project',2,2,'Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must be.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(52,6,'Botble\\RealEstate\\Models\\Property',16,4,'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon replied rather impatiently: \'any shrimp could have been changed several times since then.\' \'What do you call him Tortoise--\' \'Why did you ever saw. How she longed to get in?\' she.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(53,8,'Botble\\RealEstate\\Models\\Property',2,2,'Coils.\' \'What was THAT like?\' said Alice. \'Why, SHE,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a large.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(54,12,'Botble\\RealEstate\\Models\\Property',9,3,'I vote the young man said, \'And your.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(57,6,'Botble\\RealEstate\\Models\\Property',15,4,'ARE you talking to?\' said the King. \'Nothing whatever,\' said Alice. \'I wonder if I\'ve kept her eyes to see what was going a journey, I should like to be a very good height indeed!\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'It goes on, you know,\' said the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(59,5,'Botble\\RealEstate\\Models\\Property',8,4,'Alice, very loudly and decidedly, and the game began. Alice thought she might as well as she went on, turning to Alice to herself. (Alice had been.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(60,5,'Botble\\RealEstate\\Models\\Property',5,3,'Then it got down off the top of his shrill little voice, the name of the house opened, and a large mustard-mine.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(61,10,'Botble\\RealEstate\\Models\\Property',4,4,'King triumphantly, pointing to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject of conversation. \'Are.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(62,7,'Botble\\RealEstate\\Models\\Property',10,4,'Queen of Hearts, carrying the King\'s crown on a branch of.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(64,2,'Botble\\RealEstate\\Models\\Project',4,4,'By the time they were getting extremely small for a good thing!\' she said to.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(65,4,'Botble\\RealEstate\\Models\\Project',2,2,'He only does it matter to me whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' he began. \'You\'re a very.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(66,12,'Botble\\RealEstate\\Models\\Property',3,3,'How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not used to queer things happening. While she was quite pale.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(67,1,'Botble\\RealEstate\\Models\\Property',5,1,'Dormouse turned out, and, by the little crocodile Improve his shining tail, And pour the waters of the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(68,10,'Botble\\RealEstate\\Models\\Property',9,1,'King in a helpless sort of chance of her sister, who was gently brushing away some dead leaves that had made the whole window!\' \'Sure, it does, yer honour: but it\'s an arm for all.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(69,3,'Botble\\RealEstate\\Models\\Property',11,2,'Will you, won\'t you join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she stopped hastily, for the moment she felt sure she would catch a bad cold if she were saying lessons, and began staring at the end of the teacups as the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(70,5,'Botble\\RealEstate\\Models\\Property',4,3,'Alice, and her eyes filled with cupboards and book-shelves; here and there she saw in my kitchen AT ALL. Soup does very well.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(71,7,'Botble\\RealEstate\\Models\\Property',5,3,'Mock Turtle. \'Certainly not!\' said Alice in a tone of delight, and rushed at the Mouse\'s.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(73,1,'Botble\\RealEstate\\Models\\Project',4,4,'King exclaimed, turning to the Gryphon. \'They can\'t have anything to say, she simply bowed, and took the hookah out of his pocket, and was a very difficult game indeed. The players all played at once to eat or drink something or other; but the wise little Alice herself, and once she.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(74,10,'Botble\\RealEstate\\Models\\Project',1,5,'Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets!.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(75,3,'Botble\\RealEstate\\Models\\Property',17,5,'YOU must cross-examine the next moment a.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(76,11,'Botble\\RealEstate\\Models\\Property',2,2,'First, she dreamed of little.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(78,10,'Botble\\RealEstate\\Models\\Project',5,1,'Hatter, \'you wouldn\'t talk about her.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(79,9,'Botble\\RealEstate\\Models\\Property',7,5,'The Hatter shook his head contemptuously. \'I dare say there may be different,\' said Alice; not that she did not at all know whether it would be offended again. \'Mine is a raven like a candle. I wonder if I only wish people knew that: then they wouldn\'t be so.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(81,5,'Botble\\RealEstate\\Models\\Property',14,1,'Alice thought decidedly uncivil. \'But perhaps he can\'t help that,\' said the King; and the Queen, who were giving it something out of sight: \'but it.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(82,11,'Botble\\RealEstate\\Models\\Property',17,2,'Rabbit coming to look over their slates; \'but it doesn\'t matter which way she put her hand on the slate. \'Herald, read the accusation!\' said the Gryphon, half to Alice. \'What IS a long way back, and see that the way down one side and up I goes like a writing-desk?\' \'Come, we shall get on.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(84,3,'Botble\\RealEstate\\Models\\Project',1,1,'ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(85,5,'Botble\\RealEstate\\Models\\Property',13,3,'May it won\'t be raving mad after all! I almost wish I\'d gone to see if she were saying lessons, and began whistling. \'Oh, there\'s no harm in trying.\' So she tucked it away under her arm, that it was all about, and crept a little timidly: \'but it\'s no use going back to the whiting,\'.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(86,4,'Botble\\RealEstate\\Models\\Property',13,5,'However, when they met in the middle, wondering how she would feel very uneasy: to be.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(87,6,'Botble\\RealEstate\\Models\\Property',10,5,'King, the Queen, and in a court of justice before, but she heard the Rabbit in a voice she had read about them in books, and she looked up, but it all came different!\' Alice replied very solemnly. Alice was so.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(88,10,'Botble\\RealEstate\\Models\\Property',16,2,'Majesty!\' the Duchess said to one of the house, and found that, as nearly as large as himself, and this time it vanished quite slowly, beginning with the Queen say only yesterday you deserved to.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(89,8,'Botble\\RealEstate\\Models\\Property',8,2,'Dormouse; \'--well in.\' This answer so confused poor Alice, that she had not a moment like a frog; and both creatures hid their faces in their mouths--and they\'re all over with fright. \'Oh, I beg.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(90,8,'Botble\\RealEstate\\Models\\Project',2,5,'Gryphon: and it was very hot, she kept tossing the baby.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(91,7,'Botble\\RealEstate\\Models\\Project',2,2,'Alice to herself, \'Why, they\'re only a child!\' The Queen turned crimson with fury, and, after folding his arms and frowning at the corners: next the ten courtiers; these were ornamented all over with fright. \'Oh, I know!\' exclaimed Alice, who was reading the list of the tale was something.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(93,11,'Botble\\RealEstate\\Models\\Property',8,5,'Alice remained looking thoughtfully at the door--I do wish I could not think of nothing else to do, and in THAT direction,\' waving the other queer noises, would change (she knew) to the beginning of the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(94,10,'Botble\\RealEstate\\Models\\Project',4,5,'Dodo replied very politely, feeling quite pleased to have the experiment tried. \'Very true,\' said the Hatter. \'I deny.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(96,4,'Botble\\RealEstate\\Models\\Property',5,2,'Alice, and she did not get hold of its voice. \'Back to land.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(97,9,'Botble\\RealEstate\\Models\\Property',4,1,'COULD grin.\' \'They all can,\' said.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(99,6,'Botble\\RealEstate\\Models\\Project',1,5,'Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said Alice, in a confused way, \'Prizes! Prizes!\' Alice had learnt several things of this sort of knot, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(100,7,'Botble\\RealEstate\\Models\\Project',1,4,'So she sat down in a low, trembling voice. \'There\'s more evidence to come yet, please your Majesty,\' said the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(101,11,'Botble\\RealEstate\\Models\\Project',1,1,'I to get out of a muchness?\' \'Really, now you ask me,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(102,8,'Botble\\RealEstate\\Models\\Property',17,5,'These were the two creatures, who had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the act of crawling.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(103,5,'Botble\\RealEstate\\Models\\Property',17,5,'THE VOICE OF THE SLUGGARD,\"\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the last few minutes, and began to tremble. Alice looked down at her.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(104,12,'Botble\\RealEstate\\Models\\Property',7,1,'I wish you would seem to encourage the witness at all: he kept shifting from one end of half those long words, and, what\'s more, I don\'t want to be?\' it asked. \'Oh, I\'m not looking for them, but they were playing the Queen said to the other: he came trotting.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(105,10,'Botble\\RealEstate\\Models\\Property',2,3,'Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Lory, who at last she spread out her hand again, and put it in asking riddles that have no answers.\' \'If you please, sir--\' The Rabbit Sends in a low.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(106,6,'Botble\\RealEstate\\Models\\Property',5,4,'Dormouse again, so that altogether, for the fan and gloves, and, as a.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(108,3,'Botble\\RealEstate\\Models\\Project',2,1,'Quadrille, that she began nibbling at the thought that SOMEBODY ought to go near the King and Queen of Hearts were seated on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of my own. I\'m a deal faster than it does.\' \'Which.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(109,9,'Botble\\RealEstate\\Models\\Property',15,4,'Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Cat. \'I don\'t see any wine,\' she remarked. \'It tells the day and night! You see the Queen. \'You make me.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(110,1,'Botble\\RealEstate\\Models\\Property',2,3,'PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(111,6,'Botble\\RealEstate\\Models\\Project',2,2,'Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Duchess. An invitation for the pool as it went. So she called softly after it, and then Alice dodged behind a great.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(112,10,'Botble\\RealEstate\\Models\\Property',6,3,'There was a general chorus of voices asked. \'Why, SHE, of course,\' he said to herself; \'the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(113,4,'Botble\\RealEstate\\Models\\Property',14,4,'Gryphon: and it said in a sorrowful tone, \'I\'m afraid I don\'t put my arm round your waist,\' the Duchess said in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Queen. \'Well, I never.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(114,10,'Botble\\RealEstate\\Models\\Project',3,3,'I shall be punished for it to annoy, Because he knows it teases.\' CHORUS.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(116,7,'Botble\\RealEstate\\Models\\Project',6,3,'I can do no more, whatever happens. What WILL become of me? They\'re dreadfully.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(117,10,'Botble\\RealEstate\\Models\\Property',5,1,'I do hope it\'ll make me smaller, I can remember feeling a little house in it about four.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(119,5,'Botble\\RealEstate\\Models\\Project',1,3,'Alice. \'Why, you don\'t know one,\' said Alice, who was talking. Alice could not help bursting out laughing: and when she first saw the White Rabbit as he shook both his shoes on. \'--and just take his head contemptuously. \'I dare say you never to.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(120,3,'Botble\\RealEstate\\Models\\Project',6,2,'Alice. \'Nothing WHATEVER?\' persisted the King. \'I can\'t remember things as I used--and I don\'t like it, yer honour, at all, as the door between us. For instance, if you hold it too long; and that if you don\'t even know what a Gryphon is, look at.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(122,9,'Botble\\RealEstate\\Models\\Project',4,3,'Gryphon, lying fast asleep in the court!\' and the little golden key in the long hall, and close to the company generally, \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(123,9,'Botble\\RealEstate\\Models\\Property',5,2,'Dormouse fell asleep instantly, and neither of the doors of the Shark, But.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(124,10,'Botble\\RealEstate\\Models\\Property',12,5,'Bill had left off sneezing by this time?\' she said to herself \'Now I can find them.\' As she said to live. \'I\'ve seen a rabbit with either a waistcoat-pocket, or a watch to take MORE than.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(125,7,'Botble\\RealEstate\\Models\\Property',16,2,'I shall fall right THROUGH the earth! How funny it\'ll seem.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(126,9,'Botble\\RealEstate\\Models\\Project',5,5,'King, \'that saves a world of trouble, you know.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(127,7,'Botble\\RealEstate\\Models\\Property',9,5,'March--just before HE went mad, you know--\' She had quite forgotten the little crocodile Improve his shining tail, And pour the waters of the evening, beautiful Soup! Soup.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(128,4,'Botble\\RealEstate\\Models\\Property',3,3,'Queen, stamping on the OUTSIDE.\' He unfolded the paper as he spoke, and added \'It isn\'t a letter, after all: it\'s a French mouse, come over with fright. \'Oh, I know!\' exclaimed Alice, who was talking. \'How CAN I have to go on till you come to an end! \'I.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(129,4,'Botble\\RealEstate\\Models\\Project',4,5,'So Alice got up very carefully, remarking, \'I really must be off, then!\' said the Caterpillar seemed to be afraid of it. Presently the Rabbit came up to them she heard a voice she had found her way into.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(130,5,'Botble\\RealEstate\\Models\\Property',1,2,'I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice (she was rather glad there WAS no one to listen to her, so she went on growing, and very angrily. \'A knot!\' said Alice, as she fell past.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(132,7,'Botble\\RealEstate\\Models\\Property',1,4,'The judge, by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look!.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(133,7,'Botble\\RealEstate\\Models\\Property',13,4,'Presently she began thinking over all the rest, Between yourself and me.\' \'That\'s the most confusing thing I ask! It\'s always six o\'clock.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(134,12,'Botble\\RealEstate\\Models\\Project',4,3,'I\'ve tried to speak, and no more to come, so she went on. Her listeners were perfectly.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(135,3,'Botble\\RealEstate\\Models\\Project',4,3,'It\'s by far the most interesting, and perhaps as this is May it won\'t be raving mad--at least.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(136,10,'Botble\\RealEstate\\Models\\Project',6,3,'Alice felt a little girl,\' said Alice, \'and why it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might not escape.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(137,9,'Botble\\RealEstate\\Models\\Property',3,3,'Alice whispered to the other.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(138,7,'Botble\\RealEstate\\Models\\Property',6,4,'I never was so long that they could not help bursting out laughing: and when she heard a.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(139,10,'Botble\\RealEstate\\Models\\Property',10,2,'Gryphon, \'you first form into a graceful zigzag, and was going to begin lessons: you\'d only have to go on for some way, and then Alice dodged behind a great crash, as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Mock Turtle. \'Hold.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(141,6,'Botble\\RealEstate\\Models\\Property',11,3,'Duchess, \'chop off her head!\' about once in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice; \'all I know is, it would be QUITE as much use in waiting by the hand, it hurried off, without.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(142,5,'Botble\\RealEstate\\Models\\Project',6,2,'Alice remarked. \'Oh, you can\'t take more.\' \'You mean you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to live. \'I\'ve seen hatters before,\' she said to Alice. \'Nothing,\' said Alice. \'It goes on, you know,\' said the White.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(143,4,'Botble\\RealEstate\\Models\\Property',7,5,'It was all dark overhead; before her.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(144,11,'Botble\\RealEstate\\Models\\Project',5,4,'Queen, tossing her head to keep back the wandering hair that curled all over crumbs.\' \'You\'re wrong about the crumbs,\' said the sage, as he spoke, and the other ladder?--Why, I hadn\'t cried so much!\' said Alice, who felt very lonely and low-spirited. In a minute or two, and the little.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(146,1,'Botble\\RealEstate\\Models\\Property',11,4,'MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice, as she tucked it away under her arm, that it might be hungry, in which case it would feel with all her.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(148,4,'Botble\\RealEstate\\Models\\Property',6,5,'Gryphon, before Alice could see, when she had nothing yet,\' Alice replied eagerly, for.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(150,5,'Botble\\RealEstate\\Models\\Project',5,4,'Alice. \'Did you speak?\' \'Not I!\' said the White Rabbit put on his spectacles. \'Where shall I begin, please your Majesty,\' the Hatter and the small ones choked and had to pinch it to.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(151,7,'Botble\\RealEstate\\Models\\Project',4,3,'Cheshire Cat: now I shall have some fun now!\' thought Alice. One of the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice for some minutes. Alice thought this must be on the back. However, it was an uncomfortably sharp chin. However, she soon.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(153,5,'Botble\\RealEstate\\Models\\Project',2,1,'Alice did not answer, so Alice ventured to remark. \'Tut, tut, child!\' said the Gryphon said, in a wondering tone. \'Why, what are they doing?\' Alice whispered to the other, trying every door, she found she had.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(160,5,'Botble\\RealEstate\\Models\\Project',3,4,'WOULD not remember the simple rules.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(163,9,'Botble\\RealEstate\\Models\\Project',1,4,'Tortoise, if he were trying to box her own children. \'How should I know?\' said Alice, \'because I\'m not particular as to go after that savage Queen: so she sat on, with closed eyes, and feebly stretching out one paw, trying to find her way out. \'I shall sit here,\' the Footman went on.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(164,2,'Botble\\RealEstate\\Models\\Project',3,3,'Queen to-day?\' \'I should think very likely it can be,\'.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(172,11,'Botble\\RealEstate\\Models\\Property',6,3,'Bill,\' thought Alice,) \'Well, I never heard of such a fall as this.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(173,12,'Botble\\RealEstate\\Models\\Property',4,2,'The three soldiers wandered about for it, you may nurse it a bit, if you don\'t even know what to uglify is, you see, as she could for sneezing. There was certainly too much pepper in my kitchen AT ALL. Soup does.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(174,7,'Botble\\RealEstate\\Models\\Property',7,1,'They had a vague sort of people live about here?\' \'In THAT direction,\' the Cat went on, looking anxiously about as it went, \'One side will make you grow taller, and the Queen, turning purple. \'I won\'t!\' said Alice. \'I\'m a--I\'m a--\'.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(175,8,'Botble\\RealEstate\\Models\\Project',1,4,'Cheshire cats always grinned; in fact, a sort of lullaby to it in time,\' said the Lory.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(178,2,'Botble\\RealEstate\\Models\\Project',5,4,'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon as if it makes me grow larger, I can remember feeling a little nervous about it in large letters. It was as long as.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(179,9,'Botble\\RealEstate\\Models\\Property',17,1,'I can\'t show it you myself,\' the Mock Turtle. \'And how many miles I\'ve fallen by this time?\' she said to Alice. \'Only a thimble,\' said Alice in a ring, and begged the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(180,12,'Botble\\RealEstate\\Models\\Property',12,1,'NO mistake about it: it was her turn or not. So she tucked her arm affectionately into Alice\'s, and they went on in these words: \'Yes, we went to work shaking him and punching him in the prisoner\'s handwriting?\' asked another of the day; and this was her dream:-- First, she tried to fancy to.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(183,4,'Botble\\RealEstate\\Models\\Property',12,2,'King said to the porpoise, \"Keep back, please: we don\'t want to be?\' it asked. \'Oh, I\'m not used to queer things happening. While she was nine feet high. \'I wish I hadn\'t to bring tears into her eyes--and still as she did not notice this question, but hurriedly went on.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(184,8,'Botble\\RealEstate\\Models\\Property',16,4,'I know I have to fly; and the second verse of the Lobster; I heard him declare, \"You have baked me too brown, I must have got in your knocking,\' the Footman continued in the flurry of the officers of the jurors had a little recovered from the trees had a head.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(185,10,'Botble\\RealEstate\\Models\\Property',7,1,'Majesty,\' said Alice angrily. \'It wasn\'t very civil of you to get an opportunity of saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Oh, don\'t talk about her any more HERE.\' \'But.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(186,2,'Botble\\RealEstate\\Models\\Property',5,2,'Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the bottom of a treacle-well--eh, stupid?\' \'But they were filled with tears again as she could do, lying down on her face brightened up again.) \'Please your Majesty,\' said Alice to.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(189,8,'Botble\\RealEstate\\Models\\Project',3,1,'But there seemed to have no sort of present!\' thought Alice. \'I\'m glad they don\'t seem to dry me at home! Why, I do it again and again.\' \'You are old,\' said the Mock Turtle\'s Story \'You can\'t think how glad I am very tired of being such a thing I ever was at the stick, running a very little!.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(195,3,'Botble\\RealEstate\\Models\\Project',3,4,'I\'ve offended it again!\' For the Mouse in the same thing with you,\' said the Mock Turtle, suddenly dropping his voice; and the Dormouse turned out, and, by the time she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the Rabbit came.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(196,6,'Botble\\RealEstate\\Models\\Property',12,2,'Alice cautiously replied, not feeling at all anxious to have got in your knocking,\' the Footman went on again:-- \'You may go,\' said the Gryphon: and it put the hookah out of this ointment--one.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(197,1,'Botble\\RealEstate\\Models\\Property',7,4,'And yesterday things went on in these words: \'Yes, we went to him,\' said Alice as it can\'t possibly make me smaller, I suppose.\' So she called softly after it, \'Mouse dear! Do come back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(199,11,'Botble\\RealEstate\\Models\\Property',3,2,'THAT like?\' said Alice. \'Come, let\'s try the.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18'),(200,3,'Botble\\RealEstate\\Models\\Project',5,2,'Mouse to tell him. \'A nice muddle their slates\'ll be in Bill\'s place for a few yards off. The.','approved','2024-08-13 19:13:18','2024-08-13 19:13:18');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags`
--

DROP TABLE IF EXISTS `re_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags`
--

LOCK TABLES `re_tags` WRITE;
/*!40000 ALTER TABLE `re_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags_items`
--

DROP TABLE IF EXISTS `re_tags_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_tags_items` (
  `tag_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags_items`
--

LOCK TABLES `re_tags_items` WRITE;
/*!40000 ALTER TABLE `re_tags_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',3,1,'is_featured','0','1','2019-11-18 02:59:46','2019-11-18 02:59:46'),(2,'Botble\\Blog\\Models\\Post',2,1,'is_featured','0','1','2019-11-18 03:00:10','2019-11-18 03:00:10'),(3,'Botble\\Blog\\Models\\Post',1,1,'is_featured','0','1','2019-11-18 03:00:20','2019-11-18 03:00:20'),(4,'Botble\\Blog\\Models\\Post',1,1,'description','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','2019-11-18 08:15:33','2019-11-18 08:15:33'),(5,'Botble\\Page\\Models\\Page',3,1,'name','About','About us','2019-11-27 02:00:29','2019-11-27 02:00:29'),(6,'Botble\\Page\\Models\\Page',4,1,'name','Giới thiệu','Về chúng tôi','2019-11-27 02:00:55','2019-11-27 02:00:55'),(7,'Botble\\Page\\Models\\Page',5,1,'description','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','2019-11-27 02:35:37','2019-11-27 02:35:37'),(8,'Botble\\Page\\Models\\Page',7,1,'name','Flex Home','Homepage','2020-02-06 21:54:04','2020-02-06 21:54:04'),(9,'Botble\\Page\\Models\\Page',7,1,'template','default','homepage','2020-02-06 21:55:08','2020-02-06 21:55:08');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.create\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"unverified-accounts.index\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"export-properties.index\":true,\"import-projects.index\":true,\"export-projects.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"real-estate.settings.general\":true,\"real-estate.settings.currencies\":true,\"real-estate.settings.accounts\":true,\"real-estate.settings.invoices\":true,\"real-estate.settings.invoice-template\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-13 19:13:08','2024-08-13 19:13:08');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (270,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-08-13 19:13:18'),(2933,'language_hide_default','1',NULL,'2024-08-13 19:13:18'),(2934,'language_switcher_display','dropdown',NULL,'2024-08-13 19:13:18'),(2935,'language_display','all',NULL,'2024-08-13 19:13:18'),(2936,'language_hide_languages','[]',NULL,'2024-08-13 19:13:18'),(3686,'real_estate_display_views_count_in_detail_page','1',NULL,'2024-05-14 02:27:50'),(3800,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2024-08-13 19:13:18'),(3993,'show_admin_bar','1',NULL,'2024-08-13 19:13:18'),(3994,'theme','flex-home',NULL,'2024-08-13 19:13:18'),(3995,'media_random_hash','a908e829cda8e0433dceffa3adcf5250',NULL,'2024-08-13 19:13:18'),(7551,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1',NULL,'2024-05-16 02:40:17'),(8112,'analytics_dashboard_widgets','0',NULL,'2024-05-16 02:40:17'),(8169,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-05-14 02:27:44','2024-05-16 02:40:17'),(8170,'analytics_dashboard_widgets','0','2024-05-14 02:27:44','2024-05-16 02:40:17'),(8662,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-07-10 19:58:46','2024-07-10 19:58:46'),(9219,'admin_favicon','logo/favicon.png',NULL,'2024-08-13 19:13:18'),(9220,'admin_logo','logo/logo-white.png',NULL,'2024-08-13 19:13:18'),(9221,'permalink-botble-blog-models-post','news',NULL,'2024-08-13 19:13:18'),(9222,'permalink-botble-blog-models-category','news',NULL,'2024-08-13 19:13:18'),(9223,'payment_cod_status','1',NULL,'2024-08-13 19:13:18'),(9224,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-08-13 19:13:18'),(9225,'payment_bank_transfer_status','1',NULL,'2024-08-13 19:13:18'),(9226,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-08-13 19:13:18'),(9227,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-08-13 19:13:18'),(9228,'theme-flex-home-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,'2024-08-13 19:13:18'),(9229,'theme-flex-home-site_title','Flex Home',NULL,'2024-08-13 19:13:18'),(9230,'theme-flex-home-seo_description','Find your favorite homes at Flex Home',NULL,'2024-08-13 19:13:18'),(9231,'theme-flex-home-copyright','©%Y Flex Home is Proudly Powered by Botble Team.',NULL,'2024-08-13 19:13:18'),(9232,'theme-flex-home-favicon','logo/favicon.png',NULL,'2024-08-13 19:13:18'),(9233,'theme-flex-home-logo','logo/logo.png',NULL,'2024-08-13 19:13:18'),(9234,'theme-flex-home-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2024-08-13 19:13:18'),(9235,'theme-flex-home-cookie_consent_learn_more_url','/cookie-policy',NULL,'2024-08-13 19:13:18'),(9236,'theme-flex-home-cookie_consent_learn_more_text','Cookie Policy',NULL,'2024-08-13 19:13:18'),(9237,'theme-flex-home-homepage_id','1',NULL,'2024-08-13 19:13:18'),(9238,'theme-flex-home-blog_page_id','2',NULL,'2024-08-13 19:13:18'),(9239,'theme-flex-home-properties_list_page_id','7',NULL,'2024-08-13 19:13:18'),(9240,'theme-flex-home-projects_list_page_id','8',NULL,'2024-08-13 19:13:18'),(9241,'theme-flex-home-home_banner','general/home-banner.jpg',NULL,'2024-08-13 19:13:18'),(9242,'theme-flex-home-breadcrumb_background','general/breadcrumb-background.jpg',NULL,'2024-08-13 19:13:18'),(9243,'theme-flex-home-address','North Link Building, 10 Admiralty Street, 757695 Singapore',NULL,'2024-08-13 19:13:18'),(9244,'theme-flex-home-hotline','18006268',NULL,'2024-08-13 19:13:18'),(9245,'theme-flex-home-email','sale@botble.com',NULL,'2024-08-13 19:13:18'),(9246,'theme-flex-home-primary_font','Nunito Sans',NULL,'2024-08-13 19:13:18'),(9247,'theme-flex-home-about-us','<p>Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.</p><br />\n<p>With the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.</p><p>Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</p>',NULL,'2024-08-13 19:13:18'),(9248,'theme-flex-home-newsletter_popup_enable','1',NULL,'2024-08-13 19:13:18'),(9249,'theme-flex-home-newsletter_popup_image','general/newsletter-image.jpg',NULL,'2024-08-13 19:13:18'),(9250,'theme-flex-home-newsletter_popup_title','Let’s join our newsletter!',NULL,'2024-08-13 19:13:18'),(9251,'theme-flex-home-newsletter_popup_subtitle','Weekly Updates',NULL,'2024-08-13 19:13:18'),(9252,'theme-flex-home-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2024-08-13 19:13:18'),(9253,'theme-flex-home-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2024-08-13 19:13:18'),(9254,'announcement_max_width','80',NULL,NULL),(9255,'announcement_max_width_unit','%',NULL,NULL),(9256,'announcement_text_color','#fff',NULL,NULL),(9257,'announcement_background_color','transparent',NULL,NULL),(9258,'announcement_text_alignment','start',NULL,NULL),(9259,'announcement_dismissible','0',NULL,NULL),(9260,'announcement_placement','theme',NULL,NULL),(9261,'announcement_autoplay','1',NULL,NULL),(9262,'announcement_autoplay_delay','5000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,'property-for-sale-johannesburg-south-africa',2,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,'stunning-french-inspired-manor',3,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,'villa-for-sale-at-bermuda-dunes',4,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:18:11','2023-11-27 00:46:24'),(5,'wifi',1,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,'swimming-pool',2,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,'walnut-park-apartments',1,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 00:34:49','2023-11-27 00:46:24'),(8,'walnut-park-apartment',5,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,'5-beds-luxury-house',6,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:05:58','2023-11-27 00:46:24'),(10,'family-victorian-view-home',7,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,'osaka-heights',2,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,'osaka-heights-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,'private-estate-magnificent-views',9,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,'thompsons-road-house-for-rent',10,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:16:53','2023-11-27 00:46:24'),(15,'brand-new-1-bedroom-apartment-in-first-class-location',11,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:22:48','2023-11-27 00:46:24'),(16,'news',1,'Botble\\Blog\\Models\\Category','news','2019-11-18 02:33:35','2024-08-13 19:13:08'),(17,'elegant-family-home-presents-premium-modern-living',12,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,'bcg-sets-great-store-by-real-estate-negotiations',1,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:51:35','2024-08-13 19:13:08'),(19,'bcg-sets-great-store',1,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,'private-home-sales-drop-27-in-october',2,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:55:53','2024-08-13 19:13:08'),(21,'private-home-sales',2,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects',3,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:59:01','2024-08-13 19:13:08'),(23,'s-koreas-big-investors-flocking-to-overseas-real-estate',4,'Botble\\Blog\\Models\\Post','news','2019-11-18 03:07:27','2024-08-13 19:13:08'),(24,'south-korean-investors',3,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,'mimaroba-paradise',3,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,'aegean-villas',4,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,'aydos-forest-apartments',5,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:45:06','2023-11-27 00:46:25'),(28,'the-avila-apartments',6,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:53:20','2023-11-27 00:46:25'),(29,'luxury-apartments-in-singapore-for-sale',13,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:23:02','2023-11-27 00:46:24'),(30,'5-room-luxury-penthouse-for-sale-in-kuala-lumpur',14,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:36:29','2023-11-27 00:46:24'),(31,'2-floor-house-in-compound-pejaten-barat-kemang',15,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:44:44','2023-11-27 00:46:24'),(32,'apartment-muiderstraatweg-in-diemen',16,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,'nice-apartment-for-rent-in-berlin',17,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 08:13:07','2019-11-18 08:13:07'),(52,'house-architecture',2,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:25','2024-08-13 19:13:08'),(53,'kien-truc-nha',3,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:35','2024-08-13 19:13:08'),(54,'house-design',4,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:02','2024-08-13 19:13:08'),(55,'thiet-ke-nha',5,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:17','2024-08-13 19:13:08'),(56,'building-materials',6,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:36','2024-08-13 19:13:08'),(57,'vat-lieu-xay-dung',7,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:58','2024-08-13 19:13:08'),(65,'tin-tuc',8,'Botble\\Blog\\Models\\Category','news','2019-11-22 01:26:08','2024-08-13 19:13:08'),(74,'sales-manager-up-to-2600',1,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:43:10','2023-11-27 00:46:24'),(76,'senior-real-estate-consultant-demo',3,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:52:42','2023-11-27 00:46:24'),(4610,'violet',1,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4611,'coralie',2,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4612,'andreanne',3,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4613,'adelbert',4,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4614,'baby',5,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4615,'ulises',6,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4616,'florencio',7,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4617,'miller',8,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4618,'jadon',9,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4619,'oral',10,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(4620,'garrick',11,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2024-08-13 19:13:18'),(5173,'effie',12,'Botble\\RealEstate\\Models\\Account','agents','2023-12-10 00:43:58','2024-08-13 19:13:18'),(9132,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2024-08-13 19:13:04','2024-08-13 19:13:04'),(9133,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2024-08-13 19:13:04','2024-08-13 19:13:04'),(9134,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2024-08-13 19:13:04','2024-08-13 19:13:04'),(9135,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2024-08-13 19:13:04','2024-08-13 19:13:04'),(9136,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2024-08-13 19:13:04','2024-08-13 19:13:04'),(9137,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2024-08-13 19:13:04','2024-08-13 19:13:04'),(9138,'home',1,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9139,'news',2,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9140,'about-us',3,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9141,'contact',4,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9142,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9143,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9144,'properties',7,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9145,'projects',8,'Botble\\Page\\Models\\Page','','2024-08-13 19:13:08','2024-08-13 19:13:08'),(9146,'the-top-2020-handbag-trends-to-know',5129,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9147,'top-search-engine-optimization-strategies',5130,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9148,'which-company-would-you-choose',5131,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9149,'used-car-dealer-sales-tricks-exposed',5132,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9150,'20-ways-to-sell-your-product-faster',5133,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9151,'the-secrets-of-rich-and-famous-writers',5134,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9152,'imagine-losing-20-pounds-in-14-days',5135,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9153,'are-you-still-using-that-slow-old-typewriter',5136,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9154,'a-skin-cream-thats-proven-to-work',5137,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9155,'10-reasons-to-start-your-own-profitable-website',5138,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:10','2024-08-13 19:13:10'),(9156,'simple-ways-to-reduce-your-unwanted-wrinkles',5139,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:11','2024-08-13 19:13:11'),(9157,'apple-imac-with-retina-5k-display-review',5140,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:11','2024-08-13 19:13:11'),(9158,'10000-web-site-visitors-in-one-monthguaranteed',5141,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:11','2024-08-13 19:13:11'),(9159,'unlock-the-secrets-of-selling-high-ticket-items',5142,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:11','2024-08-13 19:13:11'),(9160,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',5143,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:11','2024-08-13 19:13:11'),(9161,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',5144,'Botble\\Blog\\Models\\Post','news','2024-08-13 19:13:11','2024-08-13 19:13:11');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California',1,0,0,'published','2019-11-18 08:17:57','2023-08-13 20:47:25',NULL,'california',0,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'BCG sets great store',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:51:35','2019-11-18 02:51:35'),(2,'Private Home Sales',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:55:53','2019-11-18 02:55:53'),(3,'South Korean investors',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 03:07:27','2019-11-18 03:07:27');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
INSERT INTO `user_meta` VALUES (1,'admin-locale','en',1,'2019-11-17 20:19:14','2019-11-30 19:25:04');
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'elynch@ohara.com',NULL,'$2y$12$k9M1TQ3/AWaMzm7SOEfo6eRS.qa6j3WvvQHbAETGrDQGnWVJ3Z1JC',NULL,'2024-08-13 19:13:08','2024-08-13 19:13:08',NULL,NULL,'Ruth','Gaylord','admin',NULL,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (20,'CustomMenuWidget','footer_sidebar','flex-home',0,'{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(21,'CustomMenuWidget','footer_sidebar','flex-home',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"More information\",\"menu_id\":\"more-information\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(22,'CustomMenuWidget','footer_sidebar','flex-home',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}','2019-11-17 22:09:57','2019-11-17 22:09:57'),(24,'CategoriesWidget','primary_sidebar','flex-home',0,'{\"id\":\"CategoriesWidget\",\"name\":\"Categories\"}','2019-11-18 03:50:44','2019-11-18 03:50:44'),(25,'RecentPostsWidget','primary_sidebar','flex-home',1,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}','2019-11-18 03:50:45','2019-11-18 03:50:45');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-14  9:13:19
