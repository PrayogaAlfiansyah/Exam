-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 01:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pakettour`
--

-- --------------------------------------------------------

--
-- Table structure for table `beli__pakets`
--

CREATE TABLE `beli__pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `total_user` int(11) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beli__pakets`
--

INSERT INTO `beli__pakets` (`id`, `user_id`, `nama_user`, `nama_paket`, `total_user`, `total_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'dreamland', 12, '180000000', '2023-02-19 04:48:19', '2023-02-19 04:48:19'),
(2, 1, 'admin', 'marinepark', 12, '144000000', '2023-02-19 04:50:03', '2023-02-19 04:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `dest_locations`
--

CREATE TABLE `dest_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_13_122346_create_sessions_table', 1),
(7, '2023_02_13_150050_create_dest_locations_table', 1),
(8, '2023_02_13_150406_create_penginapans_table', 1),
(9, '2023_02_13_150427_create_wisatas_table', 1),
(10, '2023_02_13_150537_create_transports_table', 1),
(11, '2023_02_13_151631_create_permission_tables', 1),
(12, '2023_02_19_070906_beli_paket', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penginapans`
--

CREATE TABLE `penginapans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `Maks_person` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-02-19 04:38:15', '2023-02-19 04:38:15'),
(2, 'staff', 'web', '2023-02-19 04:38:18', '2023-02-19 04:38:18'),
(3, 'user', 'web', '2023-02-19 04:38:20', '2023-02-19 04:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1K8SYmZmtJENncDjT0dHGlDo252YLVtH5c0YglJu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUUycFJUOGllcGp5MTNqT3g1QUZxS3VGdmRMVHN2SGtPclFseFJleCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806443),
('7qLKOg8U49cjX6oNrG9HoM1YSoAxEUDVNtYLXjZE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEhoU0hzM2cwZmJ1cXhBbWRONzJncjZtTk5aYlpyVlVRaFZPQzhSNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806553),
('9PuNg3Qr2PPlX3VltAd8ku2JVYYfWIxcZB4EUDPe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1U4ZHI2dlkwMUVBeGdCMTE2VFVnRVUxajNFWnVMUzBMR0NvQlN2bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806567),
('Ab6sToR6wTb38QRlI52LkpT62zuqUjV7b8HjYzpA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRVNRWmtTcWl4c1NWTHFyU2hxTjFvSDc1cEFJa1NQdEUyalVBNkZXbSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIzMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2xpdmV3aXJlL3ByZXZpZXctZmlsZS85ZWtmSlZya1RwVG56Qks5akxrOU1mTk43TVgycXctbWV0YU1qQXlNeTB3TWkweE9TQXhOMTh6TlY4d05TMU1ZWEpoZG1Wc0lDMGdRbkpoZG1VdWNHNW4tLnBuZz9leHBpcmVzPTE2NzY4MTA0NDAmc2lnbmF0dXJlPTE4NTVlMjdkMThjZmNjM2YyZmVmMjExNjJjMTZkMGU2ZjNlN2NhZDk0YmZmZDQ0ODEyMDA5NDcxMTdlOTJmYTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1676808647),
('ABqpH4KUTdlvTjuf5DQ3C1Z8xdQacdE2eMJd5Iti', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm4yUnY2MGFYSVJDczhDNW5PeTNzdFg4MWtiWTYyMk1XWjVxYlNiTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806538),
('ceNlSF8cCUEINHlTlAHiAFqnndGFbTWDTz2tr2DL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiejZFRkFLMkV3WTRnak5oSWhMWHkyU1VkclNDV0p3TVBPRkpIMFA5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676807394),
('CoyEMvUX0uQZzYIQsyFFiZrtbU6nbMY5DFsu0E2b', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHRXeTFpY2ZHZlRUZngxS0dLUDQxMHpzWDFiRGUzcExFVE9hMDZqRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676808810),
('j6udpNPiyDMWMg2XpuvfPkTEjEf88ilnSJfK5VT9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmVLQXFkWU12ZlhuZXhFTE5LaUlVZE9Gb3pHWDc1dGRMdGhHQ3I1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806573),
('klEIC5jqzApnx2SIxNITBAbZn9nNAc9IXDfssQ1G', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1dzTm5TbXY4WDRkYXY2Mlp5ejRtcWtVUW9QNE93Szd2SVhrWWlLVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676808779),
('okY5Z24cMH7CQKubACQh8ju2xn56e99HcniLmmw9', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjR6Z3BHSnU5S3BvemJSN1U0Qlk1bUk2QmtXZFgza2xybFJSMTlxRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806665),
('OTJv67F2tgDppEGhbNtLvNlULWxRzpDvt79t47nr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFpVSFVVUHdpQUlhZzIxRW9lSkNtZFRvTXpSWmxNQURlc2ltY3U2ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676808520),
('pndOMDd7exTsnS79PHJ7W5PHC825uW6wzMAbWB85', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVFRcWVHUUgxV0ZRUzNvV2Vtam5LY25nQU4xMVVhU2FIVW5jZ0VlbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806732),
('qCbzxTSxzqINtqlVPSo4iLPqAMrJvdaqIhUtLEZL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM09FaERON2d4bkdmZnQ5OThyYjdYRHhvdW5Ed1pGNEZhMUtzQ25SZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806562),
('qK2eJdwRyIUJxAve36Ouu5VQUvLnu0cQ8vp70RpR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkFyQ1JDUjV6MkVtTFZKbWsyY2NBQThCMmp3TGZXUldCc1Rjd2xkWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806545),
('rvG5P2Gj44dTBlcsz4mavGjg3KfDhZRFCGal1J5f', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiams1ekJBT0J6RGxEbzI4ZWhBNFB6SDhUcFdEck52alo3UkZPZ093TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676808464),
('SgP1iLViMLEA91ph7HRz1uhuOg6SfrqlQUvfTVxX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1pZZkhjTVlnTWtRV2dZZnNjaGFWS2pqTGd5RmMxZnA2a21nNHk5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676808471),
('tnh2GyCqL8iBFG3V2Un1dDG9mK5hhaTGWoXg2vns', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDIxV2Z3TTJmazlJQUduOVpRdGtETFNhcERPU0lHZHllR2pkN1ZpUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806558),
('urAEX3KEAjhl4E1kxX3csHPkRHrjnj3KVyqNmftj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODVObjBERDhEbDJ0Q2pGM1czQ1ZnY0lFWDRGeGJQbVNpNzRVazB5ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676808769),
('WEKRVih9LEaHI2zJ9wxB0taSJTH5JxerWiG55K56', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWxUOFpMUVoxaDFWaDRseGJxaldsN0NuYmczZ21HbmFTTkNTTEJnbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806576),
('WGSr1hGvoyyOg674pKDAWXrrvi1bC4QyPOwrQPnM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUFiQTZXNmJKR3VqRnpXbEM0SE54TTE2Rk1ZVHpSWDBWSFZtSE9IOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806457),
('WzJzCyutgKsEgQGYMnrew2a1Ciy4QxgcD3jk03Hb', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0ZJcVkzWDZJTmtsdnVRdGdlclAyOWVmM0pvRnU3aDk1V05EaUZWUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676807290),
('xQZj4kTcbLud9iEcBYmBvOuA8HhzLdmY8TUECQlA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGJMWEJKbU1aT2JpdVlUc1Q0aGMyTm01cVV3UjFVRExhUEdaZm5QUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1676806526),
('Z4fRasKJTrHYNXjnNpyWTAKkOc0SfpvcPWt6C99I', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMGNTblNmRnBCaWdtMGRJU0tNak85d05ZZlZiQW5BbE5LRVg1ODducCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdGFmZi91c2VyRGF0YSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkMXEyMWdIQjN0VzJMU0Z0WUk0Wi5mLlF5UDJZdnYzaUo5aHI1Q2M1bk9KVFR0RnExYUtabUciO30=', 1676808813);

-- --------------------------------------------------------

--
-- Table structure for table `transports`
--

CREATE TABLE `transports` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `Maks_person` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `datebirth` date DEFAULT NULL,
  `fotoktp` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `datebirth`, `fotoktp`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@binus.ol', NULL, NULL, NULL, '$2y$10$.J.DYyiqPZtu6Xa5hBLdc.fIj7OzNAG9LmY3iboozg6b45SHEPwFa', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-19 04:38:09', '2023-02-19 04:38:09'),
(2, 'staff', 'staff@binus.ol', '2023-02-15', '2023-02-19 17_35_05-Laravel - Brave.png', NULL, '$2y$10$1q21gHB3tW2LSFtYI4Z.f.QyP2Yvv3iJ9hr5Cc5nOJTTtFq1aKZmG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-19 05:10:47', '2023-02-19 05:10:47'),
(3, 'user', 'user@binus.ol', '2023-02-13', '2023-02-18 21_20_36-Laravel - Brave.png', NULL, '$2y$10$gVU6h4m4.vTO9gMDTaI6Ou1oH/4bt/E3m8teVWON0L0RMz1.aCVIq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-19 05:05:08', '2023-02-19 05:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `wisatas`
--

CREATE TABLE `wisatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beli__pakets`
--
ALTER TABLE `beli__pakets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beli__pakets_user_id_foreign` (`user_id`);

--
-- Indexes for table `dest_locations`
--
ALTER TABLE `dest_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penginapans`
--
ALTER TABLE `penginapans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wisatas`
--
ALTER TABLE `wisatas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beli__pakets`
--
ALTER TABLE `beli__pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dest_locations`
--
ALTER TABLE `dest_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `penginapans`
--
ALTER TABLE `penginapans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transports`
--
ALTER TABLE `transports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wisatas`
--
ALTER TABLE `wisatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beli__pakets`
--
ALTER TABLE `beli__pakets`
  ADD CONSTRAINT `beli__pakets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
