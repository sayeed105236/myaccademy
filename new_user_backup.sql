-- MySQL dump 10.13  Distrib 5.7.40, for Linux (x86_64)
--
-- Host: localhost    Database: new_user
-- ------------------------------------------------------
-- Server version	5.7.40-0ubuntu0.18.04.1

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
-- Table structure for table `about_us_generals`
--

DROP TABLE IF EXISTS `about_us_generals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_us_generals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_area_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_area_subtitle` text COLLATE utf8mb4_unicode_ci,
  `gallery_third_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_second_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_first_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_subtitle` text COLLATE utf8mb4_unicode_ci,
  `upgrade_skill_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upgrade_skill_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upgrade_skill_subtitle` text COLLATE utf8mb4_unicode_ci,
  `upgrade_skill_button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_member_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_member_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_member_subtitle` text COLLATE utf8mb4_unicode_ci,
  `instructor_support_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instructor_support_subtitle` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us_generals`
--

LOCK TABLES `about_us_generals` WRITE;
/*!40000 ALTER TABLE `about_us_generals` DISABLE KEYS */;
INSERT INTO `about_us_generals` VALUES (1,'Mere Tranquil Existence, That I Neglect My Talents Should','Possession Of My Entire Soul, Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart. I Am Alone, And Charm Of Existence In This Spot, Which Was Created For The Bliss Of Souls Like Mine. I Am So Happy, My Dear Friend, So Absorbed In The Exquisite Sense Of Mere Tranquil Existence','uploads/about_us_general/1667025544-THptSc65SU.jpg','uploads/about_us_general/1667025544-vCDsPYMjKn.jpg','uploads/about_us_general/1671805378-pG8mulgvHX.jpg','Our History','Possession Of My Entire Soul, Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart. I Am Alone, And Charm Of Existence In This Spot Which','uploads/about_us_general/1667025649-TVj4sRql5f.png','Upgrade Your Skills Today For Upgrading Your Life.','Noticed by me when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence stalks, and grow familiar with the countless','Find Your Course','uploads_demo/about_us_general/team-members-heading-img.png','Our Passionate Team Members','CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS','Quality Course, Instructor And Support','CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS',NULL,'2022-12-23 20:22:58');
/*!40000 ALTER TABLE `about_us_generals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) NOT NULL,
  `take_exam_id` bigint(20) NOT NULL,
  `multiple_choice_answer` mediumtext COLLATE utf8mb4_unicode_ci,
  `is_correct` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,6,2,2,3,1,NULL,'yes','2023-01-02 21:40:19','2023-01-02 21:40:19'),(2,6,2,3,9,1,NULL,'no','2023-01-02 21:40:39','2023-01-02 21:40:39');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_files`
--

DROP TABLE IF EXISTS `assignment_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `assignment_id` bigint(20) unsigned DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_files`
--

LOCK TABLES `assignment_files` WRITE;
/*!40000 ALTER TABLE `assignment_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_submits`
--

DROP TABLE IF EXISTS `assignment_submits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment_submits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `assignment_id` bigint(20) unsigned DEFAULT NULL,
  `marks` double(8,2) DEFAULT NULL,
  `notes` mediumtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assignment_submits_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_submits`
--

LOCK TABLES `assignment_submits` WRITE;
/*!40000 ALTER TABLE `assignment_submits` DISABLE KEYS */;
INSERT INTO `assignment_submits` VALUES (1,'1ada8615-d33c-43af-9e31-b1a5f2f22820',6,4,2,NULL,NULL,'uploads/assignment_submit/1672674318-mindchain-issue.txt.zip','mindchain-issue.txt.zip',NULL,'2023-01-02 21:45:18','2023-01-02 21:45:18');
/*!40000 ALTER TABLE `assignment_submits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `marks` int(11) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assignments_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,'9331972c-25f6-45c9-898b-5492bd8c2166',7,3,'Practice 1','Test Assignment',30,'uploads/assignment/1671808638-CV SAYEED.pdf','CV SAYEED.pdf',NULL,1,'2022-12-23 21:17:18','2022-12-23 21:17:18'),(2,'919075c9-56ac-4234-9593-b202e6763920',7,4,'Assignment 1','assignment Details',10,'uploads/assignment/1672672689-CV SAYEED.pdf','CV SAYEED.pdf',NULL,1,'2023-01-02 21:18:09','2023-01-02 21:18:09');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_categories_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'5fed02ee-4f0b-4552-b54e-7b81b339f713','Development','development',1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'0cdc0db7-13eb-4309-aff6-99304485cd0c','IT & Software','it-software',1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'4679a72f-f28a-4fed-aedf-1b96ed199d42','Data Science','data-science',1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(4,'73a90c6f-6ddc-4dae-a7fc-df532e9cc16b','Soft Skills','soft-skills',1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(5,'b3245d59-8360-486e-84a7-96025bc7f95e','Business','business',1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(6,'007b109c-4ec6-47e1-aa3f-11bfde0a2d28','Marketing','marketing',1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(7,'d25c841e-56ab-4e5b-bcd6-3a92ba683ed1','Design','design',1,'2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tags`
--

DROP TABLE IF EXISTS `blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) unsigned DEFAULT NULL,
  `tag_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tags`
--

LOCK TABLES `blog_tags` WRITE;
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=published, 0=unpublished',
  `blog_category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'96d1eada-e769-40eb-895e-c5c6d42da0ab',1,'60 Common C# Interview Questions in 2022: Ace Your Next Interview','60-common-c-interview-questions-in-2022-ace-your-next-interview','Getting hired as a programmer can be a challenge. There’s a lot of talent out there, and there’s a lot of competition. Many employers are wary of “paper programmers”; people who have no programming experience but just a degree. Because of this, they often ask in-depth programming questions during their interview. These questions can be hard to answer if you haven’t properly prepared. In this article, I’ll help you prepare to ace your next interview with these questions related to the C# programming language. At the same time, you might want to practice with some C# projects. These 50 essential C# questions and answers will help you understand the technical concepts of the language. You’ll walk into a meeting with the hiring manager with confidence. As a developer myself, I use these concepts daily.','uploads/blog/1667023756-UYfYew23u1.png',1,7,'2022-10-11 13:46:08','2022-10-29 06:09:16'),(2,'b0b2e629-0bc6-4703-bd3a-66dcd350d843',1,'PostgreSQL vs. MySQL: Which SQL Platform Should You Use?','postgresql-vs-mysql-which-sql-platform-should-you-use','MySQL and PostgreSQL are both leading database technologies built on a foundation of SQL: Structured Query Language. SQL forms the basis of how to create, access, update, and otherwise interact with data stored in a relational database. While MySQL has been the most popular platform for many years, PostgreSQL is another major contender. Many database administrators and developers will know both technologies, which are much more similar than they are different. You can learn more about the history of SQL and how the various “flavors” came to be by watching this brief video: Depending on what you’re trying to create, the data you’re trying to manage, and your own background as a programmer or analyst, you may find one language preferable over the other. But in terms of popularity and marketability, both are widely used, with MySQL maintaining the advantage here. Compared to PostgreSQL, MySQL has the largest market share and, therefore, the most job opportunities. Here’s what you need to know about MySQL vs. PostgreSQL — the differences, benefits, and disadvantages — as well as some basic information about SQL and database platforms.','uploads/blog/1667023730-qhNX6VVVhi.png',1,7,'2022-10-11 13:46:08','2022-10-29 06:08:50'),(3,'d6cf13f7-cff2-4f23-9817-d5b45e944745',1,'Java vs. Python: Which Is the Best Programming Language for You?','java-vs-python-which-is-the-best-programming-language-for-you','Java and Python are both excellent choices for a beginning programmer. You really can’t go wrong by choosing either one. Here are some things these languages have in common. Both are popular and in high demand.Both are open source and don’t require a paid license to use for developers.  In the case of Java, if you use the official Oracle Java version, there may be a fee for commercial use payable by your customer/employer when deploying your Java application.  However, there are free runtime versions available from multiple vendors as well. You can get started coding in either language today as long as you have an internet connection to download the installation files and a computer that runs Windows, OS X, or Linux.The two languages do have their differences, and developers sometimes prefer one or the other for various reasons. Below is a discussion of those reasons, with hopefully enough information to help you decide which language is the one for you.','uploads/blog/1667023692-wPu2bGQgkr.jpg',1,7,'2022-10-11 13:46:08','2022-10-29 06:08:12'),(4,'ebaf07bc-0eb6-48d2-961b-de2d28671dd2',1,'Learn Coding in Scratch with a Cool Game Idea','learn-coding-in-scratch-with-a-cool-game-idea','A few years ago, the creation of programs and applications was aimed at only a few people with specialized knowledge. Lately, though, programming for beginners has been possible, thanks to software that has been developed, such as Scratch. In this article, you will see how to create your own game in an easy and fun way.\r\nWhy start Scratch Coding?\r\nThe rate at which jobs in the IT sector are growing is almost twice as high as in other industries, and this is only an indication of work in future new technologies. Researchers estimate that “the digital economy is worth $11.5 trillion globally, equivalent to 15.5 percent of global GDP and has grown two and a half times faster than global GDP over the past 15 years.”\r\nIn a few years, programming knowledge will be fully integrated into educational programs for every age. Using coding concepts, it’s possible to design projects that utilize very similar guidelines and rubrics for a digital project, thereby giving students the opportunity to learn about their topic and sharpen their coding skills at the same time. Future human resources, generations Y and Z, will have at their core the digital skills needed to program.','uploads/blog/1667023632-SyndiXOS2U.jpg',1,7,'2022-10-11 13:46:08','2022-10-29 06:07:12');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_histories`
--

DROP TABLE IF EXISTS `booking_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `instructor_user_id` bigint(20) unsigned NOT NULL,
  `student_user_id` bigint(20) unsigned NOT NULL,
  `consultation_slot_id` bigint(20) unsigned NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=Pending,1=Approve,2=Cancel,3=Completed',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=In-person,2=Online',
  `start_url` mediumtext COLLATE utf8mb4_unicode_ci,
  `join_url` mediumtext COLLATE utf8mb4_unicode_ci,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_host_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `cancel_reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `send_back_money_status` tinyint(4) DEFAULT '0' COMMENT '1=Yes, 0=No',
  `back_admin_commission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Admin Commission',
  `back_owner_balance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Instructor Commission',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `booking_histories_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_histories`
--

LOCK TABLES `booking_histories` WRITE;
/*!40000 ALTER TABLE `booking_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundle_courses`
--

DROP TABLE IF EXISTS `bundle_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bundle_courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bundle_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundle_courses`
--

LOCK TABLES `bundle_courses` WRITE;
/*!40000 ALTER TABLE `bundle_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `bundle_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundles`
--

DROP TABLE IF EXISTS `bundles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bundles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active,0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bundles_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundles`
--

LOCK TABLES `bundles` WRITE;
/*!40000 ALTER TABLE `bundles` DISABLE KEYS */;
/*!40000 ALTER TABLE `bundles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_management`
--

DROP TABLE IF EXISTS `cart_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_management` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `consultation_slot_id` bigint(20) unsigned DEFAULT NULL,
  `consultation_details` text COLLATE utf8mb4_unicode_ci,
  `consultation_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consultation_available_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bundle_id` bigint(20) unsigned DEFAULT NULL,
  `bundle_course_ids` text COLLATE utf8mb4_unicode_ci,
  `promotion_id` bigint(20) unsigned DEFAULT NULL,
  `coupon_id` bigint(20) unsigned DEFAULT NULL,
  `main_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_management`
--

LOCK TABLES `cart_management` WRITE;
/*!40000 ALTER TABLE `cart_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_feature` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (10,'20066ec4-5d34-4b45-be35-590f9f161933','Grade 1',NULL,'yes','grade-1',1,'2022-12-21 22:28:21','2022-12-25 00:11:15'),(11,'ecb6e2f4-7761-4dac-a96b-cc6b9ade377e','Grade 2',NULL,'yes','grade-2',1,'2022-12-23 19:48:31','2022-12-25 00:12:20'),(12,'5efadaa0-f59a-4b22-b2a2-9e242cb9b105','Grade 3',NULL,'yes','grade-3',1,'2022-12-23 19:49:57','2022-12-25 00:12:11'),(13,'634a09ad-4f27-4f34-9d10-8b774a575415','Grade 4',NULL,'yes','grade-4',1,'2022-12-23 19:50:10','2022-12-25 00:11:07');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate_by_instructors`
--

DROP TABLE IF EXISTS `certificate_by_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificate_by_instructors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `certificate_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_x_position` int(11) NOT NULL DEFAULT '0',
  `title_y_position` int(11) NOT NULL DEFAULT '0',
  `title_font_size` int(11) NOT NULL DEFAULT '20',
  `title_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `body_max_length` int(11) NOT NULL DEFAULT '80',
  `body_x_position` int(11) NOT NULL DEFAULT '0',
  `body_y_position` int(11) NOT NULL DEFAULT '16',
  `body_font_size` int(11) NOT NULL DEFAULT '20',
  `body_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_2_y_position` int(11) NOT NULL DEFAULT '10',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `certificate_by_instructors_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_by_instructors`
--

LOCK TABLES `certificate_by_instructors` WRITE;
/*!40000 ALTER TABLE `certificate_by_instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificate_by_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `number_x_position` int(11) NOT NULL DEFAULT '0',
  `number_y_position` int(11) NOT NULL DEFAULT '0',
  `number_font_size` int(11) NOT NULL DEFAULT '18',
  `number_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_x_position` int(11) NOT NULL DEFAULT '0',
  `title_y_position` int(11) NOT NULL DEFAULT '0',
  `title_font_size` int(11) NOT NULL DEFAULT '20',
  `title_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `date_x_position` int(11) NOT NULL DEFAULT '0',
  `date_y_position` int(11) NOT NULL DEFAULT '16',
  `date_font_size` int(11) NOT NULL DEFAULT '30',
  `date_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_student_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `student_name_x_position` int(11) NOT NULL DEFAULT '0',
  `student_name_y_position` int(11) NOT NULL DEFAULT '16',
  `student_name_font_size` int(11) NOT NULL DEFAULT '32',
  `student_name_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `body_max_length` int(11) NOT NULL DEFAULT '80',
  `body_x_position` int(11) NOT NULL DEFAULT '0',
  `body_y_position` int(11) NOT NULL DEFAULT '16',
  `body_font_size` int(11) NOT NULL DEFAULT '20',
  `body_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_1_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_1_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_1_x_position` int(11) NOT NULL DEFAULT '16',
  `role_1_y_position` int(11) NOT NULL DEFAULT '16',
  `role_1_font_size` int(11) NOT NULL DEFAULT '18',
  `role_1_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_2_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_2_x_position` int(11) NOT NULL DEFAULT '0',
  `role_2_y_position` int(11) NOT NULL DEFAULT '0',
  `role_2_font_size` int(11) NOT NULL DEFAULT '18',
  `role_2_font_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `certificates_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_messages`
--

DROP TABLE IF EXISTS `chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `incoming_user_id` bigint(20) unsigned DEFAULT NULL,
  `outgoing_user_id` bigint(20) unsigned DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `view` tinyint(4) DEFAULT '2' COMMENT '1=seen,2=not seen',
  `created_user_type` tinyint(4) DEFAULT NULL COMMENT '1=student,2=instructor',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_messages`
--

LOCK TABLES `chat_messages` WRITE;
/*!40000 ALTER TABLE `chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `state_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'Dhanmondi',NULL,NULL),(2,1,'Bannai',NULL,NULL),(3,2,'Nirala',NULL,NULL),(4,2,'Zero Point',NULL,NULL),(5,3,'Tomchombridge',NULL,NULL),(6,3,'Cantonment',NULL,NULL),(7,4,'Acton',NULL,NULL),(8,4,'Alamo',NULL,NULL),(9,5,'Albin',NULL,NULL),(10,6,'Bartow',NULL,NULL),(11,7,'Oban',NULL,NULL),(12,8,'Holywood',NULL,NULL),(13,9,'Ely',NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_logos`
--

DROP TABLE IF EXISTS `client_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_logos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_logos`
--

LOCK TABLES `client_logos` WRITE;
/*!40000 ALTER TABLE `client_logos` DISABLE KEYS */;
INSERT INTO `client_logos` VALUES (1,'Ovita','uploads/client_logo/1667028127-jl92WaHsXZ.png','2022-10-11 13:46:08','2022-10-29 07:22:07'),(2,'Vigon','uploads/client_logo/1667028127-7pRMnmN3En.png','2022-10-11 13:46:08','2022-10-29 07:22:07'),(3,'Betribe','uploads/client_logo/1667028127-rZavj2Nlp2.png','2022-10-11 13:46:08','2022-10-29 07:22:07'),(4,'Parsit','uploads/client_logo/1667028127-Tz8AMvXVf1.png','2022-10-11 13:46:08','2022-10-29 07:22:07'),(5,'Karika','uploads/client_logo/1667028127-gvWbAslhiz.png','2022-10-11 13:46:08','2022-10-29 07:22:07');
/*!40000 ALTER TABLE `client_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultation_slots`
--

DROP TABLE IF EXISTS `consultation_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultation_slots` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minute_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultation_slots`
--

LOCK TABLES `consultation_slots` WRITE;
/*!40000 ALTER TABLE `consultation_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultation_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_us_issue_id` bigint(20) unsigned DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us_issues`
--

DROP TABLE IF EXISTS `contact_us_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us_issues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_us_issues_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us_issues`
--

LOCK TABLES `contact_us_issues` WRITE;
/*!40000 ALTER TABLE `contact_us_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'BD','Bangladesh','','bangladesh','+88','Asia',NULL,NULL),(2,'USA','United States','','united-states','+1','North America',NULL,NULL),(3,'UK','United Kingdom','','united-kingdom','+44','Europe',NULL,NULL),(4,'CAN','Canada','can','','+44','CAN','2023-01-01 23:27:25','2023-01-01 23:27:25');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_courses`
--

DROP TABLE IF EXISTS `coupon_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_courses`
--

LOCK TABLES `coupon_courses` WRITE;
/*!40000 ALTER TABLE `coupon_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_instructors`
--

DROP TABLE IF EXISTS `coupon_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_instructors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_instructors`
--

LOCK TABLES `coupon_instructors` WRITE;
/*!40000 ALTER TABLE `coupon_instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT '1=Global,2=Instructor, 3=Course',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=activate, 0=deactivated',
  `creator_id` bigint(20) unsigned DEFAULT NULL COMMENT 'creator_id=user_id',
  `percentage` decimal(8,2) DEFAULT '0.00',
  `minimum_amount` int(11) DEFAULT NULL,
  `maximum_use_limit` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_languages`
--

DROP TABLE IF EXISTS `course_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_languages_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_languages`
--

LOCK TABLES `course_languages` WRITE;
/*!40000 ALTER TABLE `course_languages` DISABLE KEYS */;
INSERT INTO `course_languages` VALUES (1,'cfffb889-1a8e-40cb-9970-519513b2b4ba','English','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'6c1615b9-8cec-4379-85a8-2157c29c8abd','Bangla','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'d48d2885-ef39-46b6-a230-2b953e598c61','Hindi','2022-10-11 13:46:08','2022-10-11 13:46:08'),(4,'e134b7f9-0d2c-4813-b3b7-cb6584eba4db','Spanish','2022-10-11 13:46:08','2022-10-11 13:46:08'),(5,'4b9e2d62-e9e1-4d40-a14f-237ce0182bdd','Arabic','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `course_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lecture_views`
--

DROP TABLE IF EXISTS `course_lecture_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_lecture_views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `course_lecture_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lecture_views`
--

LOCK TABLES `course_lecture_views` WRITE;
/*!40000 ALTER TABLE `course_lecture_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_lecture_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lectures`
--

DROP TABLE IF EXISTS `course_lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_lectures` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `lesson_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lecture_type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=free/show, 2=paid/lock',
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_duration_second` double DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploaded_video' COMMENT 'video, youtube, vimeo, text, image, pdf, slide_document, audio',
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_lectures_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lectures`
--

LOCK TABLES `course_lectures` WRITE;
/*!40000 ALTER TABLE `course_lectures` DISABLE KEYS */;
INSERT INTO `course_lectures` VALUES (1,'81d8459c-13e6-47ba-a295-75d745ced9c8',1,1,'Installation',1,NULL,'https://www.youtube.com/watch?v=YGp_-4xDBNs&list=PLjVLYmrlmjGfh2rwJjrmKNHzGxCZwBsqj&index=2',NULL,'08:21',501,'youtube',NULL,NULL,NULL,NULL,NULL,'2022-12-21 01:42:53','2022-12-21 01:42:53'),(2,'056e3b40-e7bc-4e65-b6c8-c9a541e48cc5',1,2,'Understanding The Directory Structure of Laravel | How does Directory Structure Work? | #3',1,NULL,'https://www.youtube.com/watch?v=P1vLmaZ2JLI&list=PLjVLYmrlmjGfh2rwJjrmKNHzGxCZwBsqj&index=3',NULL,'15:15',915,'youtube',NULL,NULL,NULL,NULL,NULL,'2022-12-21 01:44:35','2022-12-21 01:44:35'),(3,'d3dcd610-8b47-4945-a67e-4ec32c3c1763',3,5,'Lesson 1',2,NULL,'https://www.youtube.com/watch?v=f7IQqZ9zBiY&list=PLU6SqdYcYsfILCRFpIM3fQdVIzOo71snJ&index=2',NULL,'01:14',74,'youtube',NULL,NULL,NULL,NULL,NULL,'2022-12-23 21:14:39','2022-12-23 21:14:39'),(4,'46cf1ef6-7429-4474-986d-88069f019779',3,5,'Lesson 2',2,NULL,'https://www.youtube.com/watch?v=f7IQqZ9zBiY&list=PLU6SqdYcYsfILCRFpIM3fQdVIzOo71snJ&index=2',NULL,'10:10',610,'youtube',NULL,NULL,NULL,NULL,NULL,'2022-12-23 21:56:03','2022-12-23 21:56:03'),(5,'ab6c3b71-4b6b-4bf4-a49b-9a9dd119143d',4,6,'Introduction of function',2,NULL,'https://www.youtube.com/watch?v=7S_tz1z_5bA',NULL,'03:10',190,'youtube',NULL,NULL,NULL,NULL,NULL,'2023-01-02 21:08:52','2023-01-02 21:08:52'),(6,'a7cc9612-df82-465f-84c3-51d126924ab1',4,6,'2nd Part Of Function',2,NULL,'W6NZfCO5SIk',NULL,'50:20',3020,'youtube',NULL,NULL,NULL,NULL,NULL,'2023-01-02 21:10:20','2023-01-02 21:10:47');
/*!40000 ALTER TABLE `course_lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lessons`
--

DROP TABLE IF EXISTS `course_lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_lessons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_lessons_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lessons`
--

LOCK TABLES `course_lessons` WRITE;
/*!40000 ALTER TABLE `course_lessons` DISABLE KEYS */;
INSERT INTO `course_lessons` VALUES (1,'3910e00d-681f-4deb-ac39-18cea301e1e2',1,'Introduction',NULL,'2022-12-21 01:41:19','2022-12-21 01:41:19'),(2,'a0d51604-97af-4963-be81-45167f5ccc4f',1,'Routing',NULL,'2022-12-21 01:41:32','2022-12-21 01:41:32'),(3,'2031aeb1-3636-4ccc-ad63-eb237f12c79c',1,'Controller',NULL,'2022-12-21 01:41:42','2022-12-21 01:41:42'),(4,'390f950e-832d-49df-9b83-4972b52163ea',2,'Introduction',NULL,'2022-12-21 22:57:46','2022-12-21 22:57:46'),(5,'685494ae-7b4b-443e-a2aa-b3d73e4201de',3,'Chapter 1',NULL,'2022-12-23 21:12:03','2022-12-23 21:12:03'),(6,'df29a034-be37-4d0c-a6ba-b19abfbc7651',4,'Introduction',NULL,'2023-01-02 21:05:59','2023-01-02 21:05:59');
/*!40000 ALTER TABLE `course_lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_resources`
--

DROP TABLE IF EXISTS `course_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_resources_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_resources`
--

LOCK TABLES `course_resources` WRITE;
/*!40000 ALTER TABLE `course_resources` DISABLE KEYS */;
INSERT INTO `course_resources` VALUES (1,'e1c2f03e-fd5d-4bfc-8ca9-b5c20af6de37',3,'mindchain-issue.txt.zip','uploads/course_resource/1672593289-mindchain-issue.txt.zip',NULL,'2023-01-01 23:14:49','2023-01-01 23:14:49'),(2,'2753a9b2-bebf-4940-8292-0f6c50b27d58',4,'mindchain-issue.txt.zip','uploads/course_resource/1672672530-mindchain-issue.txt.zip',NULL,'2023-01-02 21:15:30','2023-01-02 21:15:30');
/*!40000 ALTER TABLE `course_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_tags`
--

DROP TABLE IF EXISTS `course_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tags`
--

LOCK TABLES `course_tags` WRITE;
/*!40000 ALTER TABLE `course_tags` DISABLE KEYS */;
INSERT INTO `course_tags` VALUES (1,1,2,NULL,NULL),(2,2,1,NULL,NULL),(3,2,9,NULL,NULL),(4,3,9,NULL,NULL),(5,4,9,NULL,NULL);
/*!40000 ALTER TABLE `course_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_upload_rules`
--

DROP TABLE IF EXISTS `course_upload_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_upload_rules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_upload_rules`
--

LOCK TABLES `course_upload_rules` WRITE;
/*!40000 ALTER TABLE `course_upload_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_upload_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `instructor_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `course_language_id` bigint(20) DEFAULT NULL,
  `difficulty_level_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_details` mediumtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `learner_accessibility` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'paid,free',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_check` tinyint(4) DEFAULT NULL COMMENT '1=normal video, 2=youtube_video',
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_video_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=published, 2=waiting_for_review, 3=hold, 4=draft',
  `average_rating` decimal(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'c3fbdd40-536a-4a88-a443-9385d4fab8ce',5,2,1,1,1,2,'Laravel Beginners','Laravel Php Course for beginners','Laravel Php Course for beginners',NULL,0.00,'free','uploads/course/1671565262-wLCszIK8pr.jpg',2,NULL,'https://www.youtube.com/watch?v=0yVDMcGp97g&list=PLjVLYmrlmjGfh2rwJjrmKNHzGxCZwBsqj','laravel-beginners',1,0.00,'2022-12-21 01:35:53','2023-01-01 22:59:14'),(2,'3f53a7a6-2682-41b5-bf55-c08d5769a4b5',7,3,10,23,1,2,'Java Software Development','Java Software Development','Java Software Development',NULL,0.00,'free','uploads/course/1671641844-7A9f8CnvLi.jpg',2,NULL,'https://www.youtube.com/watch?v=z7QwTMDQ88o&list=PLgH5QX0i9K3oAZUB2QXR-dZac0c9HNyRa','java-software-development',4,0.00,'2022-12-21 22:40:29','2022-12-21 22:57:24'),(3,'5d567bf2-6221-4e38-8677-f9b96624c2ac',7,3,10,23,1,2,'Laplace Transformation','Laplace Transformation','Laplace Transformation',NULL,30.00,'paid','uploads/course/1671808263-dLbjMrs0Ya.png',2,NULL,'https://www.youtube.com/watch?v=EDVJotmT584&list=PLU6SqdYcYsfILCRFpIM3fQdVIzOo71snJ','laplace-transformation',1,0.00,'2022-12-23 20:59:35','2022-12-23 22:09:27'),(4,'3aa7e2b6-c7a7-43ef-ab92-4c0c7ddffbe8',7,3,11,24,1,3,'Functions','Algebra Functions','The course related to Mathematics',NULL,10.00,'paid','uploads/course/1672671874-ouvP8Xdsgs.jpg',2,NULL,'https://www.youtube.com/watch?v=xk4_1vDrzzo','functions',1,0.00,'2023-01-02 20:53:14','2023-01-02 21:13:44');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_placement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'before' COMMENT 'before, after',
  `current_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'on, off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','$','before','on',NULL,'2023-01-01 23:06:53'),(2,'BDT','৳','before','off',NULL,'2023-01-01 23:06:53'),(3,'INR','₹','before','off',NULL,'2023-01-01 23:06:53'),(4,'GBP','£','after','off',NULL,'2023-01-01 23:06:53'),(5,'MXN','$','before','off',NULL,'2023-01-01 23:06:53'),(6,'SAR','SR','before','off',NULL,'2023-01-01 23:06:53'),(7,'TRY','₺','after','off',NULL,'2023-01-01 23:06:53'),(8,'ARS','$','before','off',NULL,'2023-01-01 23:06:53'),(9,'EUR','€','before','off',NULL,'2023-01-01 23:06:53');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `difficulty_levels`
--

DROP TABLE IF EXISTS `difficulty_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `difficulty_levels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `difficulty_levels_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `difficulty_levels`
--

LOCK TABLES `difficulty_levels` WRITE;
/*!40000 ALTER TABLE `difficulty_levels` DISABLE KEYS */;
INSERT INTO `difficulty_levels` VALUES (1,'8a3d520a-e54e-43ca-a718-f43851fea785','Higher','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'5c2798c1-45db-40d2-b7a5-146b6f9d211a','Medium','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'600380d9-5a70-4549-b6ff-559c03e765af','Beginner','2022-12-23 21:51:12','2022-12-23 21:51:12');
/*!40000 ALTER TABLE `difficulty_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `comment_as` tinyint(4) NOT NULL COMMENT '1=Instructor, 2=Student',
  `view` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=seen,2=not seen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussions`
--

LOCK TABLES `discussions` WRITE;
/*!40000 ALTER TABLE `discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_notification_settings`
--

DROP TABLE IF EXISTS `email_notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_notification_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `updates_from_classes` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `updates_from_teacher_discussion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_project` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_discussion_comment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `reply_comment` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_follower` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_class_by_someone_you_follow` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_live_session` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_notification_settings_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_notification_settings`
--

LOCK TABLES `email_notification_settings` WRITE;
/*!40000 ALTER TABLE `email_notification_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=inactive, 1-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_templates_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `marks_per_question` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'multiple_choice, true_false',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=unpublish, 1=published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exams_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,'1ae77fbf-ecb6-4720-9e98-d50617250b6b',7,3,'Quiz 1',NULL,1,60,'true_false',1,'2023-01-01 23:15:34','2023-01-01 23:17:51'),(2,'18e8f8d0-3805-45aa-a7bd-96da51352905',7,4,'Quiz 1',NULL,1,40,'multiple_choice',1,'2023-01-02 21:21:24','2023-01-02 21:26:38');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `faq_questions`
--

DROP TABLE IF EXISTS `faq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_questions`
--

LOCK TABLES `faq_questions` WRITE;
/*!40000 ALTER TABLE `faq_questions` DISABLE KEYS */;
INSERT INTO `faq_questions` VALUES (1,'which I enjoy with my whole heart am alone feel?','Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'which I enjoy with my whole heart am alone feel?','Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'which I enjoy with my whole heart am alone feel?','Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `faq_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_categories`
--

DROP TABLE IF EXISTS `forum_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_categories_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_categories`
--

LOCK TABLES `forum_categories` WRITE;
/*!40000 ALTER TABLE `forum_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post_comments`
--

DROP TABLE IF EXISTS `forum_post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_post_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_post_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_post_comments_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post_comments`
--

LOCK TABLES `forum_post_comments` WRITE;
/*!40000 ALTER TABLE `forum_post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_posts`
--

DROP TABLE IF EXISTS `forum_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `forum_category_id` bigint(20) unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=active, 0=disable',
  `total_seen` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_posts_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_posts`
--

LOCK TABLES `forum_posts` WRITE;
/*!40000 ALTER TABLE `forum_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_special_features`
--

DROP TABLE IF EXISTS `home_special_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_special_features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_special_features`
--

LOCK TABLES `home_special_features` WRITE;
/*!40000 ALTER TABLE `home_special_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_special_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `banner_mini_words_title` text COLLATE utf8mb4_unicode_ci,
  `banner_first_line_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_second_line_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_second_line_changeable_words` text COLLATE utf8mb4_unicode_ci,
  `banner_third_line_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_subtitle` text COLLATE utf8mb4_unicode_ci,
  `banner_first_button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_first_button_link` text COLLATE utf8mb4_unicode_ci,
  `banner_second_button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_second_button_link` text COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_feature_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `courses_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `bundle_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `top_category_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `consultation_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `instructor_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `video_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `customer_says_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `achievement_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `faq_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `instructor_support_area` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 2=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes`
--

LOCK TABLES `homes` WRITE;
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
INSERT INTO `homes` VALUES (1,NULL,'Knowlendge Is Power','Education','[\"For\",\"The\",\"World\"]','Learn Something Everyday','To provide the gold standard of affordable, flexible, quality online elementary and secondary education to youth worldwide','Take A Tour','#','Popular Courses','#','uploads/home/1671805230-QGEh6iCz67.png',1,1,1,0,1,1,1,1,0,1,0,'2022-10-11 13:46:08','2022-12-25 00:13:05');
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_awards`
--

DROP TABLE IF EXISTS `instructor_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_awards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `winning_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instructor_awards_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_awards`
--

LOCK TABLES `instructor_awards` WRITE;
/*!40000 ALTER TABLE `instructor_awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_certificates`
--

DROP TABLE IF EXISTS `instructor_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_certificates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passing_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instructor_certificates_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_certificates`
--

LOCK TABLES `instructor_certificates` WRITE;
/*!40000 ALTER TABLE `instructor_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_consultation_day_statuses`
--

DROP TABLE IF EXISTS `instructor_consultation_day_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_consultation_day_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_consultation_day_statuses`
--

LOCK TABLES `instructor_consultation_day_statuses` WRITE;
/*!40000 ALTER TABLE `instructor_consultation_day_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `instructor_consultation_day_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_features`
--

DROP TABLE IF EXISTS `instructor_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_features`
--

LOCK TABLES `instructor_features` WRITE;
/*!40000 ALTER TABLE `instructor_features` DISABLE KEYS */;
INSERT INTO `instructor_features` VALUES (1,'uploads_demo/instructor_feature/build-brand.png','Build your Bran','Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'uploads_demo/instructor_feature/instructor-support-2.png','Inspire learners','Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'uploads_demo/instructor_feature/top-instructor-heading-img.png','Get rewarded','Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `instructor_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_procedures`
--

DROP TABLE IF EXISTS `instructor_procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_procedures` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_procedures`
--

LOCK TABLES `instructor_procedures` WRITE;
/*!40000 ALTER TABLE `instructor_procedures` DISABLE KEYS */;
INSERT INTO `instructor_procedures` VALUES (1,'uploads_demo/instructor_procedure/become-instructor-1.jpg','Plan Your Curriculum','Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'uploads_demo/instructor_procedure/become-instructor-2.jpg','Plan Your Curriculum','Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'uploads_demo/instructor_procedure/become-instructor-3.jpg','Plan Your Curriculum','Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `instructor_procedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor_supports`
--

DROP TABLE IF EXISTS `instructor_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor_supports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor_supports`
--

LOCK TABLES `instructor_supports` WRITE;
/*!40000 ALTER TABLE `instructor_supports` DISABLE KEYS */;
INSERT INTO `instructor_supports` VALUES (1,'uploads_demo/instructor_support/instructor-support-1.png','Courses','Single stroke at the present moment and yet I feel that was','Popular Courses','http://lmszai.zainiktheme.com/courses','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'uploads_demo/instructor_support/instructor-support-2.png','Expert instructor','Single stroke at the present moment and yet I feel that was','Explore Instructor','http://lmszai.zainiktheme.com/all-instructor','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'uploads_demo/instructor_support/instructor-support-3.png','27/4 online support','Single stroke at the present moment and yet I feel that was','Support Center','http://lmszai.zainiktheme.com/support-ticket-faq','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `instructor_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professional_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` mediumtext COLLATE utf8mb4_unicode_ci,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` mediumtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `remove_from_web_search` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=approved, 2=blocked',
  `consultation_available` tinyint(4) DEFAULT '0' COMMENT '1=yes, 0=no',
  `hourly_rate` int(11) DEFAULT NULL,
  `available_type` tinyint(4) DEFAULT '3' COMMENT '1=In-person, 0=Online, 3=Both',
  `cv_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instructors_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (2,'4528e7b4-8e69-4586-adc3-267469c3bc09',5,2,NULL,NULL,NULL,'James','Anderson','Professional Trainer','01575202028','21321','Usa','I\'m a Professional Trainer','Male','{\"facebook\":\"www.facebook.com\",\"twitter\":null,\"linkedin\":null,\"pinterest\":null}','james-anderson','no','no',1,0,NULL,3,NULL,NULL,'2022-12-19 20:53:56','2022-12-19 20:55:08'),(3,'9f3c325a-eef8-46cf-9639-b421fff37b32',7,NULL,NULL,NULL,NULL,'Md','Abu Sayeed','Software Engineer','01575202028','2313','Dhaka Bangladesh','I\'m a software engineer specialized in web application development in PHP and Laravel.','Male','{\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"pinterest\":null}','md-abu-sayeed-681878','no','no',1,0,NULL,3,'uploads/user/1671639588-CV SAYEED.pdf','CV SAYEED.pdf','2022-12-21 22:19:48','2022-12-23 21:50:29'),(4,'f567e586-62a8-4790-b2e0-c34f590c7e19',12,3,NULL,7,11,'Instructor 1','Instructor','Math Teacher','0131202020','2235','United States','I\'m a professional math teacher','Male','{\"facebook\":\"www.facebook.com\",\"twitter\":null,\"linkedin\":null,\"pinterest\":null}','instructor-1-instructor','no','no',1,0,NULL,3,NULL,NULL,'2022-12-23 20:53:51','2023-01-02 07:59:43'),(5,'0e073c9d-b15b-4f66-b590-74bc84a7435b',13,4,NULL,NULL,NULL,'Sweety','Kuldeep','Trainer','015111111111','2202','Canada','Professional Trainer','Female','{\"facebook\":\"facebook.com\",\"twitter\":null,\"linkedin\":null,\"pinterest\":null}','sweety-kuldeep','no','no',1,0,NULL,3,NULL,NULL,'2023-01-02 07:59:25','2023-01-02 07:59:32'),(6,'3e5ff97e-a344-45df-b6ff-f94fe8913564',14,4,NULL,NULL,NULL,'Fardeen','Faruk','Trainer','0151111111','2216','Canada','Trainer','Female','{\"facebook\":\"facebook.com\",\"twitter\":null,\"linkedin\":null,\"pinterest\":null}','fardeen-faruk','no','no',1,0,NULL,3,NULL,NULL,'2023-01-02 08:00:39','2023-01-02 08:00:44'),(7,'0060187e-9dc3-4368-97cd-665c0dbb73db',16,NULL,NULL,NULL,NULL,'Tamara','Myatt','Trainer','015111111111','2236','Canada','Trainer','Female','{\"facebook\":\"facebook.com\",\"twitter\":null,\"linkedin\":null,\"pinterest\":null}','tamara-myatt','no','no',1,0,NULL,3,NULL,NULL,'2023-01-02 08:02:54','2023-01-02 08:02:58');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,2=inactive',
  `default_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'on,off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_language_unique` (`language`),
  UNIQUE KEY `languages_iso_code_unique` (`iso_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'EN ( English )','en','uploads_demo/default/en.png',0,1,'on',NULL,'2023-01-01 23:06:53');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learn_key_points`
--

DROP TABLE IF EXISTS `learn_key_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `learn_key_points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learn_key_points`
--

LOCK TABLES `learn_key_points` WRITE;
/*!40000 ALTER TABLE `learn_key_points` DISABLE KEYS */;
INSERT INTO `learn_key_points` VALUES (1,1,'PHP','2022-12-21 01:35:53','2022-12-21 01:48:54'),(2,2,'Software','2022-12-21 22:40:29','2022-12-21 22:40:29'),(3,3,'math, integration','2022-12-23 20:59:35','2022-12-23 22:09:09'),(4,4,'Math, Algebra','2023-01-02 20:53:14','2023-01-02 20:53:14');
/*!40000 ALTER TABLE `learn_key_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_classes`
--

DROP TABLE IF EXISTS `live_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `class_topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'duration must be minutes',
  `start_url` mediumtext COLLATE utf8mb4_unicode_ci,
  `join_url` mediumtext COLLATE utf8mb4_unicode_ci,
  `meeting_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_host_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'use only for bbb',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `live_classes_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_classes`
--

LOCK TABLES `live_classes` WRITE;
/*!40000 ALTER TABLE `live_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` bigint(20) unsigned DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1=static, 2=dynamic',
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Blogs','blogs',NULL,1,2,'2022-10-11 13:46:08','2022-12-23 20:24:35'),(2,'About','about',NULL,1,1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'Contact','contact',NULL,1,1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(4,'Support','support-ticket-faq',NULL,1,1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(5,'Privacy Policy','privacy-policy',NULL,1,1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(6,'Cookie Policy','cookie-policy',NULL,1,1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(7,'Terms & Conditions','terms-conditions',NULL,1,1,'2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `metas_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas`
--

LOCK TABLES `metas` WRITE;
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
INSERT INTO `metas` VALUES (1,'1d23fa59-9489-4aea-adfd-705517f7252d',NULL,'Home','Home','LMSZai Learning management system','Lmszai, Lms, Learning, Course',NULL,NULL),(2,'e78cc20a-dd96-4496-a164-9a62854c19d1',NULL,'Courses','Courses','LMSZai Course List','Lmszai, Lms, Learning, Course',NULL,NULL),(3,'491253f9-36fa-4a4e-9e87-5a73af5c1b7f',NULL,'Courses Details','Courses Details','LMSZai Course List','Lmszai, Lms, Learning, Course',NULL,NULL),(4,'0f3acea8-3e96-4239-806f-aa0a47eb85fd',NULL,'Category','Categories','All courses categories','course, category',NULL,NULL),(5,'73bd3101-2a2b-4e78-9a4c-3fd79172213f',NULL,'Blog','Blog','LMSZAI Blog','blog, course',NULL,NULL),(6,'b86e559d-2233-4715-8d9c-64b9c01e1753',NULL,'Blog Details','Blog Details','LMSZAI Blog Details','blog, blog details',NULL,NULL),(7,'89bb6185-3882-465c-acaf-5e6e0c6cf8ad',NULL,'About Us','About Us','LMSZAI About Us','about us',NULL,NULL),(8,'85faf2bb-2801-47f5-b01c-50f5e2519b9b',NULL,'Contact Us','Contact Us','LMSZAI contact us','lmszai, contact us',NULL,NULL),(9,'5c7b129b-b63a-48e8-a11a-7e1cc32e974b',NULL,'Support Ticket','Support','LMSZAI support ticket','lmszai, support, ticket',NULL,NULL),(10,'c7a943ad-2805-4299-a23b-3e52816a38b7',NULL,'Privacy Policy','Privacy Policy','LMSZAI Privacy Policy','lmszai, privacy, policy',NULL,NULL),(11,'f01ad694-84cf-49e8-8d39-ef880f993c89',NULL,'Cookie Policy','Cookie Policy','LMSZAI Cookie Policy','lmszai, cookie, policy',NULL,NULL),(12,'2e88c7c9-2445-4e42-84be-305fc3540277',NULL,'FAQ','FAQ','LMSZAI FAQ','lmszai, faq',NULL,NULL),(13,'0a7acb10-a4d1-4934-ad52-e2b183c56fcd',NULL,'Terms & Conditions','Terms & Conditions','LMSZAI Terms & Conditions Policy','lmszai, terms, consitions',NULL,NULL);
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_03_08_120002_create_categories_table',1),(6,'2022_03_08_124911_create_blogs_table',1),(7,'2022_03_10_113530_create_subcategories_table',1),(8,'2022_03_10_114913_create_tags_table',1),(9,'2022_03_10_120141_create_difficulty_levels_table',1),(10,'2022_03_10_120351_create_course_languages_table',1),(11,'2022_03_12_120608_create_currencies_table',1),(12,'2022_03_13_084533_create_instructors_table',1),(13,'2022_03_13_084819_create_settings_table',1),(14,'2022_03_13_100229_create_instructor_certificates_table',1),(15,'2022_03_14_052503_create_instructor_awards_table',1),(16,'2022_03_14_123059_create_metas_table',1),(17,'2022_03_15_092420_create_languages_table',1),(18,'2022_03_21_105943_create_countries_table',1),(19,'2022_03_21_110018_create_states_table',1),(20,'2022_03_21_110027_create_cities_table',1),(21,'2022_03_22_123520_create_user_cards_table',1),(22,'2022_03_23_061124_create_email_notification_settings_table',1),(23,'2022_03_23_104316_create_courses_table',1),(24,'2022_03_23_104847_create_course_tags_table',1),(25,'2022_03_29_130632_create_course_lessons_table',1),(26,'2022_03_29_130734_create_course_lectures_table',1),(27,'2022_04_02_104955_create_exams_table',1),(28,'2022_04_02_111930_create_questions_table',1),(29,'2022_04_02_112024_create_question_options_table',1),(30,'2022_04_02_124631_create_take_exams_table',1),(31,'2022_04_02_131147_create_answers_table',1),(32,'2022_04_02_132217_create_course_lecture_views_table',1),(33,'2022_04_03_093413_create_products_table',1),(34,'2022_04_07_105025_create_cart_management_table',1),(35,'2022_04_08_081131_create_wishlists_table',1),(36,'2022_04_09_060811_create_contact_us_issues_table',1),(37,'2022_04_09_060926_create_contact_us_table',1),(38,'2022_04_11_041217_create_about_us_generals_table',1),(39,'2022_04_11_041343_create_our_histories_table',1),(40,'2022_04_11_041419_create_team_members_table',1),(41,'2022_04_11_043000_create_instructor_supports_table',1),(42,'2022_04_11_043147_create_client_logos_table',1),(43,'2022_04_14_094216_create_instructor_features_table',1),(44,'2022_04_14_094313_create_instructor_procedures_table',1),(45,'2022_04_15_051038_create_faq_questions_table',1),(46,'2022_04_15_075433_create_home_special_features_table',1),(47,'2022_04_15_093248_create_homes_table',1),(48,'2022_04_16_085648_create_blog_categories_table',1),(49,'2022_04_16_111415_create_blog_tags_table',1),(50,'2022_04_18_071259_create_blog_comments_table',1),(51,'2022_04_18_103636_create_students_table',1),(52,'2022_04_20_090721_create_assignments_table',1),(53,'2022_04_21_063711_create_assignment_submits_table',1),(54,'2022_04_21_072930_create_assignment_files_table',1),(55,'2022_04_22_084931_create_course_resources_table',1),(56,'2022_04_22_101227_create_notice_boards_table',1),(57,'2022_04_23_044138_create_live_classes_table',1),(58,'2022_04_24_121452_create_orders_table',1),(59,'2022_04_24_121712_create_order_items_table',1),(60,'2022_04_24_122152_create_order_billing_addresses_table',1),(61,'2022_04_26_143537_create_coupons_table',1),(62,'2022_04_26_145556_create_coupon_instructors_table',1),(63,'2022_04_26_145742_create_coupon_courses_table',1),(64,'2022_04_27_124958_create_withdraws_table',1),(65,'2022_04_29_140534_create_reviews_table',1),(66,'2022_04_30_140200_create_discussions_table',1),(67,'2022_05_01_015615_create_learn_key_points_table',1),(68,'2022_05_01_015853_add_average_rating_to_courses_table',1),(69,'2022_05_08_183053_create_certificates_table',1),(70,'2022_05_09_122033_create_ranking_levels_table',1),(71,'2022_05_10_130657_add_video_to_courses_table',1),(72,'2022_05_11_113029_add_original_name_and_size_to_assignments_table',1),(73,'2022_05_11_122523_add_original_name_and_size_to_assignment_submits_table',1),(74,'2022_05_11_182134_add_view_to_discussions_table',1),(75,'2022_05_11_192633_create_support_ticket_questions_table',1),(76,'2022_05_12_121255_create_tickets_table',1),(77,'2022_05_12_121306_create_ticket_messages_table',1),(78,'2022_05_12_121540_create_ticket_departments_table',1),(79,'2022_05_12_121557_create_ticket_related_services_table',1),(80,'2022_05_12_121621_create_ticket_priorities_table',1),(81,'2022_05_12_175640_create_certificate_by_instructors_table',1),(82,'2022_05_13_165207_create_chat_messages_table',1),(83,'2022_05_15_112035_create_permission_tables',1),(84,'2022_05_16_125530_add_provider_id_and_avatar_to_users_table',1),(85,'2022_05_18_125922_create_pages_table',1),(86,'2022_05_18_152824_create_notifications_table',1),(87,'2022_05_18_161357_create_menus_table',1),(88,'2022_05_19_192216_create_email_templates_table',1),(89,'2022_05_22_165419_create_user_paypals_table',1),(90,'2022_05_25_131858_add_images_to_about_us_generals_table',1),(91,'2022_05_25_220619_create_student_certificates_table',1),(92,'2022_05_26_171757_create_promotions_table',1),(93,'2022_05_26_172008_create_promotion_courses_table',1),(94,'2022_05_27_154633_create_special_promotion_tags_table',1),(95,'2022_05_27_154757_create_special_promotion_tag_courses_table',1),(96,'2022_05_28_185325_add_subtitle_to_courses',1),(97,'2022_05_28_191647_create_course_upload_rules_table',1),(98,'2022_05_31_131109_add_forgot_token_to_users',1),(99,'2022_06_01_114750_add_cv_file_and_filename_to_instructors',1),(100,'2022_06_13_132354_create_policies_table',1),(101,'2022_06_14_180425_add_conversion_rate_and_current_currency_and_currency_amount_to_orders',1),(102,'2022_06_15_181443_add_default_language_to_languages',1),(103,'2022_07_05_171632_create_banks_table',1),(104,'2022_07_06_171634_add_field_to_orders_table',1),(105,'2022_07_20_114546_add_meeting_host_name_and_moderator_pw_and_attendee_pw_to_live_classes_table',1),(106,'2022_07_22_123555_add_paystack_refrence_number_to_orders_table',1),(107,'2022_07_25_151244_add_intro_video_check_and_into_youtube_video_id_to_courses_table',1),(108,'2022_08_04_160730_add_city_id_to_instructors',1),(109,'2022_08_06_140811_create_bundles_table',1),(110,'2022_08_06_140834_create_bundle_courses_table',1),(111,'2022_08_08_134556_add_bundle_id_to_wishlists',1),(112,'2022_08_08_181304_add_bundle_id_and_bundle_course_ids_to_cart_management',1),(113,'2022_08_08_193241_add_bundle_id_to_order_items',1),(114,'2022_08_11_180251_create_forum_categories_table',1),(115,'2022_08_11_183543_create_forum_posts_table',1),(116,'2022_08_12_113405_create_forum_post_comments_table',1),(117,'2022_08_13_170419_add_available_and_hourly_rate_to_instructors_table',1),(118,'2022_08_13_175625_create_consultation_slots_table',1),(119,'2022_08_16_152302_create_instructor_consultation_day_statuses_table',1),(120,'2022_08_16_180220_create_booking_histories_table',1),(121,'2022_08_18_160213_add_consultation_slot_id_and_consultation_details_and_consultation_date_to_cart_management_table',1),(122,'2022_08_19_114213_add_consultation_slot_id_and_consultation_date_to_order_items_table',1),(123,'2022_08_22_160209_add_some_new_fields_to_course_lectures_table',1),(124,'2022_08_30_115403_add_new_attributes_to_homes_table',1),(125,'2022_09_07_185945_add_start_url_to_live_classes_table',1),(126,'2022_09_07_193347_add_start_url_to_booking_histories_table',1),(127,'2022_09_08_124610_create_zoom_settings_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(4,'App\\Models\\User',8),(5,'App\\Models\\User',9),(5,'App\\Models\\User',10),(4,'App\\Models\\User',11),(4,'App\\Models\\User',15);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_boards`
--

DROP TABLE IF EXISTS `notice_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_boards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notice_boards_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_boards`
--

LOCK TABLES `notice_boards` WRITE;
/*!40000 ALTER TABLE `notice_boards` DISABLE KEYS */;
INSERT INTO `notice_boards` VALUES (1,'67382814-edc1-435d-a7df-094d1a67dfa2',2,1,'Topic for Notice Board','This is a description','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `notice_boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `user_type` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=admin, 2=instructor, 3=student',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notifications_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'05277c2b-7c4e-4802-bc7b-0bc2c88375c0',5,NULL,'Course category has been updated','http://31.220.109.69/admin/course','no',1,'2022-12-21 01:41:02','2022-12-21 01:41:02'),(2,'11585d4f-5ca7-4c86-8cdb-dec9b24273a2',5,NULL,'New lesson has been added','http://31.220.109.69/admin/course','no',1,'2022-12-21 01:42:53','2022-12-21 01:42:53'),(3,'ba5c39d1-5b92-405d-a940-808e88a5a034',5,NULL,'New lesson has been added','http://31.220.109.69/admin/course','no',1,'2022-12-21 01:44:35','2022-12-21 01:44:35'),(4,'969e7e52-08e9-473a-a940-abdffc9df8b5',5,NULL,'Course overview has been updated','http://31.220.109.69/admin/course','no',1,'2022-12-21 01:48:54','2022-12-21 01:48:54'),(5,'d9e2f516-5236-401d-be6e-5f884e812b01',5,NULL,'Course category has been updated','http://31.220.109.69/admin/course','no',1,'2022-12-21 01:49:01','2022-12-21 01:49:01'),(6,'52e6d804-9f7a-4e79-9bdf-b6a7f240b33e',1,5,'Course has been approved','http://31.220.109.69/course-details/laravel-beginners','no',2,'2022-12-21 01:49:35','2022-12-21 01:49:35'),(7,'a59e75e9-2659-4933-a7d0-5722351d57b7',7,NULL,'New instructor request','http://myattacademy.com/admin/instructor/pending','no',1,'2022-12-21 22:19:48','2022-12-21 22:19:48'),(8,'9cc74911-9388-48be-a700-1142661e2864',7,NULL,'Course category has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-21 22:57:24','2022-12-21 22:57:24'),(9,'d0e2dffa-9cc5-4e2d-ae2a-730a5e416873',7,NULL,'Course category has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 21:11:04','2022-12-23 21:11:04'),(10,'7755d3d5-6932-4de7-988c-a54a6a97e1f0',7,NULL,'New lesson has been added','http://myattacademy.com/admin/course','no',1,'2022-12-23 21:14:39','2022-12-23 21:14:39'),(11,'15faae06-a531-4a65-a750-b0412cbb5fe8',7,NULL,'Course overview has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 21:20:52','2022-12-23 21:20:52'),(12,'4d8cbe63-929d-4ac6-aeef-a6835c2437f2',7,NULL,'Course category has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 21:21:02','2022-12-23 21:21:02'),(13,'36a18bf0-639c-4a08-bf79-1b7888c3420a',1,7,'Course has been approved','http://myattacademy.com/course-details/laplace-transformation','no',2,'2022-12-23 21:22:09','2022-12-23 21:22:09'),(14,'461632c9-2fd4-4530-ae11-e904be872c87',1,5,'New course has been published','http://myattacademy.com/course-details/laplace-transformation','no',3,'2022-12-23 21:22:09','2022-12-23 21:22:09'),(15,'36dcb839-0a3c-4bc8-9581-1a560ec10429',1,6,'New course has been published','http://myattacademy.com/course-details/laplace-transformation','no',3,'2022-12-23 21:22:09','2022-12-23 21:22:09'),(16,'f4ffae64-cfb3-4963-b019-27fd9a01d777',1,12,'New course has been published','http://myattacademy.com/course-details/laplace-transformation','no',3,'2022-12-23 21:22:09','2022-12-23 21:22:09'),(17,'7ab9cefc-db43-491a-a253-03c8d39b828d',7,NULL,'Course overview has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 21:55:02','2022-12-23 21:55:02'),(18,'4830ce96-4838-449d-bd48-891049979e1e',7,NULL,'Course category has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 21:55:13','2022-12-23 21:55:13'),(19,'5c398724-5c1c-4b8d-84ff-fb7cdb962468',7,NULL,'New lesson has been added','http://myattacademy.com/admin/course','no',1,'2022-12-23 21:56:03','2022-12-23 21:56:03'),(20,'d9282e4e-ef83-40eb-843f-b55c3c0df6b1',7,NULL,'Course overview has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 22:07:27','2022-12-23 22:07:27'),(21,'a9fb7e1b-9b94-487a-9bab-10563f0eb513',7,NULL,'Course category has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 22:07:39','2022-12-23 22:07:39'),(22,'0bdba01a-4ceb-479d-994b-3eee349a72f7',7,NULL,'Course overview has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 22:09:09','2022-12-23 22:09:09'),(23,'27fceaf9-bdb9-4df6-af9f-90eec17e9d9e',7,NULL,'Course category has been updated','http://myattacademy.com/admin/course','no',1,'2022-12-23 22:09:27','2022-12-23 22:09:27'),(24,'e6a853a7-a903-4e08-86e2-bdf4706b9855',1,5,'Course has been hold','http://myattacademy.com/instructor/course','no',2,'2023-01-01 22:59:02','2023-01-01 22:59:02'),(25,'f166e45d-efc2-494e-8b7e-bb0d1d13f725',1,5,'Course has been approved','http://myattacademy.com/course-details/laravel-beginners','no',2,'2023-01-01 22:59:14','2023-01-01 22:59:14'),(26,'43235ef5-c27f-4fe0-8e31-b4aa608f97c9',1,6,'New course has been published','http://myattacademy.com/course-details/laravel-beginners','no',3,'2023-01-01 22:59:14','2023-01-01 22:59:14'),(27,'d12c89d0-3f3a-48b1-9fa7-0d13c1fe0a56',1,7,'New course has been published','http://myattacademy.com/course-details/laravel-beginners','no',3,'2023-01-01 22:59:14','2023-01-01 22:59:14'),(28,'d1ead9db-d83b-4e73-9716-2dda09c45958',1,12,'New course has been published','http://myattacademy.com/course-details/laravel-beginners','no',3,'2023-01-01 22:59:14','2023-01-01 22:59:14'),(29,'a317594c-756d-4b78-b86a-af4ec2147112',7,NULL,'Course category has been updated','http://myattacademy.com/admin/course','no',1,'2023-01-02 21:04:34','2023-01-02 21:04:34'),(30,'e202adeb-391e-4f67-83ab-59899ea642d6',7,NULL,'New lesson has been added','http://myattacademy.com/admin/course','no',1,'2023-01-02 21:08:52','2023-01-02 21:08:52'),(31,'df0dde9f-ae97-486e-b073-6072f843c39d',7,NULL,'New lesson has been added','http://myattacademy.com/admin/course','no',1,'2023-01-02 21:10:20','2023-01-02 21:10:20'),(32,'7701d094-cd69-488b-a70f-45306d7172bf',7,NULL,'New lesson has been added','http://myattacademy.com/admin/course','no',1,'2023-01-02 21:10:47','2023-01-02 21:10:47'),(33,'a15fbee6-70d3-4444-9e69-10a28faf6151',1,7,'Course has been approved','http://myattacademy.com/course-details/functions','no',2,'2023-01-02 21:13:44','2023-01-02 21:13:44'),(34,'3541e386-af6e-4dac-b3a0-08b54a74a3c1',1,5,'New course has been published','http://myattacademy.com/course-details/functions','no',3,'2023-01-02 21:13:44','2023-01-02 21:13:44'),(35,'0a0eaed0-27dc-4b36-8962-181357bca128',1,6,'New course has been published','http://myattacademy.com/course-details/functions','no',3,'2023-01-02 21:13:44','2023-01-02 21:13:44'),(36,'64f4c17d-f39c-47c7-a158-eb5fa999b476',1,12,'New course has been published','http://myattacademy.com/course-details/functions','no',3,'2023-01-02 21:13:44','2023-01-02 21:13:44'),(37,'2ebf30a3-0f7b-48fc-9be7-c02fd9f897ef',1,13,'New course has been published','http://myattacademy.com/course-details/functions','no',3,'2023-01-02 21:13:44','2023-01-02 21:13:44'),(38,'a08ed929-18f4-466c-b4e6-6cb56f1d0e80',1,14,'New course has been published','http://myattacademy.com/course-details/functions','no',3,'2023-01-02 21:13:44','2023-01-02 21:13:44'),(39,'d4565bf2-32e6-4dbd-8b7f-b6158e33a0c1',1,16,'New course has been published','http://myattacademy.com/course-details/functions','no',3,'2023-01-02 21:13:44','2023-01-02 21:13:44'),(40,'a3064bb5-15f5-447b-854f-aa47a509d809',1,7,'New student enrolled','http://myattacademy.com/instructor/all-enroll','no',2,'2023-01-02 21:30:17','2023-01-02 21:30:17'),(41,'46e339e8-c8fb-46ee-8d53-8534064ed54d',1,NULL,'Course has been sold',NULL,'no',1,'2023-01-02 21:30:17','2023-01-02 21:30:17'),(42,'09fb1f95-eff0-44bb-9c70-a39c0b247106',1,6,'New course enrolled by Admin','http://myattacademy.com/student/my-learning','no',3,'2023-01-02 21:30:17','2023-01-02 21:30:17');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_billing_addresses`
--

DROP TABLE IF EXISTS `order_billing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_billing_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_as_shipping_address` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_billing_addresses`
--

LOCK TABLES `order_billing_addresses` WRITE;
/*!40000 ALTER TABLE `order_billing_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_billing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) unsigned DEFAULT NULL,
  `consultation_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT '1',
  `unit_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `admin_commission` decimal(8,2) NOT NULL DEFAULT '0.00',
  `owner_balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `sell_commission` int(11) NOT NULL DEFAULT '0' COMMENT 'How much percentage get admin and calculate in admin_commission',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=course, 2=product, 3=bundle course, 4=consultation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,6,5,NULL,1,NULL,NULL,NULL,1,0.00,0.00,0.00,0,1,'2022-12-21 02:11:42','2022-12-21 02:11:42'),(2,2,6,7,NULL,4,NULL,NULL,NULL,1,0.00,0.00,0.00,0,1,'2023-01-02 21:30:17','2023-01-02 21:30:17');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL DEFAULT '0.00',
  `platform_charge` decimal(8,2) NOT NULL DEFAULT '0.00',
  `current_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payment_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversion_rate` decimal(28,8) DEFAULT '0.00000000',
  `grand_total_with_conversation_rate` decimal(28,8) DEFAULT '0.00000000',
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_reference_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_slip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` bigint(20) unsigned DEFAULT NULL,
  `customer_comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'due' COMMENT 'paid, due, free, pending, cancelled',
  `delivery_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=complete',
  `created_by_type` tinyint(4) DEFAULT '1' COMMENT '1=student, 2=admin',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'f2f3b4b2-2209-4ab0-a9fc-d81a3cfe9ded',6,'182422',0.00,0.00,0.00,0.00,0.00,NULL,0.00,NULL,0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL,NULL,'free',0,1,6,'2022-12-21 02:11:42','2022-12-21 02:11:42'),(2,'ad22f34e-724c-4f5b-8a1b-ee7f7cb8376a',6,'388532',0.00,0.00,0.00,0.00,0.00,NULL,0.00,NULL,0.00000000,0.00000000,NULL,NULL,NULL,NULL,NULL,NULL,'free',0,2,1,'2023-01-02 21:30:17','2023-01-02 21:30:17');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `our_histories`
--

DROP TABLE IF EXISTS `our_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `our_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `our_histories`
--

LOCK TABLES `our_histories` WRITE;
/*!40000 ALTER TABLE `our_histories` DISABLE KEYS */;
INSERT INTO `our_histories` VALUES (1,'1998','Mere tranquil existence','Possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart am alone',NULL,NULL),(2,'1998','Incapable of drawing','Exquisite sense of mere tranquil existence that I neglect my talents add should be incapable of drawing',NULL,NULL),(3,'1998','Foliage access trees','Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my',NULL,NULL),(4,'1998','Among grass trickling','Should be incapable of drawing a single stroke at the present moment; and yet I feel that I never',NULL,NULL);
/*!40000 ALTER TABLE `our_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_title` text COLLATE utf8mb4_unicode_ci,
  `en_description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'manage_course','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(2,'pending_course','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(3,'hold_course','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(4,'approved_course','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(5,'all_course','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(6,'manage_course_reference','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(7,'manage_course_category','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(8,'manage_course_subcategory','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(9,'manage_course_tag','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(10,'manage_course_language','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(11,'manage_course_difficulty_level','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(12,'manage_instructor','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(13,'pending_instructor','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(14,'approved_instructor','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(15,'all_instructor','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(16,'add_instructor','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(17,'manage_student','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(18,'manage_coupon','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(19,'manage_promotion','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(20,'manage_blog','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(21,'payout','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(22,'finance','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(23,'manage_certificate','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(24,'ranking_level','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(25,'manage_language','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(26,'account_setting','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(27,'support_ticket','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(28,'manage_contact','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(29,'application_setting','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(30,'global_setting','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(31,'home_setting','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(32,'mail_configuration','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(33,'payment_option','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(34,'content_setting','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(35,'user_management','web','2022-10-11 13:46:07','2022-10-11 13:46:07');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `policies`
--

DROP TABLE IF EXISTS `policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '1=privacy, 2=cookie, 3=terms & conditions',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policies`
--

LOCK TABLES `policies` WRITE;
/*!40000 ALTER TABLE `policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_summery` mediumtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summery_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ebook, hard_copy',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1=approved, 0=unapproved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_courses`
--

DROP TABLE IF EXISTS `promotion_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `promotion_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_courses`
--

LOCK TABLES `promotion_courses` WRITE;
/*!40000 ALTER TABLE `promotion_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active, 0=deactivated',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promotions_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_options`
--

DROP TABLE IF EXISTS `question_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct_answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_options_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_options`
--

LOCK TABLES `question_options` WRITE;
/*!40000 ALTER TABLE `question_options` DISABLE KEYS */;
INSERT INTO `question_options` VALUES (1,'343b41de-8de3-4958-9f53-7e1a7ccac056',7,1,NULL,'True','yes','2023-01-01 23:16:16','2023-01-01 23:16:16'),(2,'7a9efa88-124c-487f-ae57-45279df8f86b',7,1,NULL,'False','no','2023-01-01 23:16:16','2023-01-01 23:16:16'),(3,'46af05ae-c242-48be-b9c5-62c7600301cc',7,2,NULL,'It\'s a Mathematical Term','yes','2023-01-02 21:22:16','2023-01-02 21:22:16'),(4,'e74e4094-796e-4b1a-8b21-b38cb24b343d',7,2,NULL,'Domain','no','2023-01-02 21:22:16','2023-01-02 21:22:16'),(5,'0eda369f-1ed8-4614-8ea7-a286277dc0ea',7,2,NULL,'Range','no','2023-01-02 21:22:16','2023-01-02 21:22:16'),(6,'8a3b64e5-9ea8-46c0-bc88-de0ffbe64e88',7,2,NULL,'None of the above','no','2023-01-02 21:22:16','2023-01-02 21:22:16'),(7,'3d4c8a4b-bd30-4bcd-ba85-c2540117c636',7,3,NULL,'A','no','2023-01-02 21:24:09','2023-01-02 21:24:09'),(8,'190a1b8c-0edf-43d1-b7c9-8b42bb4a2d7d',7,3,NULL,'B','yes','2023-01-02 21:24:09','2023-01-02 21:24:09'),(9,'46adfd77-3c09-4783-a9c6-ba6dafb4be62',7,3,NULL,'C','no','2023-01-02 21:24:09','2023-01-02 21:24:09'),(10,'f7c578aa-7b93-4f08-a14d-f8419dcf4b50',7,3,NULL,'D','no','2023-01-02 21:24:09','2023-01-02 21:24:09');
/*!40000 ALTER TABLE `question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `questions_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'e2bceb28-a506-4a8a-832c-72460984b9dd',7,1,'Laplace Transformation is a part of Math.','2023-01-01 23:16:16','2023-01-01 23:16:16'),(2,'24c0c820-5950-4018-bc2d-ec121f5fd0bd',7,2,'What is Function?','2023-01-02 21:22:16','2023-01-02 21:22:16'),(3,'cfa23890-b631-4951-b45e-050ca11b0356',7,2,'What is Domain?','2023-01-02 21:24:09','2023-01-02 21:24:09');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_levels`
--

DROP TABLE IF EXISTS `ranking_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking_levels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `earning` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ranking_levels_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_levels`
--

LOCK TABLES `ranking_levels` WRITE;
/*!40000 ALTER TABLE `ranking_levels` DISABLE KEYS */;
INSERT INTO `ranking_levels` VALUES (1,'87ad78d8-6ffc-4e70-9a02-88e1e16cf4a2','Level 1','uploads_demo/ranking/level-1.png',0,0,1,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'dca46bf2-1462-448e-a4a0-4e82eeadbe4e','Level 2','uploads_demo/ranking/level-2.png',100,10,2,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'37f8eb43-4489-4971-bbcd-fae5971c75dd','Level 3','uploads_demo/ranking/level-3.png',200,20,3,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(4,'141ab85f-095a-4e09-aee2-61fa16daa1fc','Level 4','uploads_demo/ranking/level-4.png',300,30,4,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(5,'8aff74d9-adcf-4e76-b7d4-d831b8783e0b','Level 5','uploads_demo/ranking/level-5.png',400,40,5,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(6,'47352cc4-e1bf-4561-adc8-7a8e39259611','Level 6','uploads_demo/ranking/level-6.png',500,50,6,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(7,'7658e2c7-57b5-4570-89be-5e96b7907215','Level 7','uploads_demo/ranking/level-7.png',600,60,7,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(8,'c92eaf93-da14-40e0-be38-f7f14e103476','Level 8','uploads_demo/ranking/level-8.png',700,70,8,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(9,'945b0a8a-d9b3-43e0-adf0-98a08a7cb438','Level 9','uploads_demo/ranking/level-9.png',800,80,9,'2022-10-11 13:46:08','2022-10-11 13:46:08'),(10,'69839070-bfe7-4c2f-b637-3a159407c5ea','Level 10','uploads_demo/ranking/level-10.png',900,90,10,'2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `ranking_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(25,4),(27,4),(28,4),(33,4),(35,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5),(22,5),(23,5),(25,5),(28,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),(21,6),(22,6),(23,6),(24,6),(25,6),(27,6),(28,6);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin','web','2022-10-11 13:46:07','2022-10-11 13:46:07'),(4,'Admin','web','2022-12-23 19:51:54','2022-12-23 19:51:54'),(5,'Content Writer','web','2022-12-23 19:53:01','2022-12-23 19:53:01'),(6,'Admin 2','web','2022-12-23 19:58:04','2022-12-23 19:58:04');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'app_name','Dr.','2022-10-11 13:46:07','2022-10-27 15:15:15'),(2,'app_email','admin@gmail.com','2022-10-11 13:46:07','2022-10-27 09:27:19'),(3,'app_contact_number','(123-458-987254824185)','2022-10-11 13:46:07','2022-10-11 13:46:07'),(4,'app_location','45/7 dreem street, albania dnobod, USA','2022-10-11 13:46:07','2022-10-11 13:46:07'),(5,'app_date_format','d/m/Y','2022-10-11 13:46:07','2022-10-11 13:46:07'),(6,'app_timezone','Asia/Dhaka','2022-10-11 13:46:07','2022-10-11 13:46:07'),(7,'allow_preloader','0','2022-10-11 13:46:07','2022-12-23 22:13:03'),(8,'app_preloader','uploads/setting/1667023488-3BYlAv3usJ.png','2022-10-11 13:46:07','2022-10-29 06:04:48'),(9,'app_logo','uploads/setting/1666861736-kNC6fdaZuZ.png','2022-10-11 13:46:07','2022-10-27 09:08:56'),(10,'app_fav_icon','uploads/setting/1666862408-xMbQN1YZpK.png','2022-10-11 13:46:07','2022-10-27 09:20:08'),(11,'app_copyright','© 2021 MYATTACADEMY. All Rights Reserved.','2022-10-11 13:46:07','2023-01-01 23:06:53'),(12,'app_developed','Abu Sayeed','2022-10-11 13:46:07','2022-12-19 08:34:32'),(13,'og_title','Dr. TAMACADEMY - Learning Management System','2022-10-11 13:46:07','2022-12-19 08:32:38'),(14,'og_description','Learning Management System','2022-10-11 13:46:07','2022-10-11 13:46:07'),(15,'zoom_status','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(16,'bbb_status','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(17,'jitsi_status','1','2022-10-11 13:46:07','2022-12-23 19:59:18'),(18,'jitsi_server_base_url','https://meet.jit.si/','2022-10-11 13:46:07','2022-10-11 13:46:07'),(19,'registration_email_verification','0','2022-10-11 13:46:07','2022-10-11 13:46:07'),(20,'footer_quote','Mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present','2022-10-11 13:46:07','2022-10-11 13:46:07'),(21,'paystack_currency','NGN','2022-10-11 13:46:07','2022-10-11 13:46:07'),(22,'paystack_conversion_rate','420','2022-10-11 13:46:07','2022-10-11 13:46:07'),(23,'paystack_status','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(24,'PAYSTACK_PUBLIC_KEY','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(25,'PAYSTACK_SECRET_KEY','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(26,'paypal_currency','USD','2022-10-11 13:46:07','2022-10-11 13:46:07'),(27,'paypal_conversion_rate','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(28,'paypal_status','0','2022-10-11 13:46:07','2022-10-11 13:46:07'),(29,'PAYPAL_MODE','sandbox','2022-10-11 13:46:07','2022-10-11 13:46:07'),(30,'PAYPAL_CLIENT_ID','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(31,'PAYPAL_SECRET','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(32,'stripe_currency','USD','2022-10-11 13:46:07','2022-10-11 13:46:07'),(33,'stripe_conversion_rate','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(34,'stripe_status','0','2022-10-11 13:46:07','2022-10-11 13:46:07'),(35,'STRIPE_MODE','sandbox','2022-10-11 13:46:07','2022-10-11 13:46:07'),(36,'STRIPE_SECRET_KEY','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(37,'STRIPE_PUBLIC_KEY','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(38,'razorpay_currency','INR','2022-10-11 13:46:07','2022-10-11 13:46:07'),(39,'razorpay_conversion_rate','78.04','2022-10-11 13:46:07','2022-10-11 13:46:07'),(40,'razorpay_status','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(41,'RAZORPAY_KEY','rzp_test_jI4LNxngs3tF4n','2022-10-11 13:46:07','2022-10-11 13:46:07'),(42,'RAZORPAY_SECRET','lZo8JpuK897uLRrnMB9imhIy','2022-10-11 13:46:07','2022-10-11 13:46:07'),(43,'mollie_currency','EUR','2022-10-11 13:46:07','2022-10-11 13:46:07'),(44,'mollie_conversion_rate','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(45,'mollie_status','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(46,'MOLLIE_KEY','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(47,'im_currency','INR','2022-10-11 13:46:07','2022-10-11 13:46:07'),(48,'im_conversion_rate','79.84','2022-10-11 13:46:07','2022-10-11 13:46:07'),(49,'im_status','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(50,'IM_API_KEY','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(51,'IM_AUTH_TOKEN','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(52,'IM_URL','https://test.instamojo.com/api/1.1/payment-requests/','2022-10-11 13:46:07','2022-10-11 13:46:07'),(53,'sslcommerz_currency','BDT','2022-10-11 13:46:07','2022-10-11 13:46:07'),(54,'sslcommerz_conversion_rate','92','2022-10-11 13:46:07','2022-10-11 13:46:07'),(55,'sslcommerz_status','0','2022-10-11 13:46:07','2022-10-11 13:46:07'),(56,'sslcommerz_mode','sandbox','2022-10-11 13:46:07','2022-10-11 13:46:07'),(57,'SSLCZ_STORE_ID','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(58,'SSLCZ_STORE_PASSWD','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(59,'MAIL_DRIVER','smtp','2022-10-11 13:46:07','2022-10-11 13:46:07'),(60,'MAIL_HOST','mailhog','2022-10-11 13:46:07','2022-10-11 13:46:07'),(61,'MAIL_PORT','1025','2022-10-11 13:46:07','2022-10-11 13:46:07'),(62,'MAIL_USERNAME','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(63,'MAIL_PASSWORD','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(64,'MAIL_ENCRYPTION','','2022-10-11 13:46:07','2022-10-11 13:46:07'),(65,'MAIL_FROM_ADDRESS','hello@example.com','2022-10-11 13:46:07','2022-10-11 13:46:07'),(66,'MAIL_FROM_NAME','${APP_NAME}','2022-10-11 13:46:07','2022-10-11 13:46:07'),(67,'MAIL_MAILER','smtp','2022-10-11 13:46:07','2022-10-11 13:46:07'),(68,'update','Save','2022-10-11 13:46:07','2022-10-11 13:46:07'),(69,'sign_up_left_text','Discover world best online courses here. 24k online course is waiting for you','2022-10-11 13:46:07','2022-10-11 13:46:07'),(70,'sign_up_left_image','uploads/setting/1667026295-qsGLpEp7Mb.png','2022-10-11 13:46:07','2022-10-29 06:51:35'),(71,'forgot_title','Forgot Password?','2022-10-11 13:46:07','2022-10-11 13:46:07'),(72,'forgot_subtitle','Enter the email address you used when you joined and we’ll send you instructions to reset your password.            For security reasons, we do NOT store your password. So rest assured that we will never send your password via email.','2022-10-11 13:46:07','2022-10-23 03:49:13'),(73,'forgot_btn_name','Send Reset Instructions','2022-10-11 13:46:07','2022-10-11 13:46:07'),(74,'facebook_url','#','2022-10-11 13:46:07','2022-10-11 13:46:07'),(75,'twitter_url','#','2022-10-11 13:46:07','2022-10-11 13:46:07'),(76,'linkedin_url','#','2022-10-11 13:46:07','2022-10-11 13:46:07'),(77,'pinterest_url','#','2022-10-11 13:46:07','2022-10-11 13:46:07'),(78,'app_instructor_footer_title','Join One Of The World’s Largest Learning Marketplaces.','2022-10-11 13:46:07','2022-10-11 13:46:07'),(79,'app_instructor_footer_subtitle','Donald valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my tree','2022-10-11 13:46:07','2022-10-11 13:46:07'),(80,'get_in_touch_title','Get in Touch','2022-10-11 13:46:07','2022-10-11 13:46:07'),(81,'send_us_msg_title','Send Us a Message','2022-10-11 13:46:07','2022-10-11 13:46:07'),(82,'contact_us_location','32 Yaool, myself down around dupal the street, London','2022-10-11 13:46:07','2022-10-11 13:46:07'),(83,'contact_us_email_one','mail@lmszai.co.uk','2022-10-11 13:46:07','2022-10-11 13:46:07'),(84,'contact_us_email_two','info@lmazaiinner.co.uk','2022-10-11 13:46:07','2022-10-11 13:46:07'),(85,'contact_us_phone_one','328-456-07875','2022-10-11 13:46:07','2022-10-11 13:46:07'),(86,'contact_us_phone_two','128-456-07875','2022-10-11 13:46:07','2022-10-11 13:46:07'),(87,'contact_us_map_link','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1839.0179632416985!2d89.5538504127622!3d22.801132631062536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff8f2b1098bf95%3A0xbce09c90b98f8380!2sJust%20Orders%20Khulna!5e0!3m2!1sen!2sbd!4v1636005141952!5m2!1sen!2sbd','2022-10-11 13:46:07','2022-10-11 13:46:07'),(88,'contact_us_description','Strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal about the human. It might take 6 -12 hour to replay','2022-10-11 13:46:07','2022-10-11 13:46:07'),(89,'faq_title','Frequently Ask Questions.','2022-10-11 13:46:07','2022-10-11 13:46:07'),(90,'faq_subtitle','CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS','2022-10-11 13:46:07','2022-10-11 13:46:07'),(91,'faq_image_title','Still no luck?','2022-10-11 13:46:07','2022-10-11 13:46:07'),(92,'faq_image','uploads/setting/1671805028-OBT6zTJJPH.png','2022-10-11 13:46:07','2022-12-23 20:17:09'),(93,'faq_tab_first_title','Item Support','2022-10-11 13:46:07','2022-10-11 13:46:07'),(94,'faq_tab_first_subtitle','Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian','2022-10-11 13:46:07','2022-10-11 13:46:07'),(95,'faq_tab_sec_title','Licensing','2022-10-11 13:46:07','2022-10-11 13:46:07'),(96,'faq_tab_sec_subtitle','Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian','2022-10-11 13:46:07','2022-10-11 13:46:07'),(97,'faq_tab_third_title','Your Account','2022-10-11 13:46:07','2022-10-11 13:46:07'),(98,'faq_tab_third_subtitle','Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian','2022-10-11 13:46:07','2022-10-11 13:46:07'),(99,'faq_tab_four_title','Tax & Complications','2022-10-11 13:46:07','2022-10-11 13:46:07'),(100,'faq_tab_four_subtitle','Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian','2022-10-11 13:46:07','2022-10-11 13:46:07'),(101,'home_special_feature_first_logo','uploads_demo/setting\\feature-icon1.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(102,'home_special_feature_first_title','Learn From Experts','2022-10-11 13:46:07','2022-10-11 13:46:07'),(103,'home_special_feature_first_subtitle','Mornings of spring which I enjoy with my whole heart about the gen','2022-10-11 13:46:07','2022-10-11 13:46:07'),(104,'home_special_feature_second_logo','uploads_demo/setting/feature-icon2.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(105,'home_special_feature_second_title','Earn a Certificate','2022-10-11 13:46:07','2022-10-11 13:46:07'),(106,'home_special_feature_second_subtitle','Mornings of spring which I enjoy with my whole heart about the gen','2022-10-11 13:46:07','2022-10-11 13:46:07'),(107,'home_special_feature_third_logo','uploads_demo/setting\\feature-icon3.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(108,'home_special_feature_third_title','5000+ Courses','2022-10-11 13:46:07','2022-10-11 13:46:07'),(109,'home_special_feature_third_subtitle','Serenity has taken possession of my entire soul, like these sweet spring','2022-10-11 13:46:07','2022-10-11 13:46:07'),(110,'course_logo','uploads_demo/setting/courses-heading-img.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(111,'course_title','Our Courses','2022-10-11 13:46:07','2022-12-23 20:12:11'),(112,'course_subtitle','Our Features Courses','2022-10-11 13:46:07','2022-12-23 22:00:00'),(113,'bundle_course_logo','uploads_demo/setting/bundle-courses-heading-img.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(114,'bundle_course_title','Latest Bundle Courses','2022-10-11 13:46:07','2022-10-11 13:46:07'),(115,'bundle_course_subtitle','CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS','2022-10-11 13:46:07','2022-10-11 13:46:07'),(116,'top_category_logo','uploads_demo/setting/categories-heading-img.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(117,'top_category_title','Our Top Categories','2022-10-11 13:46:07','2022-10-11 13:46:07'),(118,'top_category_subtitle','CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS','2022-10-11 13:46:07','2022-10-11 13:46:07'),(119,'top_instructor_logo','uploads_demo/setting\\top-instructor-heading-img.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(120,'top_instructor_title','Top Rated Courses From Our Top Instructor.','2022-10-11 13:46:07','2022-10-11 13:46:07'),(121,'top_instructor_subtitle','CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS','2022-10-11 13:46:07','2022-10-11 13:46:07'),(122,'become_instructor_video','uploads_demo/setting/test.mp4','2022-10-11 13:46:07','2022-10-11 13:46:07'),(123,'become_instructor_video_preview_image','uploads/setting/1667022834-5VfgiXsRe8.png','2022-10-11 13:46:07','2022-10-29 05:53:54'),(124,'become_instructor_video_logo','uploads_demo/setting/top-instructor-heading-img.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(125,'become_instructor_video_title','We Only Accept Professional Courses Form Professional Instructors','2022-10-11 13:46:07','2022-10-11 13:46:07'),(126,'become_instructor_video_subtitle','Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence','2022-10-11 13:46:07','2022-10-11 13:46:07'),(127,'customer_say_logo','uploads_demo/setting/customers-say-heading-img.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(128,'customer_say_title','What Our Valuable Customers Say.','2022-10-11 13:46:07','2022-10-11 13:46:07'),(129,'customer_say_first_name','DANIEL JHON','2022-10-11 13:46:07','2022-10-11 13:46:07'),(130,'customer_say_first_position','UI/UX DESIGNER','2022-10-11 13:46:07','2022-10-11 13:46:07'),(131,'customer_say_first_comment_title','Great instructor, great course','2022-10-11 13:46:07','2022-10-11 13:46:07'),(132,'customer_say_first_comment_description','Wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot','2022-10-11 13:46:07','2022-10-11 13:46:07'),(133,'customer_say_first_comment_rating_star','5','2022-10-11 13:46:07','2022-10-11 13:46:07'),(134,'customer_say_second_name','NORTH','2022-10-11 13:46:07','2022-10-11 13:46:07'),(135,'customer_say_second_position','DEVELOPER','2022-10-11 13:46:07','2022-10-11 13:46:07'),(136,'customer_say_second_comment_title','Awesome course & good response','2022-10-11 13:46:07','2022-10-11 13:46:07'),(137,'customer_say_second_comment_description','Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence','2022-10-11 13:46:07','2022-10-11 13:46:07'),(138,'customer_say_second_comment_rating_star','4.5','2022-10-11 13:46:07','2022-10-11 13:46:07'),(139,'customer_say_third_name','HIBRUPATH','2022-10-11 13:46:07','2022-10-11 13:46:07'),(140,'customer_say_third_position','MARKETER','2022-10-11 13:46:07','2022-10-11 13:46:07'),(141,'customer_say_third_comment_title','Fantastic course','2022-10-11 13:46:07','2022-10-11 13:46:07'),(142,'customer_say_third_comment_description','Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence','2022-10-11 13:46:07','2022-10-11 13:46:07'),(143,'customer_say_third_comment_rating_star','5','2022-10-11 13:46:07','2022-10-11 13:46:07'),(144,'achievement_first_logo','uploads_demo/setting\\1.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(145,'achievement_first_title','Successfully trained','2022-10-11 13:46:07','2022-10-11 13:46:07'),(146,'achievement_first_subtitle','2000+ students','2022-10-11 13:46:07','2022-10-11 13:46:07'),(147,'achievement_second_logo','uploads_demo/setting\\2.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(148,'achievement_second_title','Video courses','2022-10-11 13:46:07','2022-10-11 13:46:07'),(149,'achievement_second_subtitle','2000+ students','2022-10-11 13:46:07','2022-10-11 13:46:07'),(150,'achievement_third_logo','uploads_demo/setting\\3.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(151,'achievement_third_title','Expert instructor','2022-10-11 13:46:07','2022-10-11 13:46:07'),(152,'achievement_third_subtitle','2000+ students','2022-10-11 13:46:07','2022-10-11 13:46:07'),(153,'achievement_four_logo','uploads_demo/setting\\4.png','2022-10-11 13:46:07','2022-10-11 13:46:07'),(154,'achievement_four_title','Proudly Received','2022-10-11 13:46:07','2022-10-11 13:46:07'),(155,'achievement_four_title','Proudly Received','2022-10-11 13:46:07','2022-10-11 13:46:07'),(156,'achievement_four_subtitle','2000+ students','2022-10-11 13:46:07','2022-10-11 13:46:07'),(157,'support_faq_title','Frequently Ask Questions. 2','2022-10-11 13:46:07','2022-10-11 13:46:07'),(158,'support_faq_subtitle','CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS 3','2022-10-11 13:46:07','2022-10-11 13:46:07'),(159,'ticket_title','Is That Helpful?','2022-10-11 13:46:07','2022-10-11 13:46:07'),(160,'ticket_subtitle','Are You Still Confusion?','2022-10-11 13:46:07','2022-10-11 13:46:07'),(161,'cookie_button_name','Allow cookies','2022-10-11 13:46:07','2022-10-11 13:46:07'),(162,'cookie_msg','Your experience on this site will be improved by allowing cookies','2022-10-11 13:46:07','2022-10-11 13:46:07'),(163,'COOKIE_CONSENT_STATUS','1','2022-10-11 13:46:07','2022-10-11 13:46:07'),(164,'platform_charge','2','2022-10-11 13:46:07','2022-10-11 13:46:07'),(165,'sell_commission','0','2022-10-11 13:46:07','2022-10-11 13:46:07'),(166,'currency_id','1','2022-10-23 03:49:13','2022-10-23 03:49:13'),(167,'language_id','1','2022-10-23 03:49:13','2022-10-23 03:49:13'),(168,'app_color_design_type','2','2022-12-23 20:27:16','2022-12-23 20:27:16'),(169,'app_theme_color','#4f7a28','2022-12-23 20:27:16','2022-12-23 20:27:16'),(170,'app_navbar_background_color','#c0c0c0','2022-12-23 20:27:16','2022-12-23 20:27:58'),(171,'app_body_font_color','#52526c','2022-12-23 20:27:16','2022-12-23 20:27:16'),(172,'app_heading_color','#040453','2022-12-23 20:27:16','2022-12-23 20:27:16'),(173,'app_gradiant_banner_color1','#000000','2022-12-23 20:27:16','2022-12-23 20:27:16'),(174,'app_gradiant_banner_color2','#000000','2022-12-23 20:27:16','2022-12-23 20:27:16'),(175,'app_gradiant_banner_color','linear-gradient(to right, #000000, #000000)','2022-12-23 20:27:16','2022-12-23 20:27:16'),(176,'app_gradiant_footer_color1','#000000','2022-12-23 20:27:16','2022-12-23 20:27:16'),(177,'app_gradiant_footer_color2','#000000','2022-12-23 20:27:16','2022-12-23 20:27:16'),(178,'app_gradiant_footer_color','linear-gradient(180deg, #000000, #000000)','2022-12-23 20:27:16','2022-12-23 20:27:16'),(179,'app_gradiant_overlay_background_color_opacity','0','2022-12-23 20:27:16','2022-12-23 22:06:41');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_promotion_tag_courses`
--

DROP TABLE IF EXISTS `special_promotion_tag_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_promotion_tag_courses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `special_promotion_tag_id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_promotion_tag_courses`
--

LOCK TABLES `special_promotion_tag_courses` WRITE;
/*!40000 ALTER TABLE `special_promotion_tag_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_promotion_tag_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_promotion_tags`
--

DROP TABLE IF EXISTS `special_promotion_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_promotion_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `special_promotion_tags_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_promotion_tags`
--

LOCK TABLES `special_promotion_tags` WRITE;
/*!40000 ALTER TABLE `special_promotion_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_promotion_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,1,'Dhaka',NULL,NULL),(2,1,'Khulna',NULL,NULL),(3,1,'Comilla',NULL,NULL),(4,2,'California',NULL,NULL),(5,2,'Texas',NULL,NULL),(6,2,'Florida',NULL,NULL),(7,3,'Argyll',NULL,NULL),(8,3,'Belfast',NULL,NULL),(9,3,'Cambridge',NULL,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_certificates`
--

DROP TABLE IF EXISTS `student_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_certificates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_certificates_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_certificates`
--

LOCK TABLES `student_certificates` WRITE;
/*!40000 ALTER TABLE `student_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` mediumtext COLLATE utf8mb4_unicode_ci,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=pending, 1=approved, 2=blocked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (4,'50202403-4bd3-4ea4-a9a0-c4f4536ef94b',5,2,NULL,NULL,NULL,'James','Anderson','01575202028','21321','Usa','I\'m a Professional Trainer','Male',1,'2022-12-19 20:53:56','2022-12-19 20:53:56'),(5,'b88c1a1d-bf8c-49d2-81d2-475d8b134c05',6,NULL,NULL,NULL,NULL,'John','Doe',NULL,NULL,NULL,NULL,NULL,1,'2022-12-21 02:10:18','2022-12-21 02:10:18'),(6,'d7372234-bdf2-43ef-a628-2e302059240a',7,1,NULL,1,1,'Md','Abu Sayeed','+8801575202028','1216','Dhaka Bangladesh','Software Engineer','Male',1,'2022-12-21 22:17:10','2022-12-21 22:21:16'),(7,'139aa0ab-2fb7-4999-82d5-06d107674f7f',12,3,NULL,7,11,'Instructor 1','Instructor','0131202020','2235','United States','I\'m a professional math teacher','Male',1,'2022-12-23 20:53:51','2022-12-23 20:53:51'),(8,'1a38fd15-bb3e-40a5-866d-54b9faf914e4',13,4,NULL,NULL,NULL,'Sweety','Kuldeep','015111111111','2202','Canada','Professional Trainer','Female',1,'2023-01-02 07:59:25','2023-01-02 07:59:25'),(9,'47f1cf0a-8c35-443e-a8b4-b38fd7db26c3',14,4,NULL,NULL,NULL,'Fardeen','Faruk','0151111111','2216','Canada','Trainer','Female',1,'2023-01-02 08:00:39','2023-01-02 08:00:39'),(10,'210c79b2-3d53-4cef-9413-3096c86eba5f',16,NULL,NULL,NULL,NULL,'Tamara','Myatt','015111111111','2236','Canada','Trainer','Female',1,'2023-01-02 08:02:54','2023-01-02 08:02:54');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subcategories_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'b9be86ac-d3e0-4bb8-a9f4-50079e0233a9',1,'Web Development','web-development','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'f0f13359-a2a6-4bd3-83e9-549aee2731a0',1,'Data Science','data-science','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'1c8d65d7-de4e-4dfe-8405-8a84eb2882a9',1,'Mobile Development','mobile-development','2022-10-11 13:46:08','2022-10-11 13:46:08'),(4,'af826b7c-f3e0-4905-b3b9-0e8f6f55b7a3',1,'Programming Language','programming-language','2022-10-11 13:46:08','2022-10-11 13:46:08'),(5,'cedf8d46-ed2f-47d1-b357-26169fb3b353',1,'Game Development','game-development','2022-10-11 13:46:08','2022-10-11 13:46:08'),(6,'a246fa3d-6895-4cb9-8dfb-2394f31b470c',2,'IT Certifications','it-certifications','2022-10-11 13:46:08','2022-10-11 13:46:08'),(7,'a3f0351e-5dc1-4395-849e-9ad7c2958761',2,'Network & Security','network-security','2022-10-11 13:46:08','2022-10-11 13:46:08'),(8,'410fd18e-adb8-445d-b972-2ec7bf33dadf',2,'Hardware','hardware','2022-10-11 13:46:08','2022-10-11 13:46:08'),(9,'bbc5d672-47db-4833-9383-17f2ad0fb75c',2,'Operating System & Servers','operating-system-servers','2022-10-11 13:46:08','2022-10-11 13:46:08'),(10,'ac9fa984-0736-4f1c-9d57-7f16cc0973fa',3,'Microsoft','microsoft','2022-10-11 13:46:08','2022-10-11 13:46:08'),(11,'1d01a343-7ecd-40ce-b008-372c7a9be76e',3,'Apple','apple','2022-10-11 13:46:08','2022-10-11 13:46:08'),(12,'0f68f2ab-7d08-4c0a-bbbe-0cf90fd1c5c9',3,'Google','google','2022-10-11 13:46:08','2022-10-11 13:46:08'),(13,'584d0e4e-3531-44ca-82cd-857dac859bda',4,'Career Development','career-development','2022-10-11 13:46:08','2022-10-11 13:46:08'),(14,'1f1e622c-2872-4992-80a5-5b60b7c9fa93',4,'Creativity','creativity','2022-10-11 13:46:08','2022-10-11 13:46:08'),(15,'fe51dd7b-49be-45d4-94e0-d6f858c75dcb',5,'Communication','communication','2022-10-11 13:46:08','2022-10-11 13:46:08'),(16,'f33096de-c072-460f-b835-46c7826d7ecd',5,'Management','management','2022-10-11 13:46:08','2022-10-11 13:46:08'),(17,'b8233f05-451b-419d-9bb7-b546921ac837',5,'Sales','sales','2022-10-11 13:46:08','2022-10-11 13:46:08'),(18,'f0a7ddec-3042-4a63-b37a-101dc0447aa9',7,'Web Design','web-design','2022-10-11 13:46:08','2022-10-11 13:46:08'),(19,'311433c2-5911-4c51-891b-ca4d045718b6',7,'Graphic Design','graphic-design','2022-10-11 13:46:08','2022-10-11 13:46:08'),(20,'ecbba334-bcda-4b54-a58a-df96a5b78e57',7,'Game Design','game-design','2022-10-11 13:46:08','2022-10-11 13:46:08'),(21,'3c1c9bae-58e5-4ee3-aecf-c8efa35fd491',7,'Fashion Design','fashion-design','2022-10-11 13:46:08','2022-10-11 13:46:08'),(22,'a6f9c6ed-17fe-4d79-b8e8-8ca88dc2eeed',7,'User Experience Design','user-experience-design','2022-10-11 13:46:08','2022-10-11 13:46:08'),(23,'d989a532-2f09-449b-ade8-90fe630c9ea5',10,'Math','math','2022-12-21 22:33:38','2022-12-21 22:33:38'),(24,'a0775fca-fd32-4d4d-b47a-74d4e3bc985a',11,'Math','math','2023-01-02 21:03:43','2023-01-02 21:03:43');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_ticket_questions`
--

DROP TABLE IF EXISTS `support_ticket_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_ticket_questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_ticket_questions`
--

LOCK TABLES `support_ticket_questions` WRITE;
/*!40000 ALTER TABLE `support_ticket_questions` DISABLE KEYS */;
INSERT INTO `support_ticket_questions` VALUES (1,'Where can I see the status of my refund?',' In the Refund Status column you can see the date your refund request was submitted or when it was processed.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(2,'When will I receive my refund?',' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(3,'Why was my refund request denied?',' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ','2022-10-11 13:46:08','2022-10-11 13:46:08'),(4,'What is a “credit refund”?',' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMSZAI Credit','2022-10-11 13:46:08','2022-10-11 13:46:08'),(5,'Where can I see the status of my refund?',' In the Refund Status column you can see the date your refund request was submitted or when it was processed.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(6,'When will I receive my refund?',' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.','2022-10-11 13:46:08','2022-10-11 13:46:08'),(7,'Why was my refund request denied?',' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ','2022-10-11 13:46:08','2022-10-11 13:46:08'),(8,'What is a “credit refund”?',' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMSZAI Credit','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `support_ticket_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (9,'6acde772-772e-4be1-b9c2-c8a16af38992','Math','math','2022-10-11 13:46:08','2022-10-11 13:46:08');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `take_exams`
--

DROP TABLE IF EXISTS `take_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `take_exams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `number_of_correct_answer` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `take_exams`
--

LOCK TABLES `take_exams` WRITE;
/*!40000 ALTER TABLE `take_exams` DISABLE KEYS */;
INSERT INTO `take_exams` VALUES (1,6,2,1,'2023-01-02 21:33:01','2023-01-02 21:40:19');
/*!40000 ALTER TABLE `take_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,'uploads/team_member/1667028015-8SMdccalCn.png','Arnold keens','CREATIVE DIRECTOR','2022-10-11 13:46:08','2022-10-29 07:20:15'),(2,'uploads/team_member/1667028015-jKal8xiUSF.png','James Bond','Designer','2022-10-11 13:46:08','2022-10-29 07:20:15'),(3,'uploads/team_member/1667028015-eS2YCwuHiA.png','Ketty Perry','Customer Support','2022-10-11 13:46:08','2022-10-29 07:20:15'),(4,'uploads/team_member/1667028015-o5xFi0NLSS.png','Scarlett Johansson','CREATIVE DIRECTOR','2022-10-11 13:46:08','2022-10-29 07:20:15');
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_departments`
--

DROP TABLE IF EXISTS `ticket_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_departments_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_departments`
--

LOCK TABLES `ticket_departments` WRITE;
/*!40000 ALTER TABLE `ticket_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_messages`
--

DROP TABLE IF EXISTS `ticket_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint(20) unsigned DEFAULT NULL,
  `sender_user_id` bigint(20) unsigned DEFAULT NULL,
  `reply_admin_user_id` bigint(20) unsigned DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_messages`
--

LOCK TABLES `ticket_messages` WRITE;
/*!40000 ALTER TABLE `ticket_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_priorities`
--

DROP TABLE IF EXISTS `ticket_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_priorities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_priorities_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_priorities`
--

LOCK TABLES `ticket_priorities` WRITE;
/*!40000 ALTER TABLE `ticket_priorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_related_services`
--

DROP TABLE IF EXISTS `ticket_related_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_related_services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ticket_related_services_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_related_services`
--

LOCK TABLES `ticket_related_services` WRITE;
/*!40000 ALTER TABLE `ticket_related_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_related_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=Open, 2=Closed',
  `user_id` bigint(20) unsigned NOT NULL,
  `department_id` bigint(20) unsigned DEFAULT NULL,
  `related_service_id` bigint(20) unsigned DEFAULT NULL,
  `priority_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tickets_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cards`
--

DROP TABLE IF EXISTS `user_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_cards_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cards`
--

LOCK TABLES `user_cards` WRITE;
/*!40000 ALTER TABLE `user_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_paypals`
--

DROP TABLE IF EXISTS `user_paypals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_paypals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_paypals`
--

LOCK TABLES `user_paypals` WRITE;
/*!40000 ALTER TABLE `user_paypals` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_paypals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=admin, 2=instructor, 3=student',
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forgot_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administration','admin@gmail.com','2022-12-19 20:47:42','$2y$10$a7EMhjgJGp/eVqUM3ng2q.hqns3P0JtGKKdnf8Ew8mPVVVMNB/UVS',1,'+8801575202028','Dhaka, Bangladesh','uploads/user/1671461262-F3JVLYHBob.jpg',NULL,NULL,NULL,NULL,'2022-10-11 13:46:08','2022-12-19 20:47:42'),(5,'James Anderson','instructor@gmail.com','2022-12-19 20:53:56','$2y$10$b/3Qx/h0cLrtiMG9tBlecugm/I99e48zyoQKaG9mzGwsEGzUEk2ym',2,NULL,NULL,'uploads/user/1671461636-Q79VpDlPJb.jpg',NULL,NULL,NULL,NULL,'2022-12-19 20:53:56','2022-12-19 20:53:56'),(6,'John Doe','user@gmail.com','2022-12-21 02:10:18','$2y$10$0EH3T8N4M4TfivirNsnSSOu7XAUd.NBxpwRdogEXp6ko6AdSqkpse',3,NULL,NULL,NULL,NULL,NULL,NULL,'gIFiCf78D0mqdVsmSreo1jvXS5Fe4hYEBwjSfHW8o9G8YhFpiBD7V6xXqsW9','2022-12-21 02:10:18','2022-12-21 02:10:18'),(7,'Md Abu Sayeed','abusayeed33343536@gmail.com','2022-12-21 22:17:08','$2y$10$U80nH3uiQwHp3.PqLTdMROal/rO0OgOzZL4v0ewEjgLR2ZGM7K9wu',2,NULL,NULL,'uploads/user/1671810629-IDyuChwXgD.jpg',NULL,NULL,NULL,'XRXZhMUA3Vk14ttKeuCpdACNwLqp3iQ9AxX709Wj14wRQN1OZUH4UrutVFdz','2022-12-21 22:17:08','2022-12-23 21:50:29'),(8,'Abu Sayeed','sayeed@gmail.com','2022-12-23 19:54:04','$2y$10$G43ydM/YzUXXQ7ZyTJuK3.UBQ6h0NbBkkatEQ7XTGrlXha3H0/i1m',1,'01575202028','Dhaka',NULL,NULL,NULL,NULL,NULL,'2022-12-23 19:54:04','2022-12-23 19:54:04'),(9,'Content','content1@gmail.com','2022-12-23 19:54:37','$2y$10$fwpNgkDqAx2Xc34MTy3baOQ1GkqPNuv2Mvyi9mdUr5gi3tVw6NAx2',1,'0157522020','Dhaka',NULL,NULL,NULL,NULL,NULL,'2022-12-23 19:54:37','2022-12-23 19:54:37'),(10,'Content 2','content2@gmail.com','2022-12-23 19:55:10','$2y$10$RXu7FszD7XXmtNtBF83Br.7LQkpghopAcfbKv2On0BVyR8J9wBW02',1,'01575202020','Bangladesh',NULL,NULL,NULL,NULL,NULL,'2022-12-23 19:55:10','2022-12-23 19:55:10'),(11,'Galib','galib@gmail.com','2022-12-23 20:05:04','$2y$10$nhcqqSCjXkH3cafJ9mtC8OHS6Vwi0iJRHqZcSRoZMlsMn4sOuF5C2',1,'01587202020','Dhaka',NULL,NULL,NULL,NULL,NULL,'2022-12-23 20:05:04','2022-12-23 20:05:04'),(12,'Instructor 1 Instructor','instructor2@gmail.com','2022-12-23 20:53:51','$2y$10$vDOKSFdn9QAvCvcyr8JPierz2fjqiy/p6O7VoJO40g2cRrVfZyTSm',2,NULL,NULL,'uploads/user/1671807231-txVkBpZnst.jpg',NULL,NULL,NULL,NULL,'2022-12-23 20:53:51','2022-12-23 20:53:51'),(13,'Sweety Kuldeep','sweety.kuldeep@myattacademy.com','2023-01-02 07:59:24','$2y$10$RrFHToQIayQwuKAbzrKVdO8Nj9.X1foeQrHqne2B296/ZO8665sBC',2,NULL,NULL,NULL,NULL,'65189',NULL,NULL,'2023-01-02 07:59:25','2023-01-03 01:14:13'),(14,'Fardeen Faruk','fardeen.faruk@myattacademy.com','2023-01-02 08:00:38','$2y$10$h9OAytMkigrY3QqaLbQwIutNMWUrv2zhI3NhjqAKsaRmph98umo/W',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-02 08:00:38','2023-01-02 08:00:38'),(15,'Andy Wood','andy.wood@myattacademy.com','2023-01-02 08:01:43','$2y$10$3XibsUgyO0s9E5g8d62pNeWMDhUm2ChlUVSdJeSpZLvhLK7ADBBqG',1,'015111570215','Canada',NULL,NULL,NULL,NULL,NULL,'2023-01-02 08:01:43','2023-01-02 08:01:43'),(16,'Tamara Myatt','tamara.myatt@myattacademy.com','2023-01-02 08:02:54','$2y$10$tALx8XGtTlpNaYQwIZBDBO5qF4bIHjVR4touDwYmhxkxwipP/4Vnu',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-02 08:02:54','2023-01-02 08:02:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `course_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `bundle_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraws` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `transection_id` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=pending, 1=complete, 2=rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `withdraws_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoom_settings`
--

DROP TABLE IF EXISTS `zoom_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zoom_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `api_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host_video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'true, false',
  `participant_video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'true, false',
  `waiting_room` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'true, false',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=disable, 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoom_settings`
--

LOCK TABLES `zoom_settings` WRITE;
/*!40000 ALTER TABLE `zoom_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `zoom_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06 20:12:22
