-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 12:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `py django`
--
CREATE DATABASE IF NOT EXISTS `py django` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `py django`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(5, 'Cộng đồng sinh viên Cao Thắng'),
(7, 'Hội những người fan CR7'),
(6, 'Khoa Công Nghệ Thông Tin'),
(1, 'Thanh niên tình nguyện'),
(2, 'Thanh niên xung phong'),
(8, 'Thể thao 24/7'),
(4, 'Đoàn thanh niên Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add article', 8, 'add_article'),
(30, 'Can change article', 8, 'change_article'),
(31, 'Can delete article', 8, 'delete_article'),
(32, 'Can view article', 8, 'view_article'),
(33, 'Can add feed', 9, 'add_feed'),
(34, 'Can change feed', 9, 'change_feed'),
(35, 'Can delete feed', 9, 'delete_feed'),
(36, 'Can view feed', 9, 'view_feed');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$hsAOjleVspmdrZQCnuFYN6$IoiqYWsrLcIryfzD8Xvu3klAHOMg8AtMP3u6IvretNs=', '2024-04-25 10:53:02.062135', 1, 'admin', '', '', 'tranquocbaoxx123@gmail.com', 1, 1, '2024-04-25 04:38:58.389547'),
(3, 'pbkdf2_sha256$720000$KKC3Y1KjsaLeqZDrtJDUEw$OdN+IRZ8Fve+QphN3WosmW56NWufg2jlYxlHbLP9M94=', '2024-04-25 09:06:10.000000', 0, 'quocbao22d', 'Quoc Bao', 'Tran', 'tranquocbao123@gmail.com', 0, 1, '2024-04-25 09:49:01.000000'),
(4, 'pbkdf2_sha256$720000$cTmJZx0S7eaSJyl5BvFBjw$+EHt/gLKRDclAXlefKMDrsnwbI0izUsCWEn1/6wmTnQ=', '2024-04-23 06:00:00.000000', 0, 'vuongtam22d', 'Tam', 'Vuong', 'vuongtam123@gmail.com', 0, 1, '2024-04-25 09:51:55.000000'),
(5, 'pbkdf2_sha256$720000$DemZQuiOkiGrAkeGXvcr93$BsZwIJBOT6QGB18w8yeWnrq9ICtqg5hHmhNBRVyKpmg=', '2024-04-21 18:00:00.000000', 0, 'minhhieu22d', 'Minh Hieu', 'Hoang', 'hoangminhhieu123@gmail.com', 0, 1, '2024-04-22 09:55:30.000000'),
(6, 'pbkdf2_sha256$720000$S4pcL0fCdSMqnDJgxicjIg$sHJwbvuI8zatuMQ7dktRW6ah39vkaPO3M9HtKBXnC/E=', '2024-04-24 12:00:00.000000', 0, 'ngoctai22d', 'Ngoc Tai', 'Luong', 'luongngoctai123@gmail.com', 1, 1, '2024-04-25 18:00:00.000000'),
(7, 'pbkdf2_sha256$720000$24ZuTiW1cXqfNyf9ASNHkl$yDRJfGbmK++Q+ki+XVyQ42ciA0G4dn0pKbZOBNQsRIs=', '2024-04-25 12:00:00.000000', 1, 'vanhuy22d', 'Van Huy', 'Nguyen', 'nguyenvanhuy123@gmail.com', 0, 0, '2024-04-25 18:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 5, 1),
(2, 5, 9),
(4, 6, 5),
(3, 6, 9),
(5, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-25 05:07:33.998118', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-04-25 05:09:39.166884', '1', 'Category object (1)', 2, '[{\"changed\": {\"fields\": [\"Layout\", \"Status\"]}}]', 7, 1),
(3, '2024-04-25 05:10:06.202991', '1', 'Category object (1)', 3, '', 7, 1),
(4, '2024-04-25 05:54:46.555171', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-04-25 05:55:10.582052', '3', 'Category object (3)', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-04-25 05:56:49.631858', '4', 'Khoa học', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-04-25 07:01:15.873099', '1', 'Nguyễn Thanh Tùng', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-04-25 07:04:09.231519', '2', 'Nguyễn Thanh Tùng 2', 1, '[{\"added\": {}}]', 8, 1),
(9, '2024-04-25 07:05:11.865427', '3', 'sgsgfs', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-04-25 07:17:09.778424', '2', 'Nguyễn Thanh Tùng 2', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(11, '2024-04-25 07:17:41.654168', '2', 'Nguyễn Thanh Tùng 2', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(12, '2024-04-25 07:17:52.170359', '2', 'Nguyễn Thanh Tùng 2', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(13, '2024-04-25 07:18:02.762969', '2', 'Nguyễn Thanh Tùng 2', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 8, 1),
(14, '2024-04-25 07:18:38.526429', '2', 'Nguyễn Thanh Tùng 2', 3, '', 8, 1),
(15, '2024-04-25 07:28:16.970220', '1', 'Feed object (1)', 1, '[{\"added\": {}}]', 9, 1),
(16, '2024-04-25 07:29:28.968986', '2', 'Feed object (2)', 1, '[{\"added\": {}}]', 9, 1),
(17, '2024-04-25 07:30:50.753531', '3', 'Báo tin tức', 1, '[{\"added\": {}}]', 9, 1),
(18, '2024-04-25 08:39:51.428836', '3', 'sgsgfs', 3, '', 8, 1),
(19, '2024-04-25 08:50:12.577943', '1', 'Nguyễn Thanh Tùng', 3, '', 8, 1),
(20, '2024-04-25 08:50:20.190183', '4', 'Khoa học', 3, '', 7, 1),
(21, '2024-04-25 08:50:20.224093', '3', 'Kinh tế', 3, '', 7, 1),
(22, '2024-04-25 08:50:20.258002', '2', 'Thể thao', 3, '', 7, 1),
(23, '2024-04-25 08:50:27.262292', '3', 'Báo tin tức', 3, '', 9, 1),
(24, '2024-04-25 08:50:27.316146', '2', 'Báo thanh niên', 3, '', 9, 1),
(25, '2024-04-25 08:50:27.331134', '1', 'Vnexpress', 3, '', 9, 1),
(26, '2024-04-25 08:52:23.442059', '1', 'Thanh niên tình nguyện', 1, '[{\"added\": {}}]', 3, 1),
(27, '2024-04-25 08:53:03.284283', '2', 'Thanh niên xung phong', 1, '[{\"added\": {}}]', 3, 1),
(28, '2024-04-25 08:53:19.668475', '3', 'Sinh viên 5 tốt', 1, '[{\"added\": {}}]', 3, 1),
(29, '2024-04-25 08:54:21.652022', '4', 'Đoàn thanh niên Việt Nam', 1, '[{\"added\": {}}]', 3, 1),
(30, '2024-04-25 08:54:43.912129', '5', 'Cộng đồng sinh viên Cao Thắng', 1, '[{\"added\": {}}]', 3, 1),
(31, '2024-04-25 08:55:23.552732', '6', 'Khoa Công Nghệ Thông Tin', 1, '[{\"added\": {}}]', 3, 1),
(32, '2024-04-25 08:57:20.379851', '7', 'Hội những người fan CR7', 1, '[{\"added\": {}}]', 3, 1),
(33, '2024-04-25 08:57:44.885949', '8', 'Thể thao 24/7', 1, '[{\"added\": {}}]', 3, 1),
(34, '2024-04-25 09:00:35.517892', '3', 'Sinh viên 5 tốt', 3, '', 3, 1),
(35, '2024-04-25 09:04:17.275145', '2', 'quocbao22d', 1, '[{\"added\": {}}]', 4, 1),
(36, '2024-04-25 09:06:45.790013', '2', 'quocbao22d', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Last login\"]}}]', 4, 1),
(37, '2024-04-25 09:46:46.800775', '2', 'quocbao22d', 3, '', 4, 1),
(38, '2024-04-25 09:49:02.371648', '3', 'quocbao22d', 1, '[{\"added\": {}}]', 4, 1),
(39, '2024-04-25 09:50:36.900565', '3', 'quocbao22d', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Last login\"]}}]', 4, 1),
(40, '2024-04-25 09:51:55.982648', '4', 'vuongtam22d', 1, '[{\"added\": {}}]', 4, 1),
(41, '2024-04-25 09:53:37.692934', '4', 'vuongtam22d', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Last login\"]}}]', 4, 1),
(42, '2024-04-25 09:54:13.647346', '5', 'minhhieu22d', 1, '[{\"added\": {}}]', 4, 1),
(43, '2024-04-25 09:55:53.880673', '5', 'minhhieu22d', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"User permissions\", \"Last login\", \"Date joined\"]}}]', 4, 1),
(44, '2024-04-25 09:56:24.409135', '6', 'ngoctai22d', 1, '[{\"added\": {}}]', 4, 1),
(45, '2024-04-25 09:57:22.114939', '6', 'ngoctai22d', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"User permissions\", \"Last login\"]}}]', 4, 1),
(46, '2024-04-25 09:58:18.987890', '7', 'vanhuy22d', 1, '[{\"added\": {}}]', 4, 1),
(47, '2024-04-25 09:59:06.826459', '7', 'vanhuy22d', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Active\", \"Superuser status\", \"User permissions\", \"Last login\", \"Date joined\"]}}]', 4, 1),
(48, '2024-04-25 10:00:51.689935', '8', 'ronaldo22d', 1, '[{\"added\": {}}]', 4, 1),
(49, '2024-04-25 10:02:20.173758', '8', 'ronaldo22d', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Active\", \"Staff status\", \"Last login\", \"Date joined\"]}}]', 4, 1),
(50, '2024-04-25 10:03:09.712590', '8', 'ronaldo22d', 3, '', 4, 1),
(51, '2024-04-25 10:10:43.463552', '5', 'Khoa học', 1, '[{\"added\": {}}]', 7, 1),
(52, '2024-04-25 10:11:19.534445', '6', 'Kinh doanh', 1, '[{\"added\": {}}]', 7, 1),
(53, '2024-04-25 10:11:54.181941', '7', 'Thể thao', 1, '[{\"added\": {}}]', 7, 1),
(54, '2024-04-25 10:12:21.073916', '8', 'Kinh tế', 1, '[{\"added\": {}}]', 7, 1),
(55, '2024-04-25 10:14:01.650319', '9', 'Truyền thông', 1, '[{\"added\": {}}]', 7, 1),
(56, '2024-04-25 10:14:49.501462', '10', 'Thời tiết', 1, '[{\"added\": {}}]', 7, 1),
(57, '2024-04-25 10:17:03.711677', '10', 'Thời tiết', 3, '', 7, 1),
(58, '2024-04-25 10:23:58.407414', '4', 'Giá xăng, dầu cùng giảm', 1, '[{\"added\": {}}]', 8, 1),
(59, '2024-04-25 10:30:12.561470', '5', 'Vé máy bay Hà Nội đến các điểm du lịch đắt đỏ, khan hiếm', 1, '[{\"added\": {}}]', 8, 1),
(60, '2024-04-25 10:32:32.471752', '6', 'U23 Việt Nam đấu U23 Iraq: HLV Hoàng Anh Tuấn \'chỉnh\' gấp học trò', 1, '[{\"added\": {}}]', 8, 1),
(61, '2024-04-25 10:34:34.632068', '7', 'Liverpool chuẩn bị công bố HLV mới thay Jurgen Klopp', 1, '[{\"added\": {}}]', 8, 1),
(62, '2024-04-25 10:40:19.223569', '8', '84 công trình xuất sắc nhận Giải thưởng Sáng tạo kỹ thuật toàn quốc lần thứ 17', 1, '[{\"added\": {}}]', 8, 1),
(63, '2024-04-25 10:43:09.612621', '4', 'Báo thanh niên', 1, '[{\"added\": {}}]', 9, 1),
(64, '2024-04-25 10:44:32.924473', '5', 'Vnexpress', 1, '[{\"added\": {}}]', 9, 1),
(65, '2024-04-25 10:45:07.334054', '6', 'Báo người lao động', 1, '[{\"added\": {}}]', 9, 1),
(66, '2024-04-25 10:45:50.726737', '7', 'Báo dân trí', 1, '[{\"added\": {}}]', 9, 1),
(67, '2024-04-25 10:46:27.543893', '8', 'Tin tức 24h', 1, '[{\"added\": {}}]', 9, 1),
(68, '2024-04-25 10:48:00.737159', '9', 'Báo tin tức thông tấn xã Việt Nam', 1, '[{\"added\": {}}]', 9, 1),
(69, '2024-04-25 10:49:33.369852', '4', 'Báo thanh niên', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'news', 'article'),
(7, 'news', 'category'),
(9, 'news', 'feed'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-25 04:35:49.564327'),
(2, 'auth', '0001_initial', '2024-04-25 04:36:00.865895'),
(3, 'admin', '0001_initial', '2024-04-25 04:36:02.571252'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-25 04:36:02.655018'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-25 04:36:02.702406'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-25 04:36:03.630912'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-25 04:36:04.396343'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-25 04:36:04.564880'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-25 04:36:04.685541'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-25 04:36:06.646345'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-25 04:36:06.688230'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-25 04:36:06.723158'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-25 04:36:06.786945'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-25 04:36:06.849371'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-25 04:36:07.022926'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-25 04:36:07.077777'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-25 04:36:07.239363'),
(18, 'sessions', '0001_initial', '2024-04-25 04:36:07.697138'),
(19, 'news', '0001_initial', '2024-04-25 05:00:45.491395'),
(20, 'news', '0002_article', '2024-04-25 06:20:36.481465'),
(21, 'news', '0003_feed_alter_article_image', '2024-04-25 07:22:17.145568');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('syf3265vu0g8az26282dcjqgdvw277kn', '.eJxVjMsOwiAQRf-FtSEDUx516d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZnocTpd4uUHrntgO_UbrNMc1uXKcpdkQft8jpzfl4O9--gUq_f2kIComJo9DkODOjG6BPyoBAIvQVjQDsipTVlqy0a4KIyWk8uQgHx_gDW_jdM:1rzwis:61Em6cFaieHKz7vr76yyLWK6UkCOWnj26ELKAIlqaBE', '2024-05-09 10:53:02.275537');

-- --------------------------------------------------------

--
-- Table structure for table `news_article`
--

CREATE TABLE `news_article` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `special` tinyint(1) NOT NULL,
  `publish_date` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_article`
--

INSERT INTO `news_article` (`id`, `name`, `slug`, `status`, `ordering`, `special`, `publish_date`, `content`, `image`, `category_id`) VALUES
(4, 'Giá xăng, dầu cùng giảm', 'gia-xang-dau-cung-giam', 'published', 5, 1, '2024-04-24 06:00:00.000000', '<p>Mỗi l&iacute;t xăng giảm<strong> 310-320 đồng,</strong> c&aacute;c mặt h&agrave;ng dầu (trừ mazut) hạ 730 đồng t&ugrave;y loại, từ 15h h&ocirc;m nay.</p>\r\n<p>Theo điều h&agrave;nh của li&ecirc;n Bộ C&ocirc;ng Thương - T&agrave;i ch&iacute;nh h&ocirc;m nay, gi&aacute; xăng RON 95-III (loại phổ biến tr&ecirc;n thị trường) giảm 320 đồng, xuống 24.910 đồng; E5 RON 92 bớt 310 đồng, ở mức <strong>23.910 đồng một l&iacute;t.</strong></p>\r\n<p>Tương tự, c&aacute;c mặt h&agrave;ng dầu (trừ mazut) cũng hạ v&agrave; c&oacute; gi&aacute; mới 20.680-20.710 đồng một l&iacute;t so với c&aacute;ch đ&acirc;y 7 ng&agrave;y. Ri&ecirc;ng dầu mazut tăng 200 đồng, l&ecirc;n 17.400 đồng một kg.<br>Như vậy, từ ng&agrave;y 4/1 đến nay, gi&aacute; xăng, dầu c&ugrave;ng c&oacute; 10 lần tăng, 7 lần giảm. Tương tự kỳ điều h&agrave;nh trước, h&ocirc;m nay li&ecirc;n Bộ kh&ocirc;ng tr&iacute;ch, chi sử dụng từ Quỹ b&igrave;nh ổn gi&aacute; với c&aacute;c mặt h&agrave;ng nhi&ecirc;n liệu.<br>Nh&agrave; điều h&agrave;nh cho biết gi&aacute; nhi&ecirc;n liệu tuần qua biến động do nguy cơ xung đột trực tiếp giữa Israel v&agrave; Iran, tồn kho dầu th&ocirc; thương mại của Mỹ giảm, xung đột qu&acirc;n sự giữa Nga v&agrave; Ukraine tiếp diễn.</p>\r\n<p>B&igrave;nh qu&acirc;n 7 ng&agrave;y, gi&aacute; xăng th&agrave;nh phẩm giảm<em> 2,4-2,5%, dầu (trừ mazut) hạ 4,8%.</em> Theo đ&oacute;, mỗi th&ugrave;ng xăng RON 95 xuống 105 USD, dầu diesel c&ograve;n 101 USD. Ri&ecirc;ng dầu mazut tăng 0,6%, l&ecirc;n 511 USD mỗi tấn.</p>', 'news/images/article/004157b6-d67f-422d-860d-f53c63c61b7a.jpg', 6),
(5, 'Vé máy bay Hà Nội đến các điểm du lịch đắt đỏ, khan hiếm', 've-may-bay-ha-noi-den-cac-diem-du-lich-dat-do-khan-hiem', 'draft', 20, 1, '2024-04-25 10:27:54.000000', '<p><span style=\"background-color: rgb(241, 196, 15);\">Gi&aacute; đắt đỏ nhưng nhiều chặng H&agrave; Nội đi Điện Bi&ecirc;n, Ph&uacute; Quốc, C&ocirc;n Đảo vẫn \'ch&aacute;y v&eacute;\' trong kỳ nghỉ lễ 30/4-1/5.</span></p>\r\n<p>Hai ng&agrave;y nữa cả nước<span style=\"background-color: rgb(241, 196, 15);\"><span style=\"background-color: rgb(255, 255, 255);\"> bước </span></span>v&agrave;o kỳ nghỉ lễ 30/4-1/5, ghi nhận tr&ecirc;n hệ thống b&aacute;n v&eacute; của c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng cho thấy nhiều chặng bay đi ng&agrave;y 27/4, về ng&agrave;y 1/5 đ&atilde; hết sạch d&ugrave; gi&aacute; cao.</p>\r\n<p>Cụ thể, tr&ecirc;n c&aacute;c chặng từ <strong><em>H&agrave; Nội đi Điện Bi&ecirc;n, Tuy H&ograve;a, Đồng Hới, Huế, Quy Nhơn, Nha Trang, C&ocirc;n Đảo... </em></strong>kh&ocirc;ng c&ograve;n chuyến bay n&agrave;o d&ugrave; gi&aacute; v&eacute; đắt đỏ.</p>\r\n<p>Chị Oanh, ở Cầu Giấy (H&agrave; Nội) cho biết l&uacute;c đầu nghĩ dịp lễ năm nay chỉ được nghỉ 3 ng&agrave;y n&ecirc;n kh&ocirc;ng định chơi xa. Khi cơ quan th&ocirc;ng b&aacute;o nghỉ 5 ng&agrave;y, chị mới quyết định đặt v&eacute; đi Huế cho gia đ&igrave;nh nhưng hỏi 4 đại l&yacute; vẫn kh&ocirc;ng c&oacute;. \"T&ocirc;i chuyển kế hoạch đến Nha Trang v&agrave; cũng phải mua v&eacute; sớm hơn dịp nghỉ lễ 1 ng&agrave;y mới c&oacute;\", chị Oanh n&oacute;i.</p>\r\n<p>Một số chặng c&ograve;n v&eacute; th&igrave; rất &iacute;t sự lựa chọn giờ bay, như H&agrave; Nội - Đ&agrave; Nẵng, Ph&uacute; Quốc chỉ c&oacute; 1-2 chuyến bay sớm, về muộn gi&aacute; 4,7-6 triệu đồng (khứ hồi, đ&atilde; gồm thuế, ph&iacute;). Mức n&agrave;y tăng 5-15% so với c&ugrave;ng kỳ năm ngo&aacute;i. Chặng đi Đ&agrave; Lạt cũng c&ograve;n v&agrave;i v&eacute;, gi&aacute; tăng vọt, l&ecirc;n 5,8-6 triệu đồng.</p>\r\n<p>Trong khi đ&oacute;, ở chặng bay TP HCM đi c&aacute;c điểm du lịch &iacute;t căng thẳng hơn, hiện vẫn kh&aacute; dồi d&agrave;o, gi&aacute; v&eacute; hạ nhiệt khoảng 5-10% so với c&ugrave;ng kỳ năm ngo&aacute;i. Điểm đến đắt đỏ trước đ&acirc;y l&agrave; TP HCM - Ph&uacute; Quốc đi ng&agrave;y 27/4 v&agrave; về 1/5 gi&aacute; v&eacute; khứ hồi hiện chỉ hơn 3,8 triệu đồng đ&atilde; gồm thuế ph&iacute; (năm ngo&aacute;i khoảng 4,5-5,5 triệu đồng, t&ugrave;y khung giờ). Hay TP HCM - Nha Trang, gi&aacute; v&eacute; khứ hồi cho ng&agrave;y cao điểm như tr&ecirc;n cũng chỉ 2,8 triệu đồng.</p>\r\n<p>Anh Th&agrave;nh, đại l&yacute; v&eacute; ở quận T&acirc;n B&igrave;nh (TP HCM) cho biết dịp n&agrave;y lượng kh&aacute;ch ở th&agrave;nh phố đi c&aacute;c điểm du lịch bằng đường h&agrave;ng kh&ocirc;ng giảm do nhiều người chọn c&aacute;c chuyến trải nghiệm gần. Số kh&aacute;c, gi&aacute; v&eacute; cao n&ecirc;n họ dịch chuyển sang đi t&agrave;u v&agrave; xe kh&aacute;ch nhiều hơn.<br>Với chặng H&agrave; Nội, l&yacute; giải nguy&ecirc;n nh&acirc;n ch&aacute;y v&eacute;, gi&aacute; đắt đỏ, chị Phạm Thị Thu Hương - đại l&yacute; v&eacute; m&aacute;y bay - cho biết nhu cầu du lịch của người d&acirc;n Thủ đ&ocirc; đang tăng cao. Đặc biệt, c&aacute;c điểm đến c&oacute; biển kh&aacute; h&uacute;t kh&aacute;ch khi t&igrave;nh trạng nắng n&oacute;ng cường độ cao ng&agrave;y c&agrave;ng tăng. \"T&ocirc;i c&oacute; v&agrave;i kh&aacute;ch muốn đặt v&eacute; đi chơi dịp lễ n&agrave;y nhưng hiện tại đ&atilde; hết. T&ocirc;i vẫn đang canh v&eacute; bổ sung, chờ đến ng&agrave;y mai mới trả lời kh&aacute;ch\", chị Hương cho hay.</p>\r\n<p>Đại diện ACV cho hay sở dĩ gi&aacute; v&eacute; m&aacute;y bay từ H&agrave; Nội đi c&aacute;c điểm du lịch khan hiếm v&agrave; đắt đỏ so với năm ngo&aacute;i một phần cũng do c&aacute;c h&atilde;ng trong t&igrave;nh trạng thiếu m&aacute;y bay. Từ đầu năm, nh&agrave; sản xuất động cơ Pratt &amp; Whitney (PW) phải triệu hồi động cơ để kiểm tra v&agrave; sửa chữa chuy&ecirc;n s&acirc;u nhằm khắc phục lỗi sản xuất. Vietnam Airlines v&agrave; Vietjet Air c&oacute; khoảng 40 m&aacute;y bay sử dụng động cơ n&agrave;y n&ecirc;n sẽ phải dừng khai th&aacute;c năm 2024-2025 để bảo dưỡng, thậm ch&iacute; thời gian khắc phục c&oacute; thể l&acirc;u hơn dự kiến.</p>\r\n<p>Ngo&agrave;i ra, thị trường h&agrave;ng kh&ocirc;ng năm nay cũng c&oacute; nhiều biến động khi một số h&atilde;ng t&aacute;i cấu tr&uacute;c doanh nghiệp, giảm quy m&ocirc; đội t&agrave;u bay. Bamboo Airways trước đ&acirc;y c&oacute; 28 m&aacute;y bay, giờ chỉ c&ograve;n v&agrave;i chiếc hoạt động sau khi trả c&ocirc;ng ty cho thu&ecirc; to&agrave;n bộ m&aacute;y bay Embraer E190. Pacific Airlines đ&atilde; trả hết m&aacute;y bay để x&oacute;a nợ v&agrave; kh&ocirc;ng c&ograve;n m&aacute;y bay khai th&aacute;c.</p>\r\n<p>Theo Cục H&agrave;ng kh&ocirc;ng Việt Nam, tỷ lệ đặt chỗ tr&ecirc;n một số đường bay từ H&agrave; Nội đi, đến c&aacute;c địa phương l&ecirc;n tới 90-100% trong c&aacute;c ng&agrave;y 27/4 v&agrave; 1/5. Trong đ&oacute;, c&aacute;c đường bay từ H&agrave; Nội, TP HCM đi Điện Bi&ecirc;n Phủ/ Quy Nhơn/C&ocirc;n Đảo c&oacute; tỷ lệ lấp đầy cao nhất, đạt 95-100%.</p>\r\n<p>Trước t&igrave;nh trạng \"ch&aacute;y v&eacute; cục bộ\", Cục H&agrave;ng kh&ocirc;ng Việt Nam vừa y&ecirc;u cầu c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng tiếp tục tăng chuyến tr&ecirc;n đường bay nội địa. Theo đ&oacute;, Cục đề nghị c&aacute;c h&atilde;ng tối ưu h&oacute;a đội t&agrave;u bay để xem x&eacute;t bổ sung tải cung ứng tr&ecirc;n c&aacute;c đường bay từ H&agrave; nội v&agrave; TP HCM đến c&aacute;c địa phương v&agrave;o ng&agrave;y 27/4 v&agrave; từ c&aacute;c địa phương về H&agrave; Nội, TP HCM ng&agrave;y 1/5.</p>\r\n<p>Trước đ&oacute;, ng&agrave;y 18/4, Cục h&agrave;ng kh&ocirc;ng cũng đ&atilde; đề nghị c&aacute;c h&atilde;ng tăng chuyến bay đ&ecirc;m dịp 30/4 v&agrave; cao điểm h&egrave; để phục vụ kh&aacute;ch h&agrave;ng.</p>\r\n<p>Trong dịp lễ n&agrave;y, Vietnam Airlines cho biết cung ứng hơn 570.000 ghế v&agrave; 2.900 chuyến bay tr&ecirc;n c&aacute;c chặng nội địa v&agrave; quốc tế. C&ograve;n h&atilde;ng Vietjet Air cũng tăng th&ecirc;m 86.000 ghế, tương đương 425 chuyến bay tr&ecirc;n c&aacute;c đường bay du lịch.</p>', 'news/images/article/94b5bb1c-7524-4101-9920-8dd346f684a7.jpg', 6),
(6, 'U23 Việt Nam đấu U23 Iraq: HLV Hoàng Anh Tuấn \'chỉnh\' gấp học trò', 'u23-viet-nam-dau-u23-iraq-hlv-hoang-anh-tuan-chinh-gap-hoc-tro', 'published', 13, 1, '2024-04-25 06:00:00.000000', '<ul style=\"list-style-type: circle;\">\r\n<li>U23 Việt Nam đạt được kết quả đ&aacute;ng ghi nhận ở v&ograve;ng bảng VCK U23 ch&acirc;u &Aacute; 2024, nhưng cũng gặp kh&ocirc;ng &iacute;t vấn đề cần phải chỉnh sửa trước trận gặp U23 Iraq.<br>Dưới sự dẫn dắt của HLV Ho&agrave;ng Anh Tuấn, U23 Việt Nam đạt được những kết quả rất đ&aacute;ng ghi nhận ở v&ograve;ng bảng VCK U23 ch&acirc;u &Aacute; 2024.</li>\r\n<li>Theo đ&oacute;, U23 Việt Nam v&agrave;o top 5 đội ghi b&agrave;n nhiều nhất v&ograve;ng bảng (5 b&agrave;n), trở th&agrave;nh đội Đ&ocirc;ng Nam &Aacute; đầu ti&ecirc;n thắng 2 trận mở m&agrave;n v&ograve;ng bảng. Đ&acirc;y cũng l&agrave; lần đầu ti&ecirc;n trong lịch sử một đội U23 c&oacute; chiến thắng ở trận mở m&agrave;n VCK U23 ch&acirc;u &Aacute;.</li>\r\n<li>Thậm ch&iacute; đo&agrave;n qu&acirc;n của HLV Ho&agrave;ng Anh Tuấn c&ograve;n l&agrave;m tốt hơn nữa khi gi&agrave;nh 2 chiến thắng li&ecirc;n tiếp, ghi được 6 điểm v&agrave; v&agrave;o tứ kết trước một v&ograve;ng đấu. Thế hệ đ&agrave;n anh kh&ocirc;ng l&agrave;m được điều tương tự trong qu&aacute; khứ, kể cả dưới triều đại rất th&agrave;nh c&ocirc;ng của HLV Park Hang Seo.<br>Với những dấu ấn c&aacute; nh&acirc;n, Vĩ H&agrave;o v&agrave;o top 10 cầu thủ dứt điểm tr&uacute;ng đ&iacute;ch nhiều nhất v&ograve;ng bảng (4 lần). Ch&acirc;n s&uacute;t CLB B&igrave;nh Dương lọt top 10 cầu thủ ghi b&agrave;n nhiều nhất v&ograve;ng bảng (2 b&agrave;n). Ngo&agrave;i ra, Quan Văn Chuẩn l&agrave; một trong những thủ th&agrave;nh hay nhất ở v&ograve;ng bảng, c&oacute; một trận giữ sạch m&agrave;nh lưới.</li>\r\n<li>B&ecirc;n cạnh những thống k&ecirc; tr&ecirc;n, U23 Việt Nam c&oacute; lối chơi kỷ luật, tu&acirc;n thủ chiến thuật, biết người biết ta v&agrave; thực dụng khi cần thiết. HLV Ho&agrave;ng Anh Tuấn ghi dấu ấn với c&aacute;ch thay người, bố tr&iacute; đội h&igrave;nh ph&ugrave; hợp...</li>\r\n<li>Nhưng sau v&ograve;ng bảng, U23 Việt Nam cũng c&oacute; rất nhiều vấn đề cần phải điều chỉnh v&agrave; chỉnh sửa ngay, trước khi bước v&agrave;o tứ kết gặp đối thủ mạnh U23 Iraq.<br>Vấn đề đầu ti&ecirc;n ch&iacute;nh l&agrave; th&oacute;i quen xấu của c&aacute;c cầu thủ. Kh&ocirc;ng &iacute;t những t&igrave;nh huống cầu thủ U23 Việt Nam phạm lỗi sơ đẳng dẫn đến thẻ phạt.</li>\r\n<li>Sau 3 trận v&ograve;ng bảng, U23 Việt Nam phạm lội tới 38 lần. Con số n&agrave;y khiến đội b&oacute;ng của HLV Ho&agrave;ng Anh Tuấn v&agrave;o nh&oacute;m top 5 đội phạm lỗi nhiều nhất (U23 Trung Quốc 46 lần, U23 Tajikistan 45 lần, U23 Indonesia lần v&agrave; U23 Kuwait 44 lần), top 5 đội chịu nhiều thẻ v&agrave;ng v&agrave; thẻ đỏ nhất (7 thẻ v&agrave;ng, 1 thẻ đỏ).</li>\r\n<li>Trong số 8 đội v&agrave;o tứ kết, U23 Việt Nam chỉ đứng sau U23 Indonesia về số lần phạm lỗi. Đ&acirc;y l&agrave; một thống k&ecirc; đ&aacute;ng b&aacute;o động với \"những chiến binh sao v&agrave;ng\".</li>\r\n</ul>', 'news/images/article/4ec14c75-414e-4cbb-ab7d-4fb863eb7e3e.jpg', 7),
(7, 'Liverpool chuẩn bị công bố HLV mới thay Jurgen Klopp', 'liverpool-chuan-bi-cong-bo-hlv-moi-thay-jurgen-klopp', 'published', 5, 0, '2024-04-25 00:00:00.000000', '<p>L&atilde;nh đạo Liverpool đang tiến gần đến thỏa thuận với Feyenoord để đưa HLV Arne Slot về Anfield m&ugrave;a giải tới.<br>C&aacute;c quan chức Liverpool đ&atilde; li&ecirc;n hệ với đội b&oacute;ng H&agrave; Lan ng&agrave;y h&ocirc;m qua gửi đề nghị mức ph&iacute; bồi thường cho chiến lược gia 45 tuổi - Arne Slot.</p>\r\n<p>Dự kiến, đội chủ s&acirc;n Anfield sẽ phải bỏ ra khoản tiền hơn 10 triệu bảng để c&oacute; được sự phục vụ của Arne Slot.<br>Mọi thứ đang tiến triển rất nhanh v&agrave; c&aacute;c cuộc đ&agrave;m ph&aacute;n đưa Slot về Anfield c&oacute; thể ho&agrave;n tất v&agrave;o cuối tuần n&agrave;y.</p>\r\n<p>H&egrave; năm ngo&aacute;i, cả Tottenham lẫn Chelsea đều mời Arne Slot ngồi v&agrave;o ghế n&oacute;ng. &Ocirc;ng đạt th&agrave;nh c&ocirc;ng vang dội kể từ khi huấn luyện Feyenoord năm 2021.</p>\r\n<p>Mới đ&acirc;y, Arne Slot c&ugrave;ng Feyenoord năm thứ hai li&ecirc;n tiếp v&ocirc; địch c&uacute;p Quốc gia H&agrave; Lan. Ngo&agrave;i ra, đội b&oacute;ng cũng đăng quang giải v&ocirc; địch H&agrave; Lan 2022/23.</p>\r\n<p>Phong c&aacute;ch huấn luyện hiện đại, chuộng thứ b&oacute;ng đ&aacute; tấn c&ocirc;ng quyến rũ biến Slot trở th&agrave;nh ứng vi&ecirc;n nặng k&yacute; thay Jurgen Klopp, sau khi Liverpool bỏ qua De Zebri v&agrave; Ruben Amorin.</p>\r\n<p>Trong động th&aacute;i mới nhất, cuộc họp b&aacute;o trước trận Feyenoord với Go Ahead Eagles với sự tham gia của Arne Slot mới bị hủy bỏ. Kh&ocirc;ng c&oacute; l&yacute; do ch&iacute;nh thức n&agrave;o được đưa đưa.</p>\r\n<p>Về phần Jurgen Klopp, &ocirc;ng chỉ c&ograve;n dẫn dắt Liverpool th&ecirc;m 4 trận nữa trước khi n&oacute;i lời chia tay.</p>\r\n<p>Nhiều khả năng Anfield sẽ biến động mạnh h&egrave; tới, cả về thượng tầng cũng như kế hoạch nh&acirc;n sự khi Arne Slot xuất hiện.</p>', 'news/images/article/7d7ccc9a-b756-4d5f-8cbb-55a9ce0844f1.jpg', 7),
(8, '84 công trình xuất sắc nhận Giải thưởng Sáng tạo kỹ thuật toàn quốc lần thứ 17', '84-cong-trinh-xuat-sac-nhan-giai-thuong-sang-tao-ky-thuat-toan-quoc-lan-thu-17', 'published', 1, 0, '2024-04-25 10:35:39.000000', '<ol style=\"list-style-type: lower-alpha;\">\r\n<li>\r\n<p>84 c&ocirc;ng tr&igrave;nh xuất sắc nhận Giải thưởng S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17<br>Ng&agrave;y 23/04/2024, Li&ecirc;n hiệp c&aacute;c Hội Khoa học v&agrave; Kỹ thuật Việt Nam (VUSTA), Quỹ Hỗ trợ s&aacute;ng tạo kỹ thuật Việt Nam (VIFOTEC) tổ chức Lễ tổng kết v&agrave; trao giải Hội thi S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17 (2022-2023). Vượt qua nhiều c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu, 84 c&ocirc;ng tr&igrave;nh xuất sắc nhất đ&atilde; được vinh danh tại Lễ Tổng kết v&agrave; trao giải Hội thi S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17.<br>Đăng nhậpĐăng k&yacute;<br>Danh mụcGiới thiệuChuy&ecirc;n đềTạp ch&iacute;Gửi b&agrave;iTiện &iacute;ch<br>Trang chủTin tức v&agrave; Sự kiện<br>Từ viết tắtXem cỡ chữTương phản<br>Thứ tư, 24/04/2024 16:31<br>84 c&ocirc;ng tr&igrave;nh xuất sắc nhận Giải thưởng S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17<br>Ng&agrave;y 23/04/2024, Li&ecirc;n hiệp c&aacute;c Hội Khoa học v&agrave; Kỹ thuật Việt Nam (VUSTA), Quỹ Hỗ trợ s&aacute;ng tạo kỹ thuật Việt Nam (VIFOTEC) tổ chức Lễ tổng kết v&agrave; trao giải Hội thi S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17 (2022-2023). Vượt qua nhiều c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu, 84 c&ocirc;ng tr&igrave;nh xuất sắc nhất đ&atilde; được vinh danh tại Lễ Tổng kết v&agrave; trao giải Hội thi S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17.</p>\r\n<p>&nbsp;</p>\r\n<p>Ban Tổ chức trao Bằng khen cho t&aacute;c giả của c&aacute;c c&ocirc;ng tr&igrave;nh đoạt giải Nhất.</p>\r\n<p>Ph&aacute;t biểu tại Lễ trao giải, TSKH Phan Xu&acirc;n Dũng - Chủ tịch VUSTA, Trưởng ban Tổ chức Hội thi cho biết: Sau 18 năm thực hiện Quyết định 165/2006/QĐ-TTg của Thủ tướng Ch&iacute;nh phủ về việc tổ chức Hội thi S&aacute;ng tạo kỹ thuật theo 2 cấp (cấp to&agrave;n quốc v&agrave; cấp bộ, tỉnh, th&agrave;nh phố), ch&uacute;ng ta đ&atilde; thu được những kết quả đ&aacute;ng kh&iacute;ch lệ, từ chỗ chỉ c&oacute; hơn 30 tỉnh, th&agrave;nh phố tham gia đến nay đ&atilde; c&oacute; 55 bộ, ng&agrave;nh, tỉnh, th&agrave;nh phố tham gia với hơn 8000 giải ph&aacute;p s&aacute;ng tạo tham dự thi.</p>\r\n<p>Hội thi S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17 (2022-2023) đ&atilde; c&oacute; những bước tiến quan trọng. Ban Tổ chức Hội thi c&aacute;c tỉnh, th&agrave;nh phố v&agrave; c&aacute;c bộ, ng&agrave;nh đ&atilde; chấm h&agrave;ng ngh&igrave;n giải ph&aacute;p tham gia Hội thi v&agrave; lựa chọn 587 giải ph&aacute;p đoạt giải cao gửi tham gia Hội thi S&aacute;ng tạo kỹ thuật to&agrave;n quốc. Th&ocirc;ng qua kết quả chấm của Hội đồng gi&aacute;m khảo, Ban tổ chức đ&atilde; quyết định trao thưởng cho 84 giải ph&aacute;p gồm: 6 giải Nhất, 12 giải Nh&igrave;, 24 giải Ba, 42 giải Khuyến kh&iacute;ch.</p>\r\n<p>6 c&ocirc;ng tr&igrave;nh đoạt giải Nhất Hội thi S&aacute;ng tạo kỹ thuật to&agrave;n quốc lần thứ 17 gồm: giải ph&aacute;p \"Cải tiến hệ thống xuất nhi&ecirc;n liệu FO v&agrave; tối ưu h&oacute;a điều kiện vận h&agrave;nh để nhập bổ sung nguy&ecirc;n liệu cho ph&acirc;n xưởng RFCC qua cảng xuất sản phẩm Jetty v&agrave; chế biến tại Nh&agrave; m&aacute;y lọc dầu Dung Quất\" của C&ocirc;ng ty Cổ phần Lọc H&oacute;a dầu B&igrave;nh Sơn (Quảng Ng&atilde;i); giải ph&aacute;p \"Nghi&ecirc;n cứu, thiết kế v&agrave; chế tạo thiết bị tập bắn s&uacute;ng TBS-19 d&ugrave;ng cho huấn luyện bắn s&uacute;ng bộ binh\" của Thiếu t&aacute;, Ths Đo&agrave;n Văn Dũng - Học viện Kỹ thuật qu&acirc;n sự (Bộ Quốc ph&ograve;ng); giải ph&aacute;p \"Ứng dụng kỹ thuật cộng hưởng từ khuếch t&aacute;n DTI khảo s&aacute;t c&aacute;c b&oacute; sợi thần kinh trung ương v&agrave; thần kinh ngoại bi&ecirc;n tại Bệnh viện Trường Đại học Y - Dược - Đại học Huế\" của PGS. TS Nguyễn Thanh Thảo - Trường Đại học Y - Dược - Đại học Huế, (Thừa Thi&ecirc;n &ndash; Huế); giải ph&aacute;p \"Nghi&ecirc;n cứu, thiết kế m&ocirc; đun điều khiển v&agrave; truyền th&ocirc;ng ứng dụng cho c&aacute;c thiết bị điện th&ocirc;ng minh trong hệ sinh th&aacute;i sản phẩm/dịch vụ Smart Home&rdquo; của Ths Nguyễn Đo&agrave;n Anh Kết - Trung t&acirc;m Nghi&ecirc;n cứu ph&aacute;t triển c&ocirc;ng nghệ kỹ thuật số, C&ocirc;ng ty Cổ phần B&oacute;ng đ&egrave;n Ph&iacute;ch nước Rạng Đ&ocirc;ng; giải ph&aacute;p \"Nghi&ecirc;n cứu, thiết kế c&aacute;c bộ phận phục vụ sản xuất xe k&eacute;o giỏ h&agrave;ng c&oacute; d&ugrave;ng robot h&agrave;ng tự động, sơn tự động\" của Trung &uacute;y, KS Đỗ Đức Hạnh - Nh&agrave; m&aacute;y 17, Tổng cục C&ocirc;ng nghiệp - Quốc ph&ograve;ng (Bộ Quốc ph&ograve;ng); giải ph&aacute;p \"Điều tra, khảo s&aacute;t, x&acirc;y dựng cơ sở dữ liệu m&ocirc;i trường biển ven c&aacute;c đảo kh&ocirc;ng tiếp cận được thuộc Quần đảo Trường Sa tr&ecirc;n cơ sở ứng dụng c&ocirc;ng nghệ viễn th&aacute;m v&agrave; GIS\" của Trung t&aacute;, TS Phan Quốc Y&ecirc;n - Học viện Kỹ thuật qu&acirc;n sự (Bộ Quốc ph&ograve;ng).</p>\r\n<p>Dịp n&agrave;y, Ban Tổ chức cũng trao quyết định khen thưởng cho 9 đơn vị v&agrave; 8 c&aacute; nh&acirc;n c&oacute; th&agrave;nh t&iacute;ch xuất sắc trong việc tuy&ecirc;n truyền, phổ biến v&agrave; tổ chức Hội thi. Tổng Li&ecirc;n đo&agrave;n lao động Việt Nam tặng Bằng Lao động s&aacute;ng tạo cho c&aacute;c c&aacute; nh&acirc;n l&agrave; chủ nhiệm v&agrave; đồng chủ nhiệm c&oacute; c&aacute;c giải ph&aacute;p đoạt giải Nhất, Nh&igrave;, Ba. Trung ương Đo&agrave;n thanh ni&ecirc;n Cộng sản Hồ Ch&iacute; Minh tặng Huy hiệu Tuổi trẻ s&aacute;ng tạo cho c&aacute;c t&aacute;c giả của c&aacute;c đề t&agrave;i đoạt giải Nhất v&agrave; Bằng khen cho t&aacute;c giả của c&aacute;c đề t&agrave;i đoạt giải Nh&igrave; v&agrave; Ba trong độ tuổi 35 trở xuống.</p>\r\n</li>\r\n</ol>', 'news/images/article/4e7e1042-1d75-4a7d-bcb8-c8cca543f3fe.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE `news_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `is_homepage` tinyint(1) NOT NULL,
  `layout` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`id`, `name`, `slug`, `is_homepage`, `layout`, `status`, `ordering`) VALUES
(5, 'Khoa học', 'khoa-hoc', 1, 'list', 'published', 5),
(6, 'Kinh doanh', 'kinh-doanh', 1, 'grid', 'draft', 10),
(7, 'Thể thao', 'the-thao', 1, 'list', 'published', 3),
(8, 'Kinh tế', 'kinh-te', 0, 'grid', 'published', 1),
(9, 'Truyền thông', 'truyen-thong', 0, 'grid', 'draft', 12);

-- --------------------------------------------------------

--
-- Table structure for table `news_feed`
--

CREATE TABLE `news_feed` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ordering` int(11) NOT NULL,
  `link` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_feed`
--

INSERT INTO `news_feed` (`id`, `name`, `slug`, `status`, `ordering`, `link`) VALUES
(5, 'Vnexpress', 'vnexpress', 'draft', 6, 'https://vnexpress.net/rss/tin-moi-nhat.rss'),
(6, 'Báo người lao động', 'bao-nguoi-lao-dong', 'published', 10, 'https://nld.com.vn/rss/home.rss'),
(7, 'Báo dân trí', 'bao-dan-tri', 'draft', 2, 'https://dantri.com.vn/rss/home.rss'),
(8, 'Tin tức 24h', 'tin-tuc-24h', 'published', 2, 'https://cdn.24h.com.vn/upload/rss/tintuctrongngay.rss'),
(9, 'Báo tin tức thông tấn xã Việt Nam', 'bao-tin-tuc-thong-tan-xa-viet-nam', 'draft', 7, 'https://baotintuc.vn/tin-moi-nhat.rss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `news_article`
--
ALTER TABLE `news_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `news_article_category_id_7ede7614_fk_news_category_id` (`category_id`);

--
-- Indexes for table `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `news_feed`
--
ALTER TABLE `news_feed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `news_article`
--
ALTER TABLE `news_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news_category`
--
ALTER TABLE `news_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news_feed`
--
ALTER TABLE `news_feed`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `news_article`
--
ALTER TABLE `news_article`
  ADD CONSTRAINT `news_article_category_id_7ede7614_fk_news_category_id` FOREIGN KEY (`category_id`) REFERENCES `news_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
