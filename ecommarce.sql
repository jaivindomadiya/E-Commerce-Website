-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 07:49 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommarce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add product', 7, 'add_product'),
(20, 'Can change product', 7, 'change_product'),
(21, 'Can delete product', 7, 'delete_product'),
(22, 'Can add category', 8, 'add_category'),
(23, 'Can change category', 8, 'change_category'),
(24, 'Can delete category', 8, 'delete_category'),
(25, 'Can add customer', 9, 'add_customer'),
(26, 'Can change customer', 9, 'change_customer'),
(27, 'Can delete customer', 9, 'delete_customer');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$tQCjuuQ428cf$O85d0JYAEaCU9WG46drT/qhWxbHIGtqhUesKjd5eF+U=', '2021-10-08 10:35:44.612576', 1, 'jaivin', '', '', 'jaivin@gmail.com', 1, 1, '2021-10-08 10:23:49.650421');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-08 10:36:11.290233', '1', 'Mobile Phones', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-10-08 10:36:17.110899', '2', 'Laptops', 1, '[{\"added\": {}}]', 8, 1),
(3, '2021-10-08 10:36:54.208705', '3', 'Tablets', 1, '[{\"added\": {}}]', 8, 1),
(4, '2021-10-08 10:37:04.600542', '4', 'Audio', 1, '[{\"added\": {}}]', 8, 1),
(5, '2021-10-08 10:37:13.473132', '5', 'Television', 1, '[{\"added\": {}}]', 8, 1),
(6, '2021-10-08 10:37:39.464294', '6', 'Cameras', 1, '[{\"added\": {}}]', 8, 1),
(7, '2021-10-08 10:40:44.162242', '1', 'Product object (1)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2021-10-08 10:44:50.931646', '2', 'Product object (2)', 1, '[{\"added\": {}}]', 7, 1),
(9, '2021-10-08 10:47:12.588178', '3', 'Product object (3)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2021-10-08 10:48:08.249064', '4', 'Product object (4)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2021-10-08 10:49:40.431301', '5', 'Product object (5)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2021-10-08 10:51:59.523125', '6', 'Product object (6)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2021-10-08 10:52:44.366362', '7', 'Product object (7)', 1, '[{\"added\": {}}]', 7, 1),
(14, '2021-10-08 10:53:27.881006', '8', 'Product object (8)', 1, '[{\"added\": {}}]', 7, 1),
(15, '2021-10-08 10:54:48.784416', '9', 'Product object (9)', 1, '[{\"added\": {}}]', 7, 1),
(16, '2021-10-08 10:55:32.258335', '10', 'Product object (10)', 1, '[{\"added\": {}}]', 7, 1),
(17, '2021-10-08 10:56:11.298603', '11', 'Product object (11)', 1, '[{\"added\": {}}]', 7, 1),
(18, '2021-10-08 10:56:56.916664', '12', 'Product object (12)', 1, '[{\"added\": {}}]', 7, 1),
(19, '2021-10-08 10:58:32.657322', '13', 'Product object (13)', 1, '[{\"added\": {}}]', 7, 1),
(20, '2021-10-08 10:59:19.760285', '14', 'Product object (14)', 1, '[{\"added\": {}}]', 7, 1),
(21, '2021-10-08 11:00:10.420360', '15', 'Product object (15)', 1, '[{\"added\": {}}]', 7, 1),
(22, '2021-10-08 11:01:11.350055', '16', 'Product object (16)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'ecomsite', 'category'),
(9, 'ecomsite', 'customer'),
(7, 'ecomsite', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-10-08 10:21:04.671209'),
(2, 'auth', '0001_initial', '2021-10-08 10:21:15.984840'),
(3, 'admin', '0001_initial', '2021-10-08 10:21:17.356191'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-10-08 10:21:17.414106'),
(5, 'contenttypes', '0002_remove_content_type_name', '2021-10-08 10:21:17.948945'),
(6, 'auth', '0002_alter_permission_name_max_length', '2021-10-08 10:21:18.431215'),
(7, 'auth', '0003_alter_user_email_max_length', '2021-10-08 10:21:18.528097'),
(8, 'auth', '0004_alter_user_username_opts', '2021-10-08 10:21:18.586686'),
(9, 'auth', '0005_alter_user_last_login_null', '2021-10-08 10:21:21.515469'),
(10, 'auth', '0006_require_contenttypes_0002', '2021-10-08 10:21:21.537745'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2021-10-08 10:21:21.600971'),
(12, 'auth', '0008_alter_user_username_max_length', '2021-10-08 10:21:21.927410'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2021-10-08 10:21:22.119900'),
(14, 'ecomsite', '0001_initial', '2021-10-08 10:21:22.323115'),
(15, 'ecomsite', '0002_category', '2021-10-08 10:21:22.607801'),
(16, 'ecomsite', '0003_product_fk', '2021-10-08 10:21:23.632699'),
(17, 'ecomsite', '0004_customer', '2021-10-08 10:21:24.065146'),
(18, 'sessions', '0001_initial', '2021-10-08 10:21:24.592532');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('qpz47fs234dqsdg2ehk4payd9u7dmi03', 'MTZhY2M5MDVmZjIyMmVhMWQwNDAxYWVkMWE5MjViNjljZWQ0NzMwNjp7fQ==', '2021-10-22 11:06:25.355605');

-- --------------------------------------------------------

--
-- Table structure for table `ecomsite_category`
--

CREATE TABLE `ecomsite_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecomsite_category`
--

INSERT INTO `ecomsite_category` (`id`, `Name`) VALUES
(1, 'Mobile Phones'),
(2, 'Laptops'),
(3, 'Tablets'),
(4, 'Audio'),
(5, 'Television'),
(6, 'Cameras');

-- --------------------------------------------------------

--
-- Table structure for table `ecomsite_customer`
--

CREATE TABLE `ecomsite_customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecomsite_customer`
--

INSERT INTO `ecomsite_customer` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'chirag', 'lalvani', 'chirag@gmail.com', 'pbkdf2_sha256$100000$Eh0NZfSdLHuw$8PoSG00yOOVd1tNOc7yrFp6sZCewhJ4xTxFjqT2oGts=');

-- --------------------------------------------------------

--
-- Table structure for table `ecomsite_product`
--

CREATE TABLE `ecomsite_product` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `fk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecomsite_product`
--

INSERT INTO `ecomsite_product` (`id`, `Name`, `price`, `Description`, `Image`, `fk_id`) VALUES
(1, 'Realme X7 Max (128GB ROM, 8GB RAM, RMX3031, Asteroid Black)', 25999, 'Realme X7 Max (128GB ROM, 8GB RAM, RMX3031, Asteroid Black)', 'uploads/products/1.png', 1),
(2, 'Apple iPhone 11 (128GB ROM, 4GB RAM, MHDJ3HN/A, White)', 50999, 'Apple iPhone 11 (128GB ROM, 4GB RAM, MHDJ3HN/A, White)', 'uploads/products/2_lmq5T8R.png', 1),
(3, 'OnePlus Nord CE 5G (256GB ROM, 12GB RAM, Blue Void)', 27999, 'OnePlus Nord CE 5G (256GB ROM, 12GB RAM, Blue Void)', 'uploads/products/3.png', 1),
(4, 'Vivo Y12s (32GB ROM, 3GB RAM, Phantom Black)', 12999, 'Vivo Y12s (32GB ROM, 3GB RAM, Phantom Black)', 'uploads/products/4.png', 1),
(5, 'Dell Inspiron 3501 (D560385WIN9S) Core i5 11th Gen Windows 10 Home Notebook (8GB RAM, 1TB HDD + 256G', 64999, 'Dell Inspiron 3501 (D560385WIN9S) Core i5 11th Gen Windows 10 Home Notebook (8GB RAM, 1TB HDD + 256GB SSD,NVIDIA GeForce MX330 + 2GB Graphics, MS Office, 39.62cm, Soft Mint)', 'uploads/products/5.png', 2),
(6, 'Apple MacBook Air (MGND3HN/A) M1 Chip macOS Big Sur Laptop (8GB RAM, 256GB SSD, Apple M1 GPU, 33.78c', 82990, 'Apple MacBook Air (MGND3HN/A) M1 Chip macOS Big Sur Laptop (8GB RAM, 256GB SSD, Apple M1 GPU, 33.78cm, Gold)', 'uploads/products/6.png', 2),
(7, 'Apple MacBook Pro (MYD82HN/A) M1 Chip macOS Big Sur Laptop (8GB RAM, 256GB SSD, Apple M1 GPU, 33.78c', 109000, 'Apple MacBook Pro (MYD82HN/A) M1 Chip macOS Big Sur Laptop (8GB RAM, 256GB SSD, Apple M1 GPU, 33.78cm, Space Grey)', 'uploads/products/7.png', 2),
(8, 'HP 15s-du3060TX (360L6PA) Core i5 11th Gen Windows 10 Home Laptop (8GB RAM, 1TB HDD, NVIDIA GeForce', 56990, 'HP 15s-du3060TX (360L6PA) Core i5 11th Gen Windows 10 Home Laptop (8GB RAM, 1TB HDD, NVIDIA GeForce MX350 + 2GB Graphics, MS Office, 39.62cm, Jet Black)', 'uploads/products/8.png', 2),
(9, 'Apple iPad mini 6 WiFi + 5G iPadOS Tablet (iPadOS 15 Apple A15 Bionic Chip 21.08cm (8.3 Inches) 256G', 74990, 'Apple iPad mini 6 WiFi + 5G iPadOS Tablet (iPadOS 15 Apple A15 Bionic Chip 21.08cm (8.3 Inches) 256GB ROM, MLX93HN/A, Pink)', 'uploads/products/9.png', 3),
(10, 'Apple iPad mini 6 WiFi + 5G iPadOS Tablet (iPadOS 15, Apple, A15 Bionic Chip, 21.08cm (8.3 Inches),', 60990, 'Apple iPad mini 6 WiFi + 5G iPadOS Tablet (iPadOS 15, Apple, A15 Bionic Chip, 21.08cm (8.3 Inches), 64GB ROM, MK8C3HN/A, Starlight)', 'uploads/products/12.png', 3),
(11, 'Apple iPad mini 6 WiFi + 5G iPadOS Tablet (iPadOS 15, Apple, A15 Bionic Chip, 21.08cm (8.3 Inches),', 60990, 'Apple iPad mini 6 WiFi + 5G iPadOS Tablet (iPadOS 15, Apple, A15 Bionic Chip, 21.08cm (8.3 Inches), 64GB, MLX43HN/A, Pink)', 'uploads/products/9_fNpr1If.png', 3),
(12, 'Apple iPad mini 6 WiFi iPadOS Tablet (iPadOS 15, Apple A15 Bionic chip, 21.08cm (8.3 inches), 64GB R', 46900, 'Apple iPad mini 6 WiFi iPadOS Tablet (iPadOS 15, Apple A15 Bionic chip, 21.08cm (8.3 inches), 64GB ROM, MLWL3HN/A, Pink)', 'uploads/products/9_IpP0UKk.png', 3),
(13, 'pTron Bassbuds Evo In-Ear Passive Noise Cancellation Truly Wireless Earbuds with Mic ( Bluetooth 5.0', 999, 'pTron Bassbuds Evo In-Ear Passive Noise Cancellation Truly Wireless Earbuds with Mic ( Bluetooth 5.0, Stereo Sound, 140317861, Black/Yellow)', 'uploads/products/10.png', 4),
(14, 'OnePlus In-Ear Truly Wireless Earbuds with Mic (Bluetooth 5.2, Buds Pro, Glossy White)', 9990, 'OnePlus In-Ear Truly Wireless Earbuds with Mic (Bluetooth 5.2, Buds Pro, Glossy White)', 'uploads/products/11.jpg', 4),
(15, 'Samsung Galaxy Buds2 In-Ear Truly Wireless Earbuds with Mic (Bluetooth 5.2, Active Noise Cancellatio', 11990, 'Samsung Galaxy Buds2 In-Ear Truly Wireless Earbuds with Mic (Bluetooth 5.2, Active Noise Cancellation, SM-R177NZKAINU, Classical Graphite)', 'uploads/products/13.png', 4),
(16, 'boAt Rockerz 410 On-Ear Passive Noise Cancellation Wireless Headphone with Mic (Bluetooth 5.0, HD So', 899, 'boAt Rockerz 410 On-Ear Passive Noise Cancellation Wireless Headphone with Mic (Bluetooth 5.0, HD Sound, Black/Red)', 'uploads/products/14.png', 4);

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
-- Indexes for table `ecomsite_category`
--
ALTER TABLE `ecomsite_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecomsite_customer`
--
ALTER TABLE `ecomsite_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecomsite_product`
--
ALTER TABLE `ecomsite_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ecomsite_product_fk_id_3b7edb57_fk_ecomsite_category_id` (`fk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ecomsite_category`
--
ALTER TABLE `ecomsite_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ecomsite_customer`
--
ALTER TABLE `ecomsite_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ecomsite_product`
--
ALTER TABLE `ecomsite_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- Constraints for table `ecomsite_product`
--
ALTER TABLE `ecomsite_product`
  ADD CONSTRAINT `ecomsite_product_fk_id_3b7edb57_fk_ecomsite_category_id` FOREIGN KEY (`fk_id`) REFERENCES `ecomsite_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
