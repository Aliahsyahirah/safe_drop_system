-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2026 at 05:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `safe_drop`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_log`
--

CREATE TABLE `access_log` (
  `access_id` int(11) NOT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `attempted_at` datetime DEFAULT current_timestamp(),
  `attempt_remaining` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `ip_address` varchar(45) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noti_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_log`
--

CREATE TABLE `parcel_log` (
  `log_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `courier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parcel_log`
--

INSERT INTO `parcel_log` (`log_id`, `recipient_id`, `status`, `updated_at`, `courier_id`) VALUES
(178, 23, 'Delivered', '2025-12-05 12:46:01', NULL),
(179, 24, 'Delivered', '2025-12-05 14:49:50', NULL),
(180, 25, 'Delivered', '2025-12-05 16:38:47', NULL),
(181, 26, 'Delivered', '2025-12-22 11:51:00', NULL),
(182, 27, 'Delivered', '2025-12-22 08:24:37', NULL),
(183, 28, 'Delivered', '2025-12-22 11:09:04', NULL),
(184, 29, 'Delivered', '2025-12-31 12:04:23', NULL),
(185, 30, 'Delivered', '2025-12-22 11:50:59', NULL),
(186, 31, 'Delivered', '2025-12-22 17:02:45', NULL),
(189, 32, 'Delivered', '2025-12-23 14:46:16', NULL),
(190, 34, 'Delivered', '2025-12-29 12:42:54', NULL),
(191, 35, 'Delivered', '2025-12-31 12:04:22', NULL),
(192, 36, 'Delivered', '2026-01-21 09:07:20', NULL),
(193, 37, 'Delivered', '2026-01-15 09:14:07', NULL),
(194, 38, 'Delivered', '2026-01-19 09:35:40', NULL),
(195, 39, 'Delivered', '2026-01-19 09:28:52', NULL),
(196, 40, 'Delivered', '2026-01-19 09:54:38', NULL),
(197, 41, 'Delivered', '2026-01-19 14:29:39', NULL),
(198, 42, 'Delivered', '2026-01-19 16:54:54', NULL),
(199, 43, 'Delivered', '2026-03-31 14:12:46', NULL),
(200, 44, 'Delivered', '2026-03-30 15:46:53', NULL),
(201, 45, 'Delivered', '2026-03-30 12:33:21', NULL),
(202, 46, 'Delivered', '2026-03-30 08:53:11', NULL),
(203, 49, 'Delivered', '2026-03-27 16:43:06', NULL),
(204, 50, 'Delivered', '2026-03-27 16:17:02', NULL),
(205, 51, 'Delivered', '2026-03-26 15:40:42', NULL),
(206, 52, 'Delivered', '2026-03-26 10:32:41', NULL),
(207, 54, 'Delivered', '2026-03-26 10:32:39', NULL),
(208, 57, 'Delivered', '2026-03-26 15:40:27', NULL),
(209, 58, 'Delivered', '2026-03-27 15:33:12', NULL),
(210, 59, 'Delivered', '2026-03-27 14:54:58', NULL),
(211, 60, 'Parcel registered in system', '2026-03-27 14:27:27', NULL),
(212, 60, 'Parcel in delivery', '2026-03-27 14:27:27', NULL),
(213, 60, 'Tracking link generated', '2026-03-27 14:34:48', NULL),
(214, 60, 'Recipient verified OTP', '2026-03-27 14:54:08', NULL),
(215, 60, 'Parcel delivered', '2026-03-27 14:54:08', NULL),
(216, 61, 'Parcel registered in system', '2026-03-27 15:30:48', NULL),
(217, 61, 'Parcel in delivery', '2026-03-27 15:30:48', NULL),
(218, 61, 'Tracking link generated', '2026-03-27 15:31:18', NULL),
(219, 61, 'Recipient verified OTP', '2026-03-27 15:32:42', NULL),
(220, 61, 'Parcel delivered', '2026-03-27 15:32:42', NULL),
(221, 62, 'Parcel registered in system', '2026-03-27 16:08:07', NULL),
(222, 62, 'Parcel in delivery', '2026-03-27 16:08:07', NULL),
(223, 62, 'Tracking link generated', '2026-03-27 16:14:20', NULL),
(224, 62, 'Recipient verified OTP', '2026-03-27 16:15:55', NULL),
(225, 62, 'Parcel delivered', '2026-03-27 16:15:55', NULL),
(226, 63, 'Parcel registered in system', '2026-03-27 16:39:51', NULL),
(227, 63, 'Parcel in delivery', '2026-03-27 16:39:51', NULL),
(228, 63, 'Tracking link generated', '2026-03-27 16:40:10', NULL),
(229, 63, 'Recipient verified OTP', '2026-03-27 16:42:39', NULL),
(230, 63, 'Parcel delivered', '2026-03-27 16:42:39', NULL),
(231, 64, 'Parcel registered in system', '2026-03-30 08:50:46', NULL),
(232, 64, 'Parcel in delivery', '2026-03-30 08:50:46', NULL),
(233, 64, 'Tracking link generated', '2026-03-30 08:51:03', NULL),
(234, 64, 'Recipient verified OTP', '2026-03-30 08:52:40', NULL),
(235, 64, 'Parcel delivered', '2026-03-30 08:52:40', NULL),
(236, 65, 'Parcel registered in system', '2026-03-30 12:01:35', NULL),
(237, 65, 'Parcel in delivery', '2026-03-30 12:01:35', NULL),
(238, 66, 'Parcel registered in system', '2026-03-30 12:17:59', NULL),
(239, 66, 'Parcel in delivery', '2026-03-30 12:17:59', NULL),
(240, 67, 'Parcel registered in system', '2026-03-30 12:31:41', NULL),
(241, 67, 'Parcel in delivery', '2026-03-30 12:31:41', NULL),
(242, 67, 'Tracking link generated', '2026-03-30 12:31:48', NULL),
(243, 67, 'Recipient verified OTP', '2026-03-30 12:33:10', NULL),
(244, 67, 'Parcel delivered', '2026-03-30 12:33:10', NULL),
(245, 68, 'Parcel registered in system', '2026-03-30 14:57:59', NULL),
(246, 68, 'Parcel in delivery', '2026-03-30 14:57:59', NULL),
(247, 68, 'Tracking link generated', '2026-03-30 14:58:15', NULL),
(248, 68, 'Recipient verified OTP', '2026-03-30 14:59:23', NULL),
(249, 68, 'Parcel delivered', '2026-03-30 14:59:23', NULL),
(250, 69, 'Parcel registered in system', '2026-03-30 15:35:38', NULL),
(251, 69, 'Parcel in delivery', '2026-03-30 15:35:38', NULL),
(252, 69, 'Tracking link generated', '2026-03-30 15:45:17', NULL),
(253, 69, 'Recipient verified OTP', '2026-03-30 15:46:51', NULL),
(254, 69, 'Parcel delivered', '2026-03-30 15:46:51', NULL),
(255, 70, 'Parcel registered in system', '2026-03-31 14:09:15', NULL),
(256, 70, 'Parcel in delivery', '2026-03-31 14:09:15', NULL),
(257, 70, 'Tracking link generated', '2026-03-31 14:09:45', NULL),
(258, 70, 'Recipient verified OTP', '2026-03-31 14:12:07', NULL),
(259, 70, 'Parcel delivered', '2026-03-31 14:12:07', NULL),
(260, 71, 'Parcel registered in system', '2026-03-31 15:55:35', NULL),
(261, 71, 'Parcel in delivery', '2026-03-31 15:55:35', NULL),
(262, 71, 'Tracking link generated', '2026-03-31 16:05:42', NULL),
(263, 72, 'Parcel registered in system', '2026-04-01 08:30:17', NULL),
(264, 72, 'Parcel in delivery', '2026-04-01 08:30:17', NULL),
(265, 72, 'Tracking link generated', '2026-04-01 08:30:30', NULL),
(266, 73, 'Parcel registered in system', '2026-04-01 08:37:31', NULL),
(267, 73, 'Parcel in delivery', '2026-04-01 08:37:31', NULL),
(268, 73, 'Tracking link generated', '2026-04-01 08:37:58', NULL),
(269, 73, 'Recipient verified OTP', '2026-04-01 08:39:10', NULL),
(270, 73, 'Parcel delivered', '2026-04-01 08:39:10', NULL),
(271, 74, 'Parcel registered in system', '2026-04-22 02:04:24', NULL),
(272, 74, 'Parcel in delivery', '2026-04-22 02:04:24', NULL),
(273, 75, 'Parcel registered in system', '2026-04-28 10:43:50', NULL),
(274, 75, 'Parcel in delivery', '2026-04-28 10:43:50', NULL),
(275, 75, 'Tracking link generated', '2026-04-28 10:44:40', NULL),
(276, 75, 'Tracking link generated', '2026-04-28 10:47:50', NULL),
(277, 75, 'Tracking link generated', '2026-04-28 10:49:28', NULL),
(278, 75, 'Tracking link generated', '2026-04-28 10:56:44', NULL),
(279, 75, 'Tracking link generated', '2026-04-28 10:59:53', NULL),
(280, 75, 'Recipient verified OTP', '2026-04-28 11:00:50', NULL),
(281, 75, 'Parcel delivered', '2026-04-28 11:00:50', NULL),
(282, 76, 'Parcel registered in system', '2026-04-28 11:02:29', NULL),
(283, 76, 'Parcel in delivery', '2026-04-28 11:02:29', NULL),
(284, 76, 'Tracking link generated', '2026-04-28 11:02:35', NULL),
(285, 76, 'Recipient verified OTP', '2026-04-28 11:04:01', NULL),
(286, 76, 'Parcel delivered', '2026-04-28 11:04:01', NULL),
(287, 77, 'Parcel registered in system', '2026-04-28 11:31:16', NULL),
(288, 77, 'Parcel in delivery', '2026-04-28 11:31:16', NULL),
(289, 77, 'Tracking link generated', '2026-04-28 11:31:37', NULL),
(290, 77, 'Recipient verified OTP', '2026-04-28 11:38:55', NULL),
(291, 77, 'Parcel delivered', '2026-04-28 11:38:55', NULL),
(292, 78, 'Parcel registered in system', '2026-04-28 11:45:27', NULL),
(293, 78, 'Parcel in delivery', '2026-04-28 11:45:27', NULL),
(294, 78, 'Tracking link generated', '2026-04-28 11:45:51', NULL),
(295, 78, 'Recipient verified OTP', '2026-04-28 11:46:46', NULL),
(296, 78, 'Parcel delivered', '2026-04-28 11:46:46', NULL),
(297, 79, 'Parcel registered in system', '2026-04-28 12:15:08', NULL),
(298, 79, 'Parcel in delivery', '2026-04-28 12:15:08', NULL),
(299, 79, 'Tracking link generated', '2026-04-28 12:15:52', NULL),
(300, 79, 'Recipient verified OTP', '2026-04-28 12:21:44', NULL),
(301, 79, 'Parcel delivered', '2026-04-28 12:21:44', NULL),
(302, 80, 'Parcel registered in system', '2026-04-28 14:03:59', NULL),
(303, 80, 'Parcel in delivery', '2026-04-28 14:03:59', NULL),
(304, 80, 'Tracking link generated', '2026-04-28 14:06:10', NULL),
(305, 80, 'Recipient verified OTP', '2026-04-28 14:07:49', NULL),
(306, 80, 'Parcel delivered', '2026-04-28 14:07:49', NULL),
(307, 83, 'Parcel registered in system', '2026-05-05 09:24:20', NULL),
(308, 83, 'Parcel in delivery', '2026-05-05 09:24:20', NULL),
(309, 84, 'Parcel registered in system', '2026-05-05 09:29:48', NULL),
(310, 84, 'Parcel in delivery', '2026-05-05 09:29:48', NULL),
(311, 85, 'Parcel registered in system', '2026-05-07 09:09:59', NULL),
(312, 85, 'Parcel in delivery', '2026-05-07 09:09:59', NULL),
(313, 86, 'Parcel registered in system', '2026-05-07 09:20:35', NULL),
(314, 86, 'Parcel in delivery', '2026-05-07 09:20:35', NULL),
(315, 87, 'Parcel registered in system', '2026-05-07 09:48:19', NULL),
(316, 87, 'Parcel in delivery', '2026-05-07 09:48:19', NULL),
(317, 88, 'Parcel registered in system', '2026-05-07 10:10:46', NULL),
(318, 88, 'Parcel in delivery', '2026-05-07 10:10:46', NULL),
(319, 89, 'Parcel registered in system', '2026-05-07 10:12:15', NULL),
(320, 89, 'Parcel in delivery', '2026-05-07 10:12:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qr_code`
--

CREATE TABLE `qr_code` (
  `qr_id` int(11) NOT NULL,
  `recipient_id` int(11) DEFAULT NULL,
  `qr_value` varchar(255) NOT NULL,
  `generated_at` datetime DEFAULT current_timestamp(),
  `duplicate_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_code`
--

INSERT INTO `qr_code` (`qr_id`, `recipient_id`, `qr_value`, `generated_at`, `duplicate_at`) VALUES
(76, 88, 'uploads/qr_codes/qr_88.png', '2026-05-08 11:41:11', NULL),
(77, 89, 'uploads/qr_codes/qr_89.png', '2026-05-08 11:41:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE `recipient` (
  `recipient_id` int(11) NOT NULL,
  `recipient_code` varchar(20) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_tel` varchar(20) DEFAULT NULL,
  `sender_address` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `attempt_left` int(11) DEFAULT 3,
  `courier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`recipient_id`, `recipient_code`, `tracking_number`, `name`, `email`, `no_tel`, `sender_address`, `location`, `longitude`, `latitude`, `attempt_left`, `courier_id`) VALUES
(88, 'R-088', 'SD-20260507-502', 'Rosnita', 'ubaidill4h03@gmail.com', '0198550522', '7, Jalan Cu 1, Taman Chembong Utama, 71300 Rembau, Negeri Sembilan', '45, Jalan Rosmerah 3, Taman Kobena, 70450, Senawang, Seremban, Negeri Sembilan', 101.9400601, 2.7230990, 3, 19),
(89, 'R-089', 'SD-20260507-522', 'Khaleeel', 'ghgghy05@gmail.com', '0198765432', '7, Jalan Cu 1, Taman Chembong Utama, 71300 Rembau, Negeri Sembilan', 'Lot 79, Hijauan Height, 71400 Pedas, Negeri Sembilan', 102.0585545, 2.6201935, 3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_controller`
--

CREATE TABLE `tbl_controller` (
  `id` int(11) NOT NULL,
  `parcel_lat` decimal(10,8) NOT NULL,
  `parcel_long` decimal(11,8) NOT NULL,
  `user_verify` tinyint(1) DEFAULT 0,
  `status` varchar(50) DEFAULT NULL,
  `status_vibrate` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_controller`
--

INSERT INTO `tbl_controller` (`id`, `parcel_lat`, `parcel_long`, `user_verify`, `status`, `status_vibrate`) VALUES
(0, 0.00000000, 0.00000000, 0, 'Delivery', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tracking_links`
--

CREATE TABLE `tracking_links` (
  `track_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `totp_secret` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `courier_code` varchar(10) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','courier') DEFAULT 'admin',
  `phone` varchar(20) DEFAULT NULL,
  `vehicle_type` varchar(50) DEFAULT NULL,
  `vehicle_plate` varchar(20) DEFAULT NULL,
  `status` enum('available','busy','offline') DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `courier_code`, `username`, `name`, `password`, `role`, `phone`, `vehicle_type`, `vehicle_plate`, `status`) VALUES
(1, NULL, 'admin', 'ADMIN', '$2y$10$4XGddYowIR1XRoMsND6HBuu3hk8SmiPSqhjWFQVUG7czWZ1bV9tVi', 'admin', NULL, NULL, NULL, 'available'),
(8, NULL, 'Ubai', 'MUHAMMAD USAMA UBAIDILLAH BIN SUDERMAN', '$2y$10$jokgbIk0rOQF7R5D2ODbXe0TX9yuPKfhTakepeN82I6PdnY2ZX3gy', 'admin', NULL, NULL, NULL, 'available'),
(16, 'C-016', 'Atina SAEM', 'atina', '$2y$10$jlANfAHFjbNJXbmaS3HG9.LIwCaf3suZIewlYMP1Q.q807XH5xoya', 'courier', '01122334455', 'Motorbike', 'mno1234', 'available'),
(17, 'C-017', 'Aidil SAEM', 'aidil', '$2y$10$3m4Zw/gKiYDfP9ReUSFdauu8liYWIiTFAN96MZIUwERP/ouAibEZm', 'courier', '01110580590', 'Van', 'abc1234', 'offline'),
(19, 'C-019', 'usama ubaidillah', 'Ubai', '$2y$10$qs6gIQ3cTCuWpjlEp6dzV.35acI.AtnDDv0j3/SIXUJXn9pvXUQ8C', 'courier', '0198550522', 'Motorbike', 'def1234', 'busy'),
(20, 'C-020', 'Amir SAEM', 'Amir', '$2y$10$Hok7PlZ7emmzrg04QV80IegTqImAiwTd3mNPyIaovalGKWFmwzTpy', 'courier', '0123456789', 'Car', 'ghi1234', 'busy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_log`
--
ALTER TABLE `access_log`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`ip_address`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noti_id`),
  ADD KEY `fk_notification_recipient` (`recipient_id`);

--
-- Indexes for table `parcel_log`
--
ALTER TABLE `parcel_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `fk_courier` (`courier_id`);

--
-- Indexes for table `qr_code`
--
ALTER TABLE `qr_code`
  ADD PRIMARY KEY (`qr_id`),
  ADD KEY `fk_qr_recipient` (`recipient_id`);

--
-- Indexes for table `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`recipient_id`),
  ADD UNIQUE KEY `tracking_number` (`tracking_number`),
  ADD UNIQUE KEY `recipient_code` (`recipient_code`),
  ADD KEY `fk_recipient_courier` (`courier_id`);

--
-- Indexes for table `tbl_controller`
--
ALTER TABLE `tbl_controller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking_links`
--
ALTER TABLE `tracking_links`
  ADD PRIMARY KEY (`track_id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_log`
--
ALTER TABLE `access_log`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parcel_log`
--
ALTER TABLE `parcel_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `qr_code`
--
ALTER TABLE `qr_code`
  MODIFY `qr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `recipient`
--
ALTER TABLE `recipient`
  MODIFY `recipient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tracking_links`
--
ALTER TABLE `tracking_links`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_log`
--
ALTER TABLE `access_log`
  ADD CONSTRAINT `access_log_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`) ON DELETE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fk_notification_recipient` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`) ON DELETE CASCADE;

--
-- Constraints for table `parcel_log`
--
ALTER TABLE `parcel_log`
  ADD CONSTRAINT `fk_courier` FOREIGN KEY (`courier_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `qr_code`
--
ALTER TABLE `qr_code`
  ADD CONSTRAINT `fk_qr_recipient` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`) ON DELETE CASCADE;

--
-- Constraints for table `recipient`
--
ALTER TABLE `recipient`
  ADD CONSTRAINT `fk_recipient_courier` FOREIGN KEY (`courier_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `tracking_links`
--
ALTER TABLE `tracking_links`
  ADD CONSTRAINT `tracking_links_ibfk_1` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
