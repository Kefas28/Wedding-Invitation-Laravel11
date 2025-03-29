-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2025 at 07:37 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding_invitation`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'BCA', 'bca.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(2, 'BNI', 'bni.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(3, 'BRI', 'bri.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(4, 'Bank Mandiri', 'mandiri.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(5, 'BSI', 'bsi.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(6, 'Jenius', 'jenius.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(7, 'Jago', 'jago.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(8, 'CIMB Niaga', 'cimb.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(9, 'OCBC NISP', 'ocbc.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(10, 'HSBC', 'hsbc.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(11, 'Panin Bank', 'panin.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(12, 'Bank Permata', 'permata.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(13, 'DBS', 'dbs.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(14, 'Bank BJB', 'bjb.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(15, 'Bank Bukopin', 'bukopin.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(16, 'Bank Mega', 'mega.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(17, 'Gopay', 'gopay.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(18, 'OVO', 'ovo.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(19, 'Link aja', 'linkaja.png', '2025-03-11 05:24:54', '2025-03-11 05:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `brides`
--

CREATE TABLE `brides` (
  `id` bigint UNSIGNED NOT NULL,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_father` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_mother` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_id` bigint UNSIGNED NOT NULL,
  `acc_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_number` bigint NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brides`
--

INSERT INTO `brides` (`id`, `wedding_id`, `name`, `child`, `name_father`, `name_mother`, `instagram`, `bank_id`, `acc_name`, `acc_number`, `gender`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Darren Tan', 'Putri Pertama dari', 'Bpk Jhone Doe', 'Ibu Isabela Putri', 'https://www.instagram.com/codelogydev/', 2, 'Darren Tan', 923123456, 'Female', 'female.jpg', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(2, 1, 'Ijunwen', 'Putra Kedua dari', 'Bpk Bohemian Rapsody S.Pd', 'Ibu Fricilia Ginting', 'https://www.instagram.com/danixsofyan/', 1, 'Ijunwen', 456789234, 'Male', 'male.jpg', '2025-03-11 05:24:54', '2025-03-11 05:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1742966761),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1742966761;', 1742966761),
('da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1742968064),
('da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1742968064;', 1742968064),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1743053102);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint UNSIGNED NOT NULL,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `type` enum('Akad','Acara Pernihakan','Resepsi','Ngunduh Mantu') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `wedding_id`, `type`, `date`, `address`, `maps`, `calendar`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Acara Pernihakan', '2050-11-05 08:00:00', 'Jakarta Cathedral', 'https://maps.app.goo.gl/C3HWf7TsJvMzwLb27', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=Pernikahan+Darren+%26+Jun&details=Kami+sangat+berharap+anda+dapat+hadir+di+moment+bahagia+ini&location=Jakarta+International+Stadium+(JIS)&dates=20501105T010000Z/20221105T080000Z&ctz=Asia/Jakarta', 'photos/WhatsApp_Image_2025-03-26_at_09.21.15-removebg-preview.png', '2025-03-11 05:24:54', '2025-03-26 05:46:46'),
(2, 1, 'Resepsi', '2050-11-05 10:00:00', 'Jakarta International Stadium (JIS)', 'https://maps.app.goo.gl/QtqneaW9bjVL4JDZ8', 'https://calendar.google.com/calendar/u/0/r/eventedit?text=Pernikahan+Darren+%26+Jun&details=Kami+sangat+berharap+anda+dapat+hadir+di+moment+bahagia+ini&location=Jakarta+International+Stadium+(JIS)&dates=20501105T010000Z/20221105T080000Z&ctz=Asia/Jakarta', '', '2025-03-11 05:24:54', '2025-03-14 08:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeries`
--

