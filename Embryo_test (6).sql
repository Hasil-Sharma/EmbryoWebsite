-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2013 at 05:59 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Embryo_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add presenter', 7, 'add_presenter'),
(20, 'Can change presenter', 7, 'change_presenter'),
(21, 'Can delete presenter', 7, 'delete_presenter'),
(22, 'Can add lecture', 8, 'add_lecture'),
(23, 'Can change lecture', 8, 'change_lecture'),
(24, 'Can delete lecture', 8, 'delete_lecture'),
(25, 'Can add lecture_ link', 9, 'add_lecture_link'),
(26, 'Can change lecture_ link', 9, 'change_lecture_link'),
(27, 'Can delete lecture_ link', 9, 'delete_lecture_link'),
(28, 'Can add newsletter', 10, 'add_newsletter'),
(29, 'Can change newsletter', 10, 'change_newsletter'),
(30, 'Can delete newsletter', 10, 'delete_newsletter'),
(31, 'Can add log entry', 11, 'add_logentry'),
(32, 'Can change log entry', 11, 'change_logentry'),
(33, 'Can delete log entry', 11, 'delete_logentry'),
(34, 'Can add discipline', 12, 'add_discipline'),
(35, 'Can change discipline', 12, 'change_discipline'),
(36, 'Can delete discipline', 12, 'delete_discipline'),
(37, 'Can add lectures discipline', 13, 'add_lecturesdiscipline'),
(38, 'Can change lectures discipline', 13, 'change_lecturesdiscipline'),
(39, 'Can delete lectures discipline', 13, 'delete_lecturesdiscipline'),
(40, 'Can add event', 14, 'add_event'),
(41, 'Can change event', 14, 'change_event'),
(42, 'Can delete event', 14, 'delete_event'),
(43, 'Can add gallery', 15, 'add_gallery'),
(44, 'Can change gallery', 15, 'change_gallery'),
(45, 'Can delete gallery', 15, 'delete_gallery'),
(46, 'Can add register', 16, 'add_register'),
(47, 'Can change register', 16, 'change_register'),
(48, 'Can delete register', 16, 'delete_register'),
(49, 'Can add feedback', 17, 'add_feedback'),
(50, 'Can change feedback', 17, 'change_feedback'),
(51, 'Can delete feedback', 17, 'delete_feedback'),
(52, 'Can add sign up', 18, 'add_signup'),
(53, 'Can change sign up', 18, 'change_signup'),
(54, 'Can delete sign up', 18, 'delete_signup');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'hasil', '', '', 'hasilsharma7@gmail.com', 'pbkdf2_sha256$10000$yEhDB7y4Bz26$+CRCZPCNxTOVVgWp4/k0DzNRdF3bIOWhzsVYCo36zLM=', 1, 1, 1, '2013-02-02 14:40:16', '2013-01-31 16:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `database_discipline`
--

CREATE TABLE IF NOT EXISTS `database_discipline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `database_discipline`
--

INSERT INTO `database_discipline` (`id`, `stream`) VALUES
(1, 'Chemical Engineering'),
(2, 'Civil Engineering'),
(3, 'Mechanical Engineering'),
(4, 'Electical And Electronics Engineerings-Electronics'),
(5, 'Computer Science-Information Systems'),
(6, 'Physics'),
(7, 'Chemistry'),
(8, 'Mathematics'),
(9, 'Biology'),
(10, 'Pharmacy'),
(11, 'Economics'),
(12, 'Finance'),
(13, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `database_event`
--

CREATE TABLE IF NOT EXISTS `database_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `allowed` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `database_event`
--

INSERT INTO `database_event` (`id`, `image`, `allowed`, `description`, `name`) VALUES
(1, 'events/art.png', 1, '<p>Hello</p>', 'Alumni Research Talks');

-- --------------------------------------------------------

--
-- Table structure for table `database_feedback`
--

CREATE TABLE IF NOT EXISTS `database_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lecture` int(11) NOT NULL,
  `feedback` longtext NOT NULL,
  `slides` varchar(150) NOT NULL,
  `video_link` varchar(150) NOT NULL,
  `poster` varchar(150) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `database_newsletter`
--

CREATE TABLE IF NOT EXISTS `database_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `newsletter` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `database_newsletter`
--

INSERT INTO `database_newsletter` (`id`, `name`, `newsletter`) VALUES
(5, 'Current', 'newsletters/art_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `database_signup`
--

CREATE TABLE IF NOT EXISTS `database_signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alumni` tinyint(1) NOT NULL,
  `batch` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `discipline_first` varchar(50) NOT NULL,
  `discipline_dual` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `biography` longtext NOT NULL,
  `lect_topics` longtext NOT NULL,
  `talk_discipline` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-01-31 16:33:55', 1, 9, '1', 'Lecture_Link object', 1, ''),
(2, '2013-01-31 16:34:55', 1, 9, '1', 'Lecture_Link object', 3, ''),
(3, '2013-01-31 16:40:27', 1, 8, '203', '', 3, ''),
(4, '2013-01-31 16:40:27', 1, 8, '202', '', 3, ''),
(5, '2013-01-31 16:42:34', 1, 8, '204', 'bkjh', 3, ''),
(6, '2013-01-31 16:43:19', 1, 8, '205', 'kuhui', 1, ''),
(7, '2013-01-31 16:43:32', 1, 8, '205', 'kuhui', 2, 'Changed photo and disabled.'),
(8, '2013-01-31 16:43:47', 1, 8, '205', 'kuhui', 3, ''),
(9, '2013-02-01 07:58:00', 1, 7, '170', 'Hasil Sharma', 1, ''),
(10, '2013-02-01 08:36:02', 1, 7, '181', 'Hasil Sharma', 1, ''),
(11, '2013-02-01 08:37:18', 1, 7, '181', 'Hasil Sharma', 3, ''),
(12, '2013-02-01 11:54:36', 1, 10, '1', 'Hasil', 1, ''),
(13, '2013-02-02 16:45:41', 1, 8, '173', '<b>Butterfly Economics', 2, 'Changed discipline.'),
(14, '2013-02-02 16:45:55', 1, 8, '160', 'Pre - MBA options for fresh graduates', 2, 'Changed discipline.'),
(15, '2013-02-02 16:46:15', 1, 8, '159', 'Youth Leadership Through Teaching', 2, 'Changed discipline.'),
(16, '2013-02-02 17:05:44', 1, 8, '82', 'Wireless Data Networks', 2, 'Changed discipline, venue and campus.'),
(17, '2013-02-02 19:09:07', 1, 10, '1', 'Hasil', 3, ''),
(18, '2013-02-03 11:15:08', 1, 10, '1', 'jhgjh', 1, ''),
(19, '2013-02-03 13:12:33', 1, 7, '182', '<p>Hasil Sharma</p>', 1, ''),
(20, '2013-02-03 13:12:55', 1, 8, '190', '<p>CFD</p>', 1, ''),
(21, '2013-02-03 13:14:18', 1, 8, '191', '<p>Somehtng</p>', 1, ''),
(22, '2013-02-03 13:59:19', 1, 7, '91', '<p>None</p>', 2, 'Changed name, credentials and profile.'),
(23, '2013-02-03 16:37:28', 1, 13, '209', '200', 1, ''),
(24, '2013-02-03 16:37:36', 1, 13, '209', '200', 3, ''),
(25, '2013-02-03 23:18:52', 1, 8, '191', '<p>Somehtng</p>', 3, ''),
(26, '2013-02-03 23:18:52', 1, 8, '190', '<p>CFD</p>', 3, ''),
(27, '2013-02-04 19:15:03', 1, 7, '183', '<p>Gyan Prakash</p>', 1, ''),
(28, '2013-02-05 14:39:05', 1, 14, '1', 'Event object', 1, ''),
(29, '2013-02-05 14:47:17', 1, 14, '2', 'Event object', 1, ''),
(30, '2013-02-05 14:48:04', 1, 10, '2', 'helo', 1, ''),
(31, '2013-02-05 14:49:16', 1, 10, '3', 'Hasil Sharma', 1, ''),
(32, '2013-02-05 14:50:20', 1, 10, '4', 'asdf', 1, ''),
(33, '2013-02-05 14:50:55', 1, 10, '4', 'asdf', 3, ''),
(34, '2013-02-05 14:50:55', 1, 10, '3', 'Hasil Sharma', 3, ''),
(35, '2013-02-05 14:50:55', 1, 10, '2', 'helo', 3, ''),
(36, '2013-02-05 14:50:55', 1, 10, '1', 'jhgjh', 3, ''),
(37, '2013-02-05 14:51:08', 1, 14, '2', 'Event object', 3, ''),
(38, '2013-02-05 14:52:01', 1, 14, '3', 'Event object', 1, ''),
(39, '2013-02-05 14:53:20', 1, 14, '3', 'Event object', 2, 'Changed allowed.'),
(40, '2013-02-05 14:53:33', 1, 14, '3', 'Event object', 2, 'Changed allowed.'),
(41, '2013-02-05 14:58:56', 1, 14, '4', 'current.png', 1, ''),
(42, '2013-02-05 14:59:24', 1, 14, '4', 'current.png', 3, ''),
(43, '2013-02-05 14:59:24', 1, 14, '3', 'art_1.png', 3, ''),
(44, '2013-02-05 14:59:40', 1, 14, '5', 'art_2.png', 1, ''),
(45, '2013-02-05 15:00:07', 1, 14, '5', 'art_2.png', 3, ''),
(46, '2013-02-05 15:00:19', 1, 14, '6', 'art.png', 1, ''),
(47, '2013-02-05 15:14:52', 1, 15, '2', '1_2.JPG', 1, ''),
(48, '2013-02-05 16:21:39', 1, 10, '5', 'Current', 1, ''),
(49, '2013-02-05 20:08:50', 1, 14, '1', 'art.png', 2, 'Changed allowed.'),
(50, '2013-02-05 20:09:11', 1, 14, '1', 'art.png', 2, 'Changed allowed.'),
(51, '2013-02-05 20:11:15', 1, 14, '7', 'DSC_0377-crop.JPG', 1, ''),
(52, '2013-02-05 20:11:49', 1, 14, '7', 'DSC_0377-crop.JPG', 3, ''),
(53, '2013-02-10 01:44:31', 1, 6, '1', 'Embryo Website', 2, 'Changed domain and name.'),
(54, '2013-02-10 14:49:15', 1, 14, '1', 'art.png', 2, 'Changed description.'),
(55, '2013-02-10 14:53:44', 1, 14, '1', 'art.png', 2, 'Changed name.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'presenter', 'database', 'presenter'),
(8, 'lecture', 'database', 'lecture'),
(9, 'lecture_ link', 'database', 'lecture_link'),
(10, 'newsletter', 'database', 'newsletter'),
(11, 'log entry', 'admin', 'logentry'),
(12, 'discipline', 'database', 'discipline'),
(13, 'lectures discipline', 'database', 'lecturesdiscipline'),
(14, 'event', 'database', 'event'),
(15, 'gallery', 'database', 'gallery'),
(16, 'register', 'database', 'register'),
(17, 'feedback', 'database', 'feedback'),
(18, 'sign up', 'database', 'signup');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('42a1c7c78c0a1cf1b2d4a9b1a7bf595e', 'NWI0ZjM4ZDk4NmJiZjlhNmU4YmQ2ZjJiMTMyNzliNWU2YTFmZWQ1ODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-02-14 16:28:54'),
('b48e3f8bf8ef4d313f022b8ad9373aea', 'NWI0ZjM4ZDk4NmJiZjlhNmU4YmQ2ZjJiMTMyNzliNWU2YTFmZWQ1ODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-02-16 14:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'Embryo Website', 'embryo.bits-pilani.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE IF NOT EXISTS `lectures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `discipline` varchar(50) DEFAULT NULL,
  `topic` text,
  `moreinfo` mediumtext,
  `presenter_id` int(11) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `discussion` text,
  `allowed` binary(1) DEFAULT NULL,
  `venue` text NOT NULL,
  `campus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `discipline` (`discipline`),
  KEY `presenter` (`presenter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `lectures`
--

INSERT INTO `lectures` (`id`, `date`, `discipline`, `topic`, `moreinfo`, `presenter_id`, `photo`, `discussion`, `allowed`, `venue`, `campus`) VALUES
(1, '2006-04-23 10:00:00', 'CS-IS', 'Basics of Information Retrieval', 'This talk will act as an introductory talk for Information Retrieval techniques.\r\n<p>\r\nIt will cover topics like the search and browse paradigms, relevance measures like precision and recall, inverted indices, clustering and classification, and personalization.\r\n\r\n<p>\r\nThere is no prerequisite required for this lecture. 1st yearites can attend too.\r\n', 1, '', '/unb/forum.php?req=thread&id=1', NULL, '', ''),
(2, '2006-04-28 09:00:00', 'EEE-E&I', 'Global Positioning Systems', '1. Basics of GPS\r\n2. How GPS works ?\r\n3. Applications of GPS.', 2, '', '/unb/forum.php?req=thread&id=2', NULL, '', ''),
(3, '2006-04-23 11:00:00', 'MeE', 'Design of Experiments', NULL, 3, '', '/unb/forum.php?req=thread&id=3', NULL, '', ''),
(4, '2006-11-12 10:00:00', 'MeE', 'Design of Experiments - Part I', 'Introduction to DOE, Introduction to ANOVA, 2k Factorial Designs  \r\n<p>\r\n2^k-p Fractional Factorial Design, Response Surface Methods\r\n<p>\r\nRandom Factors in experiments and Nested and Split Plot Design\r\n\r\n', 3, '', '/unb/forum.php?req=thread&id=4', NULL, '', ''),
(5, NULL, 'CS-IS', 'Search Engines - an Overview', 'The objective of this lecture is to introduce various concepts in the search engine world. The aspects that will be covered will be<br>\r\n- What is a search engine vs. traditional database search<br>\r\n- Some history of search engines – altavista, inktomi, yahoo, google<br>\r\n- Different types of search engines – web search vs. vertical search<br>\r\n- Different technologies that they use – crawling, scraping, relevance ranking<br>\r\n- Different types of vertical search engines and the nuances of each<br>\r\n<ul class="ul_1">\r\n<li> shopping</li>\r\n<li>real estate</li>\r\n<li> blog</li>\r\n<li> travel</li>\r\n</ul>\r\n- How do Search Engines make money<br>\r\n- How do people spam search engines<br>\r\n', 1, '', NULL, '1', '', ''),
(6, '2006-08-13 10:30:00', 'Gen', 'MS/Phd - Overview of Higher Studies and life after graduate school', 'Graduate School Life<br>\r\nDifference between MS and PhD <br>\r\nVarious Job options<br>', 4, '', '/unb/forum.php?req=thread&id=5', NULL, '', ''),
(7, '2006-08-26 10:00:00', 'Gen', 'MS/Phd Application Process Details', '- Basic components of Apping like GRE, SOP, Resume etc. <br>\r\n- Supplement the application with other components <br>\r\nBreak some myths like low GPA, no aid, MS vs Phd etc.\r\n', 5, '', '/unb/forum.php?req=thread&id=6', NULL, '', ''),
(8, '2006-08-26 11:00:00', 'Gen', 'MS/Phd - the BITSian angle', '- Statistics on how BITSians perform<br>\r\n- Common mistakes which BITSians make<br>\r\n- What resources can you make use of which are specific to BITSians <br>\r\n', 27, '', '/unb/forum.php?req=thread&id=7', NULL, '', ''),
(9, '2006-11-19 10:30:00', 'CS-IS', 'Introduction to Storage Area Networks - 1', '# IP storage (protocol details, how/when  they are used, comparison with competing technologies)<br/>\r\n    <li> iSCSI<br/>\r\n    <li> FCIP<br/>\r\n# Case Studies of SANs<br/>\r\n    <li> e.g. a multilayer datacenter SAN <br/>\r\n    <li> e.g. use of FCIP for long-distance replications<br/>', 6, '', '/unb/forum.php?req=thread&id=8', NULL, '', ''),
(10, NULL, 'CS-IS', 'Introduction to Storage Area Networks - 2', '# Multi-pathing for high availability <br>\r\n# SAN switch architecture<br>\r\n# Disk array architecture<br>\r\n# Initiator Architecture (FC HBA, iSCSI stack)<br>\r\n# Impact of SANs on file system, database and cluster software design<br>\r\n\r\n# Layered SAN technologies for disaster recovery and data protection<br>\r\n# Virtualization and Intelligent SAN services<br>\r\n# SAN futures<br>\r\n# Companies (products) and academic projects related to SANs<br>', 7, '', NULL, '1', '', ''),
(11, '2006-09-30 18:00:00', 'ChE', 'Microfluidics - A Primer', 'Microfluidics deals with the behavior, precise control and manipulation of micro- \r\nliter and nano- liter volumes of fluids. It is a multidisciplinary field comprising physics, \r\nchemistry, engineering and biotechnology, with practical applications to the design of \r\nsystems in which such small volumes of fluids will be used. Microfluidics emerged in the \r\n1990s and now is used in the development of DNA chips, micro- propulsion, micro- \r\nthermal technologies, and lab-on-a-chip technology. \r\n <p>\r\n The behavior of fluids at the microscale can differ from ''macrofluidic'' behavior as \r\nfactors such as surface tension, energy dissipation, and fluidic resistance start to \r\ndominate the system. Microfluidics studies how these behaviors change, and how they \r\ncan be worked around, or exploited for new uses. At these scales (channel diameters of \r\naround 10 to several hundred micrometers), some interesting and unintuitive properties \r\nappear. The Reynolds number, which characterizes the presence of turbulent flow, is \r\nextremely low; therefore the flow will remain Laminar. As a result, two fluids joining for \r\nexample will not mix easily and only diffusion alone will cause the two compounds to \r\nmingle. \r\n <p>\r\n This lecture will introduce the listeners to the various concepts in microfluidics. \r\nIt will outline the challenges and applications in the field of channel based microfluidic \r\nsystems. It will also discuss the field of droplet based microfluidics and present some of \r\nthe author’s work in this area. \r\n', 8, '', '/unb/forum.php?req=thread&id=9', NULL, '', ''),
(12, '2006-11-16 18:00:00', 'MeE/EEE-E&I/CS-IS', 'Human-Robot Interaction (HRI) - Emerging Research Directions', 'It will focus on the state-of-art in HRI and the new research areas that are emerging with respect to entertainment and service robots. Multi-modal human-robot interaction consisting of facial expressions, vocal intonation, gestures, postures, and physiology are fast replacing traditional interfaces. The goal is to achieve high-dimensional, intuitive, and seamless interaction between humans and robots. This requires a synergistic integration of areas such as engineering, psychology, and computer science. This talk aims at acquainting the students interested in pursuing research/career in HRI with research going on in this area. \r\n<p>\r\nAll students with interest in Robotics, Artificial Intelligence, and Machine Learning are encouraged to attend\r\n', 9, '', '/unb/forum.php?req=thread&id=10', NULL, '', ''),
(13, '2006-09-11 18:00:00', 'CS-IS', 'Introduction to Computer Vision', '-How is vision related to sensing, control, AI\r\n\r\n-Applied vision - sampling of vision applications (vehicle safety, medical imaging, entertainment, autonomous navigation, industrial inspection)\r\n', 10, '', '/unb/forum.php?req=thread&id=11', NULL, '', ''),
(14, '2006-09-17 09:00:00', 'CS-IS', 'Semantic Web – an Overview', 'Most of the Web''s content today is designed for humans to read, not for computer programs to manipulate meaningfully. Computers can adeptly parse Web pages for layout and routine processing—here a header, there a link to another page—but in general, computers have no reliable way to process the semantics.\r\n<p>\r\nThe next generation of the Web, named Semantic Web, is an attempt to standardize ways to express semantics. It will enable computers to combine related data meaningfully. The Knowledge Representation community and the Web Standardization community (W3C) are working together to develop logics and representations to achieve this end. This lecture will present an overview of the same with pointers to resources for further study. Based on audience response, a follow up lecture may also be scheduled.\r\n<p>\r\nPre-requites:\r\n\r\nThe talk will mainly be targeted at students with CS/IS/Math background in their 3rd year. Some basic knowledge about the Web will be useful. Some elementary set theory/boolean logic will also help.', 11, '', '/unb/forum.php?req=thread&id=12', NULL, '', ''),
(15, '2006-09-17 10:30:00', 'ChE', 'Multi-scale modeling and simulations of materials and biological systems', 'This lecture will introduce the students to various multi-scale modeling and simulation methods and applications of these methods to various materials science problems (eg- phase behavior of polymer blends, adsorption in carbon nanotubes, colloidal systems, etc.) and biological problems (eg- drug design, protein folding and aggregation, etc.)\r\n<p>\r\n1. Overview of computer simulation methods – Monte Carlo Simulations and Molecular Dynamics Simulations<br>\r\n2. How to choose an appropriate computational method given a problem<br>\r\n3. Computational study of materials systems 	<br>\r\n4. Computational study of biological systems <br>\r\n<p>\r\nRecommended texts: \r\n	Molecular Modeling: Principles and Applications by Andrew Leach, 	Understanding Molecular Simulations by Frenkel and Smit	\r\n', 12, '', '/unb/forum.php?req=thread&id=13', NULL, '', ''),
(16, '2007-09-20 20:00:00', 'CS-IS', 'Graphics Processing Unit (GPU)- An Overview', '1. What is GPU?<br>\r\n2. Why is GPU essential?<br>\r\n3. GPU and ImageProcessing<br>\r\n4. Software Applications using GPU Power<br>\r\n5. GPGPU: GPU''s use for general purpose computing.<br>\r\n<p>\r\n\r\nPrereq:\r\n\r\nJust some basic knowledge of Image Processing/Computer Graphics.\r\n<p>\r\nExpected Audience:\r\n\r\n3rd year/4th year/5th year (dualites :) ) CS/IS students. Interested 2nd year students can also attend to get a flavour of this new domain. \r\n<p>\r\nReference:<br>\r\n\r\n1. http://en.wikipedia.org/wiki/Graphics_processing_unit<br>\r\n2. http://developer.nvidia.com/object/gpu_programming_guide.html<br>\r\n3. http://gpgpu.org/<br>\r\n', 60, '', '/unb/forum.php?req=thread&id=45', NULL, '', ''),
(17, NULL, 'EEE-E&I', 'Ultra-Wideband (UWB) Technology - An Overview\r\n', 'Things I would like to cover in this talk\r\n \r\n<li> What is UWB? \r\n \r\n<li> Applications of UWB.\r\n\r\n<li> Existing UWB standards.\r\n\r\n<li> Current research activities. \r\n\r\n<li> Future trends.\r\n<p>\r\nPrereq: Basic knowledge of wireless communication\r\nsystems.\r\n<p>\r\nExpected Audience: 3rd/4th year EEE/Instru students.\r\n1st/2nd year students and students from other\r\ndisciplines are also welcome.\r\n<p>\r\n\r\nReference:\r\n(i)  http://www.uwbforum.org/ <br>\r\n(ii) \r\nhttp://en.wikipedia.org/wiki/Ultra_wideband<br>\r\n(iii)http://www.wimedia.org/en/index.asp<br>\r\n', 14, '', NULL, '1', '', ''),
(18, NULL, 'Gen', 'Web 2.0', 'Web 2.0 is changing the face of the internet domain now. It \r\nis\r\nthe most happening thing with a whole new set of technologies\r\nprominently reflected in services like flickr , the social bookmarking\r\nservice del.icio.us etc . Web 2.0 services are expected to replace\r\ndesktop computing applications for many purposes. In short it is a \r\nsetup\r\nwhere data from lots of sources is remixed with more participation from\r\nthe end users and the result is a truly great experience with the Web .\r\nThis talk would concentrate on Internet Trends with Web 2.0\r\n<p>\r\nPrereq:None', 15, '', NULL, '1', '', ''),
(19, NULL, 'EEE-E&I', 'Overview of Electronic Design Automation (EDA) industry - Trends and Challenges', 'Suraj Bharech, BE(Hons) CS 2002 would also be co-lecturer\r\n<p>\r\nThings we would like to cover in this talk\r\n<ul>\r\n<li>What is EDA?\r\n\r\n<li>What skill set is required\r\n\r\n<li>What are the challenges in this domain?\r\n</ul>', 18, '', NULL, '1', '', ''),
(20, '2006-08-19 15:00:00', 'Gen', 'MBA - From the eyes of a BITSian - Part I', 'Focus on ISB + Why MBA', 16, '', '/unb/forum.php?req=thread&id=14', NULL, '', ''),
(21, '2006-08-19 16:00:00', 'Gen', 'MBA - From the eyes of a BITSian - Part II', 'Focus on IIMB and Admissions - the CAT, resources to tackle the exams', 17, '', '/unb/forum.php?req=thread&id=15', NULL, '', ''),
(22, '2006-11-11 13:30:00', 'Gen', 'MBA - From the eyes of a BITSian - Part III', 'Focus on IIMA + Career Path and Post MBA opputunities', 20, '', '/unb/forum.php?req=thread&id=16', NULL, '', ''),
(23, '2006-11-01 18:00:00', 'CS-IS', 'TCP/IP Security Issues', 'In this lecture we will examine different security issues related to the TCP/IP suite of protocols. TCP/IP was not designed with security in mind and does not contain mechanisms to provide confidentiality, integrity and availability. Consequently, there have been numerous techniques, some quite ingenious, developed to circumvent  the security of a TCP/IP connection. We will review some of the more important of such techniques and discuss simple solutions wherever possible. Topics to be covered will include fingerprinting, sniffing, hijacking, DDoS, DNS. The lecture will NOT cover the different cryptographic solutions that have been recently developed to address these security issues. A knowledge of TCP/IP will be assumed. No knowledge of cryptography is required.\r\n', 21, '', '/unb/forum.php?req=thread&id=17', NULL, '', ''),
(24, '2006-11-04 17:00:00', 'Bio', 'Introduction to Epigenetics\r\n', 'The emerging field of epigenetics holds great promise to enable answer fundamental questions in biology that directly impact development of disease cure strategies. Today, a great deal of biomedical research is focused in various areas of epigenetics. In my lecture I shall introduce the audience to this field, explain the various epigenetic processes in the cell (eg. DNA methylation, histone modifications), and briefly describe their relevance to important diseases like cancer.\r\n', 33, '', '/unb/forum.php?req=thread&id=18', NULL, '', ''),
(25, '2006-09-25 18:00:00', 'CS-IS', 'Machine Translation', '<ul>\r\n<li> What is Machine Translation? </li>\r\n<li> Why is it hard? </li>\r\n<li> A brief history and important approaches</li>\r\n<li> the IBM models(the most primitive translation models)</li>\r\n<li> Basic MT framework (language/translation model)</li>\r\n<li> Examples of language/translation model(eg. HMM models)</li>\r\n<li> Overview of synchronous grammars</li>\r\n<li> Syntax and Semantics : Evaluation</li>\r\n<li> Where are we heading?</li>\r\n</ul>\r\n\r\nFor beginners, try translation on\r\nhttp://www.google.com/language_tools', 22, '', '/unb/forum.php?req=thread&id=19', NULL, '', ''),
(26, NULL, 'CS-IS', 'Software Testing Methologies', '<a href="http://www.cs.purdue.edu/homes/apm/mathur-homepage.html">http://www.cs.purdue.edu/homes/apm/mathur-homepage.html</a>', 23, '', NULL, '1', '', ''),
(27, NULL, 'ChE', 'Understanding Surface Reactivity of Transition Metals with Computational Surface Science', 'Computational surface science techniques, based on Density Functional Theory (DFT) calculations offer a big advantage of allowing the visualization of surface chemistry with a spatial resolution that is almost impossible to achieve with experimental \r\ntechniques alone. As a result, they serve as a very useful tool to understand atomic and \r\nmolecular structure and properties, as well as chemical reactivity on well-defined solid \r\nsurfaces. DFT calculations have successfully elucidated the mechanisms of complex \r\nchemical transformations, including adsorptive, desorptive, reactive, diffusive, and \r\nabsorptive processes on transition metal surfaces. In many cases, they have also identified \r\nnew intermediates which might have a strong influence on the reaction mechanism. Now, \r\nDFT calculations have also started to play a major role in the development of new \r\ncatalysts.  \r\n<p>\r\n This lecture will aim at introducing students with the state-of-the art \r\ncomputational methodologies employed in the field of heterogeneous catalysis. Examples \r\nfrom the literature as well as from speaker’s own work will be used to demonstrate the \r\npotential of this research area. The approach to bridge the temperature and pressure gaps \r\nbetween theoretical surface science and real world catalysis using a microkinetic model \r\nwill also be described.', 24, '', NULL, '1', '', ''),
(28, '2006-11-05 10:30:00', 'CS-IS/EEE-E&I', 'Component Based Software Architecture on Embedded Mobile Platforms', '<ul>\r\n<li>Evolution of embedded system architecture: Mid/Late 90s (Limited memory, no heap), Early 2000s (increased memory, more processing power, filesystem) to where we are today (multimedia, desktop/mobile convergence, full blown OS support)</li>\r\n\r\n<li> Object Oriented programming and Embedded Systems: Are OO languages inefficient on embedded systems ?</li>\r\n\r\n<li> Component Based Software Architecture: Introduction, overview and advantages. (this part will be the main focus of the presentation). Will have code snippets in C++ to better explain various concepts.</li>\r\n</ul>\r\n\r\n<p>\r\nTarget Audience:\r\n\r\n3rd/4th year Comp Sci and Info Sys students.\r\n', 25, '', '/unb/forum.php?req=thread&id=20', NULL, '', ''),
(29, '2006-09-24 10:00:00', 'MeE', 'SPC with Autocorrelated Process Data', 'With a brief introduction to statistical process control, the talk aims to discuss challenges faced while monitoring autocorrelated process and will introduce techniques for setting up monitoring schemes for the same.\r\n<p>\r\nPre-requisites: A basic course in probability and statistics', 3, '', '/unb/forum.php?req=thread&id=21', NULL, '', ''),
(30, '2006-09-10 10:00:00', 'Bio', 'Regulatory T-cells and Autoimmunity', 'Naturally occurring Regulatory T-cells play a vital role in establishing tolerance to self constituents, with their dysfunction leading to Autoimmune pathology. Their ontogeny, signal transduction are the most popular area of Immunological research.  Understanding their function will aide the treatment of wide spectrum of diseases namely – Autoimmunity and Cancer.\r\nAll students with interest in Biology /Immunology are encouraged to attend.\r\n<p>\r\nPrerequisites: Basics in Immunology will be helpful', 29, '', '/unb/forum.php?req=thread&id=22', NULL, '', ''),
(31, '2006-03-19 19:00:00', 'Gen', 'Power of the BITSAA Network for the BITSian Entrepreneur', 'Leverage the BITSAA network to create a forum for\r\n<ul>\r\n<li>Inspiring and training the next generation of BITSian Entrepreneurs\r\n<li>Finding business partners, advisors and investors\r\n<li>Tapping into BITSian talent \r\n<li>Providing investment opportunities\r\n</ul>', 30, '', '/unb/forum.php?req=thread&id=23', NULL, '', ''),
(32, NULL, 'MeE', 'Multivariate Control Charts', NULL, 3, '', NULL, '1', '', ''),
(33, '2006-11-19 09:00:00', 'MeE', 'Design of Experiments - Part 2', NULL, 3, '', '/unb/forum.php?req=thread&id=24', NULL, '', ''),
(34, '2006-09-23 16:00:00', 'Bio', 'Mechanisms of Activation of Immune cell receptors', 'T cells and B cells are the main arms of the adaptive immune system in the body’s response to foreign pathogen invasion. The T cell antigen receptor (TCR) and the B cell antigen receptor (BCR) recognize foreign antigens, triggering signaling cascades with multiple outcomes, depending on the antigen. How these receptors transduce an extracellular ligand-binding event into intracellular signals is not clearly understood. I will discuss the different models of signal initiation by these receptors, with a focus on the structure of the TCR as a means to understanding its activation.\r\n<p>\r\nAll students with interest in Biology /Immunology are encouraged to attend.\r\n', 31, '', '/unb/forum.php?req=thread&id=25', NULL, '', ''),
(35, NULL, 'Bio', 'Signal Transduction and B-Cell Receptors', NULL, 32, '', NULL, '1', '', ''),
(36, '2006-11-25 08:30:00', 'Bio', 'Cost-effectiveness analysis using Markov modeling', 'Cost-effectiveness analysis (CEA), one of the mostly used study designs in Pharmacoeconomics. Markov modeling is commonly used to evaluate the impact of competing health care technologies including prescription drugs. This presentation is aimed at understanding.\r\n<li>What is Markov modeling and why do we need it?\r\n<li> What are some of the important concepts around Markov modeling?\r\n<li> How do we apply Markov modeling to answer research questions?\r\n<p>\r\nThis talk aims at acquainting the students interested in pursuing research/career in Pharmacy Practice, Pharmacoeconomics, Health Economics with research going on in this area.\r\nAll students with interest in Pharmacy, Management, Computer science, Biological sciences are encouraged to attend.\r\n', 34, '', '/unb/forum.php?req=thread&id=26', NULL, '', ''),
(37, '2007-02-02 18:00:00', 'Gen', 'Grass Root Entrepreneurship (key elements) ', '<ul>\r\n<li>Current Scenario:\r\n         The next twenty years are the most crucial of India. Opportunities are bright for entrepreneurs (Indians especially). The envirnment is most conducive to give yourself the best. No point compromising for 20k, 40k or 50k per month.\r\n<li>My experiences as a beginner\r\n</ul>', 35, '', '/unb/forum.php?req=thread&id=27', NULL, '', ''),
(38, '2007-02-10 19:30:00', 'Gen', 'Overseas MBA – Why ?', 'The talk will cover the following topics :\r\n<ul>\r\n<li>Why should you consider doing a MBA abroad ?</li>\r\n<li>The differences between indian and foreign business schools.</li>\r\n<li>Information about top B schools.</li>\r\n<li>Different ways to prepare your MBA profile.</li> </ul>', 36, '', '/unb/forum.php?req=thread&id=28', NULL, '', ''),
(39, '2007-02-11 19:30:00', 'Gen', 'Overseas MBA - How ?', 'The talk will cover the following topics :\r\n<ul>\r\n<li>How to prepare for an abroad MBA ?</li>\r\n<li> What to do on campus ? </li>\r\n<li> What to do off campus (professional career) ? </li>\r\n</ul>', 37, '', '/unb/forum.php?req=thread&id=29', NULL, '', ''),
(40, '2007-02-11 20:15:00', 'Gen', 'The MBA experience', 'MBA is a totally different experience. This talk will discuss the life\r\nduring a MBA. It will also cover the different opportunities and options\r\navailable after a MBA.', 38, '', '/unb/forum.php?req=thread&id=30', NULL, '', ''),
(41, NULL, 'Bio', 'Stem Cell Epigenetics', 'This lecture will cover epigenetic controls in pluripotent stem cells – DNA and chromatin dynamics; X-chromosome inactivation and genomic imprinting in stem cell as well as  epigenetic reprogramming during somatic nuclear cell transfer and its implications for therapeutic cloning.', 33, '', NULL, '1', '', ''),
(42, '2007-03-16 17:30:00', 'Bio', 'Inside the Animal Cell Culture Laboratory', 'This lecture will cover the routine techniques used in an animal cell culture laboratory, using plenty of pictorial aids.  The aim is to give a virtual tour of the laboratory so that students who do not currently have access to one can get benefited.', 33, '', '/unb/forum.php?req=thread&id=31', NULL, '', ''),
(43, NULL, 'Bio', 'Genetic Engineering from the book to the bench', 'This talk is intended for those who are interested to know how the theoretical concepts learnt in textbooks can and actually do translate into technological aids for molecular biology research.  Some concepts to be covered include: Enzymes for better PCR; quick and easy cloning; transposon-based sequencing; recombineering.\r\n', 33, '', NULL, '1', '', ''),
(44, '2007-03-11 10:00:00', 'CiE', 'San Francisco Bay : Fluid Mechanics, Water Resources and Ecology', 'The initial part of the lecture will be given by Dr. Stephen G. Monismith ((PhD, University of California, Berkeley; PDF, University of Western\r\nAustralia). The talk will focus on several ecological and environmental issues pertaining to the effects of water resources use on the ecology of the San Francisco Bay. Several key concepts pertaining to the role of Fluid Mechanics in the environment will be introduced to the students. The lecture will also underline the need for understanding fundamental issues related to hydrology and fluid mechanics in order to develop strategies for environmental sustainability.', 39, '', '/unb/forum.php?req=thread&id=32', NULL, '', ''),
(45, '2007-03-24 11:00:00', 'ChE', 'Performance Analysis and Trouble Shooting Of Industrial Process Control Loops.', '', 40, '', '/unb/forum.php?req=thread&id=33', NULL, '', ''),
(46, '2007-02-03 17:15:00', 'Gen', 'Wall Street Club : Start Off Lecture', '', 41, '', '/unb/forum.php?req=thread&id=34', NULL, '', ''),
(47, '2007-02-10 16:50:00', 'Gen', 'Finance as a Career Option', NULL, 42, '', '/unb/forum.php?req=thread&id=35', NULL, '', ''),
(48, '2007-03-30 20:00:00', 'Gen', ' Journey from BITS to the zenith of corporate excellence ', 'Vivek Paul takes a walk down memory lane , with an interactive session with the students of BITS, Pilani, covering anything and everything. Organised in collaboration with Wall Street Club, BITS , Pilani', 43, '', '/unb/forum.php?req=thread&id=36', NULL, '', ''),
(49, '2007-04-02 19:30:00', 'Bio', 'The Mysteries of Plant Biochemistry ', 'The rhizosphere encompasses the millimeters of soil surrounding a plant root where complex biological and ecological processes occur. The work presented through the talk will describe the recent advances in elucidating the role of root exudates in interactions between plant roots and other plants, microbes, and nematodes present in the rhizosphere. Evidence indicating that root exudates may take part in the biochemical and cellular signaling events that initiate the execution of these interactions will also be discussed. Various positive and negative plant-plant and plant-microbe interactions will be highlighted and described from the molecular to the ecosystem scale.', 44, '', '/unb/forum.php?req=thread&id=37', NULL, '', ''),
(50, '2007-03-15 21:00:00', 'Gen', 'Entrepreneurship-Food for thought', NULL, 45, '', '/unb/forum.php?req=thread&id=38', NULL, '', ''),
(51, '2008-10-10 17:00:00', 'Chem/Bio/Pharma', 'Flow Cytometry and its application to medical diagnostics', 'Flow cytometry is a technology that simultaneously measures and then analyzes multiple physical characteristics of single particles, usually cells, as they flow in a fluid stream through a beam of light. The properties measured include a particle’s relative size, relative granularity or internal complexity, and relative fluorescence intensity. These characteristics are determined using an optical-to-electronic coupling system that records how the cell or particle scatters incident laser light and emits fluorescence. This technology is being used extensively in research and is the gold-standard for several critical diagnostic applications.  One such application is the enumeration of CD4+ T-Lymphocyte cells. These cells are a surrogate marker to monitor the progression of HIV infection. The objective of this talk is to provide a high-level introduction to flow cytometry and discuss the application of this technique in the enumeration of CD4+ cells.', 82, '', NULL, NULL, 'Pilani', ''),
(52, '2007-04-05 19:00:00', 'Gen', 'Hedge Funds: The 700 billion dollar industry', '', 47, '', '/unb/forum.php?req=thread&id=39', NULL, '', ''),
(53, '2007-04-17 20:00:00', 'ChE', 'Antibody Based Therapeutics and Applications', 'Antibodies play a very important role in the immune system. Their properties can also be exploited for therapeutic purposes. The talk will cover using antibodies and scFv''s as therapeutics and some of the "protein engineering" strategies that can be applied to "tune" their properties. It will also cover the applications of these therapeutics and some basic techniques used to develop the same.', 48, '', '/unb/forum.php?req=thread&id=40', NULL, '', ''),
(54, '2007-04-25 21:30:00', 'Gen', 'Core Values in building a sustainable business', NULL, 49, '', '/unb/forum.php?req=thread&id=41', NULL, '', ''),
(55, '2007-04-22 21:00:00', 'Gen', 'Building micro-multinationals', 'In a connected business world of today, entrepreneurs are leveraging technology to build successful small companies which do global business. These are Micro-Multinationals and they could be started from any location in the world. The talk will discuss the characteristics of such companies and what it takes to build a successful Micro-Multinational.', 50, '', '/unb/forum.php?req=thread&id=42', NULL, '', ''),
(56, '2007-08-19 10:30:00', 'CiE', 'Geographical Information Systems (GIS) and Network Analysis', 'Networks form a back bone of many infrastructures in our society. We commute from one place to another using transportation network. We communicate with each other using telecommunications network. This talk will focus on how such geo-spatial networks are represented in a Geographical Information Systems (GIS). The talk will focus about data modeling that enables the representation of such networks with in a GIS. \r\nIt will be very beneficial for people having background in Civil Engineering, Computer Science, Graphs and Theory and Optimization', 51, '', '/unb/forum.php?req=thread&id=43', NULL, '', ''),
(57, '2007-09-09 10:30:00', 'Gen', 'Apping guidelines and fundamental Q&A on apping', 'This talk will cover all the information you need for applying to MS/PHD programs abroad.  You can ask you questions to a team of BITSians who have been there , done that. Target Audience is students who are apping this year.', 52, '', '/unb/forum.php?req=thread&id=44', NULL, '5102-Pilani', ''),
(58, '2007-09-08 18:00:00', 'ChE', 'Computational approach to Catalysis', 'Density Functional Theory (DFT) calculations serve as a useful tool to understand the atomic and molecular structure and properties, as well as chemical reactivity on well-defined catalytic surfaces. They help to elucidate the mechanisms of complex chemical transformations and also to identify new reaction intermediates. Recently, these\r\ncalculations have also started to play an important role in the design of new and improved heterogeneous catalysts. This talk will first introduce some key concepts in DFT calculations. The synergism of DFT calculations, experiments, and microkinetic modeling for achieving better understanding of catalytic systems will then be described through examples of reactions related to hydrogen chemistry.', 53, '', '/unb/forum.php?req=thread&id=46', NULL, '5103-Pilani', ''),
(59, '2007-09-07 18:30:00', 'CS-IS', 'Career options, Changing trends,Emerging Areas in CS and IS related fields', NULL, 54, '', '/unb/forum.php?req=thread&id=47', NULL, 'Goa', ''),
(60, '2007-08-20 21:30:00', 'Gen', 'Core Values in Building a Sustainable\r\nBusiness', NULL, 49, '', '/unb/forum.php?req=thread&id=41', NULL, 'Goa', ''),
(61, '2007-04-22 20:00:00', 'Gen', 'Apping for M.S./PhD.', NULL, 55, '', '/unb/forum.php?req=thread&id=48', NULL, 'Goa', ''),
(62, '2007-04-14 20:00:00', 'Gen', 'Placements & Journey from BITS to BCG', NULL, 56, '', '/unb/forum.php?req=thread&id=49', NULL, 'Goa', ''),
(63, '2007-04-13 20:00:00', 'Gen', 'Demystifying the Common Admission\r\nTest(CAT)', NULL, 57, '', '/unb/forum.php?req=thread&id=50', NULL, 'Goa', ''),
(64, '2007-03-28 18:00:00', 'CS-IS/EEE-E&I', 'Programmable Software on Chip(PSOC)', NULL, 58, '', '/unb/forum.php?req=thread&id=51', NULL, 'Goa', ''),
(65, '2007-09-29 17:00:00', 'CiE', 'Traffic Engineering: Congestion Relief', 'Fueled by rapid economic development and  population explosion the demand for transportation has seen a steady upward surge over the last few decades. Construction of new highway capacity to accomodate this growth has not kept up pace resulting in a congested and over burdened transportation network.  \r\nIn 2003, it was estimated that the 85 largest metropolitan areas of the US experienced 3.7 billion vehicle-hours of delay, resulting in 2.3 billion gallons in wasted fuel and a congestion cost of $63 billion. Under these circumstances, what are some of the innovative techniques available to a transportation planner or traffic engineer? What are the lessons learnt so far? This talk will try to answer some of those questions. The speaker will also take questions regarding career options in the field of transportation \r\nengineering after the talk.', 61, '', '/unb/forum.php?req=thread&id=52', NULL, 'Pilani', ''),
(66, '2007-10-29 20:30:00', 'Gen', 'Entrepreneurship Part 1: Dream Big: Visualize and Realize!', 'This is the first talk of a five talk series on Entrepreneurship at BITS Embryo. This series will talk about all aspect of entrepreneurship from creating and leading an organisation to marketing and services to finally end on exit strategies. This series is a must attend for all budding entrepreneurs.', 64, '', '/unb/forum.php?req=thread&postid=67', NULL, '5105-Pilani', ''),
(67, '2007-11-02 20:30:00', 'Gen', 'Entrepreneurship Part 2: How and Where to Start?', 'This is the second talk of a five talk series on Entrepreneurship at BITS Embryo. This series is a must attend for all budding entrepreneurs.', 64, '', '/unb/forum.php?req=thread&postid=67', NULL, '', ''),
(68, '2007-11-23 20:30:00', 'Gen', 'Entrepreneurship Part 3: Development of Product / Services', 'This is the third talk of a five talk series on Entrepreneurship at BITS Embryo. This series will talk about all aspect of entrepreneurship from creating and leading an organisation to marketing and services to finally end on exit strategies. This series is a must attend for all budding entrepreneurs.\r\n', 64, '', '/unb/forum.php?req=thread&postid=67', NULL, '', ''),
(69, '2008-03-28 19:30:00', 'Gen', 'Entrepreneurship Part 4: Marketing and Product / Services Launch', 'This is the fourth talk of a five talk series on Entrepreneurship at BITS Embryo. This series will talk about all aspect of entrepreneurship from creating and leading an organisation to marketing and services to finally end on exit strategies. This series is a must attend for all budding entrepreneurs.\r\n', 64, '', '/unb/forum.php?req=thread&postid=67', NULL, '5106 Pilani', ''),
(70, '2008-04-13 20:30:00', 'Gen', 'Entrepreneurship Part 5: Growing the business and Exit Strategy', 'This is the fifth talk of a five talk series on Entrepreneurship at BITS Embryo. This series will talk about all aspect of entrepreneurship from creating and leading an organisation to marketing and services to finally end on exit strategies. This series is a must attend for all budding entrepreneurs.\r\n', 64, '', '/unb/forum.php?req=thread&postid=67', NULL, '', ''),
(71, '2007-11-04 10:30:00', 'Gen', 'Remote Sensing At Its Extreme : The Interdisciplinary Nature of Observational Radio Astronomy\r\n\r\n \r\n', 'The lecture aims at answering the following questions:\r\n<ul><li>\r\nWhat is Radio Astronomy?<li>\r\nWhat are the latest instruments in use?<li>\r\nWhat goes into making them work?<li>\r\nWhat are the technical challenges?\r\n</ul>', 66, '', NULL, NULL, '5106 - Pilani', ''),
(72, '2008-01-27 19:00:00', 'Phy', ' A Primer on Gravitational Wave Astrophysics', 'Gravitational waves are the bold prediction of Einstein''s theory of General Relativity. They are produced as a result of the dynamics of massive bodies such as black holes and neutron stars. They are ripples in spacetime that carry energy, momentum and a tremendous amount of information about the source. This talk will present an introductory background and the usefulness of gravitational waves. We will also discuss current efforts to detect these waves and the open problems present in this emerging area of astrophysics.', 67, '', NULL, NULL, '5104 - Pilani', ''),
(73, '2008-03-29 17:00:00', 'Phy', 'Physics and Astrophysics using Neutrinos', '<p>Neutrinos, "the most tiny quantity of reality ever imagined by a human being", as quoted by its co-discoverer Fedrik Reines, never ceased to puzzle physicists. Wolfgang Pauli introduced neutrino in 1930 as a desperate remedy to save the "Law of Conservation of Energy". It then took twenty seven long years to find the first experimental evidence for its existence. The reason for this long wait is its extreme reluctance to interact with matter. Over the last several decades, dedicated neutrino experiments around the globe have looked for neutrinos from the sun, from outer space, from interior of the earth and from man made activities. These experiments have answered many of the questions related to particle physics, astrophysics and even geophysics.\r\n<p>In this talk the speaker will describe few of these experiments and their findings. He will also discuss the INO experiment and its physics ', 68, '', NULL, NULL, '5101 Pilani', ''),
(74, '2008-03-02 10:30:00', 'Gen', 'Investing Series Part I - Private Equity', NULL, 69, '', NULL, NULL, '5106 Pilani', ''),
(75, '2008-03-08 19:30:00', 'Gen', 'Investing Series Part II - Derivatives and Structured Products', NULL, 70, '', NULL, NULL, '5105 Pilani', ''),
(76, '2008-03-29 19:30:00', 'EEE-E&I', 'Feedback: Various Feedback topologies, Effect of feedback on noise, Distortion - Part I', NULL, 71, '', NULL, NULL, 'LTC Pilani', ''),
(77, '2008-03-30 10:00:00', 'EEE-E&I', 'Feedback: Various Feedback topologies, Effect of feedback on noise, Distortion - Part 2', NULL, 71, '', NULL, NULL, 'LTC Pilani', ''),
(78, '2008-04-05 19:30:00', 'EEE-E&I', 'Stability, Compensation', NULL, 71, '', NULL, NULL, 'LTC Pilani', ''),
(79, '2008-04-06 10:00:00', 'EEE-E&I', 'Stability ,Compensation', NULL, 71, '', NULL, NULL, 'LTC Pilani', ''),
(80, '2008-08-24 18:00:00', 'Gen', 'BITS TO MS-PhD: Talk on Apping Guidelines', NULL, 72, '', NULL, NULL, '5101 Pilani', ''),
(81, '2008-09-20 17:00:00', 'Gen', 'Financial Well Being of Young Adults', 'The talk deals with various facets of handling one''s own finances such as personal wealth management, risk management and investment, with focus being on the financial capability of young adults like various on-campus BITS students.', 74, '', NULL, NULL, '5105 Pilani', ''),
(82, '2008-08-21 18:00:00', 'EEE-E&I', 'Wireless Data Networks', '', 75, '', '', '1', 'Room : 5105', 'Pilani'),
(83, '2008-09-30 18:00:00', 'MeE', 'Modal Analysis, Theory, Experiments and Applications in New Product Development', 'This talk is directed at all Mechanical Engineering students as well as faculty. The topic in general is also of relevance to Civil engineers.', 76, '', NULL, NULL, '5103 Pilani', ''),
(84, '2008-09-28 11:00:00', 'Gen', 'Information Technology and Competitive Advantage', 'Information Technology is all pervasive today. Irrespective of the industry, IT is used extensively by companies to give them an edge over their competitors. This lecture, which will be of interest to all students - Management students and also Technology students, will explain how the usage of IT has evolved in Corporations and will bring out with examples how companies use IT for competitive advantage.', 77, '', NULL, NULL, '5104 Pilani', ''),
(85, '2008-10-05 17:00:00', 'CS-IS', 'Career Opportunities in Computer Graphics', 'In this talk, the Speaker covers areas such as animation, visual effects and gaming, while giving a overview of the skillsets and career options in computer graphics.', 78, '', NULL, NULL, '5103 Pilani', ''),
(86, '2008-10-07 17:00:00', 'Gen', 'How to get into Top B-Schools', 'Though a handful graduates a decade ago, BITSians getting into top B-schools is on a rise during the past few years. MBA, considered the final immersive education experience for professionals, thrusts upon us an imperative and final chance to aim for the best institution that delivers the degree. The session aims at understanding what an MBA degree from a reputed Institution means, what the top B-schools look in a candidate, how to target such schools and finally his personal experiences.', 79, '', NULL, NULL, '5103 Pilani', ''),
(87, '2008-10-09 18:00:00', 'CS-IS/EEE-E&I/Bio', 'An Introduction to Brain and Cognitive Science', '<p>Disclaimer: This will NOT be an anatomy lecture!<p>\r\nI will try answer a few of the following questions in my talk:<br/>\r\n1. What do we know, for sure, about the brain ?<br/>\r\n2. What do we not know yet ?<br/>\r\n3. How can we find out more about the brain ?<br/>\r\n4. What are the techniques used to find out more about the brain ?<br/>\r\n5. Why study the brain ?<p>\r\nAlso,<br/>\r\n1. How did I make a transfer from engineering to brain science ?<br/>\r\n2. What is the role for engineers, mathematicians, physicists and\r\nbiologists in this discipline ?<br/>\r\n3. What do I do in my research ?', 81, '', NULL, NULL, 'Pilani', ''),
(88, '2008-10-11 18:00:00', 'Gen', 'Demystifying Marketing''s Role in an Enterprise', 'Marketing is a one the key functions in the success of a firm and yet many have a hard time answering the question - "What is marketing?". Whether you are in engineering, operations, finance or sales it is very important to understand the role of marketing in your firm. This introductory lecture is designed to show how marketing helps create and enhance the value of a firm''s product or service and to sell it to a buyer (customer) in exchange for substantial profits to the firm.', 83, '', NULL, NULL, '5103 , BITS Pilani', ''),
(89, '2008-11-05 17:00:00', 'Gen', 'Consumer Psychology', NULL, 84, '', NULL, NULL, 'LTC 5103', ''),
(90, '2008-11-14 20:00:00', 'ChE', 'Computational surface science and Catalysis', NULL, 85, '', NULL, NULL, '', ''),
(91, '2008-10-31 20:00:00', 'Phy/Math/EEE-E&I', 'Excitement of current Solar Physics research', 'Sun is the nearest star that delivers energy to sustain life on\r\nEarth. Telescopes and instruments have been made to study Sun in various\r\nways so that we can learn about its chemical composition and the physical\r\nprocesses that go on.  Sun is a unique laboratory with which we are able\r\nto study nuclear fusion reactions, thermodynamics and magneto hydrodynamic\r\n(MHD) processes that can not be so easily duplicated on earth. Recent\r\nfindings reveal that magnetic field plays a central role in determining\r\nthe features on sun. Future research holds the promise for enhancing our\r\nunderstanding of the MHD engine that is operating on Sun.', 86, '', NULL, NULL, '', ''),
(92, '2008-11-12 21:00:00', 'Gen', 'The Mechanics of MBA Admissions', 'About BITS2BSchool:\r\n\r\nWe are a 1,900-strong group of BITS Pilani alumni who have set our\r\nsights on MBA degrees from the world''s leading business schools. In\r\nthe first year of existence, BITS2BSchool helped raise total admits to\r\nthe worlds'' top b-schools by 50% in 2005, and hit a new admit record\r\nin 2006. We continue to assist prospective applicants by way of\r\ndiscussion forums, lecture series and application tips.We welcome all BITSians who wants to master the admissions process and\r\nget a coveted seat in their dream business school. This is valid for\r\nthose applying to ISB, as well as IIM-A PGPX program since it uses the\r\nGMAT, and an Essay/GMAT application process.When you get waitlisted, or go for an interview, or are choosing\r\nbetween schools, we will as a group, advise you and help you along the\r\nway.', 36, '', NULL, NULL, 'BITS-Pilani , Pilani Campus\r\nBITS-Pilani ,Goa Campus\r\nBITS-Pilani ,Dubai Campus', ''),
(93, '2009-02-01 10:00:00', 'Gen', 'Career choice in sales', 'Does it really make a difference? It does. Life is mostly about sales, you have to sell your skills when interviewing for a job, once in a job you need to sell what you did  that year during the appraisals to get on top of the ladder; once on\r\nthe top you need to sell your product to your customers. If you have  your own company, you need to be the best salesperson of the company.How do you do that, is it just about selling, is it about networking?  To discuss more about the sales dynamics please join Mr Sudip Dutta  for the session.', 88, '', NULL, NULL, '5106', 'Pilani'),
(94, '2009-02-21 18:30:00', 'Gen', 'Why Germany for Higher Studies?', 'Sub topics, dealt with during the session:-\r\n\r\n  1. Intro : Germany, University System, German people\r\n  2. Pros and Cons about Germany as a higher study destination with respect\r\n  to : Finances, Technology, Academics,Cultural\r\n  3. Pre requisites for study\r\n  4. Short term and long term future in Germany\r\n  5. Work life balance\r\n  6. Importance of the german language\r\n  7. Germany is not the USA : How does it compare\r\n  8. Who should NOT come to Germany?\r\n  9. Other misc topics of interest : racism, social life etc ', 89, '', NULL, NULL, 'BITS-Pilani, Goa Campus (LC 101)', 'Goa'),
(95, '2009-02-25 20:00:00', 'Math/Bio', 'Mathematical and Computational Modeling of Biological and Bio-inspired systems', 'Abstract of the lecture:<br>\r\n1.A multidisciplinary talk involving various aspects of modeling in Biological systems and Bio-Inspired systems.<br>\r\n2.A brief introduction to some of the important Modeling problems and ways of tackling them<br>\r\n3.Opportunities in Mathematical Modeling at George Mason University<br>', 90, '', NULL, NULL, 'Pilani', 'Pilani'),
(96, '2009-03-20 17:30:00', 'CS-IS', 'Data Storage Techniques and Networks', 'This lecture covers such areas of data storage techniques and networks like file systems, storage subsystems, storage virtualization and data redundancy.', 92, '', NULL, NULL, '5105 Pilani', 'Pilani'),
(97, '2009-03-13 19:00:00', 'CS-IS', 'Computer Graphics - Art Meets Technology', 'Sub topics dealt with:-\r\n-Career in CG\r\n-The basics of CG\r\n-CG implementation for Animation\r\n-CG implementation for Gaming\r\n-Skill sets\r\n-Job description', 93, '', NULL, NULL, 'BITS-Pilani, Goa Campus', 'Pilani'),
(98, '2009-04-06 19:00:00', 'CS-IS', 'Interactive Session on Computer Networking', 'An interactive Q/A session on computer networking. Several queries ranging from OSI model to inter-disciplinary work being carried out in the field of networking and more were addressed. Students gained in-sights into the latest areas of research in the same fields.', 94, '', NULL, NULL, 'LC 101 (Goa Campus)', 'Goa'),
(99, '2009-01-15 18:00:00', 'Phy', 'Remote Sensing Techniques', 'A basic informative session on the ongoing research in the field of remote sensing. The topic was dealt with, in a way to make it comprehendable to students of all years, disciplines and enthusiasts.', 95, '', NULL, NULL, 'LC 101 (Goa Campus)', 'Goa'),
(100, '2009-09-09 20:00:00', 'ChE', 'Crude Unit - An Overview\r\n\r\n', 'The growing energy demand and declining crude quality have brought\r\nseveral issues in refining to the fore. The crude unit is the first\r\nimportant unit process in a refinery. This talk covers the current\r\nglobal situation in crude oil availability and the drivers of crude oil\r\nprocessing such as crude quality. It will also address crude unit\r\noperation and cover some of the common issues encountered in crude oil\r\nprocessing namely salt separation, fouling and corrosion. The intended\r\naudience is people interested in developing a basic understanding of\r\ncrude unit operations. The talk will also cover a case study in\r\ncorrosion. The talk is intended to give a flavor of these concepts and\r\nwill not delve into technical details of how to optimize operation of a\r\ncrude unit or the functioning of other units in a refinery.', 96, '', NULL, NULL, '', 'Pilani'),
(101, '2009-10-15 17:00:00', 'Gen', 'PERSONAL WEALTH CREATION AND RISK MANAGEMENT (PWCRM)', 'The presentation “PERSONAL WEALTH CREATION AND RISK MANAGEMENT (PWCRM)” covers:\r\n1. Creating avenues of passive income through investment in Real\r\nEstate, Stock Market, Mutual Funds, etc.\r\n2. Creating wealth in a Tax Efficient manner\r\n3. Managing the avenues of passive income created\r\n4. Understanding the financial and other risks associated with various\r\ntypes of investment.\r\n5. Consolidating gains and striving for higher levels of success.\r\n6. Covering the personal risks that each person is exposed to so that\r\nthey emerge victorious even in the worst case scenario.', 74, '', NULL, NULL, '5104', 'Pilani'),
(102, '2009-10-21 20:00:00', 'ChE', 'CFD Applications in Engineering', 'Computational Fluid Dynamics Applications in Engineering', 97, '', NULL, NULL, 'LTC 5101', 'Pilani'),
(103, '2010-01-10 11:00:00', 'Gen', 'Online ads - Driving Innovations in Technology & Business', 'The talk will first cover business model of online ads and then take you through details of technology in the ad serving engine. This is a high level talk and no prior knowledge of computer science or economics is needed.\r\n\r\n ', 98, '', NULL, NULL, '5106 LTC', 'Pilani'),
(104, '2009-08-08 13:24:29', 'Gen', 'Starting Off After College', 'Shashikant, speaking from the United States, in a online lecture setup by the embryo group of BITS Pilani, started off by speaking about dreams. "Dream and dream big" he said, while illustrating how he started his first big venture. He smoothly shifted to talking about the importance of knowledge, "Knowledge is Power", he quoted the slogan of BITS Pilani. He also informed the audience that knowledge could also be dangerous sometimes, as knowing how hard it is to do something , could dissuade one from even trying - "Ignorance is bliss". (Organized by CEL, BITS Pilani and facilitated by BITS Embryo)', 1, '', NULL, NULL, 'LTC', 'Pilani'),
(105, '2010-03-18 01:08:24', 'Bio', 'Confluence of Medicine and Biology', NULL, 99, '', NULL, NULL, 'BITS-Pilani, Goa Campus', 'Goa'),
(106, '2010-04-05 18:00:00', 'Gen', 'Personal Wealth Creation and Risk Management', NULL, 74, '', NULL, NULL, 'BITS Pilani, Goa Campus', 'Goa'),
(107, '2010-04-08 18:00:00', 'Bio', 'Opportunities in Life Sciences – Ideas to Implement', '', 100, '', NULL, NULL, 'BITS Pilani, Goa Campus', 'Goa'),
(108, '2010-08-27 18:00:00', 'CS-IS', 'Starting a Web 2.0 Startup using Open Source technologies', NULL, 15, '', NULL, NULL, 'BITS Pilani,Goa campus', 'Goa'),
(109, '2010-09-24 18:15:00', 'Gen', 'How to get into the Best universities across the World', NULL, 101, '', NULL, NULL, 'BITS Pilani,Goa campus', 'Goa'),
(110, '2010-10-03 21:00:00', 'Gen', 'MS/PhD - A Primer on Applying for Graduate Studies', 'Soumyadeep Ghosh(2006A7PS018P) 2010-BITS Pilani Pass-out  is currently pursuing his PhD at Princeton University. He holds interests in Computer Systems - Compilers and Operating Systems, Parallel Computing', 102, '/Speakerphotos/SG.jpg', NULL, NULL, 'LTC 5102', 'Pilani');
INSERT INTO `lectures` (`id`, `date`, `discipline`, `topic`, `moreinfo`, `presenter_id`, `photo`, `discussion`, `allowed`, `venue`, `campus`) VALUES
(111, '2010-10-16 14:00:00', 'MeE', 'KFP A unique solution to water crisis.', 'KFP (Patented) can provide Ample water to \r\nAgriculture fields & thirsty Villages of India at a very Low cost & simultaneously \r\nreduce our Environmental  Footprint.', 103, '/Speakerphotos/kedia.jpg', NULL, NULL, 'LTC 5101', 'Pilani'),
(112, '2011-01-30 18:00:00', 'EEE-E&I', 'Computer Architecture: an Insight into the Fundamentals', 'Computer Architecture is a complex discipline blending the intricate knowledge of\r\nelectronics [VLSI circuit design] with higher abstraction of computer science [Operating\r\nSystems with parallel computing]. This talk is intended to highlight the importance of this\r\ndiscipline and future research trends both at Stanford University and the current industry.\r\nThe main objective is to clearly illustrate the basics of any processor: parallelism,\r\npipelining, indirection, amortization, out of order processing, implicitness of Amdahl’s\r\nlaw, multi core along with their application in solving complex architectural issues.\r\nFurthermore, architectural models like Superscalar, Deep Pipeline, GPU, SIMD will\r\nbe touched on during the course of the talk. A small section at the end is dedicated\r\nto explaining practical synthesis issues in VERILOG coding and common blunders\r\ncommitted by higher level programmers. ', 116, '/Speakerphotos/karthika.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(113, '2010-09-24 21:00:00', 'Bio', 'Changing the Point..', 'The talk initially put light upon the condition of Syringe use in developing countries like India and even in developed countries like China. It also highlighted many social aspects involved. It later focused on the the solution that Marc finally arrived at after a great struggle : The disposable Syringe', 105, '/Speakerphotos/koska.jpg', NULL, NULL, 'LTC 5101', 'Pilani'),
(114, '2010-09-26 21:00:00', 'Bio', 'Is smell a quantum phenomenon?', NULL, 106, '', NULL, NULL, 'LTC 5101-Pilani', 'Pilani'),
(115, '2010-09-18 21:00:00', 'Bio', 'Molecular basis of Amyloid diseases', 'The lecture featured in detailed the Molecular basis of Amyloid Diseases', 107, '', NULL, NULL, '', 'Pilani'),
(116, '2010-09-17 20:30:00', 'Gen', 'A talk on Hadoop Map Reduce by Madhur Khandelwal', 'The talk focused on general introduction on Hadoop and Map Reduce Techniques', 108, '', NULL, NULL, '', 'Pilani'),
(117, '2010-11-09 15:00:00', 'Gen', 'Optimal Decision Making in Real Time', 'The talk centred on the following:\r\n<ul>\r\n<li>Effective retail management systems</li>\r\n<li>Merchandise optimisation (Inventory  management)</li>\r\n<li>Customer relationship management</li>\r\n<li>Supply chain management</li>\r\n</ul>', 109, '/Speakerphotos/subhash.jpg', NULL, NULL, 'LTC 5103 Pilani', 'Pilani'),
(118, '2010-11-10 18:00:00', 'Gen', 'Change Your Life', 'The Talked focussed on:\r\n·Communication skills\r\n·Mindset development\r\n·High EQ – A competitive advantage\r\n·Tips for GD, interviews\r\n·Group dynamics', 110, '', NULL, NULL, 'LTC 5101 Pilani', 'Pilani'),
(119, '2010-11-15 18:00:00', 'EEE-E&I', 'Singlet exciton fission in Organic Semiconductor Photovoltaics', 'Stacked multijunction organic solar cells exhibit higher efficiencies\r\nthan devices with a single active layer. But each cell in the multijunction\r\nmust satisfy current matching constraints, and the complete device can be challenging to fabricate, especially using solution-processing. Here, we\r\ndemonstrate that singlet exciton fission in organic molecules promises single-layer organic solar cells with efficiencies beyond the single junction\r\nlimit. We report solar cells comprised of tetracene, copper phthalocyanine and\r\nthe buckyball C60. Short wavelength light generates singlet excitons in\r\ntetracene. These are subsequently split into two triplet excitons and transported to the junction via the phthalocyanine. In addition, the\r\nphthalocyanine contributes to the photocurrent by absorbing longer wavelengths.We measure a singlet fission efficiency of (71±18)% in 2-nm-thick films of tetracene, and comparable singlet fission efficiencies in tetracene-C60 blends,demonstrating that exciton fission is compatible with blended, single-layer devices, and potentially enabling low cost, higher efficiency organic solar cells.', 111, '/Speakerphotos/priya.jpg', NULL, NULL, 'LTC 5101', 'Pilani'),
(120, '2011-01-29 16:30:00', 'Phy', 'Molecular Motors: Marvellous Nanomachines of Nature', 'Molecular motors are remarkable proteins designed by nature. Some of them use energy from electrical gradients to make ATP, while others actually “walk” around inside cells of your body using the same ATP as an energy source. They are essential for every conceivable biological process, and therefore for us to be alive. These machines generate tiny pico-Newton forces to do work on the scale of nanometers. There is tremendous interest in unraveling the secrets of such robust nanomachines, and perhaps building some of our own in the future. The talk would also focus Dr Mallik''s recent experiments to measure the forces applied by these Motors inside living cells.', 117, '/Speakerphotos/roopmalik.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(121, '2011-03-01 20:00:00', 'Bio', 'Prospects for defeating Aging altogether', 'It may seem premature to be discussing the elimination of human aging as a\r\ncause of death, when so little progress has yet been made in even postponing\r\nit. However, two facts undermine this assessment. The first is that aging\r\nhappens throughout our lives but only causes ill-health after middle age:\r\nthis shows that we can postpone that ill-health without knowing how to\r\nprevent aging completely, but instead by molecular and cellular repair. The\r\nsecond is that the typical rate of subsequent, incremental refinement of big\r\ntechnological breakthroughs is usually fast enough (so long as public\r\nenthusiasm for them is strong) to change those technologies almost beyond\r\nrecognition within a natural human lifespan. In this talk I will explain,\r\nfirst, why therapies that can add 30 healthy years to the remaining lifespan\r\nof typical 60-year-olds may well arrive within the next few decades, and,\r\nsecond, why those who benefit from those therapies will very probably\r\ncontinue to benefit from progressively improved therapies indefinitely and\r\nwill thus avoid debilitation or death from age-related causes at any age.', 118, '/Speakerphotos/aubreydegrey.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(122, '2011-02-12 20:00:00', 'CS-IS', 'From Object Recognition to Object Categorisation - Trends in Image Search Techniques', 'The talk throws light on certain basic techniques of Image Processing and Recognition. The speaker shall also elaborate on some of the new\r\ntechniques in this arena that have become a part of his Research. Video Analysis and Content Extraction (VACE) alogorithms and Image Search Techniques \r\nare also a part of the lecture.', 119, '/Speakerphotos/IP.jpg', NULL, NULL, 'LTC 5103 ', 'Pilani'),
(123, '2011-02-19 20:00:00', 'Eco/Fin', 'Global Finance in the 21st Century: A Practitioner''s Perspective', 'Recent developments in the world of finance have left many established theories redundant, changed the rules of the game, and re-converted financial sector “experts” into “students”. In this dynamic and fluid context, this lecture will aim to introduce future leaders and participants of the financial world about some of the real-world applications of finance; help them better understand the various emerging financial paradigms in the wake of the global financial crisis; and last but not least, instill in them a sense of passion for the fascinating world of finance.', 120, '/Speakerphotos/finance.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(124, '2009-08-20 18:00:00', 'Gen', 'Bit by the Entrepreneurship Bug', '<ul>\r\n<li>Learning from failures</li>\r\n<li>Taking risks</li>\r\n<li>Any big problem is a big opportunity</li>\r\n</ul>\r\n', 130, '/Speakerphotos/vinodkhosla.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(125, '2009-08-25 18:00:00', 'Gen', 'Idea to Opportunity - Market Analysis & Segmentation', '<ul>\r\n<li>Idea vs. Opportunity</li>\r\n<li>Understanding target customer</li>\r\n<li>Identifying target markets and market segments</li>\r\n<li>Sizing your market</li>\r\n<li>Market analysis vs. marketing</li>\r\n</ul>', 131, '/Speakerphotos/prasannakrishnan.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(126, '2011-03-05 20:00:00', 'Gen', 'ABC of Design Engineering', '<p>Designers help conceive and shape products and services; they contribute hugely to the visual world around us; they create communications for organisations of all shapes and sizes; they influence how we use buildings and help improve our workspaces; they can contribute to building better public services or create more efficient working processes; they create the interfaces we use daily on digital devices; they help us digest information; they create the clothes you’re wearing and the chair you may be sitting on, the iPod or the mobile phone that you are using.</p>\r\n<p>So is design for you?</p>\r\n<p>How do you become a designer?</P>\r\n<p>Why design after engineering?</p>\r\n<p>Design and innovation the need of the decade.</p>\r\n<p>The talk will cover what design is all about (with specific reference to industrial design), what a designer does, which are the design schools in India for post-gradwork, and the future of design (specially in India). A couple of case studies will also be shown via the PPT.</p>', 126, '/Speakerphotos/amitsheth.jpg', NULL, NULL, 'LTC 5104', 'Pilani'),
(127, '2011-03-03 20:00:00', 'Phy', 'Loop Quantum Spacetime Probing the Microcosm', 'What is space? What is time? What is spacetime? Where is it convenient to treat time as the fourth dimension? Why is it that this radical notion so popularized in the twentieth century physics no longer useful? What happens when Geometry meets the Quantum?  These are the questions that confront us the moment we probe Loop Quantum ‘Spacetime’. But why at all would one set out to do so? The motivation is present even in elementary physics. Take for example Newton’s first law, “rest is equivalent to uniform motion”, turn it around and ask, “what is the equivalent of non-uniform motion?” Newton has no answer to it. Einstein answered it by stating that locally, it is the gravitational field. And how is that so? Because, locally, no experiment can tell the difference. In like manner, intriguing answers emerge by posing questions of Quantum Mechanics; more when we combine it with Special Relativity and yet more when we attempt to reconcile General Relativity and Quantum Mechanics to arrive at Loop Quantum Gravity. If Special Relativity unifies space and time into spacetime, Loop Quantum Gravity abolishes first, time and then, space. There remain only relations among objects described by the formalism of an abstract network. At a fundamental level, time and space then are no longer useful concepts. And that is just the tip of the iceberg. In this talk we probe the fascinating interplay of concepts and theories that constitute Loop Quantum Gravity.', 127, '/Speakerphotos/loopgravity.jpg', NULL, NULL, 'LTC 5104', 'Pilani'),
(128, '2011-03-06 17:15:00', 'Eco/Fin', 'Personal Wealth Creation and Risk Management (PWCRM)', 'The presentation covers:\r\n<p>1. Creating avenues of passive income through investment in Real\r\nEstate, Stock Market, Mutual Funds, etc.</p>\r\n<p>2. Creating wealth in a Tax Efficient manner</p>\r\n<p>3. Managing the avenues of passive income created</p>\r\n<p>4. Understanding the financial and other risks associated with various\r\ntypes of investment.</p>\r\n<p>5. Consolidating gains and striving for higher levels of success.</p>\r\n<p>6. Covering the personal risks that each person is exposed to so that\r\nthey emerge victorious even in the worst case scenario.</p>', 128, '/Speakerphotos/anandagarwal.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(129, '2009-08-18 18:00:00', 'Gen', 'Why Entrepreneurship?', '<ul>\r\n<li>Entrepreneurship as a career</li>\r\n<li>What it takes to be an entrepreneur</li>\r\n<li>Impact as an entrepreneur</li>\r\n</ul>', 143, '/Speakerphotos/anuragjain.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(130, '2009-08-11 18:00:00', 'Gen', 'Course Overview & Objectives of New Ventures Course', '<ul>\r\n<li>What is Sparks New Ventures?</li>\r\n<li>Overview of Course Syllabus</li>\r\n<li>Review assignments</li>\r\n<li>Individual & Team expectations</li>\r\n<li>Managing Mentor – Mentee Relationship</li>\r\n<li>Seed Funding – Size & Criteria</li>\r\n</ul>', 129, '/Speakerphotos/abhinavkhushraj.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(131, '2009-09-03 18:00:00', 'Gen', 'Building the Startup Team', '<ul>\r\n<li>Understanding your strengths and gaps</li>\r\n<li>Common selection criteria</li>\r\n<li>How to attract, organize, inspire, motivate talent</li>\r\n<li>Creating an innovative culture</li>\r\n<li>Compensation and stock</li>\r\n<li>Advisory board</li>\r\n</ul>', 132, '/Speakerphotos/nickhiljakatdar.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(132, '2009-09-08 18:00:00', 'Gen', 'Competition', '<ul>\r\n<li>Business models and pricing approaches as a startup</li>\r\n<li>Differences across industries viz. hi-tech, life sciences, clean tech etc.</li>\r\n</ul>', 133, '/Speakerphotos/bobmeese.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(133, '2009-09-18 18:00:00', 'Gen', 'Lean Startups', '<ul>\r\n<li>New rules for a building successful start-ups</li>\r\n<li>Being lean in product development, strategy, marketing & financing</li>\r\n<li>Discover the business before scaling the business</li>\r\n</ul>', 134, '/Speakerphotos/sephskerritt.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(134, '2009-09-22 18:00:00', 'Gen', 'Product Development', '<ul>\r\n<li>Product definition</li>\r\n<li>Product differentiation</li>\r\n<li>Assessing technical risks</li>\r\n<li>Product plan and timelines for major milestones</li>\r\n<li>Development resources required to complete design, specification and production</li>\r\n</ul>', 135, '/Speakerphotos/ajaykulkarni.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(135, '2009-09-25 18:00:00', 'Gen', 'Intellectual Property', '<ul>\r\n<li>Intellectual property and the various categories</li>\r\n<li>Government regulations at the global, country and regional level</li>\r\n<li>IP issues across industry verticals</li>\r\n</ul>', 136, '/Speakerphotos/aniladvani.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(136, '2009-10-06 18:00:00', 'Gen', 'Sales & Marketing', '<ul>\r\n<li>Entrepreneur as a sales person – developing sales skills</li>\r\n<li>Defining market strategy (positioning, promotions etc.)</li>\r\n<li>Sales strategy</li>\r\n</ul>', 137, '/Speakerphotos/diaznesamoney.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(137, '2009-10-09 18:00:00', 'Gen', 'Business Models', '<ul>\r\n<li>Obtaining capital – how to do it; and what investors are really looking for</li>\r\n<li>Options: Bootstrapping vs. angels vs. VCs</li>\r\n<li>How much to raise, when to raise</li>\r\n</ul>', 138, '/Speakerphotos/vtbharadwaj.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(138, '2009-11-06 18:00:00', 'Gen', 'Financing (Bootstrapping, Angel, VC)\r\n', '<ul>\r\n<li>Profiling competitors (revenues, growth, team, partnerships, investors, patents)</li>\r\n<li>Understand their target markets</li>\r\n<li>Advantages and shortcomings of their product</li>\r\n<li>Identifying your differentiation</li>\r\n</ul>', 139, '/Speakerphotos/rahulchandra.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(139, '2009-11-10 18:00:00', 'Gen', 'Launching a Business - First 100 days', '<ul>\r\n<li>Getting off the ground</li>\r\n<li>Creating a culture</li>\r\n<li>Core values</li>\r\n<li>Name, logo, identity, web site, office space etc. etc.</li>\r\n</ul>\r\n', 140, '/Speakerphotos/anandmorzaria.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(140, '2009-11-13 18:00:00', 'Gen', 'Growth & Exit Strategies', '<ul>\r\n<li>Different stages of growth – from founder’s team to a scaled company</li>\r\n<li>Challenges and decisions to be taken as an entrepreneur</li>\r\n<li>Liquidity events</li>\r\n</ul>\r\n', 141, '/Speakerphotos/rajureddy.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(141, '2009-11-17 18:00:00', 'Gen', 'Social Entrepreneurship', '<ul>\r\n<li>What is social entrepreneurship</li\r\n<li>Types of social entrepreneurship</li>\r\n<li>Differences from other kinds of entrepreneurship</li>\r\n</ul>', 142, '/Speakerphotos/taniaaidrus.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(142, '2009-08-27 18:00:00', 'Gen', 'Creating & Presenting a Pitch', '<ul>\r\n<li>Understanding your strengths and gaps</li>\r\n<li>Common selection criteria</li>\r\n<li>How to attract, organize, inspire, motivate talent</li>\r\n<li>Creating an innovative culture</li>\r\n<li>Compensation and stock</li>\r\n<li>Advisory board</li>\r\n</ul>', 129, '/Speakerphotos/abhinavkhushraj.jpg', NULL, NULL, 'LTC', 'Pilani,Goa'),
(143, '2011-04-03 20:00:00', 'Eco/Fin', 'Talk on technological Startups in BITS', 'How often do you find an EEE graduate doing his MBA from IIM A, and postgraduate from London school of Economics and simultaneously have launched 8 start-ups. Meet Mr. Suhail Kassim, BITS alumni of 2001 batch and an employee of World Bank talking to the BITSians about:\r\n<ul>\r\n<li>Why it is good for BITSian engineers to go for start-ups rather than joining a job?</li>\r\n<li>Why success rate of BITSian start-up is way above the average?</li>\r\n<li>How to identify resources at your disposal (alumni, infrastructure) and use them to build upon your idea to convert them into a successful business.</li></ul>', 120, '/Speakerphotos/suhail.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(144, '2011-04-06 17:00:00', 'MeE', 'KFP-Rainwater Harvesting Technique', 'KFP i.e. Kedia Farm Pattern is an amazing rain water harvesting technology invented by an Indian Scientist Mr. Vijay Kedia. that can harvest upto 80% rainwater underground, contrary to other RWH technologies which can store only upto 18% rainwater above ground which is open to evaporation.\r\n\r\n KFP is a single solution to many major problems related to agriculture as well as social. The returns from KFP are innumerable, to name a few :\r\n<ul>\r\n<li>Solution for Drought</li>\r\n<li>Solution for Floods</li>\r\n<li>Saves Electricity i.e. Saves Carbon Emissions</li>\r\n<li>Increases Crop Production</li>\r\n<li>Limits the use of chemical fertilizers</li>\r\n<li>Stops Soil Erosion</li>\r\n</ul><p>\r\nThe above were only to name a few. The talk will reveal to you that how a simple innovation can become the ‘next big thing’.</p>', 103, '/Speakerphotos/kedia.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(145, '2011-04-09 20:00:00', 'Bio', 'Matrix Engineering Technologies for Biomimetic Regeneration and\r\nRepair of Elastic Fiber Networks\r\n', 'This talk will detail the speaker''s efforts to regenerate vascular elastic fibers and fiber\r\nnetworks in vitro and in vivo. The extracellular matrix (ECM) within native blood vessels, and\r\nindeed other soft tissues, consist predominantly of cross-linked elastin and collagen structures\r\nthat contribute to vessel elasticity and stiffness respectively and critically regulate cell behavior.\r\nThe congenital absence or malformation, or accelerated pathological disruption and loss of\r\nvascular elastic structures within blood vessels can severely compromise vascular homeostasis.\r\nUnfortunately, faithful in situ elastic matrix regeneration and repair, and fabrication of engineered\r\nelastic tissue replacements in vitro are challenged by (a) the spatio-temporal complexity of the\r\nelastic matrix assembly process, which renders it difficult to replicate, and more critically, (b)\r\nattenuated tropoelastin mRNA expression by post-neonatal cells. To address these limitations,\r\nwe seek to evaluate novel ECM-based molecules that will provide elastogenic cues and may be\r\npresented together with appropriate scaffolding biomaterials that can up-regulate elastin synthesis\r\nand regenerate biologically and ultrastructurally faithful mimics of native elastic matrices on demand.\r\n\r\nThis talk will provide an overview of our ongoing efforts and future plans to regenerate\r\nelastic matrices by identifying and integrating appropriate tissue engineering tools (e.g., growth\r\nfactor cocktails, biomaterial scaffolds, cell sources, dynamic culture systems) to (a) up-regulate\r\nelastin precursor synthesis by seeded or recruited cells, (b) recruit, assemble, and crosslink these\r\nprecursors into stable matrix structures, (c) replicate the architectural facets of native elastic\r\nmatrices (e.g., fiber formation, preferred orientation, meshing), and (d) stabilize these matrices\r\nagainst physiologic or pathologic breakdown.\r\n\r\nIt is expected that our elastic matrix engineering technologies will be useful to (a) augument\r\nelastin synthesis, assembly, and maturation by healthy patient-derived cells within tissue engineered\r\nconstructs and thus manufacture faithful mimics of native elastin on demand, and (b) regress elastin-\r\ncompromised tissues (e.g., in abdominal aortic aneurysms) to a healthy state by coaxing diseased\r\ncell-mediated regenerative repair of elastic matrix.', 144, '/Speakerphotos/anandram.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(146, '2011-04-06 17:00:00', 'MeE', 'KFP-Rainwater harvesting technique', NULL, 103, '', NULL, NULL, 'LC101', 'Goa'),
(147, '2011-04-16 20:00:00', 'Eco/Fin', 'New venture financing and risk management', 'How often do you find an EEE graduate doing his MBA from IIM A, and postgraduate from London school of Economics and simultaneously have launched 8 start-ups. Meet Mr. Suhail Kassim, BITS alumni of 2001 batch and an employee of World Bank talking to the BITSians from the point of view of both the entrepreneur and investor about:\r\n<ul>\r\n<li>Quick revision of business plan, financial and funding plan</li>\r\n<li>Stages and types of financing</li>\r\n<li>Types and sources of capital</li>\r\n<li>Due diligence</li>\r\n<li>Valuation</li>\r\n<li>Negotiations</li>\r\n<li>Introduction to important documents: Non-Disclosure agreements, Information memoranda, Term sheets, MoU, Agreement</li>\r\n<li>Ownership and control issues</li>\r\n<li>Managing risks</li>\r\n<li>Exit strategies</li>\r\n</ul>', 120, '/Speakerphotos/suhail.jpg', NULL, NULL, 'LTC 5103', 'Pilani'),
(148, '2011-08-25 18:00:00', 'EEE-E&I', 'Introduction to Computer Architecture', NULL, 116, '', NULL, NULL, 'LTC 5102', 'Goa'),
(149, '2011-09-04 18:00:00', 'Eco/Fin', 'Harvard Business School 2+2 Program: BITsian Perspective', '<ul><li>What is the HBS 2+2 Program?</li>\r\n<li>How is this different from the HBS MBA?</li>\r\n<li>Should you apply to HBS 2+2?</li>\r\n<li>The HBS 2+2 Application process</li>\r\n<li>My experience applying to the HBS 2+2 and the BITSian advantage</li>\r\n<li>What after 2+2?</li></ul>', 145, '/Speakerphotos/vidyashankar.jpg', NULL, NULL, 'LTC', 'Pilani,Goa,Hyderabad'),
(150, '2011-08-19 17:00:00', 'Phy', 'Quantum Mechanics From A Geometric Viewpoint', 'Geometric aspects of quantum mechanics, quantization and quantum dynamics', 146, '/Speakerphotos/Vasudevshyam.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(151, '2011-08-18 17:00:00', 'Gen', 'General law for start ups- Contract, employment, IP, company', 'The presentation aims to provide exposure to general laws applicable to a business in India with a view to give clarity and quality in decision-making.', 147, '/Speakerphotos/Naveengoyal.jpg', NULL, NULL, 'LTC', 'Pilani'),
(152, '2011-09-10 20:30:00', 'EEE-E&I', 'Analysis of RC Circuits and basics of Circuit Theory', 'Fundamentals & analysis of R-C Circuits. <ul><li>Overview on some of the intuitive methods to look at Circuits, and analyze them.</li>\r\n<li>Time & frequency  domain concepts needed in order to emphasize any R-C circuit.</li></ul>', 148, '/Speakerphotos/Santhoshkasavajjala.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(153, '2011-10-01 20:00:00', 'Gen', 'MS/PhD - A Primer on Applying for Graduate Studies', 'The talk centers on the MS/PhD application process and aims to talk about the following:\r\n<ul><li>Basic components of Apping like GRE,SOP,Resume etc.</li>\r\n<li>Supplementing the application with other components</li>\r\n<li>Breaking some myths like low CGPA, no aid, MS vs PhD etc.</li>\r\n<li>Statistics on how BITSians perform</li>\r\n<li>Common mistakes which BITSians make</li>\r\n<li>What resources can you make use of which are specific to BITSians</li>\r\n</ul>', 150, '/Speakerphotos/Dhruvbalwada.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(154, '2011-10-06 20:15:00', 'EEE-E&I', 'The Story of the Transistor', '<ul><li>Basic characteristics of some devices like diodes and transistors would be discussed from a designer’s perspective.</li>\r\n<li>Also, a brief history of the IC World would be covered to motivate the need for Analog VLSI Design.</li>\r\n</ul>', 151, '/Speakerphotos/Rakulviswanath.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(155, '2011-10-08 20:30:00', 'EEE-E&I', 'Analysis of MOS Amplifiers', '<ul><li>Introduction to MOS amplifier types and circuit topologies.</li>\r\n<li>Low frequency analysis of various amplifier types and their small signal parameters.</li></ul>\r\n', 148, '/Speakerphotos/Santhoshkasavajjala.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(156, '2011-10-13 20:30:00', 'EEE-E&I', 'The Common Source Amplifier', '<ul>\r\n<li>MOSFET characteristics</li>\r\n<li>Load line of the CSA</li>\r\n<li>Small-signal analysis of the CSA</li>\r\n</ul>', 151, '/Speakerphotos/Rakulviswanath.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(157, '2011-10-15 20:30:00', 'EEE-E&I', 'Stability of Circuits', '<ul>\r\n<li>Basics of frequency resonse of circuits and analysis of stability.</li>\r\n<li>The introduction of poles/zeroes and intuitive approach to find them.</li>\r\n</ul>', 148, '/Speakerphotos/Santhoshkasavajjala.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(158, '2011-10-15 16:30:00', 'Gen', 'Youth Leadership Through Teaching', '<ul><li>TEACH FOR INDIA - One day all children will attain an excellent education www.teachforindia.org</li>\r\n<li>The perfect chance for you to make a lasting difference in India''s education\r\nalong with gaining world-renown leadership experience!!</li>\r\n<ul>', 152, '', NULL, NULL, 'LTC 5106', 'Pilani'),
(159, '2011-10-15 16:30:00', 'Gen', 'Youth Leadership Through Teaching', '<ul><li>TEACH FOR INDIA - One day all children will attain an excellent education www.teachforindia.org</li> <li>The perfect chance for you to make a lasting difference in India''s education along with gaining world-renown leadership experience!!</li> <ul>', 153, '', '', '0', 'LTC 5106', 'Pilani'),
(160, '2011-10-16 20:00:00', 'Gen', 'Pre - MBA options for fresh graduates', '<ul>\r\n<li>For those who have the motivation and desire to build a strong foundation for a career in business.</li>\r\n<li>About programs such as LBS MiM, Duke MiM, HEC MiM,YIF  etc</li>\r\n<li>Options available, the applying process, the profiles usually selected etc</li>\r\n</ul>', 154, '/Speakerphotos/Sauravpatyal.jpg', '', '1', 'LTC 5106', 'Pilani'),
(161, '2011-11-09 20:00:00', 'Bio', 'Living Color:  Exploring the Evolution and Meanings of Human Skin Color', 'Skin colour is one of the most obvious ways in which people vary, and has been used in the past as a basis for the biological classification of humans into races.  Our research work and that of many other groups have demonstrated that skin pigmentation is a biological adaptation that regulates the penetration of ultraviolet radiation (UVR) into the skin.  Skin pigmentation is an evolutionary compromise between the conflicting demands of protection of the skin against UVR and of production of vitamin D by UVR.  This compromise represents one of the best examples of evolution by natural selection acting on the human body.  In the history of the genus Homo and of our species, Homo sapiens, skin pigmentation has been a highly labile trait.  Similar skin tones have evolved independently numerous times in response to similar environmental conditions.  Because of this, skin colour is an inappropriate basis for the classification of humans into groups.  This lecture will also explore the ramifications of skin pigmentation for health, social well-being, and social interactions.', 155, '/Speakerphotos/Ninajablonski.jpg', NULL, NULL, 'LTC', 'Pilani'),
(162, '2012-02-10 20:00:00', 'EEE-E&I', 'Cryptography', 'Cryptography -- the art of secret writing -- continues to play an increasing\r\nrole in computers and communication. Crypto, however, is not widely\r\nunderstood due to the perception that it is "hard." This lecture will define\r\nthe role of cryptography in secure communications, and will introduce basic\r\nterms and concepts. An overview of basic cryptographic functions (e.g.,\r\ntransposition and substitution), algorithm types (e.g., hash functions, and\r\nsecret and public key systems), and methods of cryptanalysis (e.g., brute\r\nforce, known plaintext, chosen plaintext, and power analysis) will be\r\npresented, along with an explanation of how they work together and the\r\nrelationship between key length and crypto strength. Public key certificates\r\nwill also be described. Current issues, such as hash collisions, will also\r\nbe explored. Examples of cryptosystems such as the Encrypting File System\r\n(EFS), Pretty Good Privacy (PGP), Whole Disk Encryption (WDE), and the\r\nSecure Sockets Layer (SSL) will be presented, time permitting.', 156, '/Speakerphotos/gary.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(163, '2012-04-12 20:00:00', 'CS-IS', 'E-Business for Business', 'E-Business is increasingly becoming a very important application of the Internet today.This talk will decribe the evolution of E-Business with a perspective of it being an application beyond ERP.The talk will also describe emerging trends in applications of social networks , mobiles as well as technologies such as "Augmented Reality" and their applications in business.The talk will be of interest to all students.', 157, '/Speakerphotos/nilay-yajnik.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(164, '2012-03-22 21:00:00', 'Gen', 'Designing technology for musicians and music listeners', 'The talk focuses on: \r\n<ul><li>\r\nBrief history of computer music and areas of music research.</li><li>\r\nResearch in Music applications at MITS Media Labs.</li><li>\r\nDesign principles and programming paradigms that are used in music technology.</li><li>\r\nApplications and tools to help you get started on building your own interactive music application.</li></ul>', 158, '/Speakerphotos/Sarkar,Mihir_Profile.gif', NULL, NULL, 'LTC 5106', 'Pilani'),
(165, '2012-04-10 20:00:00', 'Bio', 'Sustainable Body Movement 24/7 for the 21st Century Lifestyle', 'The interactive program will also give you a nonverbal vocabulary of\r\nbody movement.<br />\r\nYou will learn how the body works, and what to do and not do when sitting, standing, walking, bending, lifting, reaching, twisting, or sleeping.<br />\r\nYou will be given stress-reducing exercises that can be employed in public or private.<br />\r\nIn short, your relationship with your body will change.<br />\r\nYou will be in charge.<br />\r\nAnd when you are in charge the “bad” stress dissipates, and even\r\ndisappears.', 159, '/Speakerphotos/eva.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(166, '2012-04-20 20:00:00', 'Gen', 'The attractions of GHOTing after Graduating -Why BITS to MS/PhD!', 'Why should you (or should you not) apply to Grad School (MS/PhD)? And if you''ve decided that Grad School is your next step after BITS-P, how do you go about the tiring yet rewarding process of ''App''ing?', 160, '/Speakerphotos/srivarsha.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(167, '2012-02-01 20:00:00', 'CiE', 'Fracture and Fatigue Mechanics', 'The lecture covers following:<br />\r\n<ul>\r\n<li>Basic Failure Mechanisms in Structures</li>\r\n<li>Application in Design Engineering Structures</li>\r\n<li>Advance finite elements method</li>\r\n<li>Necessity in modern world</li>\r\n</ul>', 161, '/Speakerphotos/piyushgupta.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(168, '2012-08-24 20:00:00', 'CS-IS', 'Introduction to Machine Learning and Data Mining', 'This talk introduces the audience to key methods and challenges in data analytics. It would touch upon a few techniques in Machine Learning and Data Mining with examples of real-life applications.Since this is the age of big data, the talk would also describe how Map-Reduce handles large scale data in a distributed fashion.', 162, '/Speakerphotos/sandeep2.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(169, '2012-08-24 17:00:00', 'Phy', 'The Physics of Higgs Boson', ' On 4th July 2012, Physicists at the Large Hadron Collider (LHC) CERN, Geneva, announced the discovery of one of the most sought after fundamental particle, - the Higgs Boson also referred to as "the God particle". Existence of such a particle was proposed independently by several physicists (Englert, Brout, Higgs, Guralnik, Hagen, Kibble) way back in 1964 as a solution to some of the outstanding puzzles of the physics of the fundamental particles, notably the origin of mass. So is the Higgs Boson really responsible for the origin of mass? Although the Higgs boson itself is not directly responsible for the origin of all the mass in the Universe, there are several Higgs-like-mechanisms operative in nature which provide us some insight into the complex problem of origin of mass. The reason behind this brouhaha about its discovery is that the Higgs boson and the Higgs mechanism forms the back-bone of the most fundamental theory (as of yet) of matter and energy -- the so called Standard Model of Particle Physics. We will attempt to understand the Higgs mechanism in a non-technical way through analogies with familiar phase-transitions and come to appreciate that indeed the Universe as a whole has undergone several phase transitions during its evolution.', 163, '/Speakerphotos/rishikesh.jpg', NULL, NULL, 'LTC 5101', 'Pilani'),
(170, '2012-08-30 20:30:00', 'CS-IS', 'Assisting Software Developers With the Difficult Task of Writing Test Oracles', 'Software testing is difficult but absolutely critical.  There are two high-level challenges when writing software tests, which fall into two deceptively simple categories: Test Inputs and Test Oracles.  The vast majority of research on testing focuses on finding effective test inputs, those that exercise, or "cover", much of a program''s behavior.  But that is only half of the problem: how do we know if a program''s behavior is actually correct?  For that, we need a Test Oracle, or in more familiar terms, the test''s "checks" or "assertions".  If we test a "square root" function with the value 4, an oracle should verify that the output is 2.  As simple as this sounds, writing test oracles for real, modern and complex software is far more difficult.  It is a tedious, error-prone, manual process that has received comparatively little attention from the research community.', 164, '/Speakerphotos/Mark_Gabel.jpg', NULL, NULL, 'LTC 5106', 'Pilani'),
(171, '2012-08-27 20:45:00', 'CiE', 'Composition in Construction : Tradition vs Innovation', 'Traditionally, civil infrastructures have been made out of masonry, concrete, timber, and\r\nsteel. With continuous research and development in the application of fiber reinforced polymer (FRP) as a construction material, FRP has gained acceptance as a viable alternative. FRP material is known for its high strength-to-weight ratio, high stiffness and good corrosion resistance. Thus, the use of FRP enables reduction of dead weight of the structure and extends the life of the structure.\r\n\r\nThe talk will focus on one of the applications of FRP as externally bonded reinforcement and a synopsis of research work I contributed to at Pennsylvania state university in this field. \r\n\r\nFRP strengthening systems typically utilize an ambient cured epoxy resin as matrix as\r\nwell as adhesive. Ambient cured epoxies may have a glass transition temperature (Tg) close to the service temperature. The Tg being close to service temperature results in increased rate of physical aging which in turn results in the evolution of material properties. At temperatures close to Tg, creep deformation in the epoxy resin is also magnified. Hence it is important to characterize the Tg and creep behavior in the constantly evolving ambient cured epoxy resin to understand long term behaviour of FRP strengthening system.', 165, '/Speakerphotos/Anurag Jaipuriar.png', NULL, NULL, 'LTC 5106', 'Pilani'),
(172, '2012-09-09 20:00:00', 'Gen', 'BITS2MSPhD', '<ul>\r\n<li>Why graduate school?</li>\r\n<li>Information on various M.S. and Ph.D. programs and their distinction</li>\r\n<li>Application process timeline</li>\r\n</ul>', 166, '/Speakerphotos/Harshad.jpg', NULL, NULL, 'LTC 5106', 'Pilani,Goa'),
(173, '2012-09-24 20:00:00', 'Eco/Fin', '<b>Butterfly Economics', '<p1>The conventional ways of thinking in the social sciences, and in economics in particular, offer at best a partial and at worst a misleading view of the how the world operates. In essence, the world is seen as a machine.  The machine may be very complicated, but in principle it can be understood completely, and the consequences of using it in various ways can be predicted.  A lever pulled here or a button pressed there will have entirely predictable consequences.</p1>\r\n<p1>The speaker will be explaining why existing approaches to the analysis of the economy and of society must be altered fundamentally if we are to make progress in understanding both how world operates, and how we might try to change it for the better.  Economies and societies are not machines. They are more like living organisms. Individuals do not act in isolation, but affect each other in complex ways</p1>', 168, '/Speakerphotos/paul_ormerod.jpg', '', '1', 'LTC-5106', 'Pilani'),
(174, '2012-09-27 20:00:00', 'CS-IS', 'Inferring Private Information on Social Networks', 'Online social networks, such as Facebook, are increasingly utilized by many people. These networks allow users to publish\r\ndetails about themselves and to connect to their friends. Some of the information revealed inside these networks is meant to be\r\nprivate. Yet it is possible to use learning algorithms on released data to predict private information. In this talk, we discuss how to\r\nlaunch inference attacks using released social networking data to predict private information. We then discuss three possible sanitization\r\ntechniques that could be used in various situations. Then, we explore the effectiveness of these techniques and attempt to use methods\r\nof collective inference to discover sensitive attributes of the data set. In addition, we discuss how to use semantic web based fine grained access control \r\ntechniques to increase privacy protections on social networks.\r\n', 169, '/Speakerphotos/murat.jpg', NULL, NULL, 'LTC-5106', 'Pilani'),
(175, '2012-09-29 20:00:00', 'Gen', 'University selection and Statement of Purpose', NULL, 170, '/Speakerphotos/yash.jpg', NULL, NULL, 'LTC-5106', 'Pilani'),
(176, '2012-10-19 20:00:00', 'Gen', 'Secrets of Digital Marketing', 'Fun based session to understand latest and authentic stats to help you understand the market, discover its potential, these a fresh stats used for college presentation to support digital ideas in any marketing assignments, competitions or exams, also used for inferring Return on Investment metrics.Followed by hidden secrets of digital marketing ( these are media neutral strategies which a very important part of Integrated Marketing Communications and any marketing mix with digital at the core.Recently conferred with Star Youth Achiever Award by Star news - Global Youth Marketing Forum & CMO Council (2012)"\r\n\r\nAccording to industry body IAMAI (Internet and Mobile Association Of India), the digital media market will be worth Rs 3,500 crore by the end of 2012, its already ahead than Radio and Outdoor industry in India.Job trend reports are pointing to big things for the tech industry, including lots of openings and opportunities for growth, there are huge shortages of qualified professionals in the digital and technology space.Session on 19th October will be a spotlite on authentic stats / data about digital marketing + technology and will focus on emerging trends for you to gain latest and concentrated knowledge in short span of a session, definitely this will make you ahead of the curve in corridor discussions and job interviews.Finally the session will end session with some case studies.Recently conferred with Star Youth Achiever Award by Star news - Global Youth Marketing Forum & CMO Council (2012)"', 171, '/Speakerphotos/Rahul.jpg', NULL, NULL, 'LTC : 5106', 'Pilani'),
(177, '2012-10-27 20:00:00', 'Gen', 'Introduction to Urban Transportation Planning', 'Transportation planning plays a fundamental role in a state, region or community’s vision for its future.  This lecture will serve as introduction to the fundamentals of transportation planning with an emphasis on the Four Step Trip Based Travel Demand Model. The intention is to explain the need for a comprehensive transportation model and how such a modeling process works, including the assumptions made and the steps used to forecast travel demand. ', 172, '/Speakerphotos/Anyesha.jpg', NULL, NULL, 'LTC-5106', 'Pilani'),
(178, '2012-11-08 17:00:00', 'Gen', 'Theory of everything', 'This talk will feature an introduction to cutting edge research going on in the field of theoretical physics with respect to the objective of reconciling quantum mechanics and general reltivity. It will consist of the broad overview of foundations, advantages and disadvantages of many theories that seek this goal, eg. string theory and Loop Quantum Gravity.The objective of this talk will be to convey the significance of Physics in understanding nature.', 173, '/Speakerphotos/Madhavan_V.jpg', NULL, NULL, 'LTC 5106', 'Pilani '),
(179, '2012-11-09 10:00:00', 'Gen', 'Loop quantum gravity', 'This talk is to present an upcoming paper by the speaker on natural occurance of loop algebras in the Canonical Formulational of General Relativity via the ashtekar variables. Also, the quantization of new approach will be showed with a new operator construct with observables as momentum and velocity which can negate the need for a problem such as a Quantum Gravitational Heisenberg Uncertainty principle.', 173, '/Speakerphotos/Madhavan_V.jpg', NULL, NULL, '3247 ', 'Pilani'),
(180, '2013-01-10 20:00:00', 'CS-IS', 'Human Computer Interaction', 'Today’s computers are the motivated student’s path to high-quality knowledge, the independent designer’s platform for creative endeavors, and everyone’s medium to connect to other people. Computing is increasingly social. This talk will provide a gentle introduction to research in human-computer interaction, and in particular, research in social computing. \r\nThis is a talk in three parts. The first part will provide a brief, historical perspective of human-computer interaction, in an attempt to answer “how did we get here?” The second part talks about recent advances in social computing, especially in education and crowdsourcing.', 174, '/Speakerphotos/ART_Chinmay.jpg', NULL, NULL, 'LTC: 5105', 'Pilani'),
(181, '2013-01-12 18:45:00', 'Gen', 'Future of Money<p style = "color:gray">\r\n<a href="#" style="color:gray; text-decoration:none">In collabaration with </a>\r\n<a href="http://bits-csa.org/" style="color:black">CSA</a> \r\nwith technical support from \r\n<a href="http://bitsconnect20.bitsaa.org/" style="color:black">BITSConnect 2.0</a>\r\n</p>', 'Inaug + Guest Talk by Director, Software Development PayPal, Laxmanan Krishnamurthy', 175, '', NULL, NULL, 'Telepresence Classroom', '<p>Pilani,Goa,Hyderabad</p>'),
(182, '2013-01-12 20:00:00', 'CS-IS/EEE-E&I', 'Today''s hardware for safe parallelism<p style = "color:gray">\r\n<a href="#" style="color:gray; text-decoration:none">In collabaration with </a>\r\n<a href="http://bits-csa.org/" style="color:black">CSA</a> \r\nwith technical support from \r\n<a href="http://bitsconnect20.bitsaa.org/" style="color:black">BITSConnect 2.0</a>\r\n</p>', 'Parallelism is everywhere - from tiny smart watches to gigantic super computers. But writing parallel programs is hard. To make parallel programming a common place, today''s software (shared memory programming languages and environments) must evolve to enforce safe practices that ban "wild behaviors" e.g., unstructured parallelism and arbitrary data races. This software evolution is a rare opportunity to rethink today''s hardware from the ground up. In this talk, Rakesh will discuss problems with today''s parallel software and hardware, and then describe a hardware-software co-designed system that proposes to address these problems in both multi-core and heterogeneous systems. ', 176, '/Speakerphotos/ART_Rakesh.jpg', NULL, NULL, 'Telepresence Classroom', '<p>Pilani,Goa,Hyderabad</p>'),
(183, '2013-01-13 20:00:00', 'CS-IS', 'Tele-immersive systems<p style = "color:gray">\r\n<a href="#" style="color:gray; text-decoration:none">In collabaration with </a>\r\n<a href="http://bits-csa.org/" style="color:black">CSA</a> \r\nwith technical support from \r\n<a href="http://bitsconnect20.bitsaa.org/" style="color:black">BITSConnect 2.0</a>\r\n</p>', NULL, 177, '/Speakerphotos/ART_Arpit.jpg', NULL, NULL, 'Telepresence Classroom', '<p>Pilani,Goa,Hyderabad</p>'),
(184, '2013-01-13 13:30:00', 'CS-IS/Pharma', 'Integration of Computer Science and Medicine<p style = "color:gray">\r\n<a href="#" style="color:gray; text-decoration:none">In collabaration with </a>\r\n<a href="http://bits-csa.org/" style="color:black">CSA</a> \r\nwith technical support from \r\n<a href="http://bitsconnect20.bitsaa.org/" style="color:black">BITSConnect 2.0</a>\r\n</p>', 'Vishwa will talk about some cool research in which he has been involved, with respect to the integration of Computer Science and Medicine: \r\n<ul>\r\n<li>1. Controlling robots via brain.</li>\r\n<li>2. Surgical Robotics - Will talk about some really cool robots and devices that drive modern day surgery.</li>\r\n<li>3. Technologies for early and better Cancer detection and diagnosis.</li>\r\n</ul>', 178, '/Speakerphotos/ART_Vishwa.jpg', NULL, NULL, 'Telepresence Classroom', '<p>Pilani,Goa,Hyderabad</p>'),
(185, '2013-01-13 18:00:00', 'CS-IS', 'Algorithms<p style = "color:gray">\r\n<a href="#" style="color:gray; text-decoration:none">In collabaration with </a>\r\n<a href="http://bits-csa.org/" style="color:black">CSA</a> \r\nwith technical support from \r\n<a href="http://bitsconnect20.bitsaa.org/" style="color:black">BITSConnect 2.0</a>\r\n</p>', 'The first talk given by Rizwan would build the fundamentals on planar graphs, its properties, basic tools, simple applications of the tools etc. to better equip the participants for the next talk. The second talk would encompass some of the highlights of the recent research in this area and an in depth discussion of one of the recent results in the field.', 179, '/Speakerphotos/ART_Rizwan.jpg', NULL, NULL, 'Telepresence Classroom', '<p>Pilani,Goa,Hyderabad</p>'),
(186, '2013-01-14 10:30:00', 'CS-IS', 'What it means to run your DSA lab assignment at Google scale<p style = "color:gray">\r\n<a href="#" style="color:gray; text-decoration:none">In collabaration with </a>\r\n<a href="http://bits-csa.org/" style="color:black">CSA</a> \r\nwith technical support from \r\n<a href="http://bitsconnect20.bitsaa.org/" style="color:black">BITSConnect 2.0</a>\r\n</p>', 'Rajat will be trying to deliver a layman talk on what it means to run your DSA lab assignment at Google scale. \r\n', 169, '/Speakerphotos/ART_Rajat.jpg', NULL, NULL, 'Telepresence Classroom', '<p>Pilani,Goa,Hyderabad</p>'),
(187, '2013-01-14 13:30:00', 'CS-IS', 'Algorithm(Advanced)<p style = "color:gray">\r\n<a href="#" style="color:gray; text-decoration:none">In collabaration with </a>\r\n<a href="http://bits-csa.org/" style="color:black">CSA</a> \r\nwith technical support from \r\n<a href="http://bitsconnect20.bitsaa.org/" style="color:black">BITSConnect 2.0</a>\r\n</p>', 'The first talk given by Rizwan would build the fundamentals on planar graphs, its properties, basic tools, simple applications of the tools etc. to better equip the participants for the next talk. The second talk would encompass some of the highlights of the recent research in this area and an in depth discussion of one of the recent results in the field. ', 179, '/Speakerphotos/ART_Rizwan.jpg', NULL, NULL, 'Telepresence Classroom', '<p>Pilani,Goa,Hyderabad</p>'),
(192, '2013-02-28 19:13:58', NULL, '<p>Structural Engineering</p>', '', 183, '/Speakerphotos/ART_Rizwan.jpg', '', '0', 'Tele', 'Pilani');

-- --------------------------------------------------------

--
-- Table structure for table `lectures_discipline`
--

CREATE TABLE IF NOT EXISTS `lectures_discipline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lecture_id` int(11) NOT NULL,
  `discipline_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `lectures_discipline`
--

INSERT INTO `lectures_discipline` (`id`, `lecture_id`, `discipline_id`) VALUES
(2, 2, 4),
(3, 3, 3),
(4, 4, 3),
(5, 5, 5),
(6, 6, 13),
(7, 7, 13),
(8, 8, 13),
(9, 9, 5),
(10, 10, 5),
(11, 11, 1),
(12, 12, 3),
(13, 12, 4),
(14, 12, 5),
(15, 13, 5),
(16, 14, 5),
(17, 15, 1),
(18, 16, 5),
(19, 17, 4),
(20, 18, 13),
(21, 19, 4),
(22, 20, 13),
(23, 21, 13),
(24, 22, 13),
(25, 23, 5),
(26, 24, 9),
(27, 25, 5),
(28, 26, 5),
(29, 27, 1),
(30, 28, 5),
(31, 28, 4),
(32, 29, 3),
(33, 30, 9),
(34, 31, 13),
(35, 32, 3),
(36, 33, 3),
(37, 34, 9),
(38, 35, 9),
(39, 36, 9),
(40, 37, 13),
(41, 38, 13),
(42, 39, 13),
(43, 40, 13),
(44, 41, 9),
(45, 42, 9),
(46, 43, 9),
(47, 44, 2),
(48, 45, 1),
(49, 46, 13),
(50, 47, 13),
(51, 48, 13),
(52, 49, 9),
(53, 50, 13),
(54, 51, 7),
(55, 51, 9),
(56, 51, 10),
(57, 52, 13),
(58, 53, 1),
(59, 54, 13),
(60, 55, 13),
(61, 56, 2),
(62, 57, 13),
(63, 58, 1),
(64, 59, 5),
(65, 60, 13),
(66, 61, 13),
(67, 62, 13),
(68, 63, 13),
(69, 64, 5),
(70, 64, 4),
(71, 65, 2),
(72, 66, 13),
(73, 67, 13),
(74, 68, 13),
(75, 69, 13),
(76, 70, 13),
(77, 71, 13),
(78, 72, 6),
(79, 73, 6),
(80, 74, 13),
(81, 75, 13),
(82, 76, 4),
(83, 77, 4),
(84, 78, 4),
(85, 79, 4),
(86, 80, 13),
(87, 81, 13),
(88, 82, 4),
(89, 83, 3),
(90, 84, 13),
(91, 85, 5),
(92, 86, 13),
(93, 87, 5),
(94, 87, 4),
(95, 87, 9),
(96, 88, 13),
(97, 89, 13),
(98, 90, 1),
(99, 91, 6),
(100, 91, 8),
(101, 91, 4),
(102, 92, 13),
(103, 93, 13),
(104, 94, 13),
(105, 95, 8),
(106, 95, 9),
(107, 96, 5),
(108, 97, 5),
(109, 98, 5),
(110, 99, 6),
(111, 100, 1),
(112, 101, 13),
(113, 102, 1),
(114, 103, 13),
(115, 104, 13),
(116, 105, 9),
(117, 106, 13),
(118, 107, 9),
(119, 108, 5),
(120, 109, 13),
(121, 110, 13),
(122, 111, 3),
(123, 112, 4),
(124, 113, 9),
(125, 114, 9),
(126, 115, 9),
(127, 116, 13),
(128, 117, 13),
(129, 118, 13),
(130, 119, 4),
(131, 120, 6),
(132, 121, 9),
(133, 122, 5),
(134, 123, 11),
(135, 123, 12),
(136, 124, 13),
(137, 125, 13),
(138, 126, 13),
(139, 127, 6),
(140, 128, 11),
(141, 128, 12),
(142, 129, 13),
(143, 130, 13),
(144, 131, 13),
(145, 132, 13),
(146, 133, 13),
(147, 134, 13),
(148, 135, 13),
(149, 136, 13),
(150, 137, 13),
(151, 138, 13),
(152, 139, 13),
(153, 140, 13),
(154, 141, 13),
(155, 142, 13),
(156, 143, 11),
(157, 143, 12),
(158, 144, 3),
(159, 145, 9),
(160, 146, 3),
(161, 147, 11),
(162, 147, 12),
(163, 148, 4),
(164, 149, 11),
(165, 149, 12),
(166, 150, 6),
(167, 151, 13),
(168, 152, 4),
(169, 153, 13),
(170, 154, 4),
(171, 155, 4),
(172, 156, 4),
(173, 157, 4),
(174, 158, 13),
(175, 159, 13),
(176, 160, 13),
(177, 161, 9),
(178, 162, 4),
(179, 163, 5),
(180, 164, 13),
(181, 165, 9),
(182, 166, 13),
(183, 167, 2),
(184, 168, 5),
(185, 169, 6),
(186, 170, 5),
(187, 171, 2),
(188, 172, 13),
(189, 173, 11),
(190, 173, 12),
(191, 174, 5),
(192, 175, 13),
(193, 176, 13),
(194, 177, 13),
(195, 178, 13),
(196, 179, 13),
(197, 180, 5),
(198, 181, 13),
(199, 182, 5),
(200, 182, 4),
(201, 183, 5),
(202, 184, 5),
(203, 184, 10),
(204, 185, 5),
(205, 186, 5),
(206, 187, 5);

-- --------------------------------------------------------

--
-- Table structure for table `presenters`
--

CREATE TABLE IF NOT EXISTS `presenters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Credentials` tinytext,
  `Profile` mediumtext,
  `email` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `Name` (`Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=184 ;

--
-- Dumping data for table `presenters`
--

INSERT INTO `presenters` (`id`, `Name`, `Credentials`, `Profile`, `email`, `address`) VALUES
(1, 'Shashikant Khandelwal', 'Cofounder / Chief Architect / CTO,\r\nTheFind Inc.\r\n\r\nM.S. (Computer Science)\r\nStanford University\r\n\r\nBE. (Computer Science)\r\nBITS Pilani, Class of 2001', 'Shashikant is BE(Hons) CS from BITS Pilani (2001), and MS CS from Stanford (2004). He is currently leading the technology team at TheFind Inc. <a href="http://www.thefind.com">TheFind</a> is a search engine startup which is trying to break the barriers of comprehensiveness and relevance for shopping search. ', 'fd97093@yahoo.com', '310 Villa St, Mountain View, CA - 94041'),
(2, 'Mayur Shah', 'Senior Software Engineer,\r\nQualcomm Inc,\r\n\r\nM.S. (Electrical Engineering)\r\nArizona State University\r\n\r\nM.Sc. (Physics), B.E. (Electrical & Electronics)\r\nBITS Pilani, Class of 2002.', 'Mayur Shah received M.S. in Electrical Engineering from Arizona State University in 2004. He received B.E.(Hons.) in Electrical Engineering and M.Sc. (Hons.) Physics from Birla Institute of Technology and Science, Pilani, India, in 2002. He is currently working on GPS receiver algorithm design at Qualcomm. ', 'mayurshah530@yahoo.com', '2235 California Street, Apt 193, Mountain View, CA - 94040'),
(3, 'Shilpa Gupta', 'Phd (Industrial Statistics) Arizona State University\r\n\r\nMS (Industrial Engineering) Arizona State University, 2004\r\n\r\nBE (Hons) Mechanical Engg, BITS Pilani, 2001', 'Shilpa Gupta is currently doing Phd in Industrial Statistics at ASU. She holds a Six Sigma Black Belt and a Certificate in Statistics.', '', ''),
(4, 'Sagnik Nandy', 'Software Engineer, Google Inc\r\n\r\nPhd Computer Science, UCSD, 2005\r\n\r\nBE(Hons) CS, BITS Pilani, 2001', 'Sagnik Nandy received his B.E. (Hons) in Computer Science from BITS, \r\nPilani in 2001. He subsequently went to University of Califronia, San Diego and recieved his PhD in Computer Science in 2005. He is currently working as a Software Engineer at Google in Mountain View, CA. ', '', ''),
(5, 'Nitish Korula', 'Phd CS, UIUC\r\nBE(Hons) CS, BITS Pilani', 'Nitish is pursuing a PhD at UIUC in Algorithms', '', ''),
(6, 'Ashish Shah', 'Lead iSCSI team, CISCO Systems,\r\nMS EE, Stanford, 2001, \r\nBE(Hons) EEE, BITS Pilani, 1998\r\n', 'Ashish Shah is BE(Hons) EEE from BITS Pilani (1998), and MS EE from Stanford (2001). He is currently leading the iSCSI team in the MDS SAN Switch product line at the Data Center Business Unit of Cisco Systems in San Jose, CA.', 'ashishbshah@gmail.com', '7385 Briza Loop, San Ramon CA 94582'),
(7, 'Satyam Vaghani', 'Lead, Structured Data Access Group, Vmware,\r\nMS CS, Stanford, 2002,\r\nBE(Hons) CS, BITS Pilani, 2000', 'Satyam Vaghani is BE(Hons) CS from BITS Pilani (2000), and MS CS from Stanford (2002). He is currently leading the Structured Data Access R&D group at VMware headquarters in Palo Alto, CA. VMware, an EMC company (NYSE: EMC), is the global leader in virtual infrastructure software for industry-standard systems.', '', ''),
(8, 'Ketan Bhatt', 'Post Doctoral Fellow, UIUC,\r\nPhd, Chemical and Biomolecular Engg, NCSU, 2006,\r\nBE(Hons) Chemical Engg, BITS Pilani, 2001\r\n', 'Ketan Bhatt received his B.E. (Honors) in Chemical Engineering from BITS, \r\nPilani in 2001. He joined Professor Orlin Velev’s research group at North Carolina State \r\nUniversity in Raleigh soon after. He received his M. S. in Chemical in 2003 and his Ph. D. \r\nin Chemical & Biomolecular Engineering in 2006. His graduate research was focused on \r\nthe manipulation and assembly of colloidal particles and fluids using alternating electric \r\nfields. His research work has lead to publications in such prestigious journals as Nature \r\nand Nature Materials. He has accepted a post doctoral research position in Professor \r\nJennifer Lewis’s research group at University of Illinois at Urbana-Champaign starting \r\nSeptember 2006. ', '', ''),
(9, 'Pramila Rani', 'R&D Engineer, Metis Design,\r\nPhd, Electrical Engg, Vanderbilt University, 2005,\r\nBE(Hons) EEE, BITS Pilani, 2001\r\n', 'Pramila Rani, R&D Engineer at Metis Design, received her B.E(Honors) in Electrical & Electronics Engineering from Birla Institute of Technology and Science in 2001, and M.S. in Electrical Engineering from Vanderbilt University in 2003. As part of her Masters’ work she developed a fuzzy-logic based affect-recognition system that could predict the underlying affective state of a person from his/her physiological signals. Continuing her research in this field, she received her Ph.D. in Electrical Engineering from Vanderbilt University in 2005. Her research focused on the area of human-robot interaction in which she developed affective feedback-based implicit communication framework for advanced human-robot interaction. She specializes in signal processing, machine learning, robotics, and linear control theory. Her work on making intelligent, emotion-sensitive robots was featured in several news websites and on TV, including BBC and TechTV. She was among the 35 students selected worldwide to take part in the RAS/IFRR Summer School on "Human-Robot Interaction" in July 2004. She was also nominated for the Chancellor’s list during 2004 and then again in 2005. Dr. Rani has several technical publications in her areas of expertise, including three book chapters, and is currently a member and contributing author for the IEEE, and AAAI. ', '', ''),
(10, 'K L Arvind', 'Manager of Technology, Sarnoff in India', 'Arvind graduated from Birla Institute of Technology and Science with a Masters degree in Systems Software and a Masters degree in Chemistry. He then went on to do a PhD in Robotics from Carnegie Mellon University. During the course of graduate study, he also dabbled with a startup on virtual medical simulation and also had a stint at a high-technology small business (Intelligent Automation). After that he worked at Honeywell, Bangalore for some time and now he is managing technology for Sarnoff in India.', '', ''),
(11, 'Sivaramakrishnan Narayanan (k2)', 'PhD, CS, OSU,\r\nBE(Hons) CS from BITS Pilani, 2002\r\n', 'k2 is BE(Hons) CS from BITS Pilani (2002) and is currently pursuing PhD at The Ohio State University, Columbus, OH. He has two arms and two legs.', 'k2_181@yahoo.com', '865 Deacon Circle Columbus, OH - 43214'),
(12, 'Arthi Jayaraman', 'Phd, Chemical Engg, NCSU, 2006,\r\nBE(Hons) Chemical Engg, BITS Pilani, 2000\r\n', 'Arthi Jayaraman received her B.E. (Hons) in Chemical Engineering at BITS Pilani in 2000. She went on to work with Dr. Carol K. Hall and Dr. Jan Genzer at North Carolina State University and got her M.S. Chemical Engineering in 2002 and Ph D in Chemical Engineering in 2006. Her doctoral work was devoted to understanding molecular recognition in biomimetic polymer systems using computer simulations. Her research has been published in high impact journals such as Physical Review Letters and Biophysical Journal. Currently, she is doing her postdoctoral work with Dr. Kenneth Schweizer in the department of Material Science and Engineering at University of Illinois at Urbana-Champaign.', '', ''),
(13, 'Ayusman Sarangi', 'Software Engineer, Adobe Systems,\r\nM.Sc  (Hons) Biology with BE(Hons) CS from BITS Pilani, 2003', 'M.Sc  (Hons) Biology with BE(Hons) CS from BITS Pilani, 2003\r\nAfter working with Sun Microsystems, Bangalore for a short period, I have been working with Adobe Systems, Noida .', '', ''),
(14, 'Chinmaya Mishra', 'PhD EE, Texas A & M,\r\nBE(Hons) EEE, BITS Pilani, 2002\r\n', 'Chinmaya Mishra received the B.E. (Hons.) degree in\r\nElectrical and Electronics Engineering from BITS,\r\nPilani in 2002 and the M.S. degree in Electrical\r\nEngineering from Texas A&M University, College\r\nStation, TX in 2004. Since the fall of 2004, he has\r\nbeen working toward the Ph.D. degree at the Analog and\r\nMixed Signal Center, Texas A&M University. \r\nIn the spring of 2002, he was an intern in the DSP\r\nDesign Group at Texas Instruments, Bangalore, India.\r\nDuring the summer of 2005, he was a RF IC Design\r\nEngineer (intern) at WiQuest Communications, Allen,\r\nTX. Since February 2006, he has been an intern in the\r\nCommunications Technology Department at IBM T. J.\r\nWatson Research Center, Yorktown Heights, NY. \r\nMr. Mishra received the IEEE Solid-State Circuits\r\nSociety Predoctoral Fellowship for 2006-2007. \r\n', '', ''),
(15, 'Shivakumar G', 'Software Engg, Yahoo India,\r\nBE(Hons) CS, BITS Pilani, 2005', NULL, '', ''),
(16, 'Subramaniyan Krishnan', 'MBA, ISB, 2005,\r\nBE(Hons) EEE, BITS Pilani, 2001', 'Worked for DaimlerChrysler Research & Technology India for three years before completing MBA from Indian School of Business (Class of 2005. Working with Trilogy India for the past one year.', 'fd97116@yahoo.com', 'Trilogy E-Business Software India Pvt Ltd, No 5, Salarpuria Infinity, Bannerghatta Road, Bangalore - 560029, Karnataka'),
(17, 'Madhurjya Banerjee', 'IIM Bangalore, 2005-2007, BE(Hons) E&I, BITS Pilani, 2001-2005', '', 'madhurjya82@yahoo.com', '64, Khelat Babu Lane, Kolkata - 700037, West Bengal'),
(18, 'Ankush Bagotra', 'Be(Hons) BITS Pilani, 1999', 'Presntly Working with Atrenta India Pvt Ltd as Lead Engineer', '', ''),
(20, 'Madhusudan S.N.', 'Mahindra British Telecom, \r\nPGDBM, IIMA, 2005,\r\nBE(Hons) EEE, BITS Pilani, 2001', 'Madhu is working onsite with Bristish Telecom in London and graduated from IIMA', 'sn_madhusudan@yahoo.com', '82, Pempath Place London HA9 8QR United Kingdom'),
(21, 'Nasir Memon', 'Professor - Department of Computer and Information Science & Director, ISIS Lab, Polytechnic University.\r\nPhd, CS, UNL, 1992,\r\nBE(Hons) Chemical MSc Mathematics, BITS Pilani, 1982\r\n', 'Prof Memon has strong research interests in Data Compression, Computer and Network Security, Digital Forensics and Multimedia Processing. For more information, please visit <a href="http://isis.poly.edu/memon" target="_blank">his home page</a> and <a href="http://isis.poly.edu" target="_blank">his lab</a>', 'memon@poly.edu', '6 MetroTech Center, Polytechnic University, Brooklyn, NY 11201 USA'),
(22, 'Saurabh Deshpande', 'PhD student, CS, Univ of Rochester, NY,\r\nBE(Hons) CS, BITS Pilani, 2005', 'Saurabh Deshpande is a second year Phd student in\r\nStatistical NLP at University of Rochester, NY. He\r\ngraduated from BITS, Pilani in 2005 with a dual degree\r\nin Computer Science and Biological Science.\r\n', 'saurabh@cs.rochester.edu', '7/A, Sur-Sangam Apts, Mirambica Rd, Naranpura, Ahmedabad - 380013'),
(23, 'Aditya P. Mathur', 'Professor of Computer Science & Associate Dean, Graduate Education, School of Science, Purdue University,\r\nPhD, Computer Science, BITS Pilani, 1977\r\n', 'Aditya Mathur conducts research in the areas of software testing, reliability, and formal approaches for software process control. Mathur has been a crusader for the use of code coverage criteria in the estimation of software reliability or as an orthogonal metric to assess confidence in the reliability estimates. He has proposed the "Saturation Effect" as a motivating device for quantitative test assessment using an increasingly powerful suite of criteria. This device is often used by vendors to enhance marketing of their test tools. Mathur, in collaboration with Raymond DeCarlo, has pioneered research into the use of feedback control in software development.\r\nPlease visit his webpage <a href="http://www.cs.purdue.edu/people/faculty/apm/"> here</a>', '', ''),
(24, 'Shampa Kandoi', 'PhD Chemical Engg, U Wisc-Mad, 2006,\r\nB.E. (Hons) Chemical Engineering, BITS, Pilani, 2001', 'Shampa Kandoi received her B.E. (Honors) in Chemical Engineering from BITS, Pilani \r\nin 2001. Subsequently, she joined University of Wisconsin-Madison and started working \r\non her PhD in the area of heterogeneous catalysis and surface science, under the \r\nsupervision of Prof. Manos Mavrikakis and Prof. James A. Dumesic. As part of her \r\ndoctoral work, she has employed a combination of theoretical calculations, experiments, \r\nand microkinetic modeling to study industrially important chemical reactions, primarily \r\nfocusing on the production and purification of hydrogen for fuel cell applications. She \r\nhas several publications in peer-reviewed journals and has presented her research at \r\nvarious occasions. After defending her PhD thesis in August 2006, she will be taking up a \r\nresearch position in the Fuel Cells (Power) division of United Technologies Corporation. ', '', ''),
(25, 'Karthick Chinnaswami', 'Sr Staff Engg, Qualcomm,\r\nMS CS, Clemson University,\r\nMSc(Tech), IS, BITS Pilani, 1994', 'Karthick Chinnaswami (90C6xxxxx) graduated from Pilani with M.Sc.(Tech.) Information Systems in 1994 and M.S. Computer Science from Clemson University. He is currently a Senior Staff Engineer/Manager at Qualcomm where he is co-architect of an effort for refactoring the multimedia subsystem.', 'karthick@qualcomm.com', '9753 Wren Bluff Dr, San Diego, CA 92127'),
(26, 'Ashish Garg', 'Working in Cypress Semiconductor, San Jose,\r\nBE(Hons) Instrumentation, BITS Pilani, 2001\r\n\r\n', 'Ashish is also the secretary of BITSAA Silicon Valley Chapter.', '', ''),
(27, 'Sanketh Shetty', 'PhD (ECE) UIUC (current),MS(EE) NCSU(04-06), B.E(Hons.) EEE BITS Pilani (00-04) ', NULL, 'sanketh.shetty@gmail.com', '202 E John Street, B 12, Champaign, IL - 61820, USA'),
(28, 'V Sravan Kumar', 'ICICI Bank\r\nPGDBM, IIMA, 2003, BE(Hons) EEE, BITS Pilani, 2001', NULL, '', ''),
(29, 'Uma Chandrasekaran', 'Grad Student, Medical College of Georgia, USA, \r\nMSc(Bio Sci), BE(Hons) Instrumentation, BITS Pilani, 2005', 'Uma Chandrasekaran, Graduate student  at Medical College of Georgia(MCG), received her M.Sc(Hons.) Biological Sciences and B.E(Honors) in Electrical & Instrumentation Engineering from Birla Institute of Technology and Science in 2005. She did her Summer Fellowships in India (IISc) as well as in Medical College of Georgia(USA).As part of her Internship  she worked on signal transduction in T-cells  and went on continue her Phd with the same lab group in MCG. At present her area of research is Regulatory T-cells, their enrichment and delineation of their signaling.', '', ''),
(30, 'Alagu Periyannan, Jayan Ramankutty, Prem Jain, Punita Pandey, Raju Reddy, Vivek Paul', NULL, NULL, '', ''),
(31, 'Mahima Swamy', 'Graduate Student( Phd) in Molecular Immunology,  Max Planck Institute for Immunobiology, Freiburg, Germany 2003.\r\n<br>\r\nM.Sc. Biological Sciences, ME, Biotechnology BITS Pilani, 1998-2003', 'Mahima Swamy is currently a Phd student in molecular immunology at the Max Planck Institute for Immunobiology, Germany. She completed her M.Sc. Biological Sciences and M.E., Biotechnology from BITS Pilani in 2003.', '', ''),
(32, 'K Yogesh', NULL, NULL, '', ''),
(33, 'Manoj Kannan', 'M.Sc. (Tech.) Information Systems, M.E. Biotechnology from BITS-Pilani', 'Manoj went to BITS in 1996 and did both his undergraduate and masters degrees there. Manoj is working toward Ph.D. at the National Cancer Institute, Maryland, USA.', '', ''),
(34, 'Dr Rahul Ganguly', 'B.Pharm, BIT, Mesra, 1992,\r\nM. Pharm, BITS, Pilani, 1994,\r\nPh.D, University of Georgia, 2003\r\n', 'Dr. Ganguly works on the health economic and outcomes research aspects of\r\nneurological products in early phases of development at GlaxoSmithKline, Global Research and Development. He is also adjunct assistant professor at\r\nthe University of Arkansas, Pharmaceutical Evaluation and Policy department. Before joining GlaxoSmithKline he was on faculty at the University of Mississippi, School of Pharmacy teaching and developing a research program in health economics and outcomes research.\r\n<p>\r\nHis research interests are:\r\n\r\n<li> Methodological issues in retrospective database research. For e.g. techniques for reducing selection bias, research design\r\n<li> Reimbursement and access for pharmaceutical products and their impact on overall resource utilization (Policy analysis)\r\n<li> Cost-effectiveness analysis of pharmaceutical products (Decision modeling)\r\n\r\n', 'rahgang@hotmail.com', '5108-203 copper ridge drive, durham, NC - 27707, USA'),
(109, 'Dr. Subhash Gupta', 'CEO of "Apex Decisions"', 'PhD,Physics,Columbia University\r\nMS,Physics,Columbia University\r\nM.A. M.Phil', '', ''),
(35, 'Sasi Kanth Chemalamudi', NULL, 'Founded Habits Edutainment Pvt. Ltd. - India''s first Edutainment Company. We have two more divisions - Habits Technology Office and Habits Business Consultancy Division (for start-ups and small-businesses)\r\n<br>\r\nWe are a team of 8 as of now and we are organising our second recruitment drive aiming at being a team of 18 by  mid Feb.\r\n<br>\r\nWe are working on lauching Habits Edutainment Lounges all over the city of Hyderabad (and gradually spread all over India)\r\n<br>\r\nI was selected by BusinessWeek as one of Asia''s 20 Best Entrepreneurs under the age of 25. I wish to have a degree in Entrepreneurship from INSEAD (France) once I set Habits on the track perfectly ', 'sasi@habits.in', ''),
(36, 'Abhinav Khushraj', 'Strategy & Business Development Manager at NOKIA, USA\r\nMSc.(Tech) Information Sys. from BITS Pilani(1999)\r\nMBA from MIT Sloan School of Management (2008)\r\nMS in computer science, University of Florida (2001)', 'Abhinav is a strategy and business development manager at Nokia. He has worked at General Catalyst Partners conducting due diligence of internet startups. Previously he has worked at Booz Allen in strategy consulting. He actively pursues business ideas and advises wireless and internet startups. He is involved with BITSAA CEL initiatives and has been a BITS Embryo speaker. While doing his MBA at MIT Sloan School of Management, he led the MIT VC Conference and introduced the MIT Entrepreneurship Showcase drawing entrepreneurs from across the world. Previously, he worked at Citrix Systems leading product development for a new business line. ', 'akhushraj@gmail.com', ''),
(37, 'Abhinav Gattani', 'MBA Student, Kellogg''s School of Management', NULL, 'abhinav_gattani@yahoo.com', ''),
(38, 'Prerna Goel', 'MBA, Queens Business School', 'Prerna Goel did her MBA from Queens School of Business, Canada. She is currently working with CIBC Toronto. Previously, she worked for close to three years in Texas Instruments and had a brief stint at Techspan India Ltd.\r\n', 'prernagoel@gmail.com', ''),
(39, 'Vamsi Krishna Sridharan', 'Doctoral Research Scholar, Environmental Fluid Mechanics and Hydrology, Department of Civil and Environmental Engineering ,Stanford University\r\n\r\n\r\n', 'Vamsi graduated from BITS with BE (Hons) Civil Engineering Degree as part of the class of 2004. He then did Master of Science (M.Sc.)\r\nDegree in Environmental Science and Engineering, from the Singapore Stanford Partnership Program (SSP), a joint program with Stanford\r\nUniversity and Nanyang Technological University (NTU), Singapore, and graduated in 2005. He worked in Singapore at NTU as a Project Officer\r\nunder Dr. Adrian Law in the area of Fluid Mechanics applied to membrane bioreactors for wastewater treatment. He is currently pursuing a PhD in Environmental Fluid Mechanics at Stanford University under the guidance of Dr. Stephen Monismith. He is working on a computational model to study the effect of flows in the San Fancisco Bay on movement of fish larvae. His research experience includes computational modeling and lab scale non-invasive measurements of fluid flow. For the past two years, he has also been a teaching assistant in three graduate level courses in Fluid Mechanics and Hydrology taught at Stanford University. While at BITS, He was an active member of the Civil Engineering Association , and served as second year representative of the association and as APOGEE coordinator and High rise magazine sub-editor in his third year. Some of the projects he worked on while at BITS are: Expert system based drought management under Dr. K. S. Raju, GIS based drought management under Dr. Rajiv Gupta, Municipal Solid Waste characterization in Vidya Vihar campus under Dr. V. Ramakrishna and design and fabrication of live suspension bridge under Dr. S.P. Gupta. He was also an active member of the Department of Trophy Fabrication during  and the Department of Closed Circuit Television during his first year. During his second and third years, he was also involved in the cultural activities of the Pilani Tamil Mandram (PTM) as an amateur pantomimer.', '', ''),
(40, 'Dr.Lakshminarayanan Samavedham', 'Assistant Professor,National University Of Singapore<br/>\r\nB.E(Hons) Chemical Engineering1988, BITS Pilani <br/>\r\nMS (Chemical Engineering.),IIT Madras, <br/>\r\nPhD (Process Control)  University of Alberta, Canada, 1997.', NULL, '', ''),
(41, 'Sameer Singla', 'ISB, India', NULL, '', ''),
(42, 'Venu Palaparthi', NULL, NULL, '', ''),
(43, 'Vivek Paul', 'Partner, Texas Pacific Group. <br>\r\nFormerly, Vice Chairman, Wipro and CEO of its global information technology, product engineering, and business process services segments', 'Vivek Paul, is one of the most influential business persons in the world.  A EEE graduate from BITS, Pilani, he received his MBA from University of Massachusetts.  He has been ranked the &quot;Best Manager of the Year&quot; in 2004 by Business World.  He has also been named one of the &quot;Top 30 CEO&#39;s by Barrons.\r\n<br>\r\nStarting his career at Pepsi Co, he did a short stint at Bain & co. He also ran the global CT (Computerized Tomography) business of GE and reported directly to the Chairman of GE.  In fact he was hand picked by Jack Welch for the job. He also did valuable work as the President and CEO of GE&#39;s medical equipment JV in India.  In his tenure as the President, he made it the &quot;best joint venture in Asia&quot; (Source: The Economist) and made India a large exporter of high value engineering goods.\r\n<br>\r\nHis most famous success as a manager has been the exponential growth of Wipro Technologies that he achieved while at the helm of it&#39;s global IT, product engineering, and business process services segments.  He converted this $150 million business into a $1 billion behemoth in just six years. During his tenure as Vice Chairman of Wipro, he was the most highly paid executive in India.  After quitting Wipro, he joined the venture capital firm, Texas Pacific Group as a partner.  Currently, he oversees the new technologies and life sciences investments of the group working in close co ordination with its Asian arm, Newbridge Capital.  The group manages a global portfolio of approximately $70 billion in revenue. Besides TPG, he is also serving on the board of Electronic Arts and is a member of the BITS Senate.', '', ''),
(44, 'Dr. Harsh Bais', 'University of Delaware', NULL, '', ''),
(45, 'Jayan Ramankutty', 'Serial Entrepreneur ', 'Jayan Ramankutty (1971 batch) is Vice President of Cypress Semiconductor’s Data Communications division, and co-founder and Director of Empowertel.  Jayan was founder, President and COO of Lara Networks, Inc., which he sold to Cypress Semiconductor in 2000. He has held various senior level technical and management positions in Alliance Semiconductor, VIA Technologies and Elxsi. He also founded, and sold Nimbus Technology to Alliance Semiconductor prior to going IPO. Jayan has over 18 years of extensive experience in the field of research, design and development of large, multi-processor computer systems, complex ASICs and SoCs targeted towards networking and telecommunication markets. Jayan holds an MS in Computer Engineering from San Jose State University and a BE (Hons) EEE from BITS. He is currently chief executive officer of Yume Networks, a San Jose startup that delivers broadband content for Indian ex-patriate.', 'jayanr@yahoo.com', ''),
(46, 'Amit Krishnan', 'Senior Product Manager, Microsoft Corporation', NULL, '', ''),
(47, 'Laetitia Pichot de Cayeux', 'Texas Pacific Group', 'Laetita is an alumnus of Harvard Business School. She has also worked with Goldman Sachs. Currently she is with the Texas Pacific Group.', '', ''),
(48, 'Shanta Boddapati', 'Batch of 2001, B.E. Chemical Engineering,<br> Ph.D candidate in Chemical Engineering, Arizona State University', NULL, '', ''),
(49, 'Raju Reddy', 'Founder and CEO, SierraAtlantic, \r\nBE(Hons) EEE, BITS Pilani, \r\nMSCS, Virginia Tech', 'Raju is the founder and CEO of Sierra Atlantic. With over 1,000 employees, Sierra Atlantic is headquartered in Silicon Valley, has a Global Development Center in Hyderabad, India and offices around the world. Under his leadership, Sierra Atlantic has become a Best-in-Class Global Services company. Before founding Sierra Atlantic in 1993, he spent 10 years at Intel in software development, marketing and general management.\r\n\r\nRaju holds a Bachelor of Science degree in electrical engineering from BITS Pilani and a Master of Science degree in computer science from Virginia Tech.\r\n\r\nRaju is a member of the BITS Pilani Board of Directors and a Charter member of TiE Silicon Valley. He also served as a member of the Board of Trustees for Puente, a Wharton School non-profit program which helps under-privileged communities worldwide gain access to technology. Raju also co-founded SIPA (Silicon Valley Indian Professional Association) along with other young Indian engineers from Silicon Valley in 1987.', 'Raju.Reddy@SierraAtlantic.com', '6522 Kaiser Drive, Fremont, CA 94555'),
(50, 'Chandra Bhople', 'Director, Business Development, Osellus\r\nBE(Hons) EEE, MMS, BITS Pilani, 1981', 'Chandra has 20 years of U.S. and international experience in sales, business development, and marketing for software, hardware and services companies in financial, telecommunications, government, manufacturing and education sectors. He has held executive and management positions at Formulasys, TechSpan (now Headstrong), Sun Microsystems, SysScan Asia, and Digital Equipment. Chandra earned his Bachelor''s degree in Electrical and Electronics Engineering, and MBA with distinction from BITS Pilani, India.', 'cbhople@gmail.com', '19400 Sorenson Avenue (#107), Cupertino, CA 95014'),
(51, 'Deelesh Mandloi', 'Product Engineer, ESRI, Redlands <br> \r\nM.S Geography with specialization in Geographical Information Systems (GIS) and Science , State University of New York, Buffalo <br>\r\nB.E(Hons) Civil , BITS Pilani (''99 Batch)', 'Deelesh is currently working with Network Analyst team at ESRI Redlands,  that builds the Network Analyst extension for ArcGIS. He helps in design and testing of software, prepare software documentation, create developer code samples and assist software users with technical questions.  Earlier at ESRI, he has worked with ArcWeb Services group at the ArcWeb Content team building new data sources for the product, updating existing data sources and evaluating the suitability of the data from new data providers for future ArcWeb content.  He holds an MS from SUNY Buffalo with GPA of 4.0/4.0.', '', ''),
(52, 'Team BITS2MSPHD', '', 'Team BITS2MSPHD consists of Karthik Narayanan, Addala Bhargav, Mayur K Siddana, BITSian alumni who have pursued various graduate courses abroad after their BITS Bachelor''s degree.', '', ''),
(53, 'Shampa Kandoi', 'Ph.D. Chemical Engineering (University Of Wisconsin -Madison) <br>\r\nB.E (Hons.) Chemical Engineering, BITS Pilani (''97)', NULL, '', ''),
(54, 'Amit P. Sheth', 'Professor: Computer Science & Engineering, Wright State University, \r\nDirector: Kno.e.sis Center<br/>\r\nPhD CS, Ohio State, 1985<br/> BE(Hons) Computer Science, BITS Pilani,1981', 'Amit Sheth is an educator, researcher, and entrepreneur. He is the LexisNexis Ohio Eminent Scholar for Advanced Data Management and Analysis, an endowed faculty position funded by LexisNexis and the Ohio Board of Regents at Wright State University. He directs the Kno.e.sis center for Knowledge enabled Information & Services Science. The Center and Eminent Scholar''s activities are housed on the third floor of the WSU College of Engineering and Computer Science''s new $10 million Joshi Research Center, which is the focal point for statewide research in advanced data management, visualization, bioinformatics, sensor technologies, and more.\r\n<p>\r\n<a href="http://knoesis.wright.edu/amit/">http://knoesis.wright.edu/amit/</a>', 'amitpsheth@yahoo.com', ''),
(55, 'Mr. Karthik N.Subramania', 'BE(Hons)Electronics & Instrumentation, BITS\r\nPilani(''01 batch) <br>\r\nM.S. Electrical Engineering, Stanford\r\nUniversity', '', '', ''),
(56, 'Mr. Anupam Mathur', 'B.E.(Hons)Mechanical Engineering,\r\nBITS Pilani(''99 batch) <br>\r\nMBA,IIM Ahmedabad <br>\r\nBoston Consulting Group, Singapore', NULL, '', ''),
(57, 'Mr. Deepak Kapur', 'IIM Indore & BITS Graduate(''95\r\nbatch) <br>\r\nVisiting Faculty, Finance & Acc.(IIM\r\nIndore)', NULL, '', ''),
(58, 'Kaushik Subramanian', 'Cypress Semiconductors', NULL, '', ''),
(59, 'Pankaj Nathani', 'BE(Hons) CS from BITS Pilani, 1998-2002 \r\n\r\nMS Computer Science University of Utah 2005-07.', 'Pankaj did his BE(Hons) CS from BITS Pilani(1998-2002). He did his MS Computer Science from University of Utah (2005-07). He is currently working with Adobe Systems, Seattle.', '', ''),
(60, 'Ayusman Sarangi & Pankaj Nathani', 'Ayusman Sarangi: M.Sc (Hons) Biology with BE(Hons) CS from BITS Pilani, 2003.                           Pankaj Nathani: BE(Hons) CS from BITS Pilani, 1998-2002. MS Computer Science University of Utah 2005-07.', 'Ayushman did his M.Sc (Hons) Biology with BE(Hons) CS from BITS Pilani, 2003. After working with Sun Microsystems, Bangalore for a short period, he has been working with Adobe Systems, Noida .              Pankaj did his BE(Hons) CS from BITS Pilani(1998-2002). He did his MS Computer Science from University of Utah (2005-07). He is currently working with Adobe Systems, Seattle.', '', ''),
(61, 'Anyesha Mookherjee', 'Traffic Engineer at URS<br/>\r\nMSCE Civil Engg, UMA 2003, BE(Hons) Civil Engg, BITS Pilani, 2001\r\n', 'http://www.blogger.com/profile/12828631537050815636\r\n\r\n', 'anyesha@gmail.com', ''),
(67, 'Pranesh A Sundararajan', 'M.Sc. (Hons.) Physics with B.E. (Hons.) EEE(2005) from BITS, Pilani.\r\nPurusing Ph.D. at Massachusetts Institute of Technology, Boston.\r\n', 'The author obtained his bachelors degree in Physics and Electrical Engineering at BITS, Pilani in 2005. He is now pursuing a Ph.D in Physics at MIT.', 'pranesh@mit.edu', ''),
(68, 'Prof. Naba Mandal', 'Dept. of High Energy Physics,\r\nTata Institute of Fundamental Research\r\n', 'Prof. Mondal, a very well known experimental particle physicist, is a member of the Department of High Energy Physics, Tata Institute of Fundamental Research, Mumbai India. An ex-chairman of the department, he is a leading contributor in many national and international experimental collaborations. Notable among them are the D0 collaboration at Fermilab, Batavia, Illinois, and CMS at CERN, Geneva. Currently he is leading a very ambitious project "India-based Neutrino Observatory (INO)". The project is under the review of Govt. of India. INO will be one of the biggest venture of Govt. of India, in Science.', '', ''),
(69, 'Karthik Krishna', NULL, NULL, '', ''),
(70, 'Krishna Hegde', 'MBA, Tuck Business School, Dartmouth <br/>\r\nBE(Hons) Computer Science, BITS Pilani, 2000.\r\n', 'Krishna Hegde (''96) currently works at Lehman Brothers, New York in the Credit Strategy team. Before joining Lehman, Krishna earned his MBA from the Tuck School of Business at Dartmouth College. From BITS, he joined Hindustan Unilever as a Business Leadership Trainee and subsequently worked as an IT manager handling business intelligence systems for sales and supply chain. At Pilani, he did his BE (Hons) in Computer Science. He lives in New Jersey with his wife Priya. Krishna co-founded BITS2Bschool and coordinated the public-relations efforts within India for BITSConnect.', '', ''),
(71, 'Prasenjit Bhowmik', 'Design Engineer, Cosmic Circuits, BE(Hons) EEE BITS Pilani Class of 1998', 'Prasenjit has 6 years of experience at ST Microelectronics and 2 years at Texas Instruments before joining Cosmic Circuits as a Design Engineer.', '', ''),
(64, 'Naveen Bisht', 'Co-Founder & Managing Partner, Luxmi Ventures, LLC<br>\r\nFounder, President & CEO, Nayna Networks<br>\r\n', '<p> Naveen Bisht is a successful technology entrepreneur in Silicon Valley and brings expertise and entrepreneurial success in launching, developing and investing in high technology companies across multiple industries. His, over 18 years of experience in high growth technology and services sectors include Cross-Border Team Building & Management, Operations, Business/Product Development, Mergers and Acquisitions, Turnarounds, Startup Strategic Advisory Services and Strategic Planning and Negotiation Skills.  </p>\r\n\r\n<p>\r\nNaveen is Co-founder and Managing Partner of Luxmi Ventures, LLC - a seed stage angel fund, to focus on networking, internet, software and services market.\r\nSome of the successful exits from this fund have included Netscaler Inc (acquired by Citrix Systems, NASDAQ: CTXS), Speedera Networks (acquired by Akamai Technologies, NASDAQ: AKAM), Paxonet Communications\r\n(Conexant, NASDAQ: CNXT),  and Valicert (Tumbleweed Communications, NASDAQ: TMWD. He is also an advisor to several startup companies including Kirusa, Inc. - a mobile application company.\r\n</p>\r\n\r\n<p> Most recently, he was Founder, President & CEO, of Nayna Networks, Inc.; a networking solutions and services company, where he was resonsible for the overall strategic direction and general management of the company. At Nayna, Naveen raised over $80 Million dollars from VC and PIPE Funds and completed five strategic acquisitions of technology and Services Company for Nayna in addition to completing a reverse merger of Nayna into a public company. </p>\r\n\r\n<p> Prior to this, he founded Ukiah Software, Inc. - a leader in policy-based bandwidth and security management software systems for service provider and\r\nenterprise networks. He served as its President and CEO since its inception till its acquisition by Novell, Inc. in 1999. Ukiah received a number of awards including Top 10 companies to watch in 1999 by Network World and Top 25 Hot Startups of 1998 by Data Communications Magazine, 1999 and 1998 Hot Product Awards by Data Communications Magazine, 1999 Product of the Month Award by Telecommunications Magazine and\r\nNetwork World''s Blue Ribbon Award. Previously, he  was Founder and President of NeoGlobal, Inc, a Software\r\nConsulting Services company focused on internet, enterprise software and networking market.   </p>\r\n\r\n<p> He holds MS from Texas Tech University, MS and BSME from Birla Institute of Technology & Science, Pilani. He also attended Ph.D. program at University of California, Santa Barbara and holds several patents in  the area of Quality of Service and security management  in IP Networks. He has published a number of papers on the trends and issues in networking industry and is a  member of The Indus Entreprenuers , a global non-profit organization focused on entrepreneurs. </p>', 'navbis@yahoo.com', ''),
(66, 'Urvashi R.V.', 'Programming Engineer,NRAO,New Mexico<br>\r\nM.Sc.(Hons) Physics with B.E.(Hons) Computer Science (2002). <br>MS in Computer Science from University of California, San Diego', 'Urvashi completed her M.Sc.(Hons.) in Phy along with B.E. (Hons.) Computer Science from BITS Pilani in 2002. She did one PS-II at the National Centre for Radio Astrophysics where \r\nshe got a chance to work with the Radio Telescope operated there. <p>Subsequently, she joined the University of California, San Diego and did her MS in Computer Science with specialization in scientific and parallel computing.<p> In 2004, she joined the New Mexico Tech (Physics dept) for a PhD. She has\r\nworked part-time as a programmer in the scientific computing group at the National Radio Astronomy Observatory for the past 3 years and is now doing\r\nfull-time work on her thesis - "Multi-Frequency Synthesis Imaging in Radio Interferometry" relating to Wide-band Image Reconstruction\r\nalgorithms.', '', ''),
(72, 'Keerthivasan', 'Pursuing Masters at Texas A&M, B.E. (Hons) Electronics & Instrumentation BITS Pilani (2005)', 'Mr.Keerthivasan is an Electronics and Instrumentation graduate (Class of 2005) currently pursuing his Masters at Texas A&M University. He is also one of the moderators of BITS2MSPHD yahoogroups with a subscription of over 2000 BITSians accross serving as a discussion forum on all aspects of higher education in the US.\r\n\r\n', '', ''),
(73, 'Saayan Sarkar', NULL, NULL, 'saayansarkar@gmail.com', ''),
(74, 'Anand Agarwal', NULL, 'Mr Anand Mohan Agarwal, CEO SAMVARDHAN is an Engineering graduate from\r\nBITS Pilani, having done B.E. (Hons) in Electrical and Electronics\r\nfrom 1975 – 80.\r\nHe is a professional Consultant and a Motivational Speaker. He has\r\nalready made over 469 presentations (including 1 at BITS Pilani last\r\nyear) to over 23,000 employees of a large number of Corporate all over\r\nIndia.\r\nAs a Financial Consultant his objective is to spread awareness among\r\nthe audience regarding Financial Risk Mitigation, Profitable\r\nInvestments,Personal Wealth Management & General Financial well being\r\nfor young adults\r\n\r\n.', '', ''),
(75, 'Dr Brij Bhushan', NULL, NULL, '', ''),
(76, 'Aparajit Pratap', 'TechPassion Technologies<br/>\r\nM.S., The University of Texas at Austin<br/>\r\nBE (Hon''s) Mechanical, BITS Pilani, 2000', 'Mr Aparajit Pratap graduated from BITS Pilani with a B.E. (Hons) degree in Mechanical Engineering in the year 2000. He subsequently did his MS from the University of Texas at Austin. He is currently working in TechPassion Technologies.', '', ''),
(77, 'Dr.Nilay Yajnik', 'Professor of Information Systems , School of Business Management , NMIMS University, Mumbai', 'Dr.Nilay Yajnik is a Ph.D. in Management Studies from NMIMS (University of Mumbai), a Master of Science (Technology) from the Birla Institute of Technology and Science (BITS), Pilani and Master of Management Studies from\r\nNMIMS (Mumbai University). He has worked with Companies such as Wipro Infotech and Digital Equipment (HP) in areas spanning Business Development, Learning Services and Program Management. At NMIMS University, he has taught courses in Information Technology, Marketing and Perspective Management. He has several publications to his credit at the National and International level.<p>\r\nHe is also a Corporate Trainer and has served on the Executive Boards of Information Technology and Management forums of India. In April 2003, he was awarded the NMIMS Best Faculty award for the year 2002-03. <p>\r\nDr. Nilay Yajnik is on the Editorial Board of Innovate Journal of Online Education of the Fischler School of Education of the Nova Southeastern University, Florida, USA and is also on the Editorial Board of the AIMS International Journal of Management, Texas, USA. He has been appointed as a paper reviewer for the 68th Annual Meeting of the Academy of Management, Anaheim, California, the 14th Americas Conference on Information Systems, Toronto, Canada and the 1st World Summit on the Knowledge Society, Athens, Greece where he is also on the Scientific Program Committee.<p>\r\nDr. Yajnik is on the Executive Committee of the Management Education Division of the Academy of Management USA, the Executive Committee of the Bombay Management Association, India, the National Council of the Indian Society for Training and Development, the Managing Committee of the Computer Society of India (Mumbai Chapter) and the IT Committee of the Indian Merchants Chamber. He is also a Visiting Professor at the Indian Institute of Technology Bombay SJM School of Management.<p>\r\nDr.Yajnik has around 15 years of experience in the IT industry and also around 15 years of teaching experience. His teaching and research interests include Information Systems applications across industry verticals, Innovation , Marketing of High Technology, IT Strategy and the Digital Divide.', '', ''),
(78, 'Jai Natrajan', 'EVP - Business Development, Maya Entertainment Ltd. <br/>\r\nEx-BITSian (89B4A7690)', 'Mr Jai Natrajan is presently the "EVP - Business Development" at Maya Entertainment Ltd. While Technical Director at George Lucas'' studio, Industrial Light and Magic (ILM), he worked on movies like ''Star Wars: Episode 1 The Phantom Menace'', ''The Perfect Storm'', ''Wild Wild West'', ''Flubber'' and ''Mighty Joe Young''. He is currently working on ''Ramayana the Epic'' and ''Noddy'' television series. He was recently awarded the ''Wheel of Honor'' by the AITS.', '', ''),
(79, 'Chaitanya Kalapatnipu', 'Entrepreneur, Founder of KENVIRON<br/>\r\nBITS Pilani, Information Systems Class of 1997', 'Mr Chaitanya Kalapatnipu passed out of BITS Pilani in Information Systems Class of 1997. He worked for an year in the Web Server Development Team at Sun Microsystems, Bangalore. Later, he moved to INSEAD Business School to work initially in the development of Business Simulations and later in business development of their executive education. He completed his MBA from INSEAD in 2006\r\n<p>\r\nAn entrepreneur, Mr Chaitanya Kalapatnipu launched KENVIRON, delivering world-class executive education programmes to Indian Corporates.\r\n', '', ''),
(80, 'Dr.Anand Nilekar', NULL, NULL, '', ''),
(81, 'Arun Ravindran', 'PhD Candidate, Department of Cognitive and Neural Systems, Boston University, Boston, MA, USA', 'Arun Ravindran completed his BE in Electrical and Electronics from BITS Pilani. He graduated from BITS in 2002 and is currently a PhD candidate at the Department of Cognitive and Neural Systems at Boston University, Boston, Massachusetts', '', ''),
(82, 'Dr`Sridhar Ramanathan', 'ReaMetrix India Pvt. Ltd', 'Sridhar Ramanathan graduated from the Birla Institute of Technology and Science (BITS), Pilani , India with a M.Sc (Honors) in Chemistry and a B.E (Honors) in Instrumentation Engineering. He completed a Ph.D in Analytical Chemistry from the University of Kentucky , Lexington , Kentucky and spent a couple of years in post-doctoral research at the US Environmental Protection Agency and University of Kentucky .  He then joined the General Electric Company (GE) to be a part of GE John F Welch Technology Center in Bangalore . He helped set-up the state of the art Analytical Chemistry Laboratory and build the Analytical Chemistry team there. After the stint at GE, Sridhar joined Harita Infoserve, a start-up engineering design services company which is a part of the TVS group as the Quality Head.  He helped build the delivery and business processes at Harita. From business quality, Sridhar went on to initiate the PCMM journey at Harita as the HR-Head.  Sridhar is a Six Sigma Black Belt and a Senior Professional in Human Resources (SPHR) as certified by the Human Resources Certification Institute (HRCI). Sridhar has been with ReaMetrix for the last 2.5 years. ReaMetrix is an innovation driven medical diagnostic solutions company. Sridhar currently is the Director of Product Development and is also responsible for the India Operations of the company.', '', ''),
(83, 'Prem Talreja', 'BS EEE from BITS-Pilani (1975), and MSEE from University of Wisconsin and an MBA from Duke University', 'Prem Talreja is based in the heart if Silicon Valley, California and has over 25 years of experience in marketing, sales and engineering in the electronics industry. He is currently Director of Advance Products at Sigma Designs, a leading supplier of chipsets for IPTV, DVD/Blu-Ray Players, and Digital TVs. Prem has worked in marketing roles in startups and mid-size successful companies including HP, Infineon, Cirrus Logic, Dazzle and Moschip Semiconductor. He lead the successful start up of Dazzle Multimedia to over $60 million in revenue and its acquisition in 2001.', 'prem@sdesigns.com', ''),
(84, 'Dr.Paromita Goswami', NULL, NULL, '', ''),
(85, 'Dr.Anand Nilekar', NULL, NULL, '', ''),
(86, 'Dr.Rangarajan', 'Associate Professor, IIA. Designed and\r\n fabricated a low cost polarimeter along with my Ph.D. student Nagaraj; Solar observations were carried out from Kodaikanal, India with this instrument to measure magnetic fields on sun. Playing an active role in th', 'Schooling in Chennai. Obtained Merit Scholarship, Studied in BITS, Pilani from 1973-78; five year integrated M.Sc (Hons) in Physics; Ph.D. from Indian Institute of Astrophysics (IIA), Bangalore  on Radiative Transfer transfer and spectral line formation theory. Joined the same institute as Scientist. Have published several papers in leading international journals.Worked in Colorado Research\r\n Associates and University Center for atmospheric Research, Boulder,\r\n Colorado from 2000 to 2002 on Sabbatical from IIA.', 'rangaraj@iiap.res.in', ''),
(87, 'Adarsh', 'Adarsh is a MBA candidate at the Wharton School in University of Pennsylvania . After graduation, he will be joining McKinsey & Company as a strategy consultant in their North American operations. Previously he was a lead engineer at Microsoft Corporation', NULL, '', ''),
(88, 'Sudip Dutta', 'Director, Sales, Persistent Systems', 'Sudip is currently working as a Director , Sales, at Persistent Systems. He has close to ten years of combined experience in the management of technology based efforts and sales. He has worked in different roles including sales and optimizing the sales tracking process in a multi-billion dollar organization. He is currently managing , cross selling and up selling into clients. He has exposure in International Market including USA, China, Tiwan & India for close to ten years at Middle and Senior Management levels.', '', ''),
(89, 'Mr. Arun Maharajan', 'Manager Communications, BITSAA Int.', 'Current : Development Engineer at Huber Automotive AG\r\n\r\nEducation :\r\n\r\nFachhochschule Esslingen - Hochschule für Technik\r\nM.Sc., Automotive Engineering\r\n2005 – 2007\r\n\r\nBirla Institute of Technology and Science, Pilani\r\nB.E.(Hons)., Electronics and Instrumentation\r\n1999 – 2003 ', 'arun.maharajan@gmail.com', ''),
(90, 'Padmanabhan Seshaiyer', 'Associate Professor,\r\nDepartment of Mathematical Sciences,\r\nGeorge Mason University\r\n', 'Dr Seshaiyer is an Associate Professor at Department of Mathematical Sciences in George Mason University. His projects are funded by National Science Foundation, Department of Defense and a project will be supported by National Institute of Health as well.\r\n<p>His homepage can be found at\r\nhttp://math.gmu.edu/~pseshaiy/', '', '4400 University Drive, MS: 3F2 Phone: (703) 993-9787'),
(91, '<p>None</p>', '', '<p>Something</p>', '', ''),
(92, 'Mr Vasan', 'Co-Founder and Director, SANAT Technologies', 'Mr Vasan is a BITS alumnus frok the 1989-92 batch. He handled the various engineering divisions of Cisco Systems'' offshore development centre in Chennai in the areas of networking, network management and network storage for around six years. He is the co-founder and director of SANAT Technologies. He is a member of the SNIA and is also a member of the Board of Directors of Sahasra Solutions.', '', ''),
(93, 'Mr. Jai Natarajan', 'EVP - Business Development, Maya Entertainment Ltd.\r\nBITSian (89B4A7690)', 'Brief Profile:\r\nCurrent: Group EVP (Business Development and Marketing), Maya Entertainment Ltd.\r\nPreviously: Technical Director at Industrial Light and Magic (ILM)\r\nEducation: MS in Computer Graphics (UCLA), Maths+ CS dual from BITS-Pilani\r\n', '', ''),
(94, 'Aman Shaikh', 'Working at AT&T labs.', 'MSc. (Hons) Mathematics and B.E. Computer Science, BITS-Pilani\r\nMS(Comp. Engg.) from Univ. of California\r\nWorking at AT&T labs', '', ''),
(95, 'Dr. Urvashi Rau', 'Working on completing thesis in “Multi Frequency Synthesis Imaging in Radio Interferometry"', 'BITS-Pilani graduate, B.E. Computer Sc.  (''97 batch)\r\nPhD. in “Multi Frequency Synthesis Imaging in Radio Interferometry"', '', ''),
(96, 'Avinash Modi', 'Avinash Modi joined BITS, Pilani in 1997 and graduated in 2002 with B.E.\r\n(Hons.) Chemical Engineering and Master of Management Studies. He then\r\npursued his Masters in Chemical Engineering at University of Louisiana\r\nfocusing on corrosion. ', 'Since 2004, Avinash has been with General\r\nElectric''s Water and Process Technologies business and has worked in the\r\nareas of experimental design, simulation studies, membrane performance\r\nand process improvement for refining and water treatment applications.In his spare time Avinash enjoys quizzing, writing and attempting to run\r\nthe half marathon.', '', ''),
(97, 'Dr. SR Jayaprakash', 'Dr. SR Jayaprakash is a Lead Scientist and has been working with GE Water\r\nand Process Technologies, Bangalore since 2006.He has a PhD from Clarkson University, New York and a Bachelors degree in\r\nChemical Engineering from Anna University, Chennai. His ar', 'Dr. Jayaprakash provides\r\ntechnical leadership on using Computational Fluid Dynamics to design better\r\nindustrial water filtration systems. During his time at GE he has also led\r\nthe development of an analysis based approach for designing water treatment\r\nplants and fouling in refineries.\r\nPrior to joining GE, Dr. Jayaprakash worked with Chevron Energy Technology\r\nCompany, Houston. At Chevron he worked for the Oil Exploration and\r\nProduction Industry, on applications such as multiphase flow in pipelines\r\nand optimization studies for oil and gas fields.', '', '');
INSERT INTO `presenters` (`id`, `Name`, `Credentials`, `Profile`, `email`, `address`) VALUES
(98, 'Vinay Deo', 'joined Microsoft in Redmond to work in the newly formed personal devices group developing early versions of information organizers and email devices. In his 15+ years with Microsoft', 'Vinay Deo graduated from BITS Pilani in 1984 with BE (Hons) in Electrical & Electronics Engineering. After completing M Tech in Computer Science and Engineering from IIT Kanpur, he joined Center for Development of Telematics (CDoT) a key R&D startup that took the challenge to design state of the art telephone switching system in 3 years to kick start India''s telecom revolution. In 1990 he moved to Sydney Australia and joined Alcatel to work on payphone management systems and multi-function phones. in 1994, Vinay joined Microsoft in Redmond to work in the newly formed personal devices group developing early versions of information organizers and email devices. In his 15+ years with Microsoft, Vinay has worked in a variety of technologies (Smart cards, Windows server management, Developer tools) and roles (Developer, program manager, engineering manager) and has over 35 patents to his credits. Currently, Vinay is working in adCenter, the ad engine behind Bing, focusing on technologies that improve relevance of ads. ', '', ''),
(99, 'Mr. Rajiv Gupta', 'Director, Ultrahigh Resolution Lab CT laboratory\r\nHarvard Medical school, Boston, USA.', 'MS+PhD from New York State University.\r\nBITS-Pilani (''76) EEE+Physics.', '', ''),
(100, 'Samayita choudhuri', 'Manager at Business Development & Operation BioXcel Corporation \r\nIndia.specializes in Molecular cloning, pharmaceutical and biotechnology business research, SWOT analysis and intellectual property related studies', 'Birla Institute of Technology and Science \r\nME , Biotechnology , 2003 — 2005 \r\nParticipated in Biotech annual fest of Anna University, chennai. I was awarded first prize in bioinformatics studies for pharmacophore generation and docking studies.', '', ''),
(101, 'Dhruv Balwada', 'Pursuing MS from Florida University in Oceanography.research interests in ‘Simulation of Tsunami’s using the FMS Shallow water model’ (Ongoing project),‘Modeling of Internal Waves over Continental Slope’ (Ongoing project).', 'B.E (Hons.) Chemical Engineering,Birla Institute of Technology and\r\nScience–Pilani,Goa.Founder President of Environment Protection and Awareness Club (EPAC)', 'dhruvbalwada@gmail.com', ''),
(102, 'Soumyadeep Ghosh', 'Soumyadeep Ghosh(2006A7PS018P) 2010-BITS Pilani Pass-out  is currently pursuing his PhD at Princeton University. He holds interests in Computer Systems - Compilers and Operating Systems, Parallel Computing', 'Soumyadeep Ghosh(2006A7PS018P) 2010-BITS Pilani Pass-out  is currently pursuing his PhD at Princeton University. He holds interests in Computer Systems - Compilers and Operating Systems, Parallel Computing', '', ''),
(103, 'Vijay Kedia', 'Jalmitra Mr. Vijay Kumar Kedia is basically a Mechanical Engineer from BITS Pilani (1977 Batch), born and brought up at Lachhamangarh Town of Sikar District in Rajasthan (India).', 'Jalmitra Mr. Vijay Kumar Kedia is basically a Mechanical Engineer from BITS Pilani (1977 Batch), born and brought up at Lachhamangarh Town of Sikar District in Rajasthan (India).', 'info@varshajal.com', ''),
(105, 'Marc Koska', 'The inventor of disposable Syringes. Apart from that, he also runs a charity called SafePoint Trust which promotes disposable syringes.', 'The inventor of disposable Syringes. Apart from that, he also runs a charity called SafePoint Trust which promotes disposable syringes. He is the guy who actually convinced the State Minister of Health Mr. Anbumani Ramadoss to ban the ordinary syringes in Indian hospitals. ', '', ''),
(106, 'Luca Turin', 'Luca Turin (1953 – ) is a biophysicist with a long-standing interest in the sense of smell, the art of perfume, and the fragrance industry.His current project : Developing an artificial nose.', 'Luca Turin (1953 – ) is a biophysicist with a long-standing interest in the sense of smell, the art of perfume, and the fragrance industry.His current project : Developing an artificial nose.', '', ''),
(107, 'Shilpa Sambashivan', 'Shilpa Sambashivan is a BITS 30under 30 award winner. She is a PhD from UCLA and has published a paper in Nature also.', 'Shilpa Sambashivan is a BITS 30under 30 award winner. She is a PhD from UCLA and has published a paper in Nature also.', '', ''),
(108, 'Madhur Khandelwal', 'Senior Software Engineer TheFind Inc. BITS Pilani, ‘98 Computer Science', NULL, '', ''),
(110, 'Mreenal Chakraborty', 'Motivational Speaker ', 'Attached with various Corporates.', '', ''),
(111, 'Priya Jadhav', 'PhD Scholar,MIT', 'BE in EEE and MSc. Physics,BITS Pilani\r\nMS in Electrical Engg.Boston University ', '', ''),
(112, 'Kiran Karnik', 'NASSCOM Head', 'Kiran Karnik is the present Head of NASSCOM. He has brought about many revolutionary changes in its functioning and framed many new policies.', '', ''),
(113, 'Steve Jobs', 'CEO Apple INC.', NULL, 'fef', ''),
(114, 'egvdjhmd', 'rfvhurh ', 'kdgyew ', 'dgbkyufg', ''),
(115, 'egvdjhmd', 'rfvhurh ', 'kdgyew ', 'dgbkyufg', ''),
(116, 'Karthika Periyathambi', 'Stanford University, California : MS in Electrical Engineering, specialization in VLSI and Comp Arch', 'Birla Institute of Technology & Science (BITS), Pilani, India : B.E. (Hons.) Electrical and Electronics<br/><br/>\r\n<b>Relevant Course Work:</b><br/> Electronic Devices and Integrated Circuits, Digital Electronics and Computer Organization, Communication Systems, Analog Electronics, Comp. Networks, Control Systems, Microelectronics, Analog and Digital VLSI Design \r\n', ' karthipd@stanford.edu', ''),
(117, 'Dr. Roop Mallik', 'Reader (F) and Welcome Trust International Senior Research Fellow\r\nDepartment of Biological Sciences,\r\nTata Institute of Fundamental Research,\r\nMumbai', 'Dr. Roop Mallik earned his Masters degree in Physics from the University of Allahabad. He did his Ph.D. from the Tata Institute of Fundamental Research, Mumbai. His Ph.D. work was in the field of Condensed Matter Physics. After that he did his post doctoral work, first on the topic of ''Rapid laser-induced pH jump techniques to study protein dynamics of Green Fluorescent Protein'' for a joint appointment at TIFR, Mumbai and the National Center for Biological Sciences, Bangalore, and then on ''in vitro studies of Molecular motors cytoplasmic Dynein and Kinesin'' from the University of California at Irvine. His present work focuses on studying different molecular motors and their co-operative behavior inside the cytoplasm. His work is multi-disciplinary and spans fields such as Molecular Biology, Physics, Biochemistry, Chemistry and Computational analysis. Also a lot of high precision techniques (like an optical trap) are used by him to measure forces developed on the molecular level in real time.\r\n<br>Know more about his work at <a href="http://www.tifr.res.in/~roop/" target="_blank">http://www.tifr.res.in/~roop/</a>', '', ''),
(118, 'Aubrey de Grey', 'Biomedical gerontologist, a Fellow of the IEET, and the Chief Science Officer of the SENS Foundation.', 'Dr. Aubrey de Grey is a biomedical gerontologist, a Fellow of the IEET, and the Chief Science Officer of the SENS Foundation. \r\nThe editor of Rejuvenation Research, the world’s only peer-reviewed journal focused on intervention in aging, he is an advocate of research seeking answers to how molecular and cellular metabolic damage brings about aging and ways humans can intervene to repair and/or obviate that damage.\r\nHe argues instead that aging is a disease -- one that can be cured if it''s approached as "an engineering problem." \r\nHis plan calls for identifying all the components that cause human tissue to age, and designing remedies for each of them — forestalling disease and eventually pushing back death. \r\nHe calls the approach Strategies for Engineered Negligible Senescence (SENS).\r\n\r\nThe central goal of Aubrey de Grey’s work is the expedition of developing a true cure for human aging. In his view, the main obstacle to developing such technology is the position of biogerontology at the boundary between basic science and medicine. \r\nHe believes that the fundamental knowledge necessary to develop truly effective anti-aging medicine mostly exists, but the goal-directed frame of mind that is best suited to turning research findings into tools is very different from the curiosity-driven ethos that generated those findings in the first place.\r\nAs a scientist with a training in an engineering discipline, specifically that of computer science, Dr. De Grey believes himself to be well placed to bridge this gap. \r\nHe attempt to do so in three main ways: by doing basic biogerontology research, identifying and promoting specific technological approaches to the reversal (not merely the prevention) of various aspects of aging, and by arguing in a wide range of forums, extending beyond biologists, for the adoption of a more proactive approach to extending the healthy human lifespan sooner rather than later. ', '', ''),
(119, 'Vasant Manohar', 'Scientist, Speech and Language Group\r\nRaytheon BBN Technologies, Cambridge, MA', 'B.E.(Hons)Computer Science & Engineering (BITS Pilani)<br>M.S. and PhD in Computer Science(University of South Florida)<br/><h4>Research Interests:</h4><ul><li>Using Dynamic Strain Pattern from Video to Recognize Faces</li><li>Performance Evaluation of Object Detection and Tracking Algorithms</li></ul><p>Visit him at his<a href="http://figment.csee.usf.edu/~vmanohar/home.htm" target="_blank"> homepage.</a></p>', '', ''),
(120, 'Suhail Kassim', 'Specialist with World Bank', 'Suhail Kassim is a Specialist and Fellow with the World Bank Group in Washington DC. He was part of the\r\ncore World Bank team which worked with the Ministry of Finance, Government of India, to respond to\r\nthe recent global financial crisis, where he participated in providing a record-size US$ 2 billion loan to\r\ncapitalize India’s public sector banks. He has earlier been a private equity investor with Tata Industries, a\r\nmanager with the Tata Administrative Service, and an equities analyst with JP Morgan. He has launched\r\nseveral social initiatives, serves as an advisor to social and hi-tech startups, and has published on\r\nmicrofinance and investment climate. Suhail holds a Gurukul certificate from the London School of\r\nEconomics, an MBA from the Indian Institute of Management Ahmedabad where he was a Surrendra\r\nPaul Merit Scholar, and an engineering degree with distinction from BITS Pilani. He was conferred\r\nthe Chevening Senior Scholarship by the British Government as a "Young Indian Leader" in 2009, and\r\nthe “BITSAA Global 30 Under 30 Award” for all-round leadership in 2005.', 'suhailkassim@yahoo.com', ''),
(145, 'Vidyashankar M. Vellal', 'Business Analyst at McKinsey and Company', '<ul><li>M.Sc. Economics and B.E. Computer Science Engineering from BITS Pilani Goa Campus</li><li>Received a deferred admission to Harvard Business School through the HBS 2+2 Program</li><li>Interned at the Reserve Bank of India</li></ul>\r\n', '', ''),
(121, 'WebTeam', 'html', 'gfyu', 'ghfg@dsg.com', ''),
(122, 'Abhinav Khushraj', 'Strategy & Business Development Manager\r\nNokia\r\n', 'Abhinav drives strategy for Nokia Messaging, a key service that is driving Nokia’s transformation into a service company. As a business development manager, he is responsible for partnering with social media companies, scouting for white space opportunities in BRIC countries and driving operator and retail strategy. Prior to Nokia, Abhinav was an associate at General Catalyst Partners assisting a portfolio company with growth strategy. He has consulting experience at Booz Allen Hamilton, a mobile startup in New Zealand and a European seafood company. He has spent 5 years at Citrix Systems as release program manager for the Internet security business and was awarded the leadership and team achievement awards. \r\nAbhinav has an MBA from MIT Sloan School of Management where he worked on startup ideas in social media and mobile and was a semi-finalist in the MIT $100k competition. He also has a Master of Science degree in Computer Science from University of Florida and bachelors from BITS, Pilani. Besides founding the Sparks New Ventures program, he is also establishing the TiE Leadership Program in Silicon Valley.\r\n', '', ''),
(123, 'Vasant Manohar', 'Scientist in BBN Raytheon Technologies', 'BE(Comp science),1999 Batch\r\n', '', ''),
(124, 'Shivkumar Ganeshan', 'Former VP of flipkart.com', 'BE Hons.(Comp sci),2000 Batch\r\n', 'shivku@roopit.com', ''),
(125, 'Neeraj Kedar', 'Associate in Frost and Sullivan', 'BE Hons.(Electrical and Electronics),2005 Batch\r\n', '', ''),
(126, 'Amit Sheth', 'Founder and Director of Mind’s Eye Design Pvt Ltd', 'Amit Sheth graduated from BITS Pilani (78 Batch) with a BE (Hons) in Elelctrical & Electronics Engineering. His PSII was lab and research work on holography (Applied Optics) at CSIO Chandigarh where he wrote and published a paper on White Light Holography. On the BITS Campus, Amit taught photography through EWYLP and was the Cactus Flower Photo Editor and also through the EDC directed 7 plays and acted in as many. Amit was also in charge of all auditorium lighting systems and upgradation .\r\nPost BITS, Amit did his PG from the National Institute of Design, Ahmedabad in Industrial Design (Products) and has also attended courses on Specialized Tooling for Medical Plastic Products (L&T McNeil Chennai), Product Design for India at the AOTC, Osaka, Japan and is till learning new technologies and process even today.\r\nAmit is the founder and director of Mind’s Eye Design Pvt Ltd, a design and engineering consultancy involved in a wide range of design  areas varying from product design to signage systems. More details can be had by visiting the website:\r\nhttp://www.mindseyedesign.org\r\nHe is also a Member if the Indian Roads Congress (IRC) and a Member of the Indian Society of Lighting engineers (MISLE) besides various design bodies and CII committees.\r\nIn addition to professional design consultancy, Amit is also a Visiting faculty at a number on institutions including the National Institute of Design, MICA, CEPT University (Ahmedabad), MIT (Pune) and Srishti (Bangalore). His subjects are design management, universal design, signage & wayfinding design, materials and processes (from wood to plastics) and systems design. He has developed the syllabus for both UG and PG programmes in Furniture & Interior Design as well as PG and XPG programmes in Design Management for NID and MICA respectively.\r\n\r\nEssentially, Amit is a tinkerer and is on a perpetual mission to try and improve products and product systems around us to make our lives more exciting, sensible, safe & fun.\r\n', '', ''),
(127, 'DR. B S Ramachandra', 'Director, Life Coach and Peak Performance Consultant,Centre for Fundamental Research and Creative Education, Bangalore', 'DR.B S Ramachandra,is a Mathematical Physicist and Educationist. He is currently Director, Life Coach and Peak Performance Consultant,Centre for Fundamental Research and Creative Education, Bangalore. He is also life Member of Karnataka Association for the Advancement of Science (KAAS), Bangalore,Indian Association of Physics Teachers (IAPT),Indian Institute of World Culture (IIWC), Bangalore and is also a visiting faculty at Research Education Advancement Program (REAP), Bangalore Association for Science Education and Jawaharlal Nehru Planetarium, Bangalore. \r\nHe did his B.E in Mechanical Engineering from Bangalore University, PhD from Indian Institute of Astrophysics, Bangalore. He did Post-doctoral fellowship from the Indian Institute of Astrophysics, Bangalore,and Inter-University Centre for Astronomy and Astrophysics, (IUCAA), Pune.\r\nHis research interests are Classical General Relativity,Loop Quantum Gravity and Geometric Quantum Mechanics and Quantization. Much of his work is focused on exploring the physical universe via the domain of Theoretical Physics and Mathematics and the inner universe of the human Brain-Mind-Consciousness via Cognitive Neuroscience and Ancient Wisdom. His other interests are Cognitive Sciences,Neuroscience ,Indian Culture, Spirituality and Yogic Tradition and History of Civilizations.', '', ''),
(128, 'Anand Agarwal', 'Professional Consultant and a Motivational\r\nSpeaker', 'He is a professional Consultant and a Motivational Speaker. He has already made over 540 presentations (including 69 at Infosys) to over 27,000 employees of a large number of Corporate all over India. His aim is to address over 100,000 and ensure that those who attend will take stock of their present situation in life, consolidate their gains and strive for higher levels of success.\r\nPlease visit http://fitnessfundas.googlepages.com/home to get the complete picture.', '', ''),
(129, 'Abhinav Khushraj', 'Strategy & Business Development Manager\r\nNokia\r\n', 'Abhinav drives strategy for Nokia Messaging, a key service that is driving Nokia’s transformation into a service company. As a business development manager, he is responsible for partnering with social media companies, scouting for white space opportunities in BRIC countries and driving operator and retail strategy. Prior to Nokia, Abhinav was an associate at General Catalyst Partners assisting a portfolio company with growth strategy. He has consulting experience at Booz Allen Hamilton, a mobile startup in New Zealand and a European seafood company. He has spent 5 years at Citrix Systems as release program manager for the Internet security business and was awarded the leadership and team achievement awards. \r\nAbhinav has an MBA from MIT Sloan School of Management where he worked on startup ideas in social media and mobile and was a semi-finalist in the MIT $100k competition. He also has a Master of Science degree in Computer Science from University of Florida and bachelors from BITS, Pilani. Besides founding the Sparks New Ventures program, he is also establishing the TiE Leadership Program in Silicon Valley.\r\n<br>\r\n<a href=''http://www.celbits.org/ target=''blank''>www.celbits.org</a>\r\n\r\n', '', ''),
(130, 'Vinod Khosla', 'Founding Partner\r\nKhosla Ventures', 'Vinod grew up dreaming of being an entrepreneur, despite growing up in an Indian Army household with no business or technology connections. Since age 16, when he first heard about Intel starting up, he dreamt of starting his own technology company.\r\n\r\nUpon graduating with a Bachelors in Electrical Engineering from the Indian Institute of Technology, Delhi, he failed, at age 20, to start a soy milk company to service the many people in India who did not have refrigerators. He came to the US and got his Masters in Biomedical Engineering at Carnegie-Mellon University. His startup dreams attracted him to Silicon Valley where he got an MBA at Stanford University in 1980.\r\n\r\nUpon graduation he was one of the three founders of Daisy Systems, which was the first significant computer aided design system for electrical engineers. The company went on to significant revenue, profits and an IPO, but Khosla, driven by the frustration of having to design the computer hardware on which the Daisy software needed to be built, started the standards based Sun Microsystems in 1982 to build workstations for software developers. At Sun he pioneered "open systems" and RISC processors. Sun was funded by long time friend and board member John Doerr of Kleiner Perkins Caufield & Byers.\r\n\r\nIn 1986 he switched sides and joined Kleiner Perkins where he was and continues to be a general partner of KPCB funds through KP X. There, through the years, with other partners, he took on Intel''s monopoly with Nexgen/AMD (the only microprocessor to have significant success against Intel, sold to AMD for 28% of AMD), incubated the idea and business plan for Juniper to take on Cisco''s dominance of the router market, to formulate the very early advertising based search strategy for Excite, and to transform the moribund telecommunications business and its archaic SONET implementations with Cerent (sold to Cisco for $7B), and many other ventures. He helped in creating value, having fun, succeeding, failing (remember Dynabook?) and driving impact in partnership with entrepreneur, and the partners at KPCB.\r\n\r\nIn 2004, Khosla, driven by the need for flexibility to accommodate four teenage children and a desire to be more experimental, to fund sometimes imprudent "science experiments", and to take on both "for profit" and for "social impact" ventures, formed khoslaventures, funded entirely with family funds. His goals remain the same - work and learn from fun and knowledgeable entrepreneurs, build impactful companies through the leverage of innovation, and spend time as a partnership making a difference. He has a passion for nascent technologies that can have a beneficial effect and economic impact on society. \r\n\r\nVinod''s greatest passion is being a mentor to entrepreneurs, assisting entrepreneurs and helping them build technology based businesses. Vinod assists or serves on the boards of a number of the companies including EASIC (programmable ASIC platform), Infinera (optical communications), Kovio (printed electronics), Skyblue (internet PC), Spatial Photonics (Micromirror displays), Xsigo (datacenter switch), among others.\r\n\r\nKhosla is a charter member of TiE, a not-for-profit global network of entrepreneurs and professionals founded in 1992 that now has more than forty chapters in nine countries. He is also a Founding Board member of the Indian School of Business. His current passion is Social Entrepreneurship with a special emphasis on Microfinance as a poverty alleviation tool. He is a supporter of many microfinance organizations in India and Africa. He has been experimenting with global housing. Vinod is also passionate about alternative energy, petroleum independence, and the environment. He can be reached at vk@khoslaventures.com.\r\n<br>\r\n<a href= ''http://www.celbits.org/'' target = ''blank''>www.celbits.org</a>', '', ''),
(131, 'Prasanna Krishnan', 'Associate\r\nDraper Fisher Jurveston\r\n', 'Prasanna is an Associate and Kauffman Fellow at Draper Fisher Jurvetson. Prior to joining DFJ, Prasanna worked as a Program Manager at Microsoft on WinFS - a new storage system for next generation Windows PCs.  She defined the product design for storage and search capabilities, managed cross-functional teams, and worked with leading media software and document management companies to persuade them to adopt WinFS.  Prasanna was selected into the Microsoft Select Fast-track Program as one of 15 employees who demonstrated potential to be future leaders at the company.  She also worked at McKinsey & Company in their Philadelphia office, at Internet Capital Group and at Novell Software Development Ltd in India.\r\nPrasanna holds an MBA from the Wharton School where she graduated as a Palmer Scholar.  She has an MS in Computer Science from the University of Illinois at Urbana-Champaign where she was a Siebel Scholar, and received the C.W.Gear Outstanding Graduate Student award for research and service.  Prasanna holds a B.E. in Computer Science from BITS, Pilani, India where she received the University Fellowship awarded to the top 10 undergraduates each semester.  She was also awarded the BITS Alumni Association''s "30 under 30" award.\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(132, 'Nickhil Jakatdar', 'CEO and Co-Founder\r\nVuclip', 'Prior to Vuclip, Nickhil was the President and COO of Praesagus, a MIT incubated start-up that he helped grow to becoming the most widely used design-to-manufacturing modeling software in its class, before its acquisition by Cadence Design Systems. Post-acquisition, Nickhil became Engineering Group Director at Cadence where he ran the entire Manufacturing Modeling Group. Prior to Praesagus, Nickhil helped found and served on the board of directors of CommandCAD, an electrical CAD company that was acquired two years after its founding. Prior to CommandCAD, Nickhil co-founded Timbre Technologies, a semiconductor manufacturing start-up, that won the first-ever Berkeley Business Plan competition, leading to a successful venture-backed financing. Nickhil served as CTO and VP of Marketing and Products as the company grew to become the industry standard in the field of scatterometry, before being acquired by Tokyo Electron Ltd. Nickhil remained at TEL for 3 years as Sr. Director of Technology and Marketing.\r\nNickhil received his M.S. and Ph.D. from UC Berkeley and has been the recipient of many awards from various organizations, including the IEEE Best Paper Award in the area of Transactions in Semiconductor Manufacturing for 2001, the Berkeley Distinguished Pioneer Award, the NSF and MICRO fellowships and the Most Outstanding Student award at the College of Engineering, Pune. He has been featured in several articles published in the United States and in India. He has to his credit more than 30 patents and 20 conference papers.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(133, 'Bob Meese', 'Business Development\r\nGoogle\r\n', 'Bob currently works as a business development manager at Google and is responsible for strategic partnerships with small and large companies for Google TV Ads. Prior to Google, he obtained an MBA at MIT Sloan School of Management. At MIT he was the President of the MIT Venture Capital Club and also won the International Venture Capital Competition. Prior to MIT, he was an associate at Millenia Partners, a leading venture capital firm in Boston. He also has extensive consulting experience in the wireless and digital media industry.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(134, 'Seph Skerritt', 'Founder/CEO\r\nProper Cloth\r\n', 'Seph lives in New York where he is running Proper Cloth, a custom clothing label providing premium quality, tailor-fit dress clothing via the internet.\r\nPrior to starting Proper Cloth (in reverse order), Seph received an MBA from MIT Sloan, completed consulting projects in Argentina (Popego), India (Infosys), China (Nicobar Group), consulted for the wireless startup Prince Edge, worked as a product manager for Northrop Grumman, founded Sfinx Productions, and studied electrical engineering at UCSD. \r\nSeph is especially interested in combining technology, aesthetic design and disruptive business strategies to create new and sustainable ventures.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(135, 'Ajay Kulkarni', 'Founder/CEO\r\nSensobi\r\n', 'Ajay is CEO and Co-Founder of Sensobi, a Blackberry application to help professionals organize and manage their business relationships, slated to launch in early 2009. He is also a recent MBA graduate from the Entrepreneurship and Innovation Program at the MIT Sloan School of Management, and holds Bachelors and Masters degrees in Computer Science, both also from MIT. Ajay’s 5+ years of experience in the mobile and financial industries includes time spent at Microsoft, Citigroup, 4INFO, and other startups, as well as a researcher at the MIT Artificial Intelligence Lab (now part of CSAIL).\r\nWhile in business school, Ajay organized and led the first ever MIT M-Prize for Mobile Entrepreneurship, securing sponsorship from Nokia and two leading Venture Capital firms, helping 15 teams of students develop their business plans targeted at the wireless industry. He is also a Co-Founder of Emerginvest, a financial startup that was a Finalist in the 2007 MIT $100K Entrepreneurship Competition, and that was selected as one of the 50 hottest new startups in 2008 by TechCrunch. He currently lives in Cambridge, Massachusetts.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(136, 'Anil Advani', 'Attorney\r\nOrrick, Herrington & Sutcliffe LLP, Silicon Valley\r\n', 'Mr. Advani, an attorney in Orrick''s Silicon Valley office, is a member of Orrick''s Emerging Companies Group and head of Orrick''s India Practice Group.  Mr. Advani''s practice focuses on the formation, financing and general corporate counseling of emerging companies and technology businesses.\r\nMr. Advani also has an active practice representing India-focused emerging companies, investment banks, financial institutions and venture funds, both in the United States and in India.\r\nBefore joining Orrick, Mr. Advani was General Counsel and Vice President of SemIndia, a pioneering effort to establish semiconductor manufacturing in India.  As General Counsel for SemIndia, Mr. Advani was responsible for coordinating with the Government of India in formulating a comprehensive semiconductor policy for India as well as with the State of Andhra Pradesh in structuring Fab City on the outskirts of the city of Hyderabad. \r\nPrior to joining SemIndia, Mr. Advani was a Senior Associate in the Silicon Valley offices of Cooley Godward where his practice focused on representation of emerging companies and the venture funds and banks that finance those companies.  Mr. Advani began his legal career as an attorney in India where he practiced for a number of years at the High Court of Delhi.\r\nMr. Advani has a Bachelor of Laws from the Faculty of Law, Delhi University, and a Master of Laws from Georgetown University Law Center, Washington, D.C.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(137, 'Diaz Nesamony', 'Founder, President & CEO\r\nJivox\r\n', 'Diaz Nesamoney founder of Jivox has had two prior successful ventures. Before founding Jivox, he founded Celequest, raised over $20M in venture capital, and served as its CEO until early 2007, when the company was acquired by Cognos Corporation. Celequest introduced the market''s first BI appliance, a disruptive innovation that led to its acquisition by Cognos. He was previously co-founder, President and Chief Operating Officer at Informatica (NASDAQ:INFA), which he took from a startup to a publicly traded company in 1999 with a market capitalization of over a billion dollars. Informatica pioneered data integration software as a category and is now the market leader with over $400M in revenue.Diaz is a trustee of the American India Foundation, a leading international development organization charged with the mission of accelerating social and economic change in India. Diaz holds a Masters degree in Computer Science from the Birla Institute of Technology and Science in India.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(138, 'VT Bharadwaj', 'Vice President\r\nSequoia India\r\n', 'VT is a Vice President with Sequoia Capital India. Prior to joining Sequoia Capital India, VT worked at McKinsey & Company serving energy, automotive and retail clients. VT received an MBA from the Indian Institute of Management, Ahmedabad where he was awarded the President''s Gold Medal. He also holds a BS in engineering from BITS Pilani.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(139, 'Rahul Chandra', 'Director – Investment Advisor\r\nHelion Venture Partners\r\n', 'Rahul is a co-founder of Helion and has 13 years of venture capital investing and corporate development experience in technology product and services companies in India and the US. He serves on the Board of UnitedLex and Mindworks. \r\nBetween 2000 and 2006, Rahul was based in Silicon Valley as part of the investment team at Walden International, a global venture capital firm with more than $2B under management. Between 2004 and 2005 he also led the M&A efforts at e4e Inc., a Santa Clara, CA based BPO company with more than 4,000 employees across the globe.\r\nRahul started Venture Capital investing in 1996 in India as the first hire at Walden''s India office. In this role he managed investments for Walden''s India dedicated Fund between 1996 and 2000. \r\nRahul has invested in more than 30 early-to-mid-stage companies such as Mindtree, Ikanos (IKAN), e4e Inc and Techspan (Headstrong). Prior to Walden, he worked in the Capital Markets Group at Lazard India, and in the Primary Market Department at the Securities Exchange Board of India. \r\nRahul has an MBA from University of California, Berkeley and graduated from Birla Institute of Technology & Science, Pilani in 1993.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(140, 'Anand Morzaria', 'Founder/CEO – Pennywise Solutions', 'Anand has founded two startups since he graduated from BITS, Pilani. The first is Pennywise Solutions and the other one is Tolmolbol.com. As a young entrepreneur, he has a lot of experience in creating a startup with a young team and minimal resources.\r\nAnand completed his Masters in Finance from BITS,Pilani, where he was also President of the University Students'' Union. He spearheads the business development, client relationships, and overall strategy of the company. When not charting out the growth plan for the company, he claims to serve up magic on the cooking range.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(141, 'Raju Reddy', 'Chairman & CEO, Sierra Atlantic', 'Raju is the founder and CEO of Sierra Atlantic. With over 2000 employees, Sierra Atlantic is headquartered in Silicon Valley, California and has Global Development Centers in Hyderabad, India and Guangzhou, China. Under his leadership, Sierra Atlantic has become a Best-in-Class Global IT Services company, and consistently ranked amongst best managed companies including the top 75 most Admired companies in Silicon Valley, Top 25 great places to work in India and Top 10 best employers in South China. Before founding Sierra Atlantic in 1993, he spent 10 years at Intel in software development, marketing and general management.\r\nRaju holds a Bachelor of Science degree in electrical engineering from BITS Pilani and a Master of Science degree in computer science from Virginia Tech.\r\nRaju is a member of the BITS Pilani Board of Directors and a Charter member of TiE Silicon Valley. He also served as a member of the Board of Trustees for Puente, a Wharton School non-profit program which helps under-privileged communities worldwide gain access to technology. Raju also co-founded SIPA (Silicon Valley Indian Professional Association) along with other young Indian engineers from Silicon Valley in 1987.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(142, 'Tania Aidrus', 'Director & Co-Founder', 'Tania started her career in consulting at Booz Allen Hamilton and First Consulting Group, where she organized and led teams to solve complex business problems for both government and commercial clients. Her work was primarily focused in the healthcare vertical. Prior to attending business school she was involved in setting up a Business Process Outsourcing operation within the mortgage industry. She currently works in advertising sales and operations at Google, Inc. in Cambridge, MA. Tania also serves on the executive committee of the Organization of Pakistani Entrepreneurs of North America (OPEN) where she actively works on promoting entrepreneurship within the local community. \r\nTania holds an MBA from the MIT Sloan School of Management and a BS in Biology and Economics from Brandeis University where she was a Presidential Scholar.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target =''blank''>www.celbits.org</a>', '', ''),
(143, 'Anurag Jain', 'Head of Applications Solutions Group\r\nPerot Systems', 'Anurag Jain leads Perot Systems’ Applications Solutions group and Insurance and Business Process Solutions group.  In these roles, he is responsible for the management, sales, and operations for these groups. Mr. Jain has more than 15 years of management, operations, consulting and business start-up experience.\r\nMr. Jain began his career as a management consultant with Gemini Consulting, where he launched wireless operations for telecom carriers worldwide.  He then founded two India-based outsourcing businesses.  Mr. Jain co-founded and served as head of operations for Brigade Corporation, a customer support company with 1,300 customer support employees across centers in the U.S., Europe, and India.  Mr. Jain then founded Vision Healthsource, a business focused on providing outsourcing services to healthcare providers and payers that was sold to Perot Systems in 2003.  Since 2003, Mr. Jain has been a senior leader of Perot Systems.\r\nFrom 2003 to 2005, he was a member of the Healthcare unit’s leadership team, where he had direct responsibility for business process outsourcing sales and operations and helped the organization to develop and operate integrated BPO and technology solutions.  In 2006, Mr. Jain led Perot System’ successful entrance into the Life Insurance industry, where Perot Systems today provides a wide range of technology and policy administration solutions.  He is also the architect of Perot Systems’ state of the art and comprehensive workflow management system.\r\nMr. Jain holds an M.B.A. from the University of Michigan and a B.S. degree in electronics and electrical engineering from the Birla Institute of Technology and Sciences, Pilani, India.  With his in-depth background and thought leadership in establishing globally-delivered workflow-system-based operations, he speaks at a numerous key business conferences each year.\r\n<br>\r\n<a href=''http://www.celbits.org/'' target = ''blank''>www.celbits.org</a>', '', ''),
(144, 'Anand Ramamurthi', 'PhD', '<ul><li>Associate Professor, Department of Biomedical Engineering, Cleveland Clinic, Cleveland, OH</li><li>\r\nAdjunct Associate Professor of Biomedical Engineering, Case Western Reserve University, Cleveland, OH</li><li>\r\nAdjunct Associate Professor of Bioengineering, Clemson University, Clemson, SC</li></ul>\r\n', '', ''),
(146, 'Vasudev Shyam', 'Research Scholar at the Centre for Fundamental Research and Creative\r\nEducation (CFRCE), Bangalore', 'Formally in his 10th grade studying at the PSBB Learning Leadership\r\nAcademy, Bangalore.\r\nMastered Landau and Lifshitz Course of Theoretical Physics\r\n<ul><li>Vol 1 Mechanics along with Mathematical Methods (Complex Function Theory)</li>\r\n<li>Vol 2 The Classical Theory of Fields.</li>\r\n<li>Vol 3 Quantum Mechanics</li>\r\n</ul>\r\n<li>', '', ''),
(147, 'Naveen Goel', 'Managing Director of Naveen Goel Law Offices, a law firm based in New Delhi, India', '<ul><li>MMS from BITS, Pilani</li>\r\n<li>LLB from Delhi University.</li>', 'naveen@naveenlaw.com', ''),
(148, 'Santhosh Kasavajjala', 'Senior design engineer in National Semiconductors\r\nAlso worked at ST Microelectronics in India for 1 year', '<ul><li>BE(hons) Mechanical Engineering and BE(hons) Electricals and Electronics Engineering from BITS PIlani in 2002</li>\r\n<li>Masters in Electrical Engineering from Stanford University</li>\r\n</ul>', '', ''),
(149, 'Raj R. Rao', '<ul>\r\n<li>Associate Professor of Chemical and Life Science Engineering in the VCU School of Engineering</li>\r\n<li>Director of VCU’s International Partnership with the Indian Institute of Technology, Kharagpur</li>\r\n<li>Affiliate faculty appointment in t', '<ul>\r\n<li>\r\n[BE(Hons)]Chemical Engineering and [MSc(Hons)]Biology from BITS, Pilani (1993)\r\n</li>\r\n<li>MS in Biotechnology from the University of Texas, San Antonio (1996)\r\n</li>\r\n<li>Ph.D in Biological Engineering from the University of Georgia (2001)</li>\r\n<li>US National Science Foundation (NSF)-CAREER award (2008)</li>\r\n<li>Qimonda Professorship (2009)</li>\r\n<li>VCU Engineering Student Council Outstanding Professor Award (2011)</li>\r\n</ul>', 'rrrao@vcu.edu', ''),
(150, 'Dhruv Balwada', 'Currently working on Southern Ocean dynamics and its effects on the world climate', '<ul>\r\n<li>B.E. Chemical Engineering, BITS Pilani, Goa Campus</li>\r\n<li>Practice School at Center for Mathematical Modeling and Computer Simulations(CMMACS) in Bangalore</li>\r\n<li>Founding memeber of the Environment Protection and Awareness Club at BITS Pilani, Goa Campus</li>\r\n</ul>', '', ''),
(151, 'Rahul Viswanath', 'Analog Design Engineer in Texas Instruments India Pvt. Ltd.', 'MSc. Maths and Electronics and Instrumentation Engineering from BITS Pilani(2010)', '', ''),
(152, 'Srini Swaminathan', 'Teach For India Fellow, 2010-12 (Teaching at the Dharavi Transit Camp Municipal School http://tfijourney.wordpress.com)', '<ul>\r\n<li>B.E.(Hons.) EEE, BITS, Pilani (1997-2001)</li>\r\n<li>Worked in 7 countries at Schlumberger, 2001-2009</li>\r\n<li>UNDP Volunteer in Tsumani affected villages (\r\n     http://together-we-can.blogspot.com/)</li>\r\n<li>At BITS :Department of Photography, Pilani Tamizh Mandram, English\r\n     Press Club</li>\r\n<ul>', '', ''),
(153, 'Madhukar Banuri', '<ul>\r\n<li>Government relations and program manager, Teach For India, Pune</li>\r\n<li>Teach For India Fellow, 2009-11</li>\r\n<li>Product Marketing Manager, Electrical Business Group, Larsen and Toubro, Mumbai</li>\r\n</ul>', '<ul>\r\n<li>B.E. (Hons.) EEE, BITS, Pilani (2003-2007)</li>\r\n<li>At BITS: Executive Committee-EEE Association, Editorial Board-Yearbook, Center for Entrepreneurial Leadership</li>\r\n</ul>', '', ''),
(154, 'Saurav Patyal', '<ul>\r\n<li>Co-Founder, The Parivartan Foundation.</li>\r\n<li>Business Developer at Laurus Edutec.</li>\r\n<li>Young India Fellowship.</li>\r\n<li>StartingBloc Fellow, 2010</li>\r\n</ul>', '<ul>\r\n<li>Intern at Sunborne Energy Technologies</li>\r\n<li>B.E(Hons.) Electrical & Electronics Engineering, M.Sc(Hons.) Economics 2006 – 2011,BITS - Pilani</li>\r\n</ul>', '', ''),
(155, 'Nina G. Jablonski', '<ul>\r\n<li> TED speaker</li>\r\n<li>Ph.D., FSB, Distinguished Professor of Anthropology, Pennsylvania State University, USA</li>\r\n</ul>', NULL, '', ''),
(156, 'Gary C Kessler', 'Editor-in-chief,Journal of Digital Forensics, Security and Law.', '<ul><li>Independent consultant and and practitioner in the areas of computer and network forensics, mobile device forensics, computer and network security, TCP/IP and the Internet, and communications protocols and standards.</li>\r\n<li>Interim associate prof at Norwich University in Northfield, VT</li>\r\n<li>Member of Vermont Internet Crimes Against Children (ICAC) Task Force</li> <li>Editor-in-chief of the Journal of Digital Forensics, Security and Law.</li></ul>', '', ''),
(157, 'Dr.Nilay Yajnik', 'Professor and Chairman - Information Systems Area Narsee Monjee Institute of Management Studies , Mumbai', 'BITS Pilani 78-83 batch', '', ''),
(158, 'Mihir Sarkar', '<ul>\r\n<li>PhD candidate in Media Arts and Sciences</li>\r\n<li>research assistant in Music, Mind and Machine Group at the MIT Media Lab</li>\r\n<li>Head of Media Lab''s India Initiatives, which aims to foster collaborations between the Media Lab and Indian org', '<ul><li>Computer Science, Electronics, and Automatic Systems from ESIEA, France</li>\r\n<li>\r\nMaster of Science degree in Media Technology from MIT</li>\r\n</ul>', '', ''),
(159, 'Eva Nemeth', 'Physical therapist/Movement Educator', ' national gymnastics school', '', ''),
(160, 'Srivarsha Rajshekar', '<ul>\r\n<li> Indian Institute of Science Education and Research (IISER)-Pune\r\n</li><li>Will begin PhD in Fall 2012 at the Weill Cornell Graduate School of Medical Sciences of the Cornell University in New York</li></ul>', '<ul><li>M.Sc. (Hons.) Biological Sciences at BITS-Pilani</li>\r\n<li>Thesis work at the Max Planck Institute of Dresden, Germany</li>\r\n</ul>', '', ''),
(161, 'Piyush Gupta', '', '<ul>\r\n<li>\r\nMS, Civil Engineering, University of Illinois\r\n</li>\r\n<li>\r\nB.E. (Hons), Civil Engineering,  BITS Pilani\r\n</li>\r\n</ul>', '', ''),
(162, 'Sandeep Sripada', 'Internet Services Advanced Data Analytics team at Apple Inc., Cupertino', '<ul>\r\n<li>Masters in Computer Science from Stanford University with Specializing in Artificial Intelligence</li>\r\n<li>B.E.(Hons) BITS Pilani 2007</li>\r\n</ul>', '', ''),
(163, 'Rishikesh Vaidya', 'Assistant Professor, Physics department, Birla Institute of Technology and Science Pilani, Pilani campus', '<ul>\r\n<li>Ph.D. from Physical Research Laboratory(PRL), Ahmedabad, in May 2002</li>\r\n<li>Post Doctoral work at PRL (6 months),  National Central University, Taiwan, (two and a half years) and the Tata Institute of Fundamental Research, Mumbai, (one and a half year)</li>', 'rishikesh@bits-pilani.ac.in', ''),
(164, 'Prof Mark Gabel', 'Assistant Professor of Computer Science at the University of Texas at Dallas', '<ul>\r\n<li>Ph.D. at UC Davis</li>\r\n<li> B.S. and M.S. degrees in Computer Science from California Polytechnic State University, San Luis Obispo</li>', 'mark.gabel@utdallas.edu', ''),
(165, 'Anurag Jaipuriar', NULL, '<ul>\r\n<li>Engineer, Global Reaserch Centre, GE</li>\r\n<li>M.S Engineering Mechanics, Penn State University</li>\r\n<li>Reserch in Fibre Reinforced Polymer and Applications</li>\r\n<li>B.E Civil Engineering, BITS Pilani</li>\r\n</ul>\r\n', '', ''),
(166, 'Harshad Deshmukh', 'Graduate student in the Department of Computer Sciences at the University of Wisconsin - Madison', '<ul>\r\n<li>M.Sc Maths and B.E.(Hons) Computer Science, BITS Pilani</li>\r\n<li>Member of the BITS2MSPhD team</li>\r\n<li>Worked for Cisco Systems, Bangalore</li>\r\n</ul>', '', ''),
(168, 'Dr.Paul Ormerod', 'Economist, Author, Entrepreneur </br>\r\n Author of 3 Bestselling books including “Why Most Things Fail” </br>\r\n', '<ul>\r\n<li>Economist, Author, Entrepreneur</li>\r\n<li>Author of 3 Bestselling books including “Why Most Things Fail”</li>\r\n<li>Graduate from Christ''s College Cambridge</li>\r\n<li>M.Phil, St Catherine''s College Oxford</li>\r\n<li>Honorary Doctor of Sciences degree by University of Durham </li>', '', ''),
(169, 'Dr. Murat Kantarcioglu', '<ul>\r\n<li> Associate Professor in the Computer Science Department</li>\r\n<li>Director of the UTD Data Security and Privacy Lab at the University of Texas at Dallas</li>\r\n</ul>', '<ul>\r\n<li>B.S. in Computer Engineering from Middle East Technical University</li>\r\n<li>M.S. and Ph.D degrees in Computer Science from Purdue University</li>\r\n<li>Recipient of NSF CAREER award and Purdue CERIAS Diamond Award for Academic excellenc</li>\r\n</ul>', '', ''),
(170, 'Yash Gandhi', NULL, '<ul>\r\n<li>Masters student,Department of Industrial Engineering,Purdue University</li>\r\n<li>B.E(hons.)Chemical Engineering,BITS Pilani</li>', '', ''),
(171, 'Mr Rahul Dutt Avasthy', NULL, '<ul>\r\n<li>Director, Zapak Digital Entertainment</li>\r\n<li>Has been a cyber forensic expert for the UP Police Special Task Force</li>\r\n<li>Recently Conferred with Star Youth Achiever Award by Star news</li>\r\n</ul>\r\n', '', ''),
(172, 'Anyesha Mookherjee', NULL, '<ul>\r\n<li>B.E. Civil from BITS, Pilani (2001)</li>\r\n<li>M.S in Transportation Engineering from the University of Massachusetts, Amherst (2003)</li>\r\n<li>Licensed Professional Engineer (P.E.) and Professional Traffic Operations Engineer (P.T.O.E.) in the State of Maryland</li>\r\n<li>Traffic Engineer with the Maryland State Highway Administration.</li>\r\n</ul>', '', ''),
(173, 'Madhavan Venkatesh', 'Class XI student', 'Working on frontiers of theoretical physics ', '', ''),
(174, 'Chinmay Kulkarni', NULL, 'Chinmay Kulkarni is a PhD student in Stanford’s Computer Science department, advised by Professor Scott Klemmer. Chinmay’s research focuses on peer processes in massive online learning. Chinmay has also worked at Microsoft Research on projects that enabled tools for end-user interactive storytelling, and on search technology for Bing, and interned with the Google+ team on social computing research.', '', ''),
(175, 'Laxmanan Krishnamurthy', '', 'Lakshmanan Krishnamoorthy, is the Director Reporting Centre of Excellence of PayPal in India. Lakshmanan has 22+ years of experience in building, leading and managing global product development teams that have developed medium to large scale complex real time solutions. His passion is to take concepts to reality in many different areas like fingerprinting, Airline reservations, CallCenter and Airline Operations. Lakshmanan has deep industry knowledge in the operations of Airline, Call Center and is bringing his technical skills to the finance industry. Lakshmanan got his Bachelor''s Degree in EEE from BITS Pilani in 1990 and has fond memories of his days in this great institution. Lakshmanan joined PayPal in Oct 2012 and moved to Chennai after living 20 years in Europe and USA. He lives with his wife and two boys.', '', ''),
(176, 'Rakesh Komuravelli ', NULL, 'Rakesh Komuravelli is a 5th year Computer Science Ph.D. student at University of Illinois at Urbana-Champaign (UIUC) working with Prof. Sarita Adve on rethinking today''s hardware for safe parallelism. His research interests include computer architecture, compilers, and parallel computing. He graduated from BITS Pilani in 2006 with a bachelors in Computer Science and was awarded the Institute''s gold medal award. He interned at Microsoft Research and worked at Oracle for couple of years before joining the graduate school at UIUC. He recently interned at Intel where he worked on cutting edge heterogeneous architecture projects. Rakesh is a 2012 Qualcomm Innovation Fellow, a one in eight $100,000 award given by Qualcomm Incorporated that supports his research to address various hardware challenges in heterogeneous architectures.', '', '');
INSERT INTO `presenters` (`id`, `Name`, `Credentials`, `Profile`, `email`, `address`) VALUES
(177, 'Arpit', NULL, 'Arpit graduated from Pilani in 2011 with a degree in Computer Science. At Pilani he did some cool projects, which were presented in Apogee 2010. One of those won the Innovation Award by General Electric, and others went ahead for a patent. He converted his PS-2 to a thesis, to do research at National University of Singapore. Following that he went to University of Illinois at Urbana-Champaign (UIUC), for a really awesome Master''s program. At Illinois, he hacks, and breaks things. He killed the Facebook Hackathon just one month into the program, and now works with Prof. Klara Nahrstedt on tele-immersive systems (really cool!). He is also a Siebel Scholar''13, awarded to 85 students from the top-most universities around the world. ', '', ''),
(178, 'Vishwa', NULL, 'Vishwa graduated from Pilani in 2011 with a bachelors in Computer Science and is currently pursuing his Masters from Johns Hopkins University. He has been a national swimmer and Goldman Sachs global leader. His principal areas of research are in topics that lie at the interface of Computer Science and Health Care. Back then at Pilani, he spent most of his time understanding human brain and developing devices that could assist the blind, paralyzed and other differently disabled people in living a better life. During his time at Hopkins, he has worked on multiple interesting challenges like developing brain computer interfaces that enable humans to control robots directly via their brain, methodologies to improve cancer diagnosis, and surgical devices and robots that drive the modern day surgeries. ', '', ''),
(179, 'Rizwan', NULL, 'Rizwan graduated from the Pilani campus in 2010 with Bachelors in Computer Science and a special respect from half of the 06A7 batch for his help in building the 50% PLCC assignment. Rizwan is perhaps one of the few prolific BITSian programmers who toiled away many nights acing CodeChef and TopCoder challenges. He also deployed his skills building interesting projects with the Computer Science Association. Rizwan worked at DE Shaw for one year and is currently pursuing an MTech in CS at IIT Kanpur, where his research work focuses on Randomized Algorithms and Machine Learning. With his passion towards theory, he will be the perfect person to talk about Algorithms at ART', '', ''),
(180, 'Rajat Tibrewal', NULL, 'Rajat Tibrewal passed out from BITS Pilani in 2011, with a dual degree in Physics and Computer Science. One of the brightest students in his batch, he was involved in a lot of extracurriculars as well - be it the Department of Backstage, the English Press Club and the English Languages Activities Society. For the Computer Science Association, he did an exceptional job as the APOGEE coordinator, guiding several prize-winning projects in a variety of technical areas. He landed himself a brilliant internship at IBM Research where he worked on the SyNAPSE project, and a highly coveted PS-2 at INSEAD where he spent his time touring Europe. Post his graduation, he''s been working with Google on multiple backend systems, developing critical infrastructure for Google Apps for Business', '', ''),
(182, '<p>Hasil Sharma</p>', '', '<p>Kuch vhg</p>', '', ''),
(183, '<p>Gyan Prakash</p>', '<p>Hello</p>\r\n<p>Bhikari</p>', '<p>BITSian</p>', '', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