CREATE TABLE `galeries` (
  `id` bigint UNSIGNED NOT NULL,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `gallery1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeries`
--

INSERT INTO `galeries` (`id`, `wedding_id`, `gallery1`, `gallery2`, `gallery3`, `gallery4`, `gallery5`, `gallery6`, `video`, `created_at`, `updated_at`) VALUES
(1, 1, 'gallery1.jpeg', 'gallery2.jpeg', 'gallery3.jpeg', 'gallery4.jpeg', 'gallery5.jpeg', 'gallery6.jpeg', 'https://www.youtube.com/embed/syMFHd5Gxxk', '2025-03-11 05:24:54', '2025-03-26 05:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint UNSIGNED NOT NULL,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `maps` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `wedding_id`, `name`, `address`, `maps`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rumah Darren', 'Perumahan pondok indah\r\n            Jl. Pd. Indah No.12 12, RT.12/RW.6, Pesanggrahan, Kec. Pesanggrahan, \r\n            Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12320\r\n            ', 'https://maps.app.goo.gl/FDTdgwmkumfq2fGM6', NULL, '2025-03-11 05:24:54', '2025-03-11 05:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_22_145749_add_two_factor_columns_to_users_table', 1),
(5, '2024_04_22_145804_create_personal_access_tokens_table', 1),
(6, '2024_04_23_020752_create_permission_tables', 1),
(7, '2024_04_23_061952_create_banks_table', 1),
(8, '2024_04_23_061953_create_weddings_table', 1),
(9, '2024_04_23_062035_create_brides_table', 1),
(10, '2024_04_23_062357_create_details_table', 1),
(11, '2024_04_23_062941_create_gifts_table', 1),
(12, '2024_04_23_062942_create_rsvps_table', 1),
(13, '2024_04_23_064127_create_wishes_table', 1),
(14, '2024_04_23_064439_create_thanks_table', 1),
(15, '2024_04_23_065539_create_galeries_table', 1),
(16, '2025_03_13_100827_add_photo_column_to_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', 'web', '2025-03-11 05:24:53', '2025-03-11 05:24:53'),
(2, 'Admin', 'web', '2025-03-11 05:24:53', '2025-03-11 05:24:53'),
(3, 'User', 'web', '2025-03-11 05:24:53', '2025-03-11 05:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rsvps`
--

CREATE TABLE `rsvps` (
  `id` bigint UNSIGNED NOT NULL,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Saya akan datang','Maaf, saya tidak bisa datang') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rsvps`
--

INSERT INTO `rsvps` (`id`, `wedding_id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dani Sofyan', '2', 'Saya akan datang', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(2, 1, 'Salman', '2', 'Saya akan datang', '2025-03-13 02:28:38', '2025-03-13 02:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GXWJMDfDQFSCkKz49DKK6GhmHdwllzMY6JfcP66i', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZ0tXcTRwcGwxRXF3WDEzWXRNSlZ0eHJBdTI2WEZidnZCTWJQSXFLYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9yc3ZwcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkb3RtLi5YcE0vcVZEeFo5eVRLLlVXdTdLZEE1WnNqSTYvam8yYnRxOW1naVZ4YXdLR0N3NzYiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1742970212);

-- --------------------------------------------------------

--
-- Table structure for table `thanks`
--

CREATE TABLE `thanks` (
  `id` bigint UNSIGNED NOT NULL,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanks`
--

INSERT INTO `thanks` (`id`, `wedding_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ungkapan terima kasih yang sangat tulus dari kami apabila Saudara/i berkenan hadir dan turut memberikan doa restu kepada kami.', '2025-03-11 05:24:54', '2025-03-11 05:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@codelogy.dev', '2025-03-11 05:24:54', '$2y$12$otm..XpM/qVDxZ9yTK.UWu7KdA5ZsjI6/jo2btq9mgiVxawKGCw76', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(3, 'Kefas', 'kefas@gmail.com', '2025-03-26 05:46:24', '$2y$12$te1T52uPooLtM6Pcp/kwdeVu7YkuWXiG.2jTK9ofybD0I1NL1.Oau', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-26 05:46:24', '2025-03-26 05:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `weddings`
--

CREATE TABLE `weddings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hero2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Deactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weddings`
--

INSERT INTO `weddings` (`id`, `name`, `note`, `hero1`, `hero2`, `hero3`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Darren & Jun', 'A great marriage is not when the perfect couple comes together. \\\r\n            It is when an imperfect couple learns to enjoy their differences.', 'hero-1.jpeg', 'hero-2.jpeg', 'hero-3.jpeg', 'Active', '2025-03-11 05:24:54', '2025-03-11 05:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishes`
--

CREATE TABLE `wishes` (
  `id` bigint UNSIGNED NOT NULL,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishes`
--

INSERT INTO `wishes` (`id`, `wedding_id`, `name`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dani Sofyan', 'Semoga menjadi keluarga bahagia', '2025-03-11 05:24:54', '2025-03-11 05:24:54'),
(2, 1, 'Salman', 'Selamat Berbahagia!', '2025-03-26 06:08:32', '2025-03-26 06:08:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brides`
--
ALTER TABLE `brides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brides_wedding_id_foreign` (`wedding_id`),
  ADD KEY `brides_bank_id_foreign` (`bank_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_wedding_id_foreign` (`wedding_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeries`
--
ALTER TABLE `galeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeries_wedding_id_foreign` (`wedding_id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gifts_wedding_id_foreign` (`wedding_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rsvps`
--
ALTER TABLE `rsvps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rsvps_wedding_id_foreign` (`wedding_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `thanks`
--
ALTER TABLE `thanks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thanks_wedding_id_foreign` (`wedding_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weddings`
--
ALTER TABLE `weddings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishes`
--
ALTER TABLE `wishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishes_wedding_id_foreign` (`wedding_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `brides`
--
ALTER TABLE `brides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeries`
--
ALTER TABLE `galeries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rsvps`
--
ALTER TABLE `rsvps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thanks`
--
ALTER TABLE `thanks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weddings`
--
ALTER TABLE `weddings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishes`
--
ALTER TABLE `wishes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brides`
--
ALTER TABLE `brides`
  ADD CONSTRAINT `brides_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brides_wedding_id_foreign` FOREIGN KEY (`wedding_id`) REFERENCES `weddings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_wedding_id_foreign` FOREIGN KEY (`wedding_id`) REFERENCES `weddings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `galeries`
--
ALTER TABLE `galeries`
  ADD CONSTRAINT `galeries_wedding_id_foreign` FOREIGN KEY (`wedding_id`) REFERENCES `weddings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gifts`
--
ALTER TABLE `gifts`
  ADD CONSTRAINT `gifts_wedding_id_foreign` FOREIGN KEY (`wedding_id`) REFERENCES `weddings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rsvps`
--
ALTER TABLE `rsvps`
  ADD CONSTRAINT `rsvps_wedding_id_foreign` FOREIGN KEY (`wedding_id`) REFERENCES `weddings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thanks`
--
ALTER TABLE `thanks`
  ADD CONSTRAINT `thanks_wedding_id_foreign` FOREIGN KEY (`wedding_id`) REFERENCES `weddings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishes`
--
ALTER TABLE `wishes`
  ADD CONSTRAINT `wishes_wedding_id_foreign` FOREIGN KEY (`wedding_id`) REFERENCES `weddings` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
