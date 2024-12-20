-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2024 at 02:55 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `companyprofile`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int NOT NULL,
  `primaryOwnerId` int DEFAULT NULL,
  `fieldId` int DEFAULT NULL,
  `countryCode` varchar(255) NOT NULL,
  `administrativeArea` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `dependentLocality` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `sortingCode` varchar(255) DEFAULT NULL,
  `addressLine1` varchar(255) DEFAULT NULL,
  `addressLine2` varchar(255) DEFAULT NULL,
  `addressLine3` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `organizationTaxId` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `pluginId` int DEFAULT NULL,
  `heading` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `dateRead` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int NOT NULL,
  `sessionId` int NOT NULL,
  `volumeId` int NOT NULL,
  `uri` text,
  `size` bigint UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isDir` tinyint(1) DEFAULT '0',
  `recordId` int DEFAULT NULL,
  `isSkipped` tinyint(1) DEFAULT '0',
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assetindexingsessions`
--

CREATE TABLE `assetindexingsessions` (
  `id` int NOT NULL,
  `indexedVolumes` text,
  `totalEntries` int DEFAULT NULL,
  `processedEntries` int NOT NULL DEFAULT '0',
  `cacheRemoteImages` tinyint(1) DEFAULT NULL,
  `listEmptyFolders` tinyint(1) DEFAULT '0',
  `isCli` tinyint(1) DEFAULT '0',
  `actionRequired` tinyint(1) DEFAULT '0',
  `processIfRootEmpty` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int NOT NULL,
  `volumeId` int DEFAULT NULL,
  `folderId` int NOT NULL,
  `uploaderId` int DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `alt` text,
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `size` bigint UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `alt`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`) VALUES
(9, 1, 1, 1, '1.JPG', 'image', NULL, 1280, 720, 322234, NULL, NULL, NULL, '2024-12-14 01:37:17', '2024-12-14 01:37:17', '2024-12-14 01:37:17'),
(10, 1, 1, 1, '2.JPG', 'image', NULL, 1280, 720, 152521, NULL, NULL, NULL, '2024-12-14 01:37:23', '2024-12-14 01:37:23', '2024-12-14 01:37:23'),
(11, 1, 1, 1, '3.JPG', 'image', NULL, 1280, 720, 253814, NULL, NULL, NULL, '2024-12-14 01:37:27', '2024-12-14 01:37:27', '2024-12-14 01:37:27'),
(12, 1, 1, 1, '4.JPG', 'image', NULL, 1280, 720, 239696, NULL, NULL, NULL, '2024-12-14 01:37:31', '2024-12-14 01:37:31', '2024-12-14 01:37:31'),
(35, 1, 1, 1, 'image2.jpg', 'image', NULL, 5472, 3648, 11159261, NULL, NULL, NULL, '2024-12-14 03:43:49', '2024-12-14 03:43:49', '2024-12-14 03:43:49'),
(42, 1, 1, 1, 'newLogo2.png', 'image', NULL, 1000, 1528, 674796, NULL, NULL, NULL, '2024-12-14 03:52:29', '2024-12-14 03:52:29', '2024-12-14 03:52:29'),
(43, 1, 1, 1, 'newLogo2-putih.png', 'image', NULL, 738, 1166, 42502, NULL, NULL, NULL, '2024-12-14 04:10:33', '2024-12-14 04:10:33', '2024-12-14 04:10:33'),
(44, 1, 1, 1, 'newLogo2-128.png', 'image', NULL, 128, 128, 14833, NULL, NULL, NULL, '2024-12-14 04:17:00', '2024-12-14 04:17:00', '2024-12-14 04:17:00'),
(49, 1, 1, 1, 'dokterpost-logo.png', 'image', NULL, 160, 160, 31366, NULL, NULL, NULL, '2024-12-14 04:22:04', '2024-12-14 04:22:04', '2024-12-14 04:22:04'),
(53, 1, 1, 1, 'doktercares-logo.png', 'image', NULL, 160, 160, 6621, NULL, NULL, NULL, '2024-12-14 04:23:11', '2024-12-14 04:23:11', '2024-12-14 04:23:11'),
(224, 1, 1, 1, 'about1.jpg', 'image', NULL, 2304, 1536, 746820, NULL, NULL, NULL, '2024-12-19 04:53:57', '2024-12-19 04:53:57', '2024-12-19 04:53:57'),
(267, 1, 1, 1, '1.jpeg', 'image', NULL, 1600, 1600, 250864, NULL, NULL, NULL, '2024-12-19 07:35:52', '2024-12-19 07:35:52', '2024-12-19 07:35:52'),
(268, 1, 1, 1, '2.jpeg', 'image', NULL, 1600, 1600, 246271, NULL, NULL, NULL, '2024-12-19 07:35:52', '2024-12-19 07:35:52', '2024-12-19 07:35:52'),
(269, 1, 1, 1, '3.jpeg', 'image', NULL, 1600, 1600, 230067, NULL, NULL, NULL, '2024-12-19 07:35:54', '2024-12-19 07:35:54', '2024-12-19 07:35:54'),
(270, 1, 1, 1, '4.jpeg', 'image', NULL, 1600, 1600, 245357, NULL, NULL, NULL, '2024-12-19 07:35:56', '2024-12-19 07:35:56', '2024-12-19 07:35:56'),
(271, 1, 1, 1, '5.jpeg', 'image', NULL, 1600, 1600, 241281, NULL, NULL, NULL, '2024-12-19 07:35:57', '2024-12-19 07:35:57', '2024-12-19 07:35:57'),
(272, 1, 1, 1, '6.jpeg', 'image', NULL, 1600, 1600, 248905, NULL, NULL, NULL, '2024-12-19 07:35:58', '2024-12-19 07:35:58', '2024-12-19 07:35:58'),
(273, 1, 1, 1, '7.jpeg', 'image', NULL, 1600, 1600, 245269, NULL, NULL, NULL, '2024-12-19 07:36:00', '2024-12-19 07:36:00', '2024-12-19 07:36:00'),
(274, 1, 1, 1, '8.jpeg', 'image', NULL, 1600, 1600, 236169, NULL, NULL, NULL, '2024-12-19 07:36:01', '2024-12-19 07:36:01', '2024-12-19 07:36:01'),
(275, 1, 1, 1, '9.jpeg', 'image', NULL, 1600, 1600, 243139, NULL, NULL, NULL, '2024-12-19 07:36:03', '2024-12-19 07:36:03', '2024-12-19 07:36:03'),
(276, 1, 1, 1, '10.jpeg', 'image', NULL, 1600, 1600, 244112, NULL, NULL, NULL, '2024-12-19 07:36:05', '2024-12-19 07:36:05', '2024-12-19 07:36:05'),
(277, 1, 1, 1, '11.jpeg', 'image', NULL, 1600, 1600, 256083, NULL, NULL, NULL, '2024-12-19 07:36:06', '2024-12-19 07:36:06', '2024-12-19 07:36:06'),
(278, 1, 1, 1, '12.jpeg', 'image', NULL, 1600, 1600, 243766, NULL, NULL, NULL, '2024-12-19 07:36:07', '2024-12-19 07:36:07', '2024-12-19 07:36:07'),
(279, 1, 1, 1, '13.jpeg', 'image', NULL, 1600, 1600, 234967, NULL, NULL, NULL, '2024-12-19 07:36:09', '2024-12-19 07:36:09', '2024-12-19 07:36:09'),
(284, 1, 1, 1, '1_2024-12-19-073835_ghmj.jpg', 'image', NULL, 1000, 476, 265403, NULL, NULL, NULL, '2024-12-19 07:38:35', '2024-12-19 07:38:36', '2024-12-19 07:38:36'),
(285, 1, 1, 1, '2_2024-12-19-073836_zyxq.jpg', 'image', NULL, 1000, 476, 244317, NULL, NULL, NULL, '2024-12-19 07:38:36', '2024-12-19 07:38:36', '2024-12-19 07:38:36'),
(286, 1, 1, 1, '3_2024-12-19-073837_pwcz.jpg', 'image', NULL, 1000, 476, 273742, NULL, NULL, NULL, '2024-12-19 07:38:37', '2024-12-19 07:38:37', '2024-12-19 07:38:37'),
(287, 1, 1, 1, '4_2024-12-19-073840_rkad.jpg', 'image', NULL, 1000, 476, 289286, NULL, NULL, NULL, '2024-12-19 07:38:40', '2024-12-19 07:38:40', '2024-12-19 07:38:40'),
(288, 1, 1, 1, '5.jpg', 'image', NULL, 1000, 476, 250691, NULL, NULL, NULL, '2024-12-19 07:38:41', '2024-12-19 07:38:41', '2024-12-19 07:38:41'),
(314, 1, 1, 1, 'about2.jpg', 'image', NULL, 2555, 1965, 286663, NULL, NULL, NULL, '2024-12-19 08:21:57', '2024-12-19 08:21:57', '2024-12-19 08:21:57'),
(317, 1, 1, 1, 'about3.jpg', 'image', NULL, 2458, 1383, 271917, NULL, NULL, NULL, '2024-12-19 08:30:40', '2024-12-19 08:30:40', '2024-12-19 08:30:40'),
(331, 1, 1, 1, 'mockup.png', 'image', NULL, 1349, 641, 141285, NULL, NULL, NULL, '2024-12-19 08:42:10', '2024-12-19 08:42:10', '2024-12-19 08:42:10'),
(337, 1, 1, 1, 'journey.png', 'image', NULL, 2560, 1873, 497271, NULL, NULL, NULL, '2024-12-20 01:21:25', '2024-12-20 01:21:25', '2024-12-20 01:21:25'),
(343, 1, 1, 1, 'fasilitas.png', 'image', NULL, 900, 1336, 185270, NULL, NULL, NULL, '2024-12-20 01:28:17', '2024-12-20 01:28:17', '2024-12-20 01:28:17'),
(349, 1, 1, 1, '1.png', 'image', NULL, 1280, 800, 838264, NULL, NULL, NULL, '2024-12-20 01:38:53', '2024-12-20 01:38:53', '2024-12-20 01:38:53'),
(350, 1, 1, 1, '2.png', 'image', NULL, 630, 400, 380264, NULL, NULL, NULL, '2024-12-20 01:38:54', '2024-12-20 01:38:54', '2024-12-20 01:38:54'),
(351, 1, 1, 1, '3.png', 'image', NULL, 630, 400, 411285, NULL, NULL, NULL, '2024-12-20 01:38:55', '2024-12-20 01:38:55', '2024-12-20 01:38:55'),
(352, 1, 1, 1, '4.png', 'image', NULL, 630, 400, 272745, NULL, NULL, NULL, '2024-12-20 01:38:57', '2024-12-20 01:38:57', '2024-12-20 01:38:57'),
(353, 1, 1, 1, '5.png', 'image', NULL, 630, 400, 322830, NULL, NULL, NULL, '2024-12-20 01:38:59', '2024-12-20 01:38:59', '2024-12-20 01:38:59'),
(370, 1, 1, 1, 'WhatsApp-Image-2024-11-13-at-3.13.37-PM.jpeg', 'image', NULL, 1500, 1200, 67589, NULL, NULL, NULL, '2024-12-20 02:39:15', '2024-12-20 02:39:15', '2024-12-20 02:39:15'),
(375, 1, 1, 1, 'WhatsApp-Image-2024-11-13-at-3.03.56-PM.jpeg', 'image', NULL, 1500, 1200, 125703, NULL, NULL, NULL, '2024-12-20 02:40:59', '2024-12-20 02:40:59', '2024-12-20 02:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `assets_sites`
--

CREATE TABLE `assets_sites` (
  `assetId` int NOT NULL,
  `siteId` int NOT NULL,
  `alt` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assets_sites`
--

INSERT INTO `assets_sites` (`assetId`, `siteId`, `alt`) VALUES
(9, 1, NULL),
(10, 1, NULL),
(11, 1, NULL),
(12, 1, NULL),
(35, 1, NULL),
(42, 1, NULL),
(43, 1, NULL),
(44, 1, NULL),
(49, 1, NULL),
(53, 1, NULL),
(224, 1, NULL),
(267, 1, NULL),
(268, 1, NULL),
(269, 1, NULL),
(270, 1, NULL),
(271, 1, NULL),
(272, 1, NULL),
(273, 1, NULL),
(274, 1, NULL),
(275, 1, NULL),
(276, 1, NULL),
(277, 1, NULL),
(278, 1, NULL),
(279, 1, NULL),
(284, 1, NULL),
(285, 1, NULL),
(286, 1, NULL),
(287, 1, NULL),
(288, 1, NULL),
(314, 1, NULL),
(317, 1, NULL),
(331, 1, NULL),
(337, 1, NULL),
(343, 1, NULL),
(349, 1, NULL),
(350, 1, NULL),
(351, 1, NULL),
(352, 1, NULL),
(353, 1, NULL),
(370, 1, NULL),
(375, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authenticator`
--

CREATE TABLE `authenticator` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `auth2faSecret` varchar(255) DEFAULT NULL,
  `oldTimestamp` int UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int NOT NULL,
  `structureId` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(86, 1, 'enabled', '2024-12-14 05:03:49', 0, 1),
(86, 1, 'uri', '2024-12-14 04:59:09', 0, 1),
(116, 1, 'postDate', '2024-12-16 07:51:15', 0, 1),
(116, 1, 'slug', '2024-12-16 07:51:15', 0, 1),
(116, 1, 'title', '2024-12-16 07:51:15', 0, 1),
(117, 1, 'postDate', '2024-12-16 07:50:37', 0, 1),
(117, 1, 'slug', '2024-12-16 07:50:27', 0, 1),
(117, 1, 'title', '2024-12-16 07:50:27', 0, 1),
(118, 1, 'postDate', '2024-12-16 07:51:06', 0, 1),
(118, 1, 'slug', '2024-12-16 07:50:51', 0, 1),
(118, 1, 'title', '2024-12-16 07:50:51', 0, 1),
(124, 1, 'slug', '2024-12-17 08:33:07', 0, 1),
(124, 1, 'title', '2024-12-17 08:44:56', 0, 1),
(125, 1, 'title', '2024-12-17 08:44:46', 0, 1),
(134, 1, 'postDate', '2024-12-17 07:20:15', 0, 1),
(134, 1, 'slug', '2024-12-17 07:20:15', 0, 1),
(134, 1, 'title', '2024-12-17 07:20:15', 0, 1),
(135, 1, 'postDate', '2024-12-17 07:20:46', 0, 1),
(135, 1, 'slug', '2024-12-17 07:20:46', 0, 1),
(135, 1, 'title', '2024-12-17 07:20:46', 0, 1),
(136, 1, 'postDate', '2024-12-17 07:21:14', 0, 1),
(136, 1, 'slug', '2024-12-17 07:21:14', 0, 1),
(136, 1, 'title', '2024-12-17 07:21:14', 0, 1),
(137, 1, 'postDate', '2024-12-17 07:21:41', 0, 1),
(137, 1, 'slug', '2024-12-17 07:21:41', 0, 1),
(137, 1, 'title', '2024-12-17 07:21:41', 0, 1),
(140, 1, 'slug', '2024-12-17 07:30:18', 0, 1),
(140, 1, 'title', '2024-12-17 07:30:18', 0, 1),
(141, 1, 'slug', '2024-12-17 07:30:24', 0, 1),
(141, 1, 'title', '2024-12-17 07:30:24', 0, 1),
(170, 1, 'slug', '2024-12-17 08:38:18', 0, 1),
(170, 1, 'title', '2024-12-19 07:50:46', 0, 1),
(171, 1, 'title', '2024-12-17 08:38:15', 0, 1),
(206, 1, 'slug', '2024-12-19 04:45:38', 0, 1),
(206, 1, 'title', '2024-12-19 04:45:38', 0, 1),
(251, 1, 'postDate', '2024-12-19 06:35:07', 0, 1),
(251, 1, 'slug', '2024-12-19 06:34:28', 0, 1),
(251, 1, 'title', '2024-12-19 06:34:28', 0, 1),
(251, 1, 'uri', '2024-12-19 06:34:28', 0, 1),
(252, 1, 'postDate', '2024-12-19 06:33:40', 0, 1),
(252, 1, 'slug', '2024-12-19 06:34:34', 0, 1),
(252, 1, 'title', '2024-12-19 06:34:34', 0, 1),
(254, 1, 'postDate', '2024-12-19 06:35:00', 0, 1),
(254, 1, 'slug', '2024-12-19 06:34:43', 0, 1),
(254, 1, 'title', '2024-12-19 06:34:43', 0, 1),
(261, 1, 'postDate', '2024-12-19 07:05:50', 0, 1),
(261, 1, 'slug', '2024-12-19 07:04:57', 0, 1),
(261, 1, 'title', '2024-12-19 07:04:57', 0, 1),
(264, 1, 'postDate', '2024-12-19 07:07:31', 0, 1),
(264, 1, 'slug', '2024-12-19 07:07:04', 0, 1),
(264, 1, 'title', '2024-12-19 07:07:04', 0, 1),
(266, 1, 'postDate', '2024-12-19 07:36:41', 0, 1),
(266, 1, 'slug', '2024-12-19 07:35:32', 0, 1),
(266, 1, 'title', '2024-12-19 07:35:32', 0, 1),
(266, 1, 'uri', '2024-12-19 07:35:32', 0, 1),
(283, 1, 'postDate', '2024-12-19 07:39:07', 0, 1),
(283, 1, 'slug', '2024-12-19 07:38:14', 0, 1),
(283, 1, 'title', '2024-12-19 07:38:14', 0, 1),
(283, 1, 'uri', '2024-12-19 07:38:14', 0, 1),
(354, 1, 'title', '2024-12-20 02:35:26', 0, 1),
(369, 1, 'postDate', '2024-12-20 02:39:32', 0, 1),
(369, 1, 'slug', '2024-12-20 02:40:14', 0, 1),
(369, 1, 'title', '2024-12-20 02:40:14', 0, 1),
(369, 1, 'uri', '2024-12-20 02:39:32', 0, 1),
(374, 1, 'postDate', '2024-12-20 02:41:02', 0, 1),
(374, 1, 'slug', '2024-12-20 02:40:36', 0, 1),
(374, 1, 'title', '2024-12-20 02:40:36', 0, 1),
(374, 1, 'uri', '2024-12-20 02:40:36', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `fieldId` int NOT NULL,
  `layoutElementUid` char(36) NOT NULL DEFAULT '0',
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `layoutElementUid`, `dateUpdated`, `propagated`, `userId`) VALUES
(86, 1, 3, 'ebf341ba-a2af-4b97-9680-98b15002a5fc', '2024-12-14 05:03:49', 0, 1),
(86, 1, 4, 'b7383efd-ef11-4ccb-91b5-cbf48159e74d', '2024-12-14 05:03:49', 0, 1),
(86, 1, 9, '5862f508-09a2-4278-83b2-ede56bb4a6ab', '2024-12-14 05:03:49', 0, 1),
(86, 1, 10, 'bdf1c82c-97c8-470b-9f2a-dcff3d83e8cf', '2024-12-16 08:20:46', 0, 1),
(86, 1, 14, 'dfb0a5f9-9a2e-446f-b4a7-0ce38f3af139', '2024-12-19 07:50:46', 0, 1),
(116, 1, 3, '1df5bacd-5a41-41a7-8cb9-12a89cfe0ea8', '2024-12-16 07:50:21', 0, 1),
(117, 1, 1, '6737f1a4-f207-4553-b409-3fd9eb93d704', '2024-12-16 07:50:37', 0, 1),
(118, 1, 2, '6e19aba0-1dab-475e-9c0b-8074ce367f51', '2024-12-16 07:51:04', 0, 1),
(124, 1, 18, 'a8d32b46-c266-4c2c-b638-d57292fa0d42', '2024-12-17 07:42:16', 0, 1),
(134, 1, 11, '21419ad2-c0e0-4f3e-a9f2-167fad91beab', '2024-12-17 07:20:07', 0, 1),
(134, 1, 11, '65d33e87-86cc-4d27-abb8-ed4593fc6f57', '2024-12-17 07:19:59', 0, 1),
(134, 1, 11, '858bcd34-7fcb-4a94-b831-eb401c6ef8a1', '2024-12-17 07:20:13', 0, 1),
(135, 1, 11, '21419ad2-c0e0-4f3e-a9f2-167fad91beab', '2024-12-17 07:20:37', 0, 1),
(135, 1, 11, '65d33e87-86cc-4d27-abb8-ed4593fc6f57', '2024-12-17 07:20:29', 0, 1),
(135, 1, 11, '858bcd34-7fcb-4a94-b831-eb401c6ef8a1', '2024-12-17 07:20:44', 0, 1),
(136, 1, 11, '21419ad2-c0e0-4f3e-a9f2-167fad91beab', '2024-12-17 07:21:06', 0, 1),
(136, 1, 11, '65d33e87-86cc-4d27-abb8-ed4593fc6f57', '2024-12-17 07:20:59', 0, 1),
(136, 1, 11, '858bcd34-7fcb-4a94-b831-eb401c6ef8a1', '2024-12-17 07:21:12', 0, 1),
(137, 1, 11, '21419ad2-c0e0-4f3e-a9f2-167fad91beab', '2024-12-17 07:21:32', 0, 1),
(137, 1, 11, '65d33e87-86cc-4d27-abb8-ed4593fc6f57', '2024-12-17 07:21:30', 0, 1),
(137, 1, 11, '858bcd34-7fcb-4a94-b831-eb401c6ef8a1', '2024-12-17 07:21:39', 0, 1),
(140, 1, 18, '084c0c23-ffa7-4d18-9590-187806eae20f', '2024-12-17 07:30:18', 0, 1),
(141, 1, 18, '084c0c23-ffa7-4d18-9590-187806eae20f', '2024-12-17 07:30:24', 0, 1),
(170, 1, 23, 'b97c3513-b430-4b12-8463-1a8e886b0ea6', '2024-12-19 07:50:46', 0, 1),
(181, 1, 21, 'a8e96dac-b261-4077-a3b6-4e086a61c947', '2024-12-17 08:50:08', 0, 1),
(181, 1, 23, '4a503d03-1bc4-4761-b199-765407c909d1', '2024-12-19 07:48:03', 0, 1),
(219, 1, 14, '33eae665-d5a8-480a-a021-8b8191444c96', '2024-12-20 02:43:30', 0, 1),
(251, 1, 14, 'dfb0a5f9-9a2e-446f-b4a7-0ce38f3af139', '2024-12-19 06:35:07', 0, 1),
(252, 1, 21, 'a8e96dac-b261-4077-a3b6-4e086a61c947', '2024-12-19 06:35:07', 0, 1),
(254, 1, 11, '85e7f211-7495-4a72-a4d9-d9869f6099d1', '2024-12-19 06:34:55', 0, 1),
(254, 1, 12, '7968b039-e213-4d8f-bf99-63a2e4edf545', '2024-12-19 06:34:59', 0, 1),
(261, 1, 23, '3312be43-8e24-47f8-8a22-5f3aec4df2e4', '2024-12-19 07:05:50', 0, 1),
(264, 1, 23, '3312be43-8e24-47f8-8a22-5f3aec4df2e4', '2024-12-19 07:07:31', 0, 1),
(266, 1, 11, 'accde8e3-c0a6-4e21-a71b-ad87ec07755e', '2024-12-19 07:36:41', 0, 1),
(266, 1, 12, '43e95259-5a39-43ff-8097-a1297da17eb5', '2024-12-19 07:36:41', 0, 1),
(266, 1, 12, '910f26dd-3204-470a-b4d6-9c9a6bf8e293', '2024-12-19 07:36:41', 0, 1),
(266, 1, 23, '1586bb87-afba-4f1a-a365-c067e48c3b07', '2024-12-19 07:37:48', 0, 1),
(283, 1, 11, 'accde8e3-c0a6-4e21-a71b-ad87ec07755e', '2024-12-19 07:39:07', 0, 1),
(283, 1, 12, '43e95259-5a39-43ff-8097-a1297da17eb5', '2024-12-19 07:39:07', 0, 1),
(283, 1, 12, '910f26dd-3204-470a-b4d6-9c9a6bf8e293', '2024-12-19 07:39:07', 0, 1),
(283, 1, 23, '1586bb87-afba-4f1a-a365-c067e48c3b07', '2024-12-19 07:39:07', 0, 1),
(304, 1, 25, '47f36e0a-ecb4-4076-9343-41e52a018dd0', '2024-12-19 08:31:15', 0, 1),
(304, 1, 26, 'b831de72-6748-4a25-96f6-af3f532f3782', '2024-12-19 08:31:15', 0, 1),
(354, 1, 27, '8b21ca4c-f2e5-401d-9542-4b56ca270800', '2024-12-20 02:35:26', 0, 1),
(369, 1, 11, '2ca21f00-5ec7-40ac-8d07-0316a6036b5f', '2024-12-20 02:39:32', 0, 1),
(369, 1, 11, '383e24df-4b59-44ec-9614-5245ba558846', '2024-12-20 02:39:32', 0, 1),
(369, 1, 12, '250e07ce-3b56-4356-95e4-779182337a66', '2024-12-20 02:39:32', 0, 1),
(374, 1, 11, '2ca21f00-5ec7-40ac-8d07-0316a6036b5f', '2024-12-20 02:41:02', 0, 1),
(374, 1, 11, '383e24df-4b59-44ec-9614-5245ba558846', '2024-12-20 02:41:02', 0, 1),
(374, 1, 12, '250e07ce-3b56-4356-95e4-779182337a66', '2024-12-20 02:41:02', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint UNSIGNED DEFAULT NULL,
  `message` text,
  `traces` json DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int NOT NULL,
  `canonicalId` int DEFAULT NULL,
  `creatorId` int DEFAULT NULL,
  `provisional` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `canonicalId`, `creatorId`, `provisional`, `name`, `notes`, `trackChanges`, `dateLastMerged`, `saved`) VALUES
(37, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(54, NULL, 1, 0, 'First draft', NULL, 0, NULL, 1),
(55, NULL, 1, 0, 'First draft', NULL, 0, NULL, 1),
(56, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(99, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(101, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(102, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(103, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0),
(105, NULL, 1, 0, 'First draft', NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elementactivity`
--

CREATE TABLE `elementactivity` (
  `elementId` int NOT NULL,
  `userId` int NOT NULL,
  `siteId` int NOT NULL,
  `draftId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elementactivity`
--

INSERT INTO `elementactivity` (`elementId`, `userId`, `siteId`, `draftId`, `type`, `timestamp`) VALUES
(86, 1, 1, NULL, 'edit', '2024-12-19 07:50:42'),
(86, 1, 1, NULL, 'save', '2024-12-19 07:50:46'),
(116, 1, 1, NULL, 'save', '2024-12-16 07:51:15'),
(117, 1, 1, NULL, 'save', '2024-12-16 07:50:37'),
(118, 1, 1, NULL, 'save', '2024-12-16 07:51:06'),
(124, 1, 1, NULL, 'save', '2024-12-17 08:44:56'),
(125, 1, 1, NULL, 'edit', '2024-12-17 08:41:33'),
(125, 1, 1, NULL, 'save', '2024-12-17 08:44:48'),
(134, 1, 1, NULL, 'save', '2024-12-17 07:20:15'),
(135, 1, 1, NULL, 'save', '2024-12-17 07:20:46'),
(136, 1, 1, NULL, 'save', '2024-12-17 07:21:14'),
(137, 1, 1, NULL, 'save', '2024-12-17 07:21:41'),
(140, 1, 1, NULL, 'save', '2024-12-17 07:30:19'),
(141, 1, 1, NULL, 'save', '2024-12-17 07:30:24'),
(170, 1, 1, NULL, 'save', '2024-12-17 08:38:18'),
(171, 1, 1, NULL, 'edit', '2024-12-17 08:38:13'),
(171, 1, 1, NULL, 'save', '2024-12-17 08:38:15'),
(219, 1, 1, NULL, 'edit', '2024-12-20 02:43:20'),
(219, 1, 1, NULL, 'save', '2024-12-20 02:43:30'),
(251, 1, 1, NULL, 'save', '2024-12-19 06:35:08'),
(254, 1, 1, NULL, 'save', '2024-12-19 06:35:00'),
(261, 1, 1, NULL, 'save', '2024-12-19 07:05:50'),
(264, 1, 1, NULL, 'save', '2024-12-19 07:07:31'),
(266, 1, 1, NULL, 'edit', '2024-12-19 07:37:44'),
(266, 1, 1, NULL, 'save', '2024-12-19 07:37:48'),
(283, 1, 1, NULL, 'save', '2024-12-19 07:39:08'),
(369, 1, 1, NULL, 'edit', '2024-12-20 02:40:12'),
(369, 1, 1, NULL, 'save', '2024-12-20 02:40:13'),
(374, 1, 1, NULL, 'save', '2024-12-20 02:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int NOT NULL,
  `canonicalId` int DEFAULT NULL,
  `draftId` int DEFAULT NULL,
  `revisionId` int DEFAULT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateLastMerged` datetime DEFAULT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `canonicalId`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateLastMerged`, `dateDeleted`, `deletedWithOwner`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2024-12-13 08:59:52', '2024-12-13 08:59:52', NULL, NULL, NULL, '82db1f72-662e-4e62-9b96-dc94fc0c76ad'),
(9, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 01:37:17', '2024-12-14 01:37:17', NULL, NULL, NULL, '406450df-0325-44c0-81be-9de0727dd601'),
(10, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 01:37:23', '2024-12-14 01:37:23', NULL, NULL, NULL, '88e7a4bd-5207-42ae-9c07-407ddf10d757'),
(11, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 01:37:27', '2024-12-14 01:37:27', NULL, NULL, NULL, 'b81daa13-edc4-4e78-8fca-ce459a30bbcc'),
(12, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 01:37:31', '2024-12-14 01:37:31', NULL, NULL, NULL, 'ca5e61ae-f628-4f1e-90e0-c603d47a698f'),
(35, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 03:43:48', '2024-12-14 03:43:48', NULL, NULL, NULL, '101ac886-b052-4a7f-8dfb-cc8762cdc36b'),
(41, NULL, NULL, NULL, 5, 'craft\\elements\\GlobalSet', 1, 0, '2024-12-14 03:49:32', '2024-12-16 08:27:12', NULL, NULL, NULL, '858bea49-abde-413c-ac37-8e6f094f6028'),
(42, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 03:52:29', '2024-12-14 03:52:29', NULL, NULL, NULL, '61855c48-ff6d-4301-8900-e71df0fc074d'),
(43, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 04:10:33', '2024-12-14 04:10:33', NULL, NULL, NULL, 'fcc31646-5bb3-4cc7-9cdd-859e0ba4dc30'),
(44, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 04:17:00', '2024-12-14 04:17:00', NULL, NULL, NULL, '8477d8ee-ec3d-4fe1-b4ef-e787d4e63061'),
(49, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 04:22:04', '2024-12-14 04:22:04', NULL, NULL, NULL, '572945d2-7ebb-43c7-b0cd-5d13a011baa8'),
(53, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-14 04:23:11', '2024-12-14 04:23:11', NULL, NULL, NULL, '21dd3a6f-86a4-46fb-96b6-5e1ca314e7a1'),
(86, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-14 04:59:09', '2024-12-19 07:50:46', NULL, NULL, NULL, '17aac4ea-5768-419b-97c9-481f5e0bf720'),
(87, 86, NULL, 33, 1, 'craft\\elements\\Entry', 0, 0, '2024-12-14 04:59:09', '2024-12-14 04:59:09', NULL, NULL, NULL, 'bb0f4d94-133f-4341-b016-e61720e4aaaa'),
(97, NULL, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, '2024-12-16 07:52:26', NULL, 'afc59b46-1811-4fa2-b437-df9d6b5743a6'),
(98, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, '2024-12-16 07:52:24', NULL, '7b961ccb-f31d-4221-917d-486c6354c4c2'),
(99, NULL, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, '2024-12-16 07:52:26', NULL, '627e72c3-97dd-4b5c-b894-a2304152ec31'),
(100, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, '2024-12-16 07:52:24', NULL, 'ce93f311-41a9-48a6-9bbe-791175dba997'),
(101, NULL, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, '2024-12-16 07:52:30', NULL, 'b7488c80-c2a2-40e1-86fc-76b81b54d280'),
(102, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, '2024-12-16 07:52:33', NULL, 'dd68007e-75c9-4ec7-aaa5-f62a4cc1a611'),
(103, NULL, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, '2024-12-16 07:52:33', NULL, '16c462d6-3e6e-42d6-a612-1f346a201b34'),
(104, 86, NULL, 34, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, 'b4cc1fe5-b1c1-41cf-b74b-f21306ada9a7'),
(105, 97, NULL, 35, 3, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, '87383a26-7544-4b18-86fa-02bb3ba20533'),
(106, 98, NULL, 36, 4, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, '5b786f8b-df82-4bfb-927e-41e85a319a06'),
(107, 99, NULL, 37, 3, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, '6d2c5716-48f4-46de-bcce-23c52f6e7ea7'),
(108, 100, NULL, 38, 4, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, '8b904766-cd09-4dfa-84bf-9e96c6838ed6'),
(109, 101, NULL, 39, 6, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, 'ba9f9f1e-6ae6-43fc-8494-c9b271066d7a'),
(110, 102, NULL, 40, 7, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, '8057ee8f-1c4c-4614-94be-52fc242bec01'),
(111, 103, NULL, 41, 7, 'craft\\elements\\Entry', 1, 0, '2024-12-14 05:03:49', '2024-12-14 05:03:49', NULL, NULL, NULL, '13953194-8e7e-4826-b7ad-648219536e08'),
(112, 86, NULL, 42, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-16 07:48:05', '2024-12-16 07:48:05', NULL, NULL, NULL, 'bffab5ce-3724-44e5-bb7f-2a9dd759d82b'),
(115, NULL, 37, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2024-12-16 07:49:37', '2024-12-16 07:49:37', NULL, '2024-12-16 07:52:28', NULL, '8ae6c072-b6ca-48ff-8180-7b4abf3bd063'),
(116, NULL, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2024-12-16 07:50:18', '2024-12-16 07:51:15', NULL, '2024-12-16 07:52:28', NULL, 'edbc1eea-423f-47ba-a718-639eca4e3a7f'),
(117, NULL, NULL, NULL, 3, 'craft\\elements\\Entry', 1, 0, '2024-12-16 07:50:22', '2024-12-16 07:50:37', NULL, '2024-12-16 07:52:26', NULL, 'ecf957b1-ce38-4e40-a478-32d0c0d19a13'),
(118, NULL, NULL, NULL, 4, 'craft\\elements\\Entry', 1, 0, '2024-12-16 07:50:45', '2024-12-16 07:51:06', NULL, '2024-12-16 07:52:24', NULL, 'dd4b4eb2-2d5c-49ef-94b6-6f9ff040f523'),
(119, 86, NULL, 43, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:17:53', '2024-12-16 08:17:53', NULL, NULL, NULL, 'cb709d2b-b888-4441-a594-4af748491d16'),
(124, NULL, NULL, NULL, 11, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:20:46', '2024-12-17 08:44:56', NULL, NULL, NULL, '3ab64851-aa1a-4712-abbe-5c3f3884998c'),
(125, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:20:46', '2024-12-17 08:44:48', NULL, NULL, NULL, 'fa0dbecc-561a-4be9-90e5-f94b2dce5d3a'),
(126, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:20:46', '2024-12-16 08:20:46', NULL, NULL, NULL, 'ebab7b2c-a140-4027-8d7e-a0bfc1ec4b05'),
(127, 86, NULL, 44, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:20:46', '2024-12-16 08:20:46', NULL, NULL, NULL, 'a441e4fc-35ec-42e4-a68c-48f76864dae8'),
(128, 124, NULL, 45, 11, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:20:46', '2024-12-16 08:20:46', NULL, NULL, NULL, 'bb00f4f4-6bc0-49d4-8a33-31142fe7ef9f'),
(129, 125, NULL, 46, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:20:46', '2024-12-16 08:20:46', NULL, NULL, NULL, '850b23ca-ec97-4f9e-b40b-b3393b0c6c2d'),
(130, 126, NULL, 47, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-16 08:20:46', '2024-12-16 08:20:46', NULL, NULL, NULL, '6611ff52-d223-451c-80fd-a897c2dfa71d'),
(134, NULL, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:17:43', '2024-12-17 07:20:15', NULL, '2024-12-17 07:34:56', NULL, '2f0167c9-3a90-4c5d-89d4-ce24e8205f6c'),
(135, NULL, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:20:19', '2024-12-17 07:20:46', NULL, '2024-12-17 07:34:56', NULL, '71cb012f-6b26-4bd3-8f9d-b30649385cd5'),
(136, NULL, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:20:56', '2024-12-17 07:21:14', NULL, '2024-12-17 07:34:56', NULL, 'c3073846-539a-4066-89c7-4c8d9c345fa6'),
(137, NULL, NULL, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:21:17', '2024-12-17 07:21:41', NULL, '2024-12-17 07:34:56', NULL, 'c863ba44-4001-439f-ad9a-90394da124d2'),
(140, NULL, 54, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:30:16', '2024-12-17 07:30:18', NULL, '2024-12-17 07:34:56', NULL, '5424c8e7-95a9-4027-b01d-501df85c8bd2'),
(141, NULL, 55, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:30:19', '2024-12-17 07:30:24', NULL, '2024-12-17 07:34:56', NULL, '06023600-a6d9-4d6b-8212-9b7713e1b578'),
(142, NULL, 56, NULL, 15, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:30:25', '2024-12-17 07:30:25', NULL, '2024-12-17 07:34:56', NULL, '4b137982-b091-46fc-80be-ced6b9da793f'),
(148, NULL, NULL, NULL, 17, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, '47f068a7-0035-4899-baba-3a94328b0259'),
(149, NULL, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, 'fbad5585-04f1-480a-9428-288dd4822aa5'),
(150, NULL, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, 'b7f6d2dd-1ab7-4138-9c94-19fdaac20778'),
(151, NULL, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, '7678f4f3-ef4d-4957-b721-2de12d889507'),
(152, NULL, NULL, NULL, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, 'f4500b05-757d-42ec-bdbf-07001b1a3ff6'),
(153, 86, NULL, 48, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, '84f58821-328f-4d01-bd97-a92eebf5048d'),
(154, 124, NULL, 49, 11, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, '54cb33b6-02df-4d00-a48a-8f481efc5f00'),
(155, 148, NULL, 50, 17, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, 'f3d93cca-9253-4531-8ae8-7e34bfb1fe34'),
(156, 149, NULL, 51, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, 'e9395730-2785-405f-be14-66b12e513b63'),
(157, 150, NULL, 52, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, 'df5a206f-a6c3-4a05-950f-0cebe7fe5a29'),
(158, 151, NULL, 53, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:16', NULL, NULL, NULL, '0df2daf8-9b32-4343-8919-04fda1db9f72'),
(159, 152, NULL, 54, 16, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:42:16', '2024-12-17 07:42:17', NULL, NULL, NULL, '1e089910-5bab-4c46-8372-95c6e05c9e78'),
(161, 86, NULL, 55, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:50:34', '2024-12-17 07:50:35', NULL, NULL, NULL, 'eb3664d8-9d3d-45cb-a9e0-92faa2004780'),
(163, 86, NULL, 56, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:50:54', '2024-12-17 07:50:54', NULL, NULL, NULL, '209087e2-677a-4d97-9eb3-7dd0b7b088d9'),
(164, 86, NULL, 57, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 07:51:36', '2024-12-17 07:51:36', NULL, NULL, NULL, '5e0677b8-610c-4aa2-99b3-76eafc65f4f0'),
(165, 86, NULL, 58, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:09:25', '2024-12-17 08:09:25', NULL, NULL, NULL, 'a53c7f38-494d-4f7a-8549-84aada68222d'),
(170, NULL, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:18:20', '2024-12-19 07:50:46', NULL, NULL, NULL, '1073ecd5-ecaa-42e4-8d11-50e61e408998'),
(171, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:18:21', '2024-12-17 08:38:15', NULL, NULL, NULL, '7a13343e-0211-4df4-bab2-e234038aaac8'),
(172, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:18:21', '2024-12-17 08:18:21', NULL, NULL, NULL, 'b345e007-c23e-4a00-9461-3f44409f312f'),
(173, 86, NULL, 59, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:18:20', '2024-12-17 08:18:21', NULL, NULL, NULL, 'd007ea31-c85c-4337-add8-0d7e99f9b41c'),
(174, 170, NULL, 60, 18, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:18:20', '2024-12-17 08:18:21', NULL, NULL, NULL, '08373d44-6910-484b-bc08-d368a7dec7c3'),
(175, 171, NULL, 61, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:18:21', '2024-12-17 08:18:21', NULL, NULL, NULL, 'dc9ef724-8d9b-494d-9ea6-d3fb9357c2ab'),
(176, 172, NULL, 62, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:18:21', '2024-12-17 08:18:21', NULL, NULL, NULL, '689c2f9e-dc7d-4d89-9611-4fd7a4bb0ad6'),
(181, NULL, NULL, NULL, 19, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:38:57', '2024-12-19 07:48:03', NULL, NULL, NULL, '86bb967d-cfde-4397-ad9d-b42f31cc28ff'),
(182, 86, NULL, 63, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:38:57', '2024-12-17 08:38:57', NULL, NULL, NULL, 'fc3cb08d-4965-41c5-a375-d6318d1c4fae'),
(183, 124, NULL, 64, 11, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:33:06', '2024-12-17 08:38:57', NULL, NULL, NULL, '51bcf4aa-4529-472f-ba63-dade9f1e0e49'),
(184, 125, NULL, 65, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:32:56', '2024-12-17 08:38:57', NULL, NULL, NULL, '2dce941f-6a6e-48d7-9fa0-028d7d5cdb52'),
(185, 170, NULL, 66, 18, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:38:18', '2024-12-17 08:38:57', NULL, NULL, NULL, 'f45b97d9-e2ba-4f07-8586-ff8982fb0fb4'),
(186, 171, NULL, 67, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:38:15', '2024-12-17 08:38:57', NULL, NULL, NULL, 'f6088ee6-17be-464d-896b-e21ab5c66104'),
(187, 181, NULL, 68, 19, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:38:57', '2024-12-17 08:38:57', NULL, NULL, NULL, '1af06ce6-f916-4c37-a2d5-f7bda82df5a8'),
(194, NULL, NULL, NULL, 20, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:50:08', '2024-12-17 08:50:08', NULL, '2024-12-19 08:21:33', NULL, '6b73d5d6-98d8-4fec-a209-a9a1a4f5d9ed'),
(195, NULL, NULL, NULL, 20, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:50:08', '2024-12-17 08:50:08', NULL, '2024-12-19 08:21:33', NULL, '1cc2fb26-0618-41c3-a8a5-6a07b6f6677d'),
(196, 86, NULL, 69, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:50:08', '2024-12-17 08:50:08', NULL, NULL, NULL, '5fde5e88-6632-46b2-a2ae-560bb409919e'),
(197, 124, NULL, 70, 11, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:44:56', '2024-12-17 08:50:08', NULL, NULL, NULL, '72774b6d-060f-48b2-985c-9e46163d5daa'),
(198, 125, NULL, 71, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:44:48', '2024-12-17 08:50:08', NULL, NULL, NULL, 'ccac7823-4196-4a72-96a0-cc76319f7ba6'),
(199, 181, NULL, 72, 19, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:50:08', '2024-12-17 08:50:08', NULL, NULL, NULL, 'b5837098-9960-4e00-95ea-fc784722c469'),
(200, 194, NULL, 73, 20, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:50:08', '2024-12-17 08:50:08', NULL, NULL, NULL, '3b9d6dc7-d35c-4dc7-9867-6c8f67d45302'),
(201, 195, NULL, 74, 20, 'craft\\elements\\Entry', 1, 0, '2024-12-17 08:50:08', '2024-12-17 08:50:08', NULL, NULL, NULL, 'ac7506e5-c2b0-44ba-898a-ebd22fceff69'),
(206, NULL, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:08:54', '2024-12-19 04:45:38', NULL, NULL, NULL, '1d53b2b1-b680-4a42-be87-3ec70a654cbe'),
(207, NULL, NULL, NULL, 21, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:08:54', '2024-12-17 09:08:54', NULL, '2024-12-19 04:50:31', NULL, '9ab8c884-dc66-47ac-88eb-5cf61818cd0f'),
(208, NULL, NULL, NULL, 21, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:08:54', '2024-12-17 09:08:54', NULL, '2024-12-19 04:50:31', NULL, 'c8264897-58ff-401e-b1f7-3468e02ca812'),
(209, 86, NULL, 75, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:08:54', '2024-12-17 09:08:54', NULL, NULL, NULL, '0e10915e-fc9a-4ddc-bfce-3db8287999e0'),
(210, 206, NULL, 76, 22, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:08:54', '2024-12-17 09:08:54', NULL, NULL, NULL, 'b826b87d-ee86-4a32-9851-8891d44d5348'),
(211, 207, NULL, 77, 21, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:08:54', '2024-12-17 09:08:54', NULL, NULL, NULL, '9bb557c1-6a09-4936-a474-00c36496a544'),
(212, 208, NULL, 78, 21, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:08:54', '2024-12-17 09:08:54', NULL, NULL, NULL, 'ef95029a-a31f-4422-88f0-0aa54b5e161e'),
(214, 86, NULL, 79, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:21:56', '2024-12-17 09:21:56', NULL, NULL, NULL, '7805ad33-c9b6-4dee-8e31-aae5972263f5'),
(216, 86, NULL, 80, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-17 09:22:15', '2024-12-17 09:22:15', NULL, NULL, NULL, '42506053-eb1b-4b40-bfc9-db09ddeb111d'),
(217, 86, NULL, 81, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:45:38', '2024-12-19 04:45:38', NULL, NULL, NULL, 'ad107ffb-a060-4a06-ab9e-2e4b3afeaf02'),
(218, 206, NULL, 82, 22, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:45:38', '2024-12-19 04:45:39', NULL, NULL, NULL, '2098a113-cfb3-4cd0-b4d8-5c72fe73df38'),
(219, NULL, NULL, NULL, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:49:26', '2024-12-20 02:43:30', NULL, NULL, NULL, 'a6be7695-f9e3-4cc4-8c76-f067a3413da1'),
(220, 219, NULL, 83, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:49:26', '2024-12-19 04:49:26', NULL, NULL, NULL, 'c497e62d-bd4d-42b9-a8e6-2ddf90491a4e'),
(224, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 04:53:57', '2024-12-19 04:53:57', NULL, NULL, NULL, '6513db78-5a40-46fd-a86a-a885c00b1c62'),
(238, NULL, NULL, NULL, 11, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:38', '2024-12-19 08:04:31', NULL, '2024-12-19 08:04:31', NULL, '8e14dda0-b4fb-41ad-a595-fcf4ee2fbbe4'),
(239, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:38', '2024-12-19 08:04:31', NULL, '2024-12-19 08:04:31', 1, '316a0862-d026-4947-82ea-8a9b95352696'),
(240, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 08:04:31', NULL, '2024-12-19 08:04:31', 1, 'f0ca40d5-7ab5-4c5b-b01f-9077a6f950ba'),
(241, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 08:04:31', NULL, '2024-12-19 08:04:31', 1, '1380eed8-9812-46dd-a73b-87f6cf405697'),
(242, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 08:04:31', NULL, '2024-12-19 08:04:31', 1, '8793e83e-85c5-42c3-a099-cc06886748ae'),
(243, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 08:04:31', NULL, '2024-12-19 08:04:31', 1, 'b8aa5090-00d3-43d0-875f-0e74c6c610b4'),
(244, 219, NULL, 84, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:38', '2024-12-19 04:58:39', NULL, NULL, NULL, '9cfdaf9e-cb06-4d60-9bd0-be3e7f716fd7'),
(245, 238, NULL, 85, 11, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:38', '2024-12-19 04:58:39', NULL, '2024-12-19 08:04:31', NULL, '7d977d37-a893-440f-ac2d-11b6328f268c'),
(246, 239, NULL, 86, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:38', '2024-12-19 04:58:39', NULL, '2024-12-19 08:04:31', NULL, 'b62abdee-7863-4e6e-90cf-b0cc16b64e05'),
(247, 240, NULL, 87, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39', NULL, '2024-12-19 08:04:31', NULL, 'd6fe4eb3-ce67-41a6-b0a5-44ac7b85d45d'),
(248, 241, NULL, 88, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39', NULL, '2024-12-19 08:04:31', NULL, '8481595a-be8f-4a0d-99df-39f2f1b6505a'),
(249, 242, NULL, 89, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39', NULL, '2024-12-19 08:04:31', NULL, '9be86a67-0706-4462-8d6e-e93d312d8da1'),
(250, 243, NULL, 90, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39', NULL, '2024-12-19 08:04:31', NULL, '9c2792a4-e0a4-49ca-ba78-6dfefe4b3831'),
(251, NULL, NULL, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:33:31', '2024-12-19 06:35:07', NULL, '2024-12-19 06:52:50', NULL, 'a0f46745-6a31-4a46-a4f7-8ca38cc7558e'),
(252, NULL, NULL, NULL, 19, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:33:39', '2024-12-19 06:35:07', NULL, NULL, NULL, '7cd422db-3d49-414d-8fd6-e5dc893893ad'),
(253, NULL, 99, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:34:05', '2024-12-19 06:34:05', NULL, '2024-12-19 06:52:54', NULL, '7cf394c0-b034-4e58-bd2e-e045fa07736f'),
(254, NULL, NULL, NULL, 20, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:34:36', '2024-12-19 06:35:00', NULL, '2024-12-19 08:21:33', NULL, 'b212747d-c77e-4207-b819-03ac3c65b24c'),
(255, 251, NULL, 91, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:35:07', '2024-12-19 06:35:07', NULL, NULL, NULL, '7574e834-3a8e-4c99-a386-94084029443c'),
(256, 252, NULL, 92, 19, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:35:07', '2024-12-19 06:35:07', NULL, NULL, NULL, '20533e6e-d8b0-43e7-850a-fd24d4478952'),
(257, 254, NULL, 93, 20, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:35:00', '2024-12-19 06:35:08', NULL, NULL, NULL, 'b2814cfd-92c3-48fa-a5ab-f32d469e16e1'),
(258, NULL, 101, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:37:45', '2024-12-19 06:37:45', NULL, '2024-12-19 06:52:54', NULL, 'b8ed44fb-d8c4-4c2c-ab23-bcd52de272cd'),
(259, NULL, 102, NULL, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 06:37:57', '2024-12-19 06:37:57', NULL, '2024-12-19 06:52:54', NULL, '1aadc9b7-71ee-4a43-b64a-ad7ab7cb4de7'),
(260, NULL, 103, NULL, 24, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:04:04', '2024-12-19 07:04:04', NULL, NULL, NULL, '10cbf828-2770-449f-85cf-4c377cef3ac8'),
(261, NULL, NULL, NULL, 24, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:04:40', '2024-12-19 07:05:50', NULL, NULL, NULL, '279374a5-f74e-4ce8-af7b-af1485ba1b74'),
(262, NULL, 105, NULL, 24, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:04:46', '2024-12-19 07:04:46', NULL, NULL, NULL, '60b21810-3bbb-49e5-b541-0ce9806bd5a3'),
(263, 261, NULL, 94, 24, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:05:50', '2024-12-19 07:05:50', NULL, NULL, NULL, '3a992a07-62e5-40de-9eff-48e34954cb48'),
(264, NULL, NULL, NULL, 24, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:06:57', '2024-12-19 07:07:31', NULL, NULL, NULL, 'fe7ea2cd-0982-4fd5-83ef-e69b577bff13'),
(265, 264, NULL, 95, 24, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:07:31', '2024-12-19 07:07:31', NULL, NULL, NULL, '855200ac-640f-4497-8c74-28e96818ea78'),
(266, NULL, NULL, NULL, 25, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:35:23', '2024-12-19 07:37:48', NULL, NULL, NULL, 'eacd2d4f-c32b-4aba-aa1b-9b0fa9b2971a'),
(267, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:35:51', '2024-12-19 07:35:51', NULL, NULL, NULL, 'c7eecd5d-d42c-4969-8157-c1300845f415'),
(268, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:35:52', '2024-12-19 07:35:52', NULL, NULL, NULL, 'ac84ea36-5e0f-4d9e-a89f-3d68f4b875be'),
(269, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:35:54', '2024-12-19 07:35:54', NULL, NULL, NULL, '741ce504-78eb-44ec-afb8-4dee56622e29'),
(270, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:35:55', '2024-12-19 07:35:55', NULL, NULL, NULL, '5d9a90cd-6b64-47a0-a179-e56ce9282321'),
(271, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:35:57', '2024-12-19 07:35:57', NULL, NULL, NULL, '629091e8-a820-46dc-b213-e3adb45626da'),
(272, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:35:58', '2024-12-19 07:35:58', NULL, NULL, NULL, 'd6e6589d-1927-4213-88c9-f81608c5dc8d'),
(273, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:35:59', '2024-12-19 07:35:59', NULL, NULL, NULL, '0e363780-b70c-43d7-8295-c2e49769e397'),
(274, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:36:01', '2024-12-19 07:36:01', NULL, NULL, NULL, 'e8c7eebd-69e0-4ff3-b697-152f1ebcb372'),
(275, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:36:03', '2024-12-19 07:36:03', NULL, NULL, NULL, 'b12fa22e-1612-416a-bc53-763879540e91'),
(276, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:36:04', '2024-12-19 07:36:04', NULL, NULL, NULL, '96d89529-cadd-4f2c-9119-faa635296be6'),
(277, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:36:06', '2024-12-19 07:36:06', NULL, NULL, NULL, '733dbcd4-a628-4e66-9ff0-ee57443ea71c'),
(278, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:36:07', '2024-12-19 07:36:07', NULL, NULL, NULL, '91b59692-9c90-4313-9f24-e6e1a477f1f1'),
(279, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:36:09', '2024-12-19 07:36:09', NULL, NULL, NULL, 'be39beef-b05f-4800-ba27-b1bec82182fe'),
(280, 266, NULL, 96, 25, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:36:41', '2024-12-19 07:36:41', NULL, NULL, NULL, '68352080-2e9c-42a1-8c4d-7bcc4cd47b91'),
(282, 266, NULL, 97, 25, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:37:48', '2024-12-19 07:37:48', NULL, NULL, NULL, '5f7c4569-b4ee-47ef-922a-e7f80468baed'),
(283, NULL, NULL, NULL, 25, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:38:03', '2024-12-19 07:39:07', NULL, NULL, NULL, 'f9155613-068f-4d99-85ab-85a8dd64df91'),
(284, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:38:35', '2024-12-19 07:38:35', NULL, NULL, NULL, '7ccf02d4-934d-40c6-a052-51760204e35c'),
(285, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:38:36', '2024-12-19 07:38:36', NULL, NULL, NULL, 'a3e4a3a0-a0fc-44fa-a9a1-ceb923b24818'),
(286, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:38:37', '2024-12-19 07:38:37', NULL, NULL, NULL, 'e5a67cbd-4c7a-46e5-9a3f-00dfc66596c0'),
(287, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:38:40', '2024-12-19 07:38:40', NULL, NULL, NULL, '70dd876e-3cac-4e1f-9127-f56a8ea15e1b'),
(288, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 07:38:41', '2024-12-19 07:38:41', NULL, NULL, NULL, '08f099cb-90f1-4786-8ac2-6185faaef172'),
(289, 283, NULL, 98, 25, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:39:07', '2024-12-19 07:39:08', NULL, NULL, NULL, 'b16b5650-ef37-4f5d-8eb0-39a84bd19486'),
(290, 86, NULL, 99, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:40:50', '2024-12-19 07:40:50', NULL, NULL, NULL, 'e8b46969-db8b-46fe-88cf-28dd68890e7a'),
(293, 86, NULL, 100, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:48:03', '2024-12-19 07:48:03', NULL, NULL, NULL, '512e022c-0042-4c60-9b54-7cc1a8ca47c7'),
(294, 181, NULL, 101, 19, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:48:03', '2024-12-19 07:48:03', NULL, NULL, NULL, '3c8f2994-c049-4fce-a13e-21a373ddb9e2'),
(297, 86, NULL, 102, 1, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:50:46', '2024-12-19 07:50:46', NULL, NULL, NULL, '7c281711-5c95-415c-b7ce-7a0ef7a71244'),
(298, 170, NULL, 103, 18, 'craft\\elements\\Entry', 1, 0, '2024-12-19 07:50:46', '2024-12-19 07:50:46', NULL, NULL, NULL, 'a586887c-7f10-4862-94c1-9487685a0de3'),
(304, NULL, NULL, NULL, 26, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:04:31', '2024-12-19 08:31:15', NULL, NULL, NULL, '75d4cf00-9338-43ce-bf06-e8026789d879'),
(305, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:04:31', '2024-12-19 08:04:31', NULL, NULL, NULL, '271342d3-f4ba-4ec6-af7c-c9412a950ab7'),
(306, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:04:31', '2024-12-19 08:04:31', NULL, NULL, NULL, '3b516fbb-9654-48b3-9668-db3c2751f059'),
(307, 219, NULL, 104, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:04:31', '2024-12-19 08:04:31', NULL, NULL, NULL, '9319fe44-c97e-419f-9fa1-1f1e46d76b64'),
(308, 304, NULL, 105, 26, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:04:31', '2024-12-19 08:04:31', NULL, NULL, NULL, '791ca62b-feb0-4b32-909d-3234b6da5fdd'),
(309, 305, NULL, 106, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:04:31', '2024-12-19 08:04:31', NULL, NULL, NULL, '41c15da7-55c6-40bd-a74f-bfc9c538e893'),
(310, 306, NULL, 107, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:04:31', '2024-12-19 08:04:31', NULL, NULL, NULL, 'aaae72f3-fe3a-454b-a179-4a7d67416edb'),
(314, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 08:21:57', '2024-12-19 08:21:57', NULL, NULL, NULL, '1184f5ec-5500-478d-a847-4790ca801ffd'),
(317, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 08:30:39', '2024-12-19 08:30:39', NULL, NULL, NULL, '7e0efd62-06f7-4ef5-bf40-6170e53218cd'),
(319, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, 'e66fd1d7-3e69-4080-88d4-6a71ffe603d7'),
(320, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, 'eb275bcf-6ee5-4360-8aa8-0262983450eb'),
(321, NULL, NULL, NULL, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, '772d4839-a525-4591-8bd1-503b3512359f'),
(322, NULL, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, '9ff3ab46-45ad-4d96-ae23-01af841625c8'),
(323, 219, NULL, 108, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, 'b8071f6a-0d13-4248-b62c-a84c2b5486f1'),
(324, 304, NULL, 109, 26, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, 'f3d81b2d-3c76-421f-ade1-4ac8412e9e89'),
(325, 319, NULL, 110, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, 'c91859f6-8784-46fc-8b16-d2060fee2a2d'),
(326, 320, NULL, 111, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, '62799b74-c5c6-4fc4-89de-8521fdc9cc6e'),
(327, 321, NULL, 112, 10, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, 'eb974467-d652-4240-ae90-c8d2bcd3c0fe'),
(328, 322, NULL, 113, 9, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:31:15', '2024-12-19 08:31:15', NULL, NULL, NULL, '2af37615-de12-4ca6-8e44-f5f251c5559b'),
(331, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-19 08:42:09', '2024-12-19 08:42:09', NULL, NULL, NULL, 'af1be775-41b8-4599-8aca-b115ae150655'),
(332, NULL, NULL, NULL, 27, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:43:13', '2024-12-19 08:43:13', NULL, NULL, NULL, '4b96f134-41c0-4ef6-82e4-f55371cae205'),
(333, 219, NULL, 114, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:43:13', '2024-12-19 08:43:13', NULL, NULL, NULL, '3921a52b-82aa-4f56-8745-a19b87177165'),
(334, 332, NULL, 115, 27, 'craft\\elements\\Entry', 1, 0, '2024-12-19 08:43:13', '2024-12-19 08:43:13', NULL, NULL, NULL, '3bd26426-7e93-42fa-9479-4e04d078ee88'),
(337, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 01:21:20', '2024-12-20 01:21:20', NULL, NULL, NULL, 'a1707b18-abe3-4770-ac95-d6ad5f3ef687'),
(338, NULL, NULL, NULL, 28, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:21:30', '2024-12-20 01:21:30', NULL, NULL, NULL, 'eafc380c-c7a7-45c9-835e-1a4a0df04b94'),
(339, 219, NULL, 116, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:21:30', '2024-12-20 01:21:30', NULL, NULL, NULL, '803619bf-5fdb-40a0-b7f8-6954d0d2c658'),
(340, 338, NULL, 117, 28, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:21:30', '2024-12-20 01:21:30', NULL, NULL, NULL, '64181f9c-fe69-4fbb-ac35-95a583ec3edd'),
(343, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 01:28:16', '2024-12-20 01:28:16', NULL, NULL, NULL, '3e246fb1-33a0-4029-b246-fda635d8b1e0'),
(344, NULL, NULL, NULL, 29, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:28:22', '2024-12-20 01:28:22', NULL, NULL, NULL, '7f981916-fc03-4cbc-8dd3-0beec2d805f7'),
(345, 219, NULL, 118, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:28:22', '2024-12-20 01:28:22', NULL, NULL, NULL, '5cedf251-652f-4a4c-ab26-5810eb5a04ac'),
(346, 344, NULL, 119, 29, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:28:22', '2024-12-20 01:28:22', NULL, NULL, NULL, '32e4b943-7054-4865-bdd3-f2f0e98f3212'),
(349, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 01:38:53', '2024-12-20 01:38:53', NULL, NULL, NULL, '7f5eafa1-a732-46e1-8dfa-b7f1d5bb17c5'),
(350, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 01:38:54', '2024-12-20 01:38:54', NULL, NULL, NULL, '24ddd23f-ac9e-4fd0-b0d9-62414dfc6eb9'),
(351, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 01:38:55', '2024-12-20 01:38:55', NULL, NULL, NULL, 'b9c6b79f-16d1-45b6-a77b-0ac3fd8e080a'),
(352, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 01:38:57', '2024-12-20 01:38:57', NULL, NULL, NULL, 'eb9fbf50-efd1-4ccb-a188-0c5d5e651576'),
(353, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 01:38:59', '2024-12-20 01:38:59', NULL, NULL, NULL, '78b8d384-0f61-49f9-badd-bdc3116ff70c'),
(354, NULL, NULL, NULL, 30, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:41:24', '2024-12-20 02:35:26', NULL, NULL, NULL, '4f00908c-a568-416e-9bd3-9fa06038bfe0'),
(355, 219, NULL, 120, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:41:24', '2024-12-20 01:41:24', NULL, NULL, NULL, '341e32de-93d3-4b4e-b2cb-9e6fc6a6b5c1'),
(356, 354, NULL, 121, 30, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:41:24', '2024-12-20 01:41:24', NULL, NULL, NULL, '741b2d40-8cab-494e-b6a3-8e9adc86f5ce'),
(359, 219, NULL, 122, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:42:16', '2024-12-20 01:42:17', NULL, NULL, NULL, 'ff15ef36-4256-4c4d-b4da-42ff18c51d0a'),
(360, 354, NULL, 123, 30, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:42:16', '2024-12-20 01:42:17', NULL, NULL, NULL, '177e8b33-2e09-4b15-bd36-cc188e770576'),
(363, 219, NULL, 124, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:57:11', '2024-12-20 01:57:11', NULL, NULL, NULL, 'c7f3c451-d6b2-4266-bfdf-557d9a825473'),
(364, 354, NULL, 125, 30, 'craft\\elements\\Entry', 1, 0, '2024-12-20 01:57:11', '2024-12-20 01:57:11', NULL, NULL, NULL, '033561b3-eac6-4925-bce4-fcd3a9288fb6'),
(367, 219, NULL, 126, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:35:26', '2024-12-20 02:35:26', NULL, NULL, NULL, 'db0acf82-f497-40fd-a3fa-cc50326de040'),
(368, 354, NULL, 127, 30, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:35:26', '2024-12-20 02:35:26', NULL, NULL, NULL, 'b50ac8ac-f31a-4429-8a8e-0a319bda59c2'),
(369, NULL, NULL, NULL, 31, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:38:54', '2024-12-20 02:40:13', NULL, NULL, NULL, 'bf8c2f5c-da5d-4e24-a0b8-1da27928c240'),
(370, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 02:39:15', '2024-12-20 02:39:15', NULL, NULL, NULL, '46c5d93c-354c-47c4-8c03-efbeea2d6dc5'),
(371, 369, NULL, 128, 31, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:39:33', '2024-12-20 02:39:33', NULL, NULL, NULL, '8cfe03a7-e7af-4315-b9c9-01d624536ba4'),
(373, 369, NULL, 129, 31, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:40:13', '2024-12-20 02:40:13', NULL, NULL, NULL, 'b8f9fd10-73f2-49e4-9a2f-6ac1e8d6f956'),
(374, NULL, NULL, NULL, 31, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:40:18', '2024-12-20 02:41:02', NULL, NULL, NULL, '187351ac-4bdb-4eca-b036-1026956aa6b0'),
(375, NULL, NULL, NULL, 2, 'craft\\elements\\Asset', 1, 0, '2024-12-20 02:40:59', '2024-12-20 02:40:59', NULL, NULL, NULL, 'b3da6da0-bfb6-433a-ab04-808522cf6a58'),
(376, 374, NULL, 130, 31, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:41:02', '2024-12-20 02:41:02', NULL, NULL, NULL, 'bcd270ec-c522-40c7-bb87-c4855497e01e'),
(379, NULL, NULL, NULL, 32, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:43:30', '2024-12-20 02:43:30', NULL, NULL, NULL, '79f004f3-dd8a-4c22-8ae1-7d3725340d89'),
(380, 219, NULL, 131, 23, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:43:30', '2024-12-20 02:43:30', NULL, NULL, NULL, 'daf2b85c-2599-4648-b71c-2c3ac2c2f0a4'),
(381, 379, NULL, 132, 32, 'craft\\elements\\Entry', 1, 0, '2024-12-20 02:43:30', '2024-12-20 02:43:30', NULL, NULL, NULL, '321ba94e-ae11-4f51-9510-6276bc20d745');

-- --------------------------------------------------------

--
-- Table structure for table `elements_bulkops`
--

CREATE TABLE `elements_bulkops` (
  `elementId` int NOT NULL,
  `key` char(10) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements_owners`
--

CREATE TABLE `elements_owners` (
  `elementId` int NOT NULL,
  `ownerId` int NOT NULL,
  `sortOrder` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elements_owners`
--

INSERT INTO `elements_owners` (`elementId`, `ownerId`, `sortOrder`) VALUES
(97, 86, 1),
(98, 86, 2),
(99, 86, 1),
(100, 86, 2),
(101, 86, 1),
(102, 101, 1),
(103, 101, 2),
(105, 104, 1),
(106, 104, 2),
(107, 104, 1),
(108, 104, 2),
(109, 104, 1),
(110, 109, 1),
(111, 109, 2),
(117, 116, 1),
(118, 116, 2),
(124, 86, 1),
(125, 124, 1),
(126, 124, 2),
(128, 127, 1),
(129, 128, 1),
(129, 154, 1),
(130, 128, 2),
(130, 154, 2),
(130, 183, 2),
(130, 197, 2),
(141, 140, 1),
(142, 141, 1),
(148, 86, 2),
(149, 148, 1),
(150, 148, 2),
(151, 148, 3),
(152, 148, 4),
(154, 153, 1),
(154, 161, 2),
(154, 163, 1),
(154, 164, 1),
(154, 165, 1),
(154, 173, 1),
(155, 153, 2),
(155, 161, 1),
(155, 163, 2),
(155, 164, 2),
(155, 165, 2),
(155, 173, 2),
(155, 182, 2),
(155, 196, 2),
(155, 209, 2),
(155, 214, 1),
(155, 216, 2),
(155, 217, 2),
(155, 290, 2),
(155, 293, 2),
(155, 297, 2),
(156, 155, 1),
(157, 155, 2),
(158, 155, 3),
(159, 155, 4),
(170, 86, 3),
(171, 170, 1),
(172, 170, 2),
(174, 173, 3),
(175, 174, 1),
(176, 174, 2),
(176, 185, 2),
(176, 298, 2),
(181, 86, 4),
(183, 182, 1),
(184, 183, 1),
(185, 182, 3),
(185, 196, 3),
(185, 209, 3),
(185, 214, 3),
(185, 216, 3),
(185, 217, 3),
(185, 290, 3),
(185, 293, 3),
(186, 185, 1),
(186, 298, 1),
(187, 182, 4),
(194, 181, 1),
(195, 181, 2),
(197, 196, 1),
(197, 209, 1),
(197, 214, 2),
(197, 216, 1),
(197, 217, 1),
(197, 290, 1),
(197, 293, 1),
(197, 297, 1),
(198, 197, 1),
(199, 196, 4),
(199, 209, 4),
(199, 214, 4),
(199, 216, 4),
(199, 217, 4),
(199, 290, 4),
(200, 199, 1),
(201, 199, 2),
(206, 86, 5),
(207, 206, 1),
(208, 206, 2),
(210, 209, 5),
(210, 214, 5),
(210, 216, 5),
(211, 210, 1),
(212, 210, 2),
(218, 217, 5),
(218, 290, 5),
(218, 293, 5),
(218, 297, 5),
(238, 219, 1),
(239, 238, 1),
(240, 238, 2),
(241, 238, 3),
(242, 238, 4),
(243, 238, 5),
(245, 244, 1),
(246, 245, 1),
(247, 245, 2),
(248, 245, 3),
(249, 245, 4),
(250, 245, 5),
(252, 251, 1),
(254, 252, 1),
(256, 255, 1),
(257, 256, 1),
(294, 293, 4),
(294, 297, 4),
(298, 297, 3),
(304, 219, 1),
(305, 304, 1),
(306, 304, 2),
(308, 307, 1),
(309, 308, 1),
(309, 324, 1),
(310, 308, 2),
(310, 324, 2),
(319, 304, 1),
(320, 304, 2),
(321, 304, 1),
(322, 304, 2),
(324, 323, 1),
(324, 333, 1),
(324, 339, 1),
(324, 345, 1),
(324, 355, 1),
(324, 359, 1),
(324, 363, 1),
(324, 367, 1),
(324, 380, 1),
(325, 324, 1),
(326, 324, 2),
(327, 324, 1),
(328, 324, 2),
(332, 219, 2),
(334, 333, 2),
(334, 339, 2),
(334, 345, 2),
(334, 355, 2),
(334, 359, 2),
(334, 363, 2),
(334, 367, 2),
(334, 380, 2),
(338, 219, 3),
(340, 339, 3),
(340, 345, 3),
(340, 355, 3),
(340, 359, 3),
(340, 363, 3),
(340, 367, 3),
(340, 380, 3),
(344, 219, 4),
(346, 345, 4),
(346, 355, 4),
(346, 359, 4),
(346, 363, 4),
(346, 367, 4),
(346, 380, 4),
(354, 219, 5),
(356, 355, 5),
(360, 359, 5),
(364, 363, 5),
(368, 367, 5),
(368, 380, 5),
(379, 219, 6),
(381, 380, 6);

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int NOT NULL,
  `elementId` int NOT NULL,
  `siteId` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `content` json DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, 1, '2024-12-13 08:59:52', '2024-12-13 08:59:52', '0fd7256c-6da6-4bd4-b503-6fa728f4969f'),
(9, 9, 1, '1', NULL, NULL, NULL, 1, '2024-12-14 01:37:17', '2024-12-14 01:37:17', '7dac4157-a51b-4d37-be86-8cf6c11692f3'),
(10, 10, 1, '2', NULL, NULL, NULL, 1, '2024-12-14 01:37:23', '2024-12-14 01:37:23', 'beef1b83-31e1-4c8c-a4b7-70d361f57d30'),
(11, 11, 1, '3', NULL, NULL, NULL, 1, '2024-12-14 01:37:27', '2024-12-14 01:37:27', 'e859595f-9ed1-4028-ac1b-e70c75a9bc46'),
(12, 12, 1, '4', NULL, NULL, NULL, 1, '2024-12-14 01:37:31', '2024-12-14 01:37:31', '672e0bb1-47ab-4c27-962a-7af9d3ac723b'),
(35, 35, 1, 'Image2', NULL, NULL, NULL, 1, '2024-12-14 03:43:48', '2024-12-14 03:43:48', 'ca0967eb-7ad4-4e4c-82a6-0ea316dddf4e'),
(41, 41, 1, NULL, NULL, NULL, '{\"3896c99f-fe0c-48d7-b817-5e0ed55f31ca\": [43], \"44691552-b492-4f28-9f85-07ecb88c515b\": [44], \"50d0ba1f-600c-4eaf-afa2-2eaa51dea9e3\": [43], \"758f497b-9d58-44e5-8d66-297b6c50c22e\": [44], \"a82c6208-a9ea-495c-9256-4de6623dba14\": [42], \"d7b712b2-fa28-4cc4-9b81-03da171bef44\": [42]}', 1, '2024-12-14 03:49:32', '2024-12-16 08:27:12', '76b619b3-1c84-4445-b7f5-535d7e7866dc'),
(42, 42, 1, 'New Logo2', NULL, NULL, NULL, 1, '2024-12-14 03:52:29', '2024-12-14 03:52:29', '10817035-92c9-4970-88cd-9eff929226c9'),
(43, 43, 1, 'New Logo2 putih', NULL, NULL, NULL, 1, '2024-12-14 04:10:33', '2024-12-14 04:10:33', 'e127d52f-fa55-41b1-950f-3cdcf2794fcb'),
(44, 44, 1, 'New Logo2 128', NULL, NULL, NULL, 1, '2024-12-14 04:17:00', '2024-12-14 04:17:00', 'b3d1f247-e336-4c99-a9c0-6474acdea711'),
(49, 49, 1, 'Dokterpost logo', NULL, NULL, NULL, 1, '2024-12-14 04:22:04', '2024-12-14 04:22:04', 'a8ffdebc-7731-4e05-bad4-55eb223a188d'),
(53, 53, 1, 'Doktercares logo', NULL, NULL, NULL, 1, '2024-12-14 04:23:11', '2024-12-14 04:23:11', 'ceed77c5-0e28-47d1-bfd6-06f9c4ae1e43'),
(86, 86, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-14 04:59:09', '2024-12-14 04:59:09', '7c2763dc-25be-4ac3-aad4-14090ccb9424'),
(87, 87, 1, 'Homepage', 'homepage', NULL, NULL, 1, '2024-12-14 04:59:09', '2024-12-14 04:59:09', 'b1e80d39-504d-4b9b-8ae7-b42840537726'),
(97, 97, 1, 'Empowering Innovation, Shaping the Future', 'empowering-innovation-shaping-the-future', NULL, '{\"6737f1a4-f207-4553-b409-3fd9eb93d704\": \"PT Multi Medika Mahadata adalah perusahaan IT yang sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia\"}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '9da78cf0-99b8-4c73-8c07-e33dfc565551'),
(98, 98, 1, 'Gambar', 'gambar', NULL, '{\"6e19aba0-1dab-475e-9c0b-8074ce367f51\": [9, 10, 11, 12]}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'e4f4c3e4-de50-4fc7-8bef-e7bcaa604286'),
(99, 99, 1, 'Wealthier Doctor Healthier .', 'wealthier-doctor-healthier', NULL, NULL, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '8877de3c-cd95-46f1-b5ff-1e650b23b74f'),
(100, 100, 1, 'Gambar', 'gambar', NULL, '{\"6e19aba0-1dab-475e-9c0b-8074ce367f51\": [35]}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '84588fdf-cd6a-4960-9581-d0e977d8aea9'),
(101, 101, 1, NULL, '__temp_nsqjcuisuuxfmdifhdhvubsubbcvnqfjqzeh', NULL, NULL, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '39c41e5b-a083-48c0-8e41-1def4acdb873'),
(102, 102, 1, 'DokterPost', 'dokterpost', NULL, '{\"70c989dc-eb52-4c0a-bd79-02777875bf64\": [49], \"ca9098a6-e7be-4e8e-8d9e-e6c48fe50e8e\": \"Dokterpost adalah layanan yang menyediakan seminar dan artikel berkualitas untuk membantu para profesional medis meningkatkan pengetahuan dan wawasan mereka di bidang kesehatan. Melalui seminar yang interaktif dan artikel yang informatif\"}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'f7f30aba-668e-434a-bc90-be346b015bda'),
(103, 103, 1, 'DokterCares', 'doktercares', NULL, '{\"70c989dc-eb52-4c0a-bd79-02777875bf64\": [53], \"ca9098a6-e7be-4e8e-8d9e-e6c48fe50e8e\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang dirancang khusus untuk mendukung pendidikan di bidang kesehatan, baik bagi mahasiswa maupun profesional medis. Melalui program belajar yang terstruktur\"}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'e5f5cf9a-ab84-4226-b803-a1e3c8f54b8e'),
(104, 104, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '5b6f72ce-0bbc-4cea-ac70-33316d374975'),
(105, 105, 1, 'Empowering Innovation, Shaping the Future', 'empowering-innovation-shaping-the-future', NULL, '{\"6737f1a4-f207-4553-b409-3fd9eb93d704\": \"PT Multi Medika Mahadata adalah perusahaan IT yang sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia\"}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '7970b2f9-b23e-4091-8e51-0818450e43fd'),
(106, 106, 1, 'Gambar', 'gambar', NULL, '{\"6e19aba0-1dab-475e-9c0b-8074ce367f51\": [9, 10, 11, 12]}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'ce4c83ca-bf46-499d-8f1b-7ecb2228afc1'),
(107, 107, 1, 'Wealthier Doctor Healthier .', 'wealthier-doctor-healthier', NULL, NULL, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '5e4b2104-a16a-409d-aaa5-d59261585035'),
(108, 108, 1, 'Gambar', 'gambar', NULL, '{\"6e19aba0-1dab-475e-9c0b-8074ce367f51\": [35]}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '6dd98e3a-68aa-4325-aa96-1a7a3ffb762f'),
(109, 109, 1, NULL, '__temp_nsqjcuisuuxfmdifhdhvubsubbcvnqfjqzeh', NULL, NULL, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '0b1636d3-76a0-4452-97c6-932c09a5d6d9'),
(110, 110, 1, 'DokterPost', 'dokterpost', NULL, '{\"70c989dc-eb52-4c0a-bd79-02777875bf64\": [49], \"ca9098a6-e7be-4e8e-8d9e-e6c48fe50e8e\": \"Dokterpost adalah layanan yang menyediakan seminar dan artikel berkualitas untuk membantu para profesional medis meningkatkan pengetahuan dan wawasan mereka di bidang kesehatan. Melalui seminar yang interaktif dan artikel yang informatif\"}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '02056040-76dd-4e5f-847a-b15529885d01'),
(111, 111, 1, 'DokterCares', 'doktercares', NULL, '{\"70c989dc-eb52-4c0a-bd79-02777875bf64\": [53], \"ca9098a6-e7be-4e8e-8d9e-e6c48fe50e8e\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang dirancang khusus untuk mendukung pendidikan di bidang kesehatan, baik bagi mahasiswa maupun profesional medis. Melalui program belajar yang terstruktur\"}', 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '01ea0dfe-ef89-4da3-a426-dcfb97e822a2'),
(112, 112, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-16 07:48:05', '2024-12-16 07:48:05', '01a25dca-3ed5-4dc6-8d9c-93b5c9f9d8e3'),
(115, 115, 1, NULL, '__temp_fcpcljynmezwcpnyaiuhpxkydzojldwvztwc', NULL, NULL, 1, '2024-12-16 07:49:37', '2024-12-16 07:49:37', '5ae5c573-098d-4a11-b520-b2a7df7b070c'),
(116, 116, 1, NULL, '__temp_enacsabxtnbzlaanniipfisogucdlpfiifkl', NULL, NULL, 1, '2024-12-16 07:50:18', '2024-12-16 07:51:15', '03513b67-7645-4662-b494-bf46ddadc0f1'),
(117, 117, 1, 'Empowering Innovation, Shaping the Future', 'empowering-innovation-shaping-the-future', NULL, '{\"6737f1a4-f207-4553-b409-3fd9eb93d704\": \"PT Multi Medika Mahadata adalah perusahaan IT yang sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia\"}', 1, '2024-12-16 07:50:22', '2024-12-16 07:50:36', 'fc2f432c-2999-4719-af0e-533297ca3984'),
(118, 118, 1, 'Gambar', 'gambar', NULL, '{\"6e19aba0-1dab-475e-9c0b-8074ce367f51\": [9, 10, 11, 12]}', 1, '2024-12-16 07:50:45', '2024-12-16 07:51:04', 'c17bd93d-c4d2-4f03-b6da-96f2d856505b'),
(119, 119, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-16 08:17:53', '2024-12-16 08:17:53', 'cdc0929b-54eb-4e5f-9a28-fb4ca96cd69b'),
(124, 124, 1, NULL, '', NULL, NULL, 1, '2024-12-16 08:20:46', '2024-12-17 08:33:06', '7a1ea26b-b93a-4797-84d6-181ca7fd348e'),
(125, 125, 1, '<h1 class=\"mb-4 text-4xl font-extrabold tracking-tight leading-none text-blue-700 md:text-5xl\">Empowering <span class=\"text-lime-700 dark:text-lime-500\">Innovation</span>, Shaping the Future </h1>', 'empowering-innovation-shaping-the-future', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"PT Multi Medika Mahadata adalah perusahaan IT yang sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia\"}', 1, '2024-12-16 08:20:46', '2024-12-17 08:44:46', 'f223a105-3343-4703-8f1c-aea893ef5777'),
(126, 126, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [9, 10, 11, 12]}', 1, '2024-12-16 08:20:46', '2024-12-16 08:20:46', '14751829-44fa-4de1-b120-fb8176c6c266'),
(127, 127, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-16 08:20:46', '2024-12-16 08:20:46', '570cece4-e9ae-478f-8f68-1637dcbf6270'),
(128, 128, 1, NULL, '__temp_sddrxphdhmmoegrhkyosrvrcupxuzyrqnozb', NULL, NULL, 1, '2024-12-16 08:20:46', '2024-12-16 08:20:46', '4058987f-a04b-4a74-b313-86be749cc6c4'),
(129, 129, 1, 'Empowering Innovation, Shaping the Future', 'empowering-innovation-shaping-the-future', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"PT Multi Medika Mahadata adalah perusahaan IT yang sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia\"}', 1, '2024-12-16 08:20:46', '2024-12-16 08:20:46', 'ca4d45a7-e795-45dd-9783-de3179ec7032'),
(130, 130, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [9, 10, 11, 12]}', 1, '2024-12-16 08:20:46', '2024-12-16 08:20:46', '24b6640a-8e58-420a-841e-fb6bf1d7f9b2'),
(134, 134, 1, NULL, '__temp_yuvepwrzwzlqwzxewsbflebsfgbcefctwnzv', NULL, '{\"21419ad2-c0e0-4f3e-a9f2-167fad91beab\": \"737\", \"65d33e87-86cc-4d27-abb8-ed4593fc6f57\": \"<i class=\'fa-solid fa-book-open-reader text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"858bcd34-7fcb-4a94-b831-eb401c6ef8a1\": \"Kelas\"}', 1, '2024-12-17 07:17:43', '2024-12-17 07:20:15', '6640b1dd-f4db-4cb6-8bf8-4379515bc7a9'),
(135, 135, 1, NULL, '__temp_rtjordbwkfgiavsddhszrxzqehuxzzezbkgk', NULL, '{\"21419ad2-c0e0-4f3e-a9f2-167fad91beab\": \"23,727\", \"65d33e87-86cc-4d27-abb8-ed4593fc6f57\": \"<i class=\'fa-solid fa-users text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"858bcd34-7fcb-4a94-b831-eb401c6ef8a1\": \"Dokter Tergabung\"}', 1, '2024-12-17 07:20:19', '2024-12-17 07:20:46', 'c24607b8-13da-4f98-80f2-b0e9ec8db555'),
(136, 136, 1, NULL, '__temp_uzbphzcoebssruatcsezlhkyqgfdezocfgii', NULL, '{\"21419ad2-c0e0-4f3e-a9f2-167fad91beab\": \"6,828\", \"65d33e87-86cc-4d27-abb8-ed4593fc6f57\": \"<i class=\'fa-solid fa-desktop text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"858bcd34-7fcb-4a94-b831-eb401c6ef8a1\": \"On Demand Webinar\"}', 1, '2024-12-17 07:20:56', '2024-12-17 07:21:13', 'abbb06ab-4482-4e26-be9e-b18bd871595e'),
(137, 137, 1, NULL, '__temp_ahawicdtkuhlarrszahtozsiwhmwpifoclbe', NULL, '{\"21419ad2-c0e0-4f3e-a9f2-167fad91beab\": \"415\", \"65d33e87-86cc-4d27-abb8-ed4593fc6f57\": \"<i class=\'fa-solid fa-user-doctor text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"858bcd34-7fcb-4a94-b831-eb401c6ef8a1\": \"Pemateri\"}', 1, '2024-12-17 07:21:17', '2024-12-17 07:21:41', 'bdd1ab9b-f5cf-46cf-97d4-50a0bfca185d'),
(140, 140, 1, NULL, '__temp_wcmaaxbmepceqnfuzkzavayoaurjjwihtruw', NULL, NULL, 1, '2024-12-17 07:30:16', '2024-12-17 07:30:18', 'a897a3ee-7d47-48c5-b966-f642cdb96f32'),
(141, 141, 1, NULL, '__temp_zmlojufrcmyecvglhwbmyvrxyjghulkbpjim', NULL, NULL, 1, '2024-12-17 07:30:19', '2024-12-17 07:30:24', '8f5f4c07-2a99-4b9a-a286-a8e3a58c6295'),
(142, 142, 1, NULL, '__temp_zvtuipynsmuqohexqijxibnvkjqqckyqmxbu', NULL, NULL, 1, '2024-12-17 07:30:25', '2024-12-17 07:30:25', '00774ac7-31bd-436d-946c-85ba8ac31fbb'),
(148, 148, 1, NULL, '__temp_yfvqoplcjyebyotxychchhuzcbbgdjsbzokd', NULL, NULL, 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '246a42bc-dea9-4119-af41-35fef4123f3a'),
(149, 149, 1, NULL, '__temp_yavyuaezgoiodlobwqlmtmwcdztcpjftxeyd', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-book-open-reader text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"Kelas\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"737\"}', 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', 'a530f2df-5da2-4911-a901-25d6dff8d158'),
(150, 150, 1, NULL, '__temp_oyxzazbebtlewaqmrrvnioalpeonyqvchwxu', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-users text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"Dokter Tergabung\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"23,727\"}', 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '3fb9ab1b-e59f-4a80-acd4-7e14977e2042'),
(151, 151, 1, NULL, '__temp_jwarwcytjjdnbruvthhrlwaczheyyougehqt', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-desktop text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"On Demand Webinar\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"6,828\"}', 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '0397c22a-5dec-437b-bf9c-eeb2f4f8aec6'),
(152, 152, 1, NULL, '__temp_xlnoerfzcassrilslviinjwcjiwaxrcrqyen', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-user-doctor text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"Pemateri\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"415\"}', 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', 'c58884a0-f378-4ba2-b7e4-84bedb34cc41'),
(153, 153, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '58c0d5f1-3ba0-4043-9d2b-0b4963792725'),
(154, 154, 1, NULL, '__temp_sddrxphdhmmoegrhkyosrvrcupxuzyrqnozb', NULL, NULL, 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '57626d9e-f4b9-4825-a407-c325f29ffe6f'),
(155, 155, 1, NULL, '__temp_yfvqoplcjyebyotxychchhuzcbbgdjsbzokd', NULL, NULL, 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', 'd6c942e0-d2e1-4ae3-9c90-1550626882dd'),
(156, 156, 1, NULL, '__temp_yavyuaezgoiodlobwqlmtmwcdztcpjftxeyd', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-book-open-reader text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"Kelas\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"737\"}', 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '9418ec85-dbdf-424c-9cea-f098b0cb5517'),
(157, 157, 1, NULL, '__temp_oyxzazbebtlewaqmrrvnioalpeonyqvchwxu', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-users text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"Dokter Tergabung\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"23,727\"}', 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '7bca2e22-3a1e-4abf-ac21-5c0ef3435337'),
(158, 158, 1, NULL, '__temp_jwarwcytjjdnbruvthhrlwaczheyyougehqt', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-desktop text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"On Demand Webinar\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"6,828\"}', 1, '2024-12-17 07:42:16', '2024-12-17 07:42:16', '4fd79bfa-1950-42e0-8811-27a0efe89af7'),
(159, 159, 1, NULL, '__temp_xlnoerfzcassrilslviinjwcjiwaxrcrqyen', NULL, '{\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\": \"<i class=\'fa-solid fa-user-doctor text-6xl text-blue-700 dark:text-blue-500\'></i>\", \"83520f31-746b-4d73-87ec-26eef4f17a80\": \"Pemateri\", \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\": \"415\"}', 1, '2024-12-17 07:42:17', '2024-12-17 07:42:17', 'f068929e-f380-42a4-9a08-ddae04d7114d'),
(161, 161, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 07:50:35', '2024-12-17 07:50:35', '1eac323b-5af6-4400-a7f6-cace55b74f49'),
(163, 163, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 07:50:54', '2024-12-17 07:50:54', '5fd480d4-6c7f-4a9c-8943-7e7d101db628'),
(164, 164, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 07:51:36', '2024-12-17 07:51:36', 'e25e196a-5c13-4c05-b8e2-29d553fc3eff'),
(165, 165, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 08:09:25', '2024-12-17 08:09:25', '410b5726-ebd8-4dfe-8cf1-3c2604ccc0c8'),
(170, 170, 1, NULL, '__temp_khbwgreabrxkgioprhkhctbyjdfglnmrespv', NULL, '{\"b97c3513-b430-4b12-8463-1a8e886b0ea6\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test/about\", \"target\": null}}', 1, '2024-12-17 08:18:20', '2024-12-19 07:50:46', 'ef34f6b8-7dac-4744-bc92-bf6ddf57c8de'),
(171, 171, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl mb-4\">Wealthier <span class=\"text-lime-700 dark:text-lime-500\">Doctor</span> Healthier . </p>', 'wealthier-doctor-healthier', NULL, NULL, 1, '2024-12-17 08:18:21', '2024-12-17 08:38:15', '185a244b-b26e-4f6d-bc69-9ef6ba8b2efa'),
(172, 172, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [35]}', 1, '2024-12-17 08:18:21', '2024-12-17 08:18:21', '9f4d870b-995c-4d83-b453-63301dc6860f'),
(173, 173, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 08:18:21', '2024-12-17 08:18:21', '0abaa554-556e-4e6d-9992-5ebb94dc098e'),
(174, 174, 1, NULL, '__temp_hjfwvaivimvwgsqajezwgyxksqsqevizvbbs', NULL, NULL, 1, '2024-12-17 08:18:21', '2024-12-17 08:18:21', '6b5cfe84-6206-4db0-ae4c-63ecc766e337'),
(175, 175, 1, 'Wealthier Doctor Healthier .', 'wealthier-doctor-healthier', NULL, NULL, 1, '2024-12-17 08:18:21', '2024-12-17 08:18:21', 'd4da0622-293f-4327-9031-1a5de371c930'),
(176, 176, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [35]}', 1, '2024-12-17 08:18:21', '2024-12-17 08:18:21', '13898200-0eb2-4821-b9d5-698759fd45d7'),
(181, 181, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl mb-8\"><span class=\"text-lime-700 dark:text-lime-500\">Product in</span><br> Multimedika Maha Data</p>', 'empowering-innovation-shaping', NULL, '{\"4a503d03-1bc4-4761-b199-765407c909d1\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test/product\", \"target\": null}}', 1, '2024-12-17 08:38:57', '2024-12-19 07:48:03', 'e07a0bab-1a41-4bcc-889e-eb586ebd5263'),
(182, 182, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 08:38:57', '2024-12-17 08:38:57', '36b052fe-197b-4be2-9621-6bb40f506c0b'),
(183, 183, 1, NULL, NULL, NULL, NULL, 1, '2024-12-17 08:38:57', '2024-12-17 08:38:57', 'd6fe483f-c5de-4585-bd35-26020f1b66b0'),
(184, 184, 1, '<h1 class=\"mb-4 text-4xl font-extrabold tracking-tight leading-none text-blue-700 dark:text-blue-500 md:text-5xl dark:text-white\">Empowering <span class=\"text-lime-700 dark:text-lime-500\">Innovation</span>, Shaping', 'empowering-innovation-shaping-the-future', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"PT Multi Medika Mahadata adalah perusahaan IT yang sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia\"}', 1, '2024-12-17 08:38:57', '2024-12-17 08:38:57', 'add34eaa-b6a9-4234-8f78-350763bbd5b0'),
(185, 185, 1, NULL, NULL, NULL, NULL, 1, '2024-12-17 08:38:57', '2024-12-17 08:38:57', 'e6bce8a7-c9dc-46b5-ac84-06d053f41dfa'),
(186, 186, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl mb-4\">Wealthier <span class=\"text-lime-700 dark:text-lime-500\">Doctor</span> Healthier . </p>', 'wealthier-doctor-healthier', NULL, NULL, 1, '2024-12-17 08:38:57', '2024-12-17 08:38:57', 'b7aa3bc6-35bb-4e55-81cb-49964ec71b69'),
(187, 187, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl mb-8\"><span class=\"text-lime-700 dark:text-lime-500\">Product in</span><br> Multimedika Maha Data</p>', 'empowering-innovation-shaping', NULL, NULL, 1, '2024-12-17 08:38:57', '2024-12-17 08:38:57', 'b2d96f9e-57bf-4def-86e3-e49becf19a69'),
(194, 194, 1, 'Dokter Post', 'dokter-post', NULL, '{\"7968b039-e213-4d8f-bf99-63a2e4edf545\": [49], \"85e7f211-7495-4a72-a4d9-d9869f6099d1\": \"Dokterpost adalah layanan yang menyediakan seminar dan artikel berkualitas untuk membantu para profesional medis meningkatkan pengetahuan dan wawasan mereka di bidang kesehatan. Melalui seminar yang interaktif dan artikel yang informatif\"}', 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', 'dfe4a031-97f3-458b-a621-27bfa9aab52f'),
(195, 195, 1, 'Dokter Cares', 'dokter-cares', NULL, '{\"7968b039-e213-4d8f-bf99-63a2e4edf545\": [53], \"85e7f211-7495-4a72-a4d9-d9869f6099d1\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang dirancang khusus untuk mendukung pendidikan di bidang kesehatan, baik bagi mahasiswa maupun profesional medis. Melalui program belajar yang terstruktur\"}', 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', '6a9da04e-0945-4dd1-9b57-70e8bc9b99b0'),
(196, 196, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', 'f486fb4f-03af-41eb-aa6c-403e8152f5e4'),
(197, 197, 1, NULL, NULL, NULL, NULL, 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', '7263cb26-8276-4f43-aef0-c8fdfb3dbaeb'),
(198, 198, 1, '<h1 class=\"mb-4 text-4xl font-extrabold tracking-tight leading-none text-blue-700 md:text-5xl\">Empowering <span class=\"text-lime-700 dark:text-lime-500\">Innovation</span>, Shaping the Future </h1>', 'empowering-innovation-shaping-the-future', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"PT Multi Medika Mahadata adalah perusahaan IT yang sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia\"}', 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', 'eb05f433-201d-4c8a-8557-d20584332b6a'),
(199, 199, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl mb-8\"><span class=\"text-lime-700 dark:text-lime-500\">Product in</span><br> Multimedika Maha Data</p>', 'empowering-innovation-shaping', NULL, NULL, 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', 'b0719f42-771d-4c32-8000-1fcd724239c6'),
(200, 200, 1, 'Dokter Post', 'dokter-post', NULL, '{\"7968b039-e213-4d8f-bf99-63a2e4edf545\": [49], \"85e7f211-7495-4a72-a4d9-d9869f6099d1\": \"Dokterpost adalah layanan yang menyediakan seminar dan artikel berkualitas untuk membantu para profesional medis meningkatkan pengetahuan dan wawasan mereka di bidang kesehatan. Melalui seminar yang interaktif dan artikel yang informatif\"}', 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', '90ff5f4d-534c-477e-a324-2a2bf6e4238f'),
(201, 201, 1, 'Dokter Cares', 'dokter-cares', NULL, '{\"7968b039-e213-4d8f-bf99-63a2e4edf545\": [53], \"85e7f211-7495-4a72-a4d9-d9869f6099d1\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang dirancang khusus untuk mendukung pendidikan di bidang kesehatan, baik bagi mahasiswa maupun profesional medis. Melalui program belajar yang terstruktur\"}', 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', '89593afe-2818-413d-a589-d27c44267467'),
(206, 206, 1, 'Contact us', 'contact-us', NULL, NULL, 1, '2024-12-17 09:08:54', '2024-12-19 04:45:38', 'af79a93a-6ad7-406e-853e-339bbf73725d'),
(207, 207, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl\">Contact <span class=\"text-lime-700 dark:text-lime-500\">us</span></p>', 'contact-us', NULL, NULL, 1, '2024-12-17 09:08:54', '2024-12-17 09:08:54', 'edbb4902-ba00-4df6-9eec-e64e9e9d11ce'),
(208, 208, 1, 'Contact', 'contact', NULL, '{\"4e0b816a-2ad1-47e3-8571-652bd43c2ce7\": \"admin@multimedika.id\", \"6fb0b57b-5a02-4e90-809d-81ffcbf7bb67\": \"Admin\", \"77a411cb-9ef5-4f15-9fde-1d87c134336e\": \"For more info and support, please contact our admin office.\", \"dec364b5-9d76-4063-b05b-9a93133a398b\": \"+62 819131633594\"}', 1, '2024-12-17 09:08:54', '2024-12-17 09:08:54', '831b831a-60b9-4b1a-9e66-5c41f2301a21'),
(209, 209, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 09:08:54', '2024-12-17 09:08:54', 'ff6fa157-70c7-4196-a79e-40f2df247827'),
(210, 210, 1, NULL, NULL, NULL, NULL, 1, '2024-12-17 09:08:54', '2024-12-17 09:08:54', 'e8645d45-85bd-4cf8-9296-9ffb269e3663'),
(211, 211, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl\">Contact <span class=\"text-lime-700 dark:text-lime-500\">us</span></p>', 'contact-us', NULL, NULL, 1, '2024-12-17 09:08:54', '2024-12-17 09:08:54', '2787d071-258c-4d84-be2f-13e3e6617a1c'),
(212, 212, 1, 'Contact', 'contact', NULL, '{\"4e0b816a-2ad1-47e3-8571-652bd43c2ce7\": \"admin@multimedika.id\", \"6fb0b57b-5a02-4e90-809d-81ffcbf7bb67\": \"Admin\", \"77a411cb-9ef5-4f15-9fde-1d87c134336e\": \"For more info and support, please contact our admin office.\", \"dec364b5-9d76-4063-b05b-9a93133a398b\": \"+62 819131633594\"}', 1, '2024-12-17 09:08:54', '2024-12-17 09:08:54', '81d7f1a3-92f6-46fc-8ab6-f08e39cbc040'),
(214, 214, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 09:21:56', '2024-12-17 09:21:56', '5e3c093e-624d-4c82-994f-7b017d8ec01f'),
(216, 216, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-17 09:22:15', '2024-12-17 09:22:15', '20eafa30-8247-41b4-9afe-8096b768d1ec'),
(217, 217, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-19 04:45:38', '2024-12-19 04:45:38', '302d73ae-1443-4ce4-9340-97012c71307c'),
(218, 218, 1, 'Contact us', 'contact-us', NULL, NULL, 1, '2024-12-19 04:45:39', '2024-12-19 04:45:39', '6b551f98-3fa7-4f08-a0da-7fdf0ac806b4'),
(219, 219, 1, 'About', 'about', 'about', NULL, 1, '2024-12-19 04:49:26', '2024-12-19 04:49:26', '4b83ddec-1e52-4e41-9c7f-0317cd47542a'),
(220, 220, 1, 'About', 'about', 'about', NULL, 1, '2024-12-19 04:49:26', '2024-12-19 04:49:26', '280f31aa-8d3f-43a4-843c-34cc3cbbbee5'),
(224, 224, 1, 'About1', NULL, NULL, NULL, 1, '2024-12-19 04:53:57', '2024-12-19 04:53:57', '2cee93e7-345f-40fb-9a9c-c0557466f961'),
(238, 238, 1, NULL, '__temp_hrxvqdnxzfteiilmdnmyhpqointzxfgpaqak', NULL, NULL, 1, '2024-12-19 04:58:38', '2024-12-19 04:58:38', 'a1621f5b-873c-46ea-ba00-963eb141aa8e'),
(239, 239, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [224]}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', 'f1d9e6e2-98b4-4fcc-b040-8bce04b5ff46'),
(240, 240, 1, 'Text1', 'text2', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"<h1 class=\\\"mb-4 text-2xl font-extrabold tracking-tight leading-none md:text-3xl text-blue-700\\\">About<br>Multi Medika Mahadata</h1>\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', 'b1668ef9-04e8-4910-9c9a-ab537c85bb40'),
(241, 241, 1, 'Text2', 'aboutmulti-medika-mahadata', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"PT Multi Medika Mahadata: Pemimpin Inovatif dalam Layanan E-Learning Medis di Indonesia\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '9b3aa617-c50f-4728-a800-2f6295157dca'),
(242, 242, 1, 'Text3', 'text3', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"Sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia, PT. Multi Medika Mahadata dibangun atas dasar komitmen tinggi untuk memenuhi dan mendukung aspirasi para dokter di negeri ini. Kami menapak sebagai institusi yang diperuntukkan bagi penyempurnaan keahlian dan pengetahuan medis, berambisi menyediakan platform edukasi yang terpercaya dan memimpin dalam bidang pengembangan profesionalisme kedokteran.\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '234b2fe4-0cec-4233-8505-40c7c1e39194'),
(243, 243, 1, 'Text4', 'text4', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"Visi kami terangkum dalam usaha kami menjadi institusi pendidikan medis informal paling progresif, dengan misi meluaskan kualitas perawatan kesehatan di tanah air melalui pendidikan yang berstandar internasional, inovatif dan berperspektif riset. Dalam perjalanan menuju visi ini, PT. Multi Medika Mahadata menghadirkan rangkaian program edukasi yang dihiasi dengan kecakapan komprehensif dan aktualitas tinggi, menjangkau dokter dari berbagai fase dalam perjalanan karier mereka mulai dari persiapan spesialisasi hingga pendidikan medis yang berkelanjutan.\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '2f02ece8-4acf-4b17-9253-42bd76d3be49'),
(244, 244, 1, 'About', 'about', 'about', NULL, 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '471095a7-ad5c-4c4b-95d7-18214e994ea8'),
(245, 245, 1, NULL, '__temp_hrxvqdnxzfteiilmdnmyhpqointzxfgpaqak', NULL, NULL, 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '1248c9a3-f43f-402e-aa17-5b7019a831e8'),
(246, 246, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [224]}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', 'b5adb0c2-4203-4cf2-88ca-4b12ed130eb6'),
(247, 247, 1, 'Text1', 'text2', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"<h1 class=\\\"mb-4 text-2xl font-extrabold tracking-tight leading-none md:text-3xl text-blue-700\\\">About<br>Multi Medika Mahadata</h1>\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '082bbea5-fbd6-47a6-b1a4-5462973616da'),
(248, 248, 1, 'Text2', 'aboutmulti-medika-mahadata', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"PT Multi Medika Mahadata: Pemimpin Inovatif dalam Layanan E-Learning Medis di Indonesia\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '6c39d762-5922-4961-92c3-4847e13c3467'),
(249, 249, 1, 'Text3', 'text3', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"Sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia, PT. Multi Medika Mahadata dibangun atas dasar komitmen tinggi untuk memenuhi dan mendukung aspirasi para dokter di negeri ini. Kami menapak sebagai institusi yang diperuntukkan bagi penyempurnaan keahlian dan pengetahuan medis, berambisi menyediakan platform edukasi yang terpercaya dan memimpin dalam bidang pengembangan profesionalisme kedokteran.\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '18f68b2b-860b-42a3-adb2-6f7f8b3a0f3f'),
(250, 250, 1, 'Text4', 'text4', NULL, '{\"eda43917-e552-4c57-a892-69aef5cab36b\": \"Visi kami terangkum dalam usaha kami menjadi institusi pendidikan medis informal paling progresif, dengan misi meluaskan kualitas perawatan kesehatan di tanah air melalui pendidikan yang berstandar internasional, inovatif dan berperspektif riset. Dalam perjalanan menuju visi ini, PT. Multi Medika Mahadata menghadirkan rangkaian program edukasi yang dihiasi dengan kecakapan komprehensif dan aktualitas tinggi, menjangkau dokter dari berbagai fase dalam perjalanan karier mereka mulai dari persiapan spesialisasi hingga pendidikan medis yang berkelanjutan.\"}', 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', 'a1c16fcf-9b3d-43f6-8d46-adf939d5a1f4'),
(251, 251, 1, 'Product', 'product', 'product/product', NULL, 1, '2024-12-19 06:33:31', '2024-12-19 06:34:28', 'cdf73e07-e35d-4604-87f3-856635cfc1ef'),
(252, 252, 1, 'Product', 'product', NULL, NULL, 1, '2024-12-19 06:33:39', '2024-12-19 06:34:34', '3329f0f0-8c0b-4229-90b7-fd322fe26dac'),
(253, 253, 1, NULL, '__temp_vynwfcfosmjqpufycvlcraxjqybemushsgel', 'people/__temp_vynwfcfosmjqpufycvlcraxjqybemushsgel', NULL, 1, '2024-12-19 06:34:05', '2024-12-19 06:34:05', '6b315eec-851d-472f-9564-de5d24025536'),
(254, 254, 1, 'Doktercares', 'doktercares', NULL, '{\"7968b039-e213-4d8f-bf99-63a2e4edf545\": [53], \"85e7f211-7495-4a72-a4d9-d9869f6099d1\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang dirancang khusus untuk mendukung pendidikan di bidang kesehatan, baik bagi mahasiswa maupun profesional medis. Melalui program belajar yang terstruktur\"}', 1, '2024-12-19 06:34:36', '2024-12-19 06:34:59', 'bdf5bdd1-965a-4e69-85a3-d6f490fe8b28'),
(255, 255, 1, 'Product', 'product', 'product/product', NULL, 1, '2024-12-19 06:35:07', '2024-12-19 06:35:07', '13bb0d03-61be-4872-8df7-236f00337635'),
(256, 256, 1, 'Product', 'product', NULL, NULL, 1, '2024-12-19 06:35:07', '2024-12-19 06:35:07', '61747920-706e-4003-b3f6-ef7be571834c'),
(257, 257, 1, 'Doktercares', 'doktercares', NULL, '{\"7968b039-e213-4d8f-bf99-63a2e4edf545\": [53], \"85e7f211-7495-4a72-a4d9-d9869f6099d1\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang dirancang khusus untuk mendukung pendidikan di bidang kesehatan, baik bagi mahasiswa maupun profesional medis. Melalui program belajar yang terstruktur\"}', 1, '2024-12-19 06:35:08', '2024-12-19 06:35:08', '7fe960ec-5a2a-4e15-ab0c-cb96a9194f76'),
(258, 258, 1, NULL, '__temp_xynzfjkhnqlxuivzdhtjvgfwyjdhszpavdbo', 'people/__temp_xynzfjkhnqlxuivzdhtjvgfwyjdhszpavdbo', NULL, 1, '2024-12-19 06:37:45', '2024-12-19 06:37:45', '44f84fba-467d-49b3-92c7-7ffdb961dd9f'),
(259, 259, 1, NULL, '__temp_kgpzcsxvwvsjcvipxbahbmlmasmcxtbpqgmj', 'people/__temp_kgpzcsxvwvsjcvipxbahbmlmasmcxtbpqgmj', NULL, 1, '2024-12-19 06:37:57', '2024-12-19 06:37:57', 'e5046b7d-a26e-4304-af28-9c121ccdceea'),
(260, 260, 1, NULL, '__temp_zhrbcxhfkiobpikadrjzalkneyttztyxtbby', NULL, NULL, 1, '2024-12-19 07:04:04', '2024-12-19 07:04:04', 'fa3854f8-5e4b-4de1-a222-aac6d41dcee9'),
(261, 261, 1, 'Home', 'home', NULL, '{\"3312be43-8e24-47f8-8a22-5f3aec4df2e4\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test\", \"target\": null}}', 1, '2024-12-19 07:04:40', '2024-12-19 07:05:47', 'd62f1c18-3ff3-4477-ac4f-395c08fc31c7'),
(262, 262, 1, NULL, '__temp_siivmpnrxvkfdtsrpzlxovayuuhmfhptgczo', NULL, NULL, 1, '2024-12-19 07:04:46', '2024-12-19 07:04:46', '6ba59038-f20c-4fe3-9d2d-47bcdbded72a'),
(263, 263, 1, 'Home', 'home', NULL, '{\"3312be43-8e24-47f8-8a22-5f3aec4df2e4\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test\", \"target\": null}}', 1, '2024-12-19 07:05:50', '2024-12-19 07:05:50', 'e658c964-54bb-4542-b0e6-f51506eb0949'),
(264, 264, 1, 'About', 'about', NULL, '{\"3312be43-8e24-47f8-8a22-5f3aec4df2e4\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test/about\", \"target\": null}}', 1, '2024-12-19 07:06:57', '2024-12-19 07:18:17', '785c4e3a-b76b-4ffd-abfb-a88a46050c0d'),
(265, 265, 1, 'About', 'about', NULL, '{\"3312be43-8e24-47f8-8a22-5f3aec4df2e4\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test/about\", \"target\": null}}', 1, '2024-12-19 07:07:31', '2024-12-19 07:07:31', '82a554c1-f896-4a54-a6c9-b58d7d2fb973'),
(266, 266, 1, 'DokterCares', 'doktercares', 'product', '{\"1586bb87-afba-4f1a-a365-c067e48c3b07\": {\"type\": \"url\", \"label\": null, \"value\": \"https://doktercares.com\", \"target\": null}, \"43e95259-5a39-43ff-8097-a1297da17eb5\": [53], \"910f26dd-3204-470a-b4d6-9c9a6bf8e293\": [267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279], \"accde8e3-c0a6-4e21-a71b-ad87ec07755e\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang mendukung pendidikan di bidang kesehatan untuk mahasiswa dan profesional medis. Dengan program terstruktur dan materi pembelajaran relevan, Doktercares mencakup teori dasar hingga kasus klinis terkini, serta menyediakan pengajaran interaktif dan bimbingan ahli untuk membantu peserta memperdalam pemahaman dan menghadapi tantangan medis.\"}', 1, '2024-12-19 07:35:23', '2024-12-19 07:39:51', 'a493ad50-b9b4-45c1-abba-5caa01b9c4b2'),
(267, 267, 1, '1', NULL, NULL, NULL, 1, '2024-12-19 07:35:51', '2024-12-19 07:35:51', 'a64b9fd2-ef5d-4a8f-8468-38d4b9f4cdc7'),
(268, 268, 1, '2', NULL, NULL, NULL, 1, '2024-12-19 07:35:52', '2024-12-19 07:35:52', '2380e608-1ce3-470d-9cc0-713a8b4d6068'),
(269, 269, 1, '3', NULL, NULL, NULL, 1, '2024-12-19 07:35:54', '2024-12-19 07:35:54', '377bdf70-182f-4fb2-81b9-87da5dd9ae35'),
(270, 270, 1, '4', NULL, NULL, NULL, 1, '2024-12-19 07:35:55', '2024-12-19 07:35:55', '0fc9e314-176c-4ab9-a8ee-4638998e9129'),
(271, 271, 1, '5', NULL, NULL, NULL, 1, '2024-12-19 07:35:57', '2024-12-19 07:35:57', '60745336-7f03-440e-a5d8-4f69d3e9c553'),
(272, 272, 1, '6', NULL, NULL, NULL, 1, '2024-12-19 07:35:58', '2024-12-19 07:35:58', 'f87dd9ac-f186-4234-87d5-10a69c2c8c41'),
(273, 273, 1, '7', NULL, NULL, NULL, 1, '2024-12-19 07:35:59', '2024-12-19 07:35:59', '7c7d31ab-0e9b-4245-afde-31fdfc14138b'),
(274, 274, 1, '8', NULL, NULL, NULL, 1, '2024-12-19 07:36:01', '2024-12-19 07:36:01', '06c4d86b-0635-4d1c-a47b-11f8e88e077a'),
(275, 275, 1, '9', NULL, NULL, NULL, 1, '2024-12-19 07:36:03', '2024-12-19 07:36:03', '3527b137-c029-4de4-a873-c5c591b79981'),
(276, 276, 1, '10', NULL, NULL, NULL, 1, '2024-12-19 07:36:04', '2024-12-19 07:36:04', 'cfb19657-3a0a-4d66-b2ab-159b7ac54342'),
(277, 277, 1, '11', NULL, NULL, NULL, 1, '2024-12-19 07:36:06', '2024-12-19 07:36:06', '5d8f284d-4bc4-4791-a300-679886cad38e'),
(278, 278, 1, '12', NULL, NULL, NULL, 1, '2024-12-19 07:36:07', '2024-12-19 07:36:07', '49963f69-1c11-4f35-973b-01360eb4c6b2'),
(279, 279, 1, '13', NULL, NULL, NULL, 1, '2024-12-19 07:36:09', '2024-12-19 07:36:09', 'd9866260-af73-4949-af25-f58185e22cad'),
(280, 280, 1, 'DokterCares', 'doktercares', 'product/doktercares', '{\"43e95259-5a39-43ff-8097-a1297da17eb5\": [53], \"910f26dd-3204-470a-b4d6-9c9a6bf8e293\": [267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279], \"accde8e3-c0a6-4e21-a71b-ad87ec07755e\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang mendukung pendidikan di bidang kesehatan untuk mahasiswa dan profesional medis. Dengan program terstruktur dan materi pembelajaran relevan, Doktercares mencakup teori dasar hingga kasus klinis terkini, serta menyediakan pengajaran interaktif dan bimbingan ahli untuk membantu peserta memperdalam pemahaman dan menghadapi tantangan medis.\"}', 1, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '6ff050f3-de21-4992-b067-519c29dd88bf'),
(282, 282, 1, 'DokterCares', 'doktercares', 'product/doktercares', '{\"1586bb87-afba-4f1a-a365-c067e48c3b07\": {\"type\": \"url\", \"label\": null, \"value\": \"https://doktercares.com\", \"target\": null}, \"43e95259-5a39-43ff-8097-a1297da17eb5\": [53], \"910f26dd-3204-470a-b4d6-9c9a6bf8e293\": [267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279], \"accde8e3-c0a6-4e21-a71b-ad87ec07755e\": \"Doktercares adalah layanan bimbingan belajar (bimbel) yang mendukung pendidikan di bidang kesehatan untuk mahasiswa dan profesional medis. Dengan program terstruktur dan materi pembelajaran relevan, Doktercares mencakup teori dasar hingga kasus klinis terkini, serta menyediakan pengajaran interaktif dan bimbingan ahli untuk membantu peserta memperdalam pemahaman dan menghadapi tantangan medis.\"}', 1, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '2417f4af-5dd1-4dcb-addb-28caf558d881'),
(283, 283, 1, 'DokterPost', 'dokterpost', 'product/dokterpost', '{\"1586bb87-afba-4f1a-a365-c067e48c3b07\": {\"type\": \"url\", \"label\": null, \"value\": \"https://dokterpost.com\", \"target\": null}, \"43e95259-5a39-43ff-8097-a1297da17eb5\": [49], \"910f26dd-3204-470a-b4d6-9c9a6bf8e293\": [284, 285, 286, 287, 288], \"accde8e3-c0a6-4e21-a71b-ad87ec07755e\": \"Dokterpost adalah layanan yang menyediakan seminar dan artikel untuk membantu profesional medis meningkatkan pengetahuan dan wawasan mereka. Melalui seminar interaktif dan artikel informatif, Dokterpost memberikan akses ke tren, penelitian, dan praktik terbaru dalam dunia medis, membantu tenaga kesehatan tetap up-to-date dan kompetitif.\"}', 1, '2024-12-19 07:38:03', '2024-12-19 07:39:05', 'd5789d4b-c2e9-4d9b-b971-7aeaaedabb9c'),
(284, 284, 1, '1', NULL, NULL, NULL, 1, '2024-12-19 07:38:35', '2024-12-19 07:38:35', '174659f5-a664-48ab-9450-12a9d1d21789'),
(285, 285, 1, '2', NULL, NULL, NULL, 1, '2024-12-19 07:38:36', '2024-12-19 07:38:36', 'df2c5887-132a-476a-8d46-82902e71e1fd'),
(286, 286, 1, '3', NULL, NULL, NULL, 1, '2024-12-19 07:38:37', '2024-12-19 07:38:37', 'c2d19fd7-46c6-4941-90cf-ecf9b043810c'),
(287, 287, 1, '4', NULL, NULL, NULL, 1, '2024-12-19 07:38:40', '2024-12-19 07:38:40', '4f0bfb01-6db5-4d82-9d00-6737f9a1de2a'),
(288, 288, 1, '5', NULL, NULL, NULL, 1, '2024-12-19 07:38:41', '2024-12-19 07:38:41', '94a79d0d-6612-483f-8e3c-8800973eaba5'),
(289, 289, 1, 'DokterPost', 'dokterpost', 'product/dokterpost', '{\"1586bb87-afba-4f1a-a365-c067e48c3b07\": {\"type\": \"url\", \"label\": null, \"value\": \"https://dokterpost.com\", \"target\": null}, \"43e95259-5a39-43ff-8097-a1297da17eb5\": [49], \"910f26dd-3204-470a-b4d6-9c9a6bf8e293\": [284, 285, 286, 287, 288], \"accde8e3-c0a6-4e21-a71b-ad87ec07755e\": \"Dokterpost adalah layanan yang menyediakan seminar dan artikel untuk membantu profesional medis meningkatkan pengetahuan dan wawasan mereka. Melalui seminar interaktif dan artikel informatif, Dokterpost memberikan akses ke tren, penelitian, dan praktik terbaru dalam dunia medis, membantu tenaga kesehatan tetap up-to-date dan kompetitif.\"}', 1, '2024-12-19 07:39:08', '2024-12-19 07:39:08', '3d4f14d0-a35c-41e2-8d75-eba79898b2cc'),
(290, 290, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-19 07:40:50', '2024-12-19 07:40:50', '028b3f44-a5be-4273-bca2-5cba72a65f20'),
(293, 293, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-19 07:48:03', '2024-12-19 07:48:03', '103b20ac-c523-448c-ab38-6eb09e9fcd15'),
(294, 294, 1, '<p class=\"text-blue-700 dark:text-blue-500 font-extrabold md:text-5xl text-3xl mb-8\"><span class=\"text-lime-700 dark:text-lime-500\">Product in</span><br> Multimedika Maha Data</p>', 'empowering-innovation-shaping', NULL, '{\"4a503d03-1bc4-4761-b199-765407c909d1\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test/product\", \"target\": null}}', 1, '2024-12-19 07:48:03', '2024-12-19 07:48:03', '0dcbefd8-998a-4842-9b10-7824bc8f06da'),
(297, 297, 1, 'Homepage', 'homepage', '__home__', NULL, 1, '2024-12-19 07:50:46', '2024-12-19 07:50:46', '6bce50bc-a95e-455b-80c7-997fba2308f0'),
(298, 298, 1, NULL, '__temp_khbwgreabrxkgioprhkhctbyjdfglnmrespv', NULL, '{\"b97c3513-b430-4b12-8463-1a8e886b0ea6\": {\"type\": \"url\", \"label\": null, \"value\": \"https://companyprofile.test/about\", \"target\": null}}', 1, '2024-12-19 07:50:46', '2024-12-19 07:50:46', 'f9899ece-41ac-4e84-9167-de2333b4f63b'),
(304, 304, 1, '<h1 class=\"mb-4 text-2xl font-extrabold tracking-tight leading-none md:text-3xl text-blue-700\"> About <br>Multi Medika Mahadata</h1>', 'about-multi-medika-mahadata', NULL, NULL, 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', 'e5a15f68-7b1b-4850-b534-4a50c58a6889'),
(305, 305, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [224]}', 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '8b3e3b7e-bf42-42c2-8951-c2d5a45b6b77'),
(306, 306, 1, 'Teks 1', 'teks-1', NULL, '{\"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\": \"<p><strong>PT Multi Medika Mahadata</strong>: Pemimpin Inovatif dalam Layanan E-Learning Medis di Indonesia</p><p>Sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia, PT. Multi Medika Mahadata dibangun atas dasar komitmen tinggi untuk memenuhi dan mendukung aspirasi para dokter di negeri ini. Kami menapak sebagai institusi yang diperuntukkan bagi penyempurnaan keahlian dan pengetahuan medis, berambisi menyediakan platform edukasi yang terpercaya dan memimpin dalam bidang pengembangan profesionalisme kedokteran.</p><p>Visi kami terangkum dalam usaha kami menjadi institusi pendidikan medis informal paling progresif, dengan misi meluaskan kualitas perawatan kesehatan di tanah air melalui pendidikan yang berstandar internasional, inovatif dan berperspektif riset. Dalam perjalanan menuju visi ini, PT. Multi Medika Mahadata menghadirkan rangkaian program edukasi yang dihiasi dengan kecakapan komprehensif dan aktualitas tinggi, menjangkau dokter dari berbagai fase dalam perjalanan karier mereka mulai dari persiapan spesialisasi hingga pendidikan medis yang berkelanjutan.</p>\"}', 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '8231caca-22fa-4431-aac1-2338d0aea25d'),
(307, 307, 1, 'About', 'about', 'about', NULL, 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '29ce9df3-76e1-49b4-bc7a-4ff25f85860d'),
(308, 308, 1, '<h1 class=\"mb-4 text-2xl font-extrabold tracking-tight leading-none md:text-3xl text-blue-700\"> About <br>Multi Medika Mahadata</h1>', 'about-multi-medika-mahadata', NULL, NULL, 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '780f75d2-02fe-414f-98b8-d9b52cd6fbfe'),
(309, 309, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [224]}', 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '1c45ba93-3bfc-45a5-b981-cea1692e61e4'),
(310, 310, 1, 'Teks 1', 'teks-1', NULL, '{\"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\": \"<p><strong>PT Multi Medika Mahadata</strong>: Pemimpin Inovatif dalam Layanan E-Learning Medis di Indonesia</p><p>Sebagai pelopor di bidang penyediaan layanan e-learning medis di Indonesia, PT. Multi Medika Mahadata dibangun atas dasar komitmen tinggi untuk memenuhi dan mendukung aspirasi para dokter di negeri ini. Kami menapak sebagai institusi yang diperuntukkan bagi penyempurnaan keahlian dan pengetahuan medis, berambisi menyediakan platform edukasi yang terpercaya dan memimpin dalam bidang pengembangan profesionalisme kedokteran.</p><p>Visi kami terangkum dalam usaha kami menjadi institusi pendidikan medis informal paling progresif, dengan misi meluaskan kualitas perawatan kesehatan di tanah air melalui pendidikan yang berstandar internasional, inovatif dan berperspektif riset. Dalam perjalanan menuju visi ini, PT. Multi Medika Mahadata menghadirkan rangkaian program edukasi yang dihiasi dengan kecakapan komprehensif dan aktualitas tinggi, menjangkau dokter dari berbagai fase dalam perjalanan karier mereka mulai dari persiapan spesialisasi hingga pendidikan medis yang berkelanjutan.</p>\"}', 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '654f2e79-c094-4401-8998-a476fb2df335'),
(314, 314, 1, 'About2', NULL, NULL, NULL, 1, '2024-12-19 08:21:57', '2024-12-19 08:21:57', 'f8865aaf-c1e3-4529-89be-f5089cc70132'),
(317, 317, 1, 'About3', NULL, NULL, NULL, 1, '2024-12-19 08:30:39', '2024-12-19 08:30:39', 'e95f29f7-5a21-4ff2-b329-f7635f22ee84'),
(319, 319, 1, 'Text 2', 'text-2', NULL, '{\"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\": \"<p>Kami berpegang teguh pada prinsip menyelenggarakan pendidikan dengan standar yang tidak hanya tinggi, namun juga etis, dengan menjejali kurikulum kami dengan input terkini dari praktisi dan pakar di bidang kedokteran. Hal ini menggarisbawahi penghormatan kami terhadap nilai-nilai profesionalisme dan integritas yang tiada goyah.</p><p>Kami menyediakan metode pembelajaran intensif namun fleksibel yang sesuai dengan dinamika profesi dokter dan bertujuan untuk meningkatkan efektivitas tanpa mengesampingkan tanggung jawab mereka. Ditetapkan harga yang kompetitif, jadwal belajar yang adaptable, serta lingkungan pembelajaran yang kolaboratif dan kaya sumber belajar, kami mengindarkan tempat bagi dokter untuk bertumbuh tanpa merogoh kocek terlalu dalam.</p><p>Berbasis di Surabaya, kami membuka pintu bagi dokter dari seluruh penjuru Indonesia, bersemangat menjadikan akses pendidikan berkualitas tidak saja mungkin, tapi juga merata. Dengan tim yang saat ini terdiri dari 20 hingga 50 profesional terbaik, kami berazam untuk terus berevolusi, menempatkan diri sebagai referensi sertifikasi medis yang dihormati skala nasional maupun internasional.</p>\"}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', 'da618757-1a8e-4253-9796-6c069065a330'),
(320, 320, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [314]}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '511378a4-0fc8-4056-967e-2b9dedde87c9'),
(321, 321, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [317]}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '8a462313-d2d2-479a-8060-1a1b37fba682'),
(322, 322, 1, 'Text 3', 'text-3', NULL, '{\"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\": \"<p>Keyakinan kami terletak pada kekuatan kolaborasi, daya inovasi, dan komitmen mutlak terhadap pendidikan medis yang bergengsi. Kami bertekad mengukir dampak signifikan bagi peningkatan kualitas hidup melalui kesehatan di Indonesia.</p><p>PT. Multi Medika Mahadata mengundang Anda untuk bergabung dalam misi mulia ini bersama kami, semai visi Indonesia yang lebih sejahtera. Inkarnasi dari nilai-nilai inti kami komitmen terhadap kualitas edukasi, profesionalisme, integritas, kolaborasi, dan inovasi aktif mendefinisikan setiap langkah yang kami ambil ke arah masa depan pendidikan medis yang lebih cemerlang</p>\"}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '281ef7ee-00c9-4b20-8b12-7270e25413dd'),
(323, 323, 1, 'About', 'about', 'about', NULL, 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', 'af597df3-3354-4fbe-9246-3ab87eaf9eb3'),
(324, 324, 1, '<h1 class=\"mb-4 text-2xl font-extrabold tracking-tight leading-none md:text-3xl text-blue-700\"> About <br>Multi Medika Mahadata</h1>', 'about-multi-medika-mahadata', NULL, NULL, 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', 'd6135aff-f648-420d-bc8e-a5457f514a7d'),
(325, 325, 1, 'Text 2', 'text-2', NULL, '{\"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\": \"<p>Kami berpegang teguh pada prinsip menyelenggarakan pendidikan dengan standar yang tidak hanya tinggi, namun juga etis, dengan menjejali kurikulum kami dengan input terkini dari praktisi dan pakar di bidang kedokteran. Hal ini menggarisbawahi penghormatan kami terhadap nilai-nilai profesionalisme dan integritas yang tiada goyah.</p><p>Kami menyediakan metode pembelajaran intensif namun fleksibel yang sesuai dengan dinamika profesi dokter dan bertujuan untuk meningkatkan efektivitas tanpa mengesampingkan tanggung jawab mereka. Ditetapkan harga yang kompetitif, jadwal belajar yang adaptable, serta lingkungan pembelajaran yang kolaboratif dan kaya sumber belajar, kami mengindarkan tempat bagi dokter untuk bertumbuh tanpa merogoh kocek terlalu dalam.</p><p>Berbasis di Surabaya, kami membuka pintu bagi dokter dari seluruh penjuru Indonesia, bersemangat menjadikan akses pendidikan berkualitas tidak saja mungkin, tapi juga merata. Dengan tim yang saat ini terdiri dari 20 hingga 50 profesional terbaik, kami berazam untuk terus berevolusi, menempatkan diri sebagai referensi sertifikasi medis yang dihormati skala nasional maupun internasional.</p>\"}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '9093c471-20cd-4db4-9b13-14617324d625'),
(326, 326, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [314]}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', 'd2e8afcf-fd1d-4adb-b019-186e1ff0164b'),
(327, 327, 1, 'Gambar', 'gambar', NULL, '{\"6e20177a-1b97-45ec-94a6-29445daffe44\": [317]}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '42cf2eb8-3155-4ec9-bb95-30e11c782e77');
INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `title`, `slug`, `uri`, `content`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(328, 328, 1, 'Text 3', 'text-3', NULL, '{\"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\": \"<p>Keyakinan kami terletak pada kekuatan kolaborasi, daya inovasi, dan komitmen mutlak terhadap pendidikan medis yang bergengsi. Kami bertekad mengukir dampak signifikan bagi peningkatan kualitas hidup melalui kesehatan di Indonesia.</p><p>PT. Multi Medika Mahadata mengundang Anda untuk bergabung dalam misi mulia ini bersama kami, semai visi Indonesia yang lebih sejahtera. Inkarnasi dari nilai-nilai inti kami komitmen terhadap kualitas edukasi, profesionalisme, integritas, kolaborasi, dan inovasi aktif mendefinisikan setiap langkah yang kami ambil ke arah masa depan pendidikan medis yang lebih cemerlang</p>\"}', 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '638871be-c1ea-4ecf-ae02-617cb514770a'),
(331, 331, 1, 'Mockup', NULL, NULL, NULL, 1, '2024-12-19 08:42:09', '2024-12-19 08:42:09', '32575b08-3c20-414a-9987-3caa6a7deaf5'),
(332, 332, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\">Our platform <span class=\"text-lime-700\">member</span></p>', 'our-platform-member', NULL, '{\"020a436e-41ff-46a2-8752-16f5ef612e19\": \"<p><a href=\\\"https://meducine.id/\\\"><strong>Meducine.id</strong></a> adalah platform e-learning inovatif yang dikembangkan oleh PT Multi Medika Mahadata, dirancang khusus untuk memenuhi kebutuhan pembelajaran dan pengembangan dokter di Indonesia.</p><p>Fitur-fitur Utama Meducine.id:</p><p><strong>Video Edukasi</strong>: Video pembelajaran dari para dokter berpengalaman, baik live webinar maupun on demand.</p><p><strong>Ebook Kedokteran</strong>: Koleksi ebook kedokteran lengkap dan terbaru.</p><p><strong>Dokumen Premium</strong>: Akses ke jurnal, artikel, dan dokumen kedokteran lainnya.</p><p><strong>Blog Eksklusif</strong>: Artikel dan informasi terkini seputar dunia kedokteran.</p><p><strong>Tryout</strong>: Latihan soal untuk mengukur pemahaman dan persiapan ujian.</p><p><strong>Forum Diskusi</strong>: Tempat berbagi pengetahuan dan berdiskusi dengan rekan sejawat.</p>\", \"11457d86-dc9e-4c4a-a6e1-7245bf3420ac\": [331], \"63c6bdd5-3b10-42b2-a476-cd06d73ebdb8\": \"Meducine: Platform E-learning untuk member Dokterpost dan Doktercares\"}', 1, '2024-12-19 08:43:13', '2024-12-19 08:43:13', '49e9c3e2-af65-4596-90f7-9173cab66051'),
(333, 333, 1, 'About', 'about', 'about', NULL, 1, '2024-12-19 08:43:13', '2024-12-19 08:43:13', 'a8a82f5f-ba0e-4857-99a3-97810de61c72'),
(334, 334, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\">Our platform <span class=\"text-lime-700\">member</span></p>', 'our-platform-member', NULL, '{\"020a436e-41ff-46a2-8752-16f5ef612e19\": \"<p><a href=\\\"https://meducine.id/\\\"><strong>Meducine.id</strong></a> adalah platform e-learning inovatif yang dikembangkan oleh PT Multi Medika Mahadata, dirancang khusus untuk memenuhi kebutuhan pembelajaran dan pengembangan dokter di Indonesia.</p><p>Fitur-fitur Utama Meducine.id:</p><p><strong>Video Edukasi</strong>: Video pembelajaran dari para dokter berpengalaman, baik live webinar maupun on demand.</p><p><strong>Ebook Kedokteran</strong>: Koleksi ebook kedokteran lengkap dan terbaru.</p><p><strong>Dokumen Premium</strong>: Akses ke jurnal, artikel, dan dokumen kedokteran lainnya.</p><p><strong>Blog Eksklusif</strong>: Artikel dan informasi terkini seputar dunia kedokteran.</p><p><strong>Tryout</strong>: Latihan soal untuk mengukur pemahaman dan persiapan ujian.</p><p><strong>Forum Diskusi</strong>: Tempat berbagi pengetahuan dan berdiskusi dengan rekan sejawat.</p>\", \"11457d86-dc9e-4c4a-a6e1-7245bf3420ac\": [331], \"63c6bdd5-3b10-42b2-a476-cd06d73ebdb8\": \"Meducine: Platform E-learning untuk member Dokterpost dan Doktercares\"}', 1, '2024-12-19 08:43:13', '2024-12-19 08:43:13', 'd7c6a564-4ffd-4964-9de0-ae7511538251'),
(337, 337, 1, 'Journey', NULL, NULL, NULL, 1, '2024-12-20 01:21:20', '2024-12-20 01:21:20', 'f41fb1bf-c9e0-4c4d-82f4-351a0652ee89'),
(338, 338, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\">Our <span class=\"text-lime-700\">journey</span></p>', 'our-journey', NULL, '{\"9673e4b9-b308-4f2a-a02a-54d96f486bd1\": [337]}', 1, '2024-12-20 01:21:30', '2024-12-20 01:21:30', 'e6ee0be2-bd5d-46a5-ae53-1ea15cd56280'),
(339, 339, 1, 'About', 'about', 'about', NULL, 1, '2024-12-20 01:21:30', '2024-12-20 01:21:30', 'bb729a30-030f-48d8-9630-4c773c417d61'),
(340, 340, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\">Our <span class=\"text-lime-700\">journey</span></p>', 'our-journey', NULL, '{\"9673e4b9-b308-4f2a-a02a-54d96f486bd1\": [337]}', 1, '2024-12-20 01:21:30', '2024-12-20 01:21:30', '0663f148-7890-497e-9659-3d69a8cbdf69'),
(343, 343, 1, 'Fasilitas', NULL, NULL, NULL, 1, '2024-12-20 01:28:16', '2024-12-20 01:28:16', '9d251315-090a-400e-b1e4-979cdee2434e'),
(344, 344, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\"><span class=\"text-lime-700\">Facilities at</span><br>Multi Medika Mahadata </p>', 'facilities-at-multi-medika-mahadata', NULL, '{\"1c048d07-4cda-4574-bd42-d598c6b983b3\": \"Untuk mendukung operasional bisnis, Multimedika Mahadata menyediakan berbagai fasilitas dalam lingkungan kantor yang nyaman. Fasilitas tersebut mencakup ruang rapat, ruang dapur, tempat ibadah, dan perpustakaan. Semua fasilitas tersedia untuk digunakan di kantor PT Multimedika Mahadata.\", \"385fc8dd-8b09-40e0-a190-f2e0dbb345a6\": [343]}', 1, '2024-12-20 01:28:22', '2024-12-20 01:28:22', '46cc3a7f-db47-4699-82f6-e6fb817ddc9c'),
(345, 345, 1, 'About', 'about', 'about', NULL, 1, '2024-12-20 01:28:22', '2024-12-20 01:28:22', '8b412a1d-caf1-4e4c-8023-dbd61c16f9e7'),
(346, 346, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\"><span class=\"text-lime-700\">Facilities at</span><br>Multi Medika Mahadata </p>', 'facilities-at-multi-medika-mahadata', NULL, '{\"1c048d07-4cda-4574-bd42-d598c6b983b3\": \"Untuk mendukung operasional bisnis, Multimedika Mahadata menyediakan berbagai fasilitas dalam lingkungan kantor yang nyaman. Fasilitas tersebut mencakup ruang rapat, ruang dapur, tempat ibadah, dan perpustakaan. Semua fasilitas tersedia untuk digunakan di kantor PT Multimedika Mahadata.\", \"385fc8dd-8b09-40e0-a190-f2e0dbb345a6\": [343]}', 1, '2024-12-20 01:28:22', '2024-12-20 01:28:22', '66e1ca06-0b40-4975-8e23-88f933c0efb9'),
(349, 349, 1, '1', NULL, NULL, NULL, 1, '2024-12-20 01:38:53', '2024-12-20 01:38:53', 'ab36399e-fbd3-4494-8432-c385ec9b9eb7'),
(350, 350, 1, '2', NULL, NULL, NULL, 1, '2024-12-20 01:38:54', '2024-12-20 01:38:54', '24797360-6953-44c8-bd48-38941b6bebc7'),
(351, 351, 1, '3', NULL, NULL, NULL, 1, '2024-12-20 01:38:55', '2024-12-20 01:38:55', '6298e3ac-d889-4fec-b886-d79bd3dd32e6'),
(352, 352, 1, '4', NULL, NULL, NULL, 1, '2024-12-20 01:38:57', '2024-12-20 01:38:57', 'c454b094-9c18-43f9-99fd-d6848f1e1cc6'),
(353, 353, 1, '5', NULL, NULL, NULL, 1, '2024-12-20 01:38:59', '2024-12-20 01:38:59', '7b309d93-adca-47ef-9391-6d7b87d77dc5'),
(354, 354, 1, NULL, '__temp_htrsyrulukctuteoorjswpyectfaefppqawt', NULL, '{\"62bbe082-a074-4f51-8737-67de89be7d8e\": [349, 350, 351, 352, 353], \"8b21ca4c-f2e5-401d-9542-4b56ca270800\": \"grid\"}', 1, '2024-12-20 01:41:24', '2024-12-20 02:35:26', '7a935837-7936-480b-91c8-66d96ad50ce8'),
(355, 355, 1, 'About', 'about', 'about', NULL, 1, '2024-12-20 01:41:24', '2024-12-20 01:41:24', 'a6939662-1ff9-4aba-aa0f-abf8d7ee933a'),
(356, 356, 1, NULL, '__temp_htrsyrulukctuteoorjswpyectfaefppqawt', NULL, '{\"62bbe082-a074-4f51-8737-67de89be7d8e\": [349, 350, 351, 352, 353], \"8b21ca4c-f2e5-401d-9542-4b56ca270800\": \"slider\"}', 1, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '8b86c4cc-c9c8-4fb5-99aa-118e206cb1f1'),
(359, 359, 1, 'About', 'about', 'about', NULL, 1, '2024-12-20 01:42:17', '2024-12-20 01:42:17', 'a64afab0-d6a4-49c0-a680-62e769697938'),
(360, 360, 1, NULL, '__temp_htrsyrulukctuteoorjswpyectfaefppqawt', NULL, '{\"62bbe082-a074-4f51-8737-67de89be7d8e\": [349, 350, 351, 352, 353], \"8b21ca4c-f2e5-401d-9542-4b56ca270800\": \"grid\"}', 1, '2024-12-20 01:42:17', '2024-12-20 01:42:17', 'ddce460f-364b-4a7c-a605-73c8930ef57a'),
(363, 363, 1, 'About', 'about', 'about', NULL, 1, '2024-12-20 01:57:11', '2024-12-20 01:57:11', '905e32bd-02c9-4412-a0c1-b331399de6c3'),
(364, 364, 1, NULL, '__temp_htrsyrulukctuteoorjswpyectfaefppqawt', NULL, '{\"62bbe082-a074-4f51-8737-67de89be7d8e\": [349, 350, 351, 352, 353], \"8b21ca4c-f2e5-401d-9542-4b56ca270800\": \"slider\"}', 1, '2024-12-20 01:57:11', '2024-12-20 01:57:11', 'b50d287d-9832-4f99-9853-f0961975ee61'),
(367, 367, 1, 'About', 'about', 'about', NULL, 1, '2024-12-20 02:35:26', '2024-12-20 02:35:26', 'af0a24d8-2f6b-4490-8560-5574ee77f841'),
(368, 368, 1, NULL, '__temp_htrsyrulukctuteoorjswpyectfaefppqawt', NULL, '{\"62bbe082-a074-4f51-8737-67de89be7d8e\": [349, 350, 351, 352, 353], \"8b21ca4c-f2e5-401d-9542-4b56ca270800\": \"grid\"}', 1, '2024-12-20 02:35:26', '2024-12-20 02:35:26', '38eac970-2b13-4b89-8e89-49fb283f0d08'),
(369, 369, 1, 'Direktur', 'direktur', 'people/direktur', '{\"250e07ce-3b56-4356-95e4-779182337a66\": [370], \"2ca21f00-5ec7-40ac-8d07-0316a6036b5f\": \"Direktur\", \"383e24df-4b59-44ec-9614-5245ba558846\": \"Dr. Akbar Fahmi\"}', 1, '2024-12-20 02:38:54', '2024-12-20 02:40:13', 'a0fa20f3-44b2-488f-b55d-5646c67b6703'),
(370, 370, 1, 'Whats App Image 2024 11 13 at 3 13 37 PM', NULL, NULL, NULL, 1, '2024-12-20 02:39:15', '2024-12-20 02:39:15', 'c4942bbd-a5df-4480-97b7-6708a1b975dc'),
(371, 371, 1, NULL, '__temp_ssvtzazutsyaohmrljgtjvyiqnwfvppufdec', 'people/__temp_ssvtzazutsyaohmrljgtjvyiqnwfvppufdec', '{\"250e07ce-3b56-4356-95e4-779182337a66\": [370], \"2ca21f00-5ec7-40ac-8d07-0316a6036b5f\": \"Direktur\", \"383e24df-4b59-44ec-9614-5245ba558846\": \"Dr. Akbar Fahmi\"}', 1, '2024-12-20 02:39:33', '2024-12-20 02:39:33', '3a95c4ba-a45d-45ac-bc02-82370b842245'),
(373, 373, 1, 'Direktur', 'direktur', 'people/direktur', '{\"250e07ce-3b56-4356-95e4-779182337a66\": [370], \"2ca21f00-5ec7-40ac-8d07-0316a6036b5f\": \"Direktur\", \"383e24df-4b59-44ec-9614-5245ba558846\": \"Dr. Akbar Fahmi\"}', 1, '2024-12-20 02:40:13', '2024-12-20 02:40:13', 'ad464b8d-54c9-4bbf-be90-ab347785e22c'),
(374, 374, 1, 'General Manager', 'general-manager', 'people/general-manager', '{\"250e07ce-3b56-4356-95e4-779182337a66\": [375], \"2ca21f00-5ec7-40ac-8d07-0316a6036b5f\": \"General Manager\", \"383e24df-4b59-44ec-9614-5245ba558846\": \"Aziz Putra Wijaya, S.Akun\"}', 1, '2024-12-20 02:40:18', '2024-12-20 02:41:00', 'e145ce8c-7697-4f61-9f6c-212e0441e433'),
(375, 375, 1, 'Whats App Image 2024 11 13 at 3 03 56 PM', NULL, NULL, NULL, 1, '2024-12-20 02:40:59', '2024-12-20 02:40:59', '94c739b4-0d6b-4d5e-bf5c-a3c82458e8c0'),
(376, 376, 1, 'General Manager', 'general-manager', 'people/general-manager', '{\"250e07ce-3b56-4356-95e4-779182337a66\": [375], \"2ca21f00-5ec7-40ac-8d07-0316a6036b5f\": \"General Manager\", \"383e24df-4b59-44ec-9614-5245ba558846\": \"Aziz Putra Wijaya, S.Akun\"}', 1, '2024-12-20 02:41:02', '2024-12-20 02:41:02', 'd0d80b88-418d-4539-b9db-dbb7ec5c5399'),
(379, 379, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\"> Our board of <span class=\"text-lime-700\">management</span></p>', 'our-board-of-management', NULL, NULL, 1, '2024-12-20 02:43:30', '2024-12-20 02:43:30', 'e7c0ae6a-a1f9-47f5-8a26-45f92a3aa9dc'),
(380, 380, 1, 'About', 'about', 'about', NULL, 1, '2024-12-20 02:43:30', '2024-12-20 02:43:30', 'd63eaabf-895a-406a-86ec-8e556a7bfe39'),
(381, 381, 1, '<p class=\"md:text-3xl text-2xl font-extrabold text-blue-700\"> Our board of <span class=\"text-lime-700\">management</span></p>', 'our-board-of-management', NULL, NULL, 1, '2024-12-20 02:43:30', '2024-12-20 02:43:30', '281f9c44-6cf6-4d3c-bddb-f8bc91df1c33');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int NOT NULL,
  `sectionId` int DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `primaryOwnerId` int DEFAULT NULL,
  `fieldId` int DEFAULT NULL,
  `typeId` int NOT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `deletedWithSection` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `primaryOwnerId`, `fieldId`, `typeId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `deletedWithSection`, `dateCreated`, `dateUpdated`) VALUES
(86, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-14 04:59:09', '2024-12-14 04:59:09'),
(87, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-14 04:59:09', '2024-12-14 04:59:09'),
(97, NULL, NULL, 86, 3, 2, '2024-12-14 05:00:00', NULL, 1, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(98, NULL, NULL, 86, 3, 3, '2024-12-14 05:01:00', NULL, 1, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(99, NULL, NULL, 86, 4, 2, '2024-12-14 05:01:00', NULL, 1, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(100, NULL, NULL, 86, 4, 3, '2024-12-14 05:02:00', NULL, 1, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(101, NULL, NULL, 86, 9, 4, '2024-12-14 05:03:00', NULL, 1, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(102, NULL, NULL, 101, 8, 5, '2024-12-14 05:02:00', NULL, 1, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(103, NULL, NULL, 101, 8, 5, '2024-12-14 05:03:00', NULL, 1, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(104, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(105, NULL, NULL, 104, 3, 2, '2024-12-14 05:00:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(106, NULL, NULL, 104, 3, 3, '2024-12-14 05:01:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(107, NULL, NULL, 104, 4, 2, '2024-12-14 05:01:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(108, NULL, NULL, 104, 4, 3, '2024-12-14 05:02:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(109, NULL, NULL, 104, 9, 4, '2024-12-14 05:03:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(110, NULL, NULL, 109, 8, 5, '2024-12-14 05:02:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(111, NULL, NULL, 109, 8, 5, '2024-12-14 05:03:00', NULL, NULL, NULL, '2024-12-14 05:03:49', '2024-12-14 05:03:49'),
(112, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-16 07:48:05', '2024-12-16 07:48:05'),
(117, NULL, NULL, 116, 3, 2, '2024-12-16 07:50:00', NULL, 1, NULL, '2024-12-16 07:50:22', '2024-12-16 07:50:37'),
(118, NULL, NULL, 116, 3, 3, '2024-12-16 07:51:00', NULL, 1, NULL, '2024-12-16 07:50:45', '2024-12-16 07:51:06'),
(119, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-16 08:17:53', '2024-12-16 08:17:53'),
(124, NULL, NULL, 86, 14, 9, '2024-12-16 08:19:00', NULL, NULL, NULL, '2024-12-16 08:20:46', '2024-12-16 08:20:46'),
(125, NULL, NULL, 124, 13, 7, '2024-12-16 08:20:00', NULL, NULL, NULL, '2024-12-16 08:20:46', '2024-12-16 08:20:46'),
(126, NULL, NULL, 124, 13, 8, '2024-12-16 08:20:00', NULL, NULL, NULL, '2024-12-16 08:20:46', '2024-12-16 08:20:46'),
(127, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-16 08:20:46', '2024-12-16 08:20:46'),
(128, NULL, NULL, 127, 14, 9, '2024-12-16 08:19:00', NULL, NULL, NULL, '2024-12-16 08:20:46', '2024-12-16 08:20:46'),
(129, NULL, NULL, 128, 13, 7, '2024-12-16 08:20:00', NULL, NULL, NULL, '2024-12-16 08:20:46', '2024-12-16 08:20:46'),
(130, NULL, NULL, 128, 13, 8, '2024-12-16 08:20:00', NULL, NULL, NULL, '2024-12-16 08:20:46', '2024-12-16 08:20:46'),
(141, NULL, NULL, 140, 18, 13, NULL, NULL, 1, NULL, '2024-12-17 07:30:19', '2024-12-17 07:30:19'),
(142, NULL, NULL, 141, 18, 13, NULL, NULL, 1, NULL, '2024-12-17 07:30:25', '2024-12-17 07:30:25'),
(148, NULL, NULL, 86, 14, 15, '2024-12-17 07:39:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(149, NULL, NULL, 148, 18, 14, '2024-12-17 07:40:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(150, NULL, NULL, 148, 18, 14, '2024-12-17 07:41:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(151, NULL, NULL, 148, 18, 14, '2024-12-17 07:41:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(152, NULL, NULL, 148, 18, 14, '2024-12-17 07:41:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(153, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(154, NULL, NULL, 153, 14, 9, '2024-12-16 08:19:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(155, NULL, NULL, 153, 14, 15, '2024-12-17 07:39:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(156, NULL, NULL, 155, 18, 14, '2024-12-17 07:40:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(157, NULL, NULL, 155, 18, 14, '2024-12-17 07:41:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(158, NULL, NULL, 155, 18, 14, '2024-12-17 07:41:00', NULL, NULL, NULL, '2024-12-17 07:42:16', '2024-12-17 07:42:16'),
(159, NULL, NULL, 155, 18, 14, '2024-12-17 07:41:00', NULL, NULL, NULL, '2024-12-17 07:42:17', '2024-12-17 07:42:17'),
(161, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 07:50:35', '2024-12-17 07:50:35'),
(163, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 07:50:54', '2024-12-17 07:50:54'),
(164, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 07:51:36', '2024-12-17 07:51:36'),
(165, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 08:09:25', '2024-12-17 08:09:25'),
(170, NULL, NULL, 86, 14, 16, '2024-12-17 08:17:00', NULL, NULL, NULL, '2024-12-17 08:18:20', '2024-12-17 08:18:20'),
(171, NULL, NULL, 170, 19, 7, '2024-12-17 08:17:00', NULL, NULL, NULL, '2024-12-17 08:18:21', '2024-12-17 08:18:21'),
(172, NULL, NULL, 170, 19, 8, '2024-12-17 08:18:00', NULL, NULL, NULL, '2024-12-17 08:18:21', '2024-12-17 08:18:21'),
(173, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 08:18:21', '2024-12-17 08:18:21'),
(174, NULL, NULL, 173, 14, 16, '2024-12-17 08:17:00', NULL, NULL, NULL, '2024-12-17 08:18:21', '2024-12-17 08:18:21'),
(175, NULL, NULL, 174, 19, 7, '2024-12-17 08:17:00', NULL, NULL, NULL, '2024-12-17 08:18:21', '2024-12-17 08:18:21'),
(176, NULL, NULL, 174, 19, 8, '2024-12-17 08:18:00', NULL, NULL, NULL, '2024-12-17 08:18:21', '2024-12-17 08:18:21'),
(181, NULL, NULL, 86, 14, 17, '2024-12-17 08:31:00', NULL, NULL, NULL, '2024-12-17 08:38:57', '2024-12-17 08:38:57'),
(182, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 08:38:57', '2024-12-17 08:38:57'),
(183, NULL, NULL, 182, 14, 9, '2024-12-16 08:19:00', NULL, NULL, NULL, '2024-12-17 08:38:57', '2024-12-17 08:38:57'),
(184, NULL, NULL, 183, 13, 7, '2024-12-16 08:20:00', NULL, NULL, NULL, '2024-12-17 08:38:57', '2024-12-17 08:38:57'),
(185, NULL, NULL, 182, 14, 16, '2024-12-17 08:17:00', NULL, NULL, NULL, '2024-12-17 08:38:57', '2024-12-17 08:38:57'),
(186, NULL, NULL, 185, 19, 7, '2024-12-17 08:17:00', NULL, NULL, NULL, '2024-12-17 08:38:57', '2024-12-17 08:38:57'),
(187, NULL, NULL, 182, 14, 17, '2024-12-17 08:31:00', NULL, NULL, NULL, '2024-12-17 08:38:57', '2024-12-17 08:38:57'),
(194, NULL, NULL, 181, 21, 18, '2024-12-17 08:49:00', NULL, 1, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(195, NULL, NULL, 181, 21, 18, '2024-12-17 08:50:00', NULL, 1, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(196, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(197, NULL, NULL, 196, 14, 9, '2024-12-16 08:19:00', NULL, NULL, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(198, NULL, NULL, 197, 13, 7, '2024-12-16 08:20:00', NULL, NULL, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(199, NULL, NULL, 196, 14, 17, '2024-12-17 08:31:00', NULL, NULL, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(200, NULL, NULL, 199, 21, 18, '2024-12-17 08:49:00', NULL, NULL, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(201, NULL, NULL, 199, 21, 18, '2024-12-17 08:50:00', NULL, NULL, NULL, '2024-12-17 08:50:08', '2024-12-17 08:50:08'),
(206, NULL, NULL, 86, 14, 20, '2024-12-17 09:05:00', NULL, NULL, NULL, '2024-12-17 09:08:54', '2024-12-17 09:08:54'),
(207, NULL, NULL, 206, 22, 19, '2024-12-17 09:06:00', NULL, 1, NULL, '2024-12-17 09:08:54', '2024-12-17 09:08:54'),
(208, NULL, NULL, 206, 22, 19, '2024-12-17 09:08:00', NULL, 1, NULL, '2024-12-17 09:08:54', '2024-12-17 09:08:54'),
(209, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 09:08:54', '2024-12-17 09:08:54'),
(210, NULL, NULL, 209, 14, 20, '2024-12-17 09:05:00', NULL, NULL, NULL, '2024-12-17 09:08:54', '2024-12-17 09:08:54'),
(211, NULL, NULL, 210, 22, 19, '2024-12-17 09:06:00', NULL, NULL, NULL, '2024-12-17 09:08:54', '2024-12-17 09:08:54'),
(212, NULL, NULL, 210, 22, 19, '2024-12-17 09:08:00', NULL, NULL, NULL, '2024-12-17 09:08:54', '2024-12-17 09:08:54'),
(214, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 09:21:56', '2024-12-17 09:21:56'),
(216, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-17 09:22:15', '2024-12-17 09:22:15'),
(217, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-19 04:45:38', '2024-12-19 04:45:38'),
(218, NULL, NULL, 217, 14, 20, '2024-12-17 09:05:00', NULL, NULL, NULL, '2024-12-19 04:45:39', '2024-12-19 04:45:39'),
(219, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-19 04:49:26', '2024-12-19 04:49:26'),
(220, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-19 04:49:26', '2024-12-19 04:49:26'),
(238, NULL, NULL, 219, 14, 9, '2024-12-19 04:53:00', NULL, 0, 0, '2024-12-19 04:58:38', '2024-12-19 04:58:38'),
(239, NULL, NULL, 238, 13, 8, '2024-12-19 04:54:00', NULL, 0, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(240, NULL, NULL, 238, 13, 7, '2024-12-19 04:56:00', NULL, 0, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(241, NULL, NULL, 238, 13, 7, '2024-12-19 04:55:00', NULL, 0, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(242, NULL, NULL, 238, 13, 7, '2024-12-19 04:57:00', NULL, 0, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(243, NULL, NULL, 238, 13, 7, '2024-12-19 04:57:00', NULL, 0, 0, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(244, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(245, NULL, NULL, 244, 14, 9, '2024-12-19 04:53:00', NULL, NULL, NULL, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(246, NULL, NULL, 245, 13, 8, '2024-12-19 04:54:00', NULL, NULL, NULL, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(247, NULL, NULL, 245, 13, 7, '2024-12-19 04:56:00', NULL, NULL, NULL, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(248, NULL, NULL, 245, 13, 7, '2024-12-19 04:55:00', NULL, NULL, NULL, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(249, NULL, NULL, 245, 13, 7, '2024-12-19 04:57:00', NULL, NULL, NULL, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(250, NULL, NULL, 245, 13, 7, '2024-12-19 04:57:00', NULL, NULL, NULL, '2024-12-19 04:58:39', '2024-12-19 04:58:39'),
(251, 3, NULL, NULL, NULL, 1, '2024-12-19 06:35:00', NULL, NULL, 1, '2024-12-19 06:33:31', '2024-12-19 06:35:07'),
(252, NULL, NULL, 251, 14, 17, '2024-12-19 06:33:00', NULL, NULL, NULL, '2024-12-19 06:33:39', '2024-12-19 06:33:40'),
(253, 4, NULL, NULL, NULL, 1, '2024-12-19 06:34:05', NULL, NULL, 1, '2024-12-19 06:34:05', '2024-12-19 06:34:05'),
(254, NULL, NULL, 252, 21, 18, '2024-12-19 06:35:00', NULL, 1, NULL, '2024-12-19 06:34:36', '2024-12-19 06:35:00'),
(255, 3, NULL, NULL, NULL, 1, '2024-12-19 06:35:00', NULL, NULL, NULL, '2024-12-19 06:35:07', '2024-12-19 06:35:07'),
(256, NULL, NULL, 255, 14, 17, '2024-12-19 06:33:00', NULL, NULL, NULL, '2024-12-19 06:35:07', '2024-12-19 06:35:07'),
(257, NULL, NULL, 256, 21, 18, '2024-12-19 06:35:00', NULL, NULL, NULL, '2024-12-19 06:35:08', '2024-12-19 06:35:08'),
(258, 4, NULL, NULL, NULL, 1, '2024-12-19 06:37:45', NULL, NULL, 1, '2024-12-19 06:37:45', '2024-12-19 06:37:45'),
(259, 4, NULL, NULL, NULL, 1, '2024-12-19 06:37:57', NULL, NULL, 1, '2024-12-19 06:37:57', '2024-12-19 06:37:57'),
(260, 5, NULL, NULL, NULL, 22, '2024-12-19 07:04:04', NULL, NULL, NULL, '2024-12-19 07:04:04', '2024-12-19 07:04:04'),
(261, 5, NULL, NULL, NULL, 22, '2024-12-19 07:05:00', NULL, NULL, NULL, '2024-12-19 07:04:40', '2024-12-19 07:05:50'),
(262, 5, NULL, NULL, NULL, 22, '2024-12-19 07:04:46', NULL, NULL, NULL, '2024-12-19 07:04:46', '2024-12-19 07:04:46'),
(263, 5, NULL, NULL, NULL, 22, '2024-12-19 07:05:00', NULL, NULL, NULL, '2024-12-19 07:05:50', '2024-12-19 07:05:50'),
(264, 5, NULL, NULL, NULL, 22, '2024-12-19 07:07:00', NULL, NULL, NULL, '2024-12-19 07:06:57', '2024-12-19 07:07:31'),
(265, 5, NULL, NULL, NULL, 22, '2024-12-19 07:07:00', NULL, NULL, NULL, '2024-12-19 07:07:31', '2024-12-19 07:07:31'),
(266, 6, NULL, NULL, NULL, 23, '2024-12-19 07:36:00', NULL, NULL, NULL, '2024-12-19 07:35:23', '2024-12-19 07:36:41'),
(280, 6, NULL, NULL, NULL, 23, '2024-12-19 07:36:00', NULL, NULL, NULL, '2024-12-19 07:36:41', '2024-12-19 07:36:41'),
(282, 6, NULL, NULL, NULL, 23, '2024-12-19 07:36:00', NULL, NULL, NULL, '2024-12-19 07:37:48', '2024-12-19 07:37:48'),
(283, 6, NULL, NULL, NULL, 23, '2024-12-19 07:39:00', NULL, NULL, NULL, '2024-12-19 07:38:03', '2024-12-19 07:39:07'),
(289, 6, NULL, NULL, NULL, 23, '2024-12-19 07:39:00', NULL, NULL, NULL, '2024-12-19 07:39:08', '2024-12-19 07:39:08'),
(290, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-19 07:40:50', '2024-12-19 07:40:50'),
(293, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-19 07:48:03', '2024-12-19 07:48:03'),
(294, NULL, NULL, 293, 14, 17, '2024-12-17 08:31:00', NULL, NULL, NULL, '2024-12-19 07:48:03', '2024-12-19 07:48:03'),
(297, 1, NULL, NULL, NULL, 1, '2024-12-14 04:59:00', NULL, NULL, NULL, '2024-12-19 07:50:46', '2024-12-19 07:50:46'),
(298, NULL, NULL, 297, 14, 16, '2024-12-17 08:17:00', NULL, NULL, NULL, '2024-12-19 07:50:46', '2024-12-19 07:50:46'),
(304, NULL, NULL, 219, 14, 24, '2024-12-19 07:58:00', NULL, NULL, NULL, '2024-12-19 08:04:31', '2024-12-19 08:04:31'),
(305, NULL, NULL, 304, 19, 8, '2024-12-19 07:59:00', NULL, NULL, NULL, '2024-12-19 08:04:31', '2024-12-19 08:04:31'),
(306, NULL, NULL, 304, 19, 7, '2024-12-19 08:04:00', NULL, NULL, NULL, '2024-12-19 08:04:31', '2024-12-19 08:04:31'),
(307, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-19 08:04:31', '2024-12-19 08:04:31'),
(308, NULL, NULL, 307, 14, 24, '2024-12-19 07:58:00', NULL, NULL, NULL, '2024-12-19 08:04:31', '2024-12-19 08:04:31'),
(309, NULL, NULL, 308, 19, 8, '2024-12-19 07:59:00', NULL, NULL, NULL, '2024-12-19 08:04:31', '2024-12-19 08:04:31'),
(310, NULL, NULL, 308, 19, 7, '2024-12-19 08:04:00', NULL, NULL, NULL, '2024-12-19 08:04:31', '2024-12-19 08:04:31'),
(319, NULL, NULL, 304, 25, 7, '2024-12-19 08:25:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(320, NULL, NULL, 304, 25, 8, '2024-12-19 08:22:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(321, NULL, NULL, 304, 26, 8, '2024-12-19 08:30:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(322, NULL, NULL, 304, 26, 7, '2024-12-19 08:31:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(323, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(324, NULL, NULL, 323, 14, 24, '2024-12-19 07:58:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(325, NULL, NULL, 324, 25, 7, '2024-12-19 08:25:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(326, NULL, NULL, 324, 25, 8, '2024-12-19 08:22:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(327, NULL, NULL, 324, 26, 8, '2024-12-19 08:30:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(328, NULL, NULL, 324, 26, 7, '2024-12-19 08:31:00', NULL, NULL, NULL, '2024-12-19 08:31:15', '2024-12-19 08:31:15'),
(332, NULL, NULL, 219, 14, 25, '2024-12-19 08:41:00', NULL, NULL, NULL, '2024-12-19 08:43:13', '2024-12-19 08:43:13'),
(333, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-19 08:43:13', '2024-12-19 08:43:13'),
(334, NULL, NULL, 333, 14, 25, '2024-12-19 08:41:00', NULL, NULL, NULL, '2024-12-19 08:43:13', '2024-12-19 08:43:13'),
(338, NULL, NULL, 219, 14, 26, '2024-12-20 01:20:00', NULL, NULL, NULL, '2024-12-20 01:21:30', '2024-12-20 01:21:30'),
(339, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-20 01:21:30', '2024-12-20 01:21:30'),
(340, NULL, NULL, 339, 14, 26, '2024-12-20 01:20:00', NULL, NULL, NULL, '2024-12-20 01:21:30', '2024-12-20 01:21:30'),
(344, NULL, NULL, 219, 14, 27, '2024-12-20 01:26:00', NULL, NULL, NULL, '2024-12-20 01:28:22', '2024-12-20 01:28:22'),
(345, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-20 01:28:22', '2024-12-20 01:28:22'),
(346, NULL, NULL, 345, 14, 27, '2024-12-20 01:26:00', NULL, NULL, NULL, '2024-12-20 01:28:22', '2024-12-20 01:28:22'),
(354, NULL, NULL, 219, 14, 28, '2024-12-20 01:38:00', NULL, NULL, NULL, '2024-12-20 01:41:24', '2024-12-20 01:41:24'),
(355, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-20 01:41:24', '2024-12-20 01:41:24'),
(356, NULL, NULL, 355, 14, 28, '2024-12-20 01:38:00', NULL, NULL, NULL, '2024-12-20 01:41:24', '2024-12-20 01:41:24'),
(359, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-20 01:42:17', '2024-12-20 01:42:17'),
(360, NULL, NULL, 359, 14, 28, '2024-12-20 01:38:00', NULL, NULL, NULL, '2024-12-20 01:42:17', '2024-12-20 01:42:17'),
(363, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-20 01:57:11', '2024-12-20 01:57:11'),
(364, NULL, NULL, 363, 14, 28, '2024-12-20 01:38:00', NULL, NULL, NULL, '2024-12-20 01:57:11', '2024-12-20 01:57:11'),
(367, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-20 02:35:26', '2024-12-20 02:35:26'),
(368, NULL, NULL, 367, 14, 28, '2024-12-20 01:38:00', NULL, NULL, NULL, '2024-12-20 02:35:26', '2024-12-20 02:35:26'),
(369, 7, NULL, NULL, NULL, 29, '2024-12-20 02:39:00', NULL, NULL, NULL, '2024-12-20 02:38:54', '2024-12-20 02:39:32'),
(371, 7, NULL, NULL, NULL, 29, '2024-12-20 02:39:00', NULL, NULL, NULL, '2024-12-20 02:39:33', '2024-12-20 02:39:33'),
(373, 7, NULL, NULL, NULL, 29, '2024-12-20 02:39:00', NULL, NULL, NULL, '2024-12-20 02:40:13', '2024-12-20 02:40:13'),
(374, 7, NULL, NULL, NULL, 29, '2024-12-20 02:41:00', NULL, NULL, NULL, '2024-12-20 02:40:18', '2024-12-20 02:41:02'),
(376, 7, NULL, NULL, NULL, 29, '2024-12-20 02:41:00', NULL, NULL, NULL, '2024-12-20 02:41:02', '2024-12-20 02:41:02'),
(379, NULL, NULL, 219, 14, 30, '2024-12-20 02:42:00', NULL, NULL, NULL, '2024-12-20 02:43:30', '2024-12-20 02:43:30'),
(380, 2, NULL, NULL, NULL, 21, '2024-12-19 04:49:00', NULL, NULL, NULL, '2024-12-20 02:43:30', '2024-12-20 02:43:30'),
(381, NULL, NULL, 380, 14, 30, '2024-12-20 02:42:00', NULL, NULL, NULL, '2024-12-20 02:43:30', '2024-12-20 02:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `entries_authors`
--

CREATE TABLE `entries_authors` (
  `entryId` int NOT NULL,
  `authorId` int NOT NULL,
  `sortOrder` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `entries_authors`
--

INSERT INTO `entries_authors` (`entryId`, `authorId`, `sortOrder`) VALUES
(251, 1, 1),
(253, 1, 1),
(255, 1, 1),
(258, 1, 1),
(259, 1, 1),
(260, 1, 1),
(261, 1, 1),
(262, 1, 1),
(263, 1, 1),
(264, 1, 1),
(265, 1, 1),
(266, 1, 1),
(280, 1, 1),
(282, 1, 1),
(283, 1, 1),
(289, 1, 1),
(369, 1, 1),
(371, 1, 1),
(373, 1, 1),
(374, 1, 1),
(376, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `showSlugField` tinyint(1) DEFAULT '1',
  `slugTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `slugTranslationKeyFormat` text,
  `showStatusField` tinyint(1) DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `fieldLayoutId`, `name`, `handle`, `icon`, `color`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `showSlugField`, `slugTranslationMethod`, `slugTranslationKeyFormat`, `showStatusField`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'Homepage', 'homepage', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-13 09:03:58', '2024-12-13 09:03:58', NULL, 'd98fc999-1654-41da-9d7a-4727e195ef96'),
(2, 3, 'Input Text', 'inputText', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-14 01:33:28', '2024-12-14 01:33:28', '2024-12-16 07:52:26', '070053ba-96c8-433d-9ac2-bf43330e2b89'),
(3, 4, 'Input Image', 'inputImage', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-14 01:34:37', '2024-12-14 01:34:37', '2024-12-16 07:52:24', '1e27297c-582c-45c4-9355-827f680cd44e'),
(4, 6, 'Product Content', 'productContent', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-14 04:21:11', '2024-12-14 04:21:11', '2024-12-16 07:52:30', 'b0692c8f-13c6-42c6-a2b2-153cc6bcf186'),
(5, 7, 'Product One', 'productOne', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-14 04:40:40', '2024-12-14 04:40:40', '2024-12-16 07:52:33', '91592db8-9200-46a0-8c0e-834760b21e0f'),
(6, 8, 'Layout Home', 'layoutHome', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-14 04:56:32', '2024-12-16 07:49:22', '2024-12-16 07:52:28', '5ada7ebd-ad51-423b-bd67-9c7d59cdfc83'),
(7, 9, 'Input Text', 'inputText', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-16 08:16:21', '2024-12-16 08:16:21', NULL, '82e626b9-e432-44f0-b956-372ceb9dcb88'),
(8, 10, 'Input Image', 'inputImage', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-16 08:16:58', '2024-12-16 08:16:58', NULL, 'e0a64687-d271-4ab1-9ea4-0d9e2174fc13'),
(9, 11, 'Layout Home', 'layoutHome', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-16 08:17:36', '2024-12-16 08:17:36', NULL, '0bd48f19-a61f-4496-9c18-648976c2448a'),
(10, 12, 'Count Icon', 'countIcon', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-16 08:57:58', '2024-12-16 08:57:58', '2024-12-16 09:01:56', '009e30d9-5001-45ef-b70b-f73743ab43d7'),
(11, 13, 'Count Total', 'countTotal', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-16 08:58:29', '2024-12-16 08:58:29', '2024-12-16 09:01:59', 'c331b68d-56f1-4adb-96ad-4b4a28aa89e3'),
(12, 14, 'Count Description', 'countDescription', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-16 08:58:50', '2024-12-16 08:58:50', '2024-12-16 09:01:53', '8ffe7e94-5444-4452-b79b-e6b073f60a48'),
(13, 15, 'Layout Count', 'layoutCount', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-16 09:04:04', '2024-12-16 09:04:04', '2024-12-17 07:34:56', '35af9408-4480-4520-8c5a-9bc88b2e6831'),
(14, 16, 'input Count', 'inputCount', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-17 07:38:51', '2024-12-17 07:38:51', NULL, '1935e245-297f-4f95-9e7c-b083019c1a43'),
(15, 17, 'Layout Count', 'layoutCount', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-17 07:39:41', '2024-12-17 07:39:41', NULL, '35b67ba9-8772-4967-84bd-d5e8fd71105a'),
(16, 18, 'Layout About', 'layoutAbout', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-17 08:17:00', '2024-12-17 08:17:00', NULL, '23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d'),
(17, 19, 'Layout Product', 'layoutProduct', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-17 08:24:31', '2024-12-17 08:24:31', NULL, '957dd5f0-daae-4594-a8d4-390e558d015b'),
(18, 20, 'Input Product', 'inputProduct', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-17 08:29:48', '2024-12-17 08:29:48', '2024-12-19 08:21:33', 'e3feff0b-ec00-433e-bd99-678b95dddc37'),
(19, 21, 'Input Contact', 'inputContact', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-17 09:05:09', '2024-12-17 09:05:09', '2024-12-19 04:50:31', '5a268c70-733e-400b-b2df-b0b2640b81e6'),
(20, 22, 'Layout Contact', 'layoutContact', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-17 09:05:15', '2024-12-18 07:51:38', NULL, '3f853b4a-4459-44c1-9fb3-3c173dde2158'),
(21, 23, 'About Us', 'aboutUs', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-19 04:49:18', '2024-12-19 04:49:18', NULL, 'bffa2fcc-9f6d-417e-b3e9-404d7726cea0'),
(22, 24, 'Navigasi', 'navigasi', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-19 07:01:45', '2024-12-19 07:04:33', NULL, '16c15485-2d15-44e2-b2f9-031f018db061'),
(23, 25, 'Product Page', 'productPage', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-19 07:35:03', '2024-12-19 07:35:03', NULL, '982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce'),
(24, 26, 'Layout About Us', 'layoutAboutUs', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-19 07:57:33', '2024-12-19 07:57:33', NULL, 'f450b812-50df-49fe-b071-a1e2acfe79f9'),
(25, 27, 'Layout Platform', 'layoutPlatform', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-19 08:40:56', '2024-12-19 08:40:56', NULL, '2296a8c2-6424-4be4-91f9-e6d73d17ac0e'),
(26, 28, 'Layout Journey', 'layoutJourney', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-19 09:05:02', '2024-12-19 09:05:02', NULL, 'ff5d9b00-e436-42c7-bfb3-dbc719fb9096'),
(27, 29, 'Layout Facilities', 'layoutFacilities', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-20 01:26:29', '2024-12-20 01:26:29', NULL, 'a690ee2c-a907-442e-9ba7-0035bb472687'),
(28, 30, 'Layout Gallery', 'layoutGallery', NULL, NULL, 0, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-20 01:38:11', '2024-12-20 01:38:11', NULL, '801ae733-bab9-46c1-9010-27d168e4a10f'),
(29, 31, 'People Page', 'peoplePage', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-20 02:38:38', '2024-12-20 02:40:00', NULL, '28c9c6d3-3490-43f3-b0b5-b4801aeb1890'),
(30, 32, 'Layout Management', 'layoutManagement', NULL, NULL, 1, 'site', NULL, NULL, 1, 'site', NULL, 1, '2024-12-20 02:41:55', '2024-12-20 02:41:55', NULL, 'f23489bd-024c-458d-a119-e20db2829502');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `config` json DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `config`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"c5e50162-63ed-4758-ad18-6b202e75ec65\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"22cfbc31-4f9d-4342-bc4e-8ca2aaf21deb\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-13T09:02:33+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"dfb0a5f9-9a2e-446f-b4a7-0ce38f3af139\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"23782e63-3163-4c92-9076-7c4f1c479f7e\", \"required\": false, \"dateAdded\": \"2024-12-16T08:17:49+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-13 09:03:58', '2024-12-16 08:17:49', NULL, '0e2e26ed-e75f-44ca-9043-8cb3880d4bb2'),
(2, 'craft\\elements\\Asset', '{\"tabs\": [{\"uid\": \"d6e0f83e-4347-4006-aba3-f2093e79f813\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"28aa8ad2-ab1a-4138-9e10-6b85af6af133\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"dateAdded\": \"2024-12-14T01:28:28+00:00\", \"inputType\": null, \"requirable\": false, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-14 01:30:53', '2024-12-14 01:30:53', NULL, '2cad1f69-754c-4eb3-8f7b-d22eced2a17b'),
(3, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"d893f223-1cad-481f-b5e8-e1d039bae077\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"c22f89f0-d32f-4cca-8395-5837ed6448eb\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-14T01:31:12+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"6737f1a4-f207-4553-b409-3fd9eb93d704\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"849c69ca-0a92-4ba1-8611-6eeaa6b1194a\", \"required\": false, \"dateAdded\": \"2024-12-14T01:33:27+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-14 01:33:28', '2024-12-14 01:33:28', '2024-12-16 07:52:26', '4e9a7fad-1c76-4e05-9a4e-078f0d03db86'),
(4, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"b13a49a9-0dcb-4af4-a645-557aa595a503\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"667f3bae-5c5c-4cda-8640-455108e2c316\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-14T01:32:32+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"6e19aba0-1dab-475e-9c0b-8074ce367f51\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"bd56fdf9-44d3-4311-9386-c988e7e564b4\", \"required\": false, \"dateAdded\": \"2024-12-14T01:34:37+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-14 01:34:37', '2024-12-14 01:34:37', '2024-12-16 07:52:24', '505a88aa-b818-44e7-ba2e-0b71449cd3d7'),
(5, 'craft\\elements\\GlobalSet', '{\"tabs\": [{\"uid\": \"4085d194-77b0-4102-b62c-dab58898dede\", \"name\": \"Global\", \"elements\": [{\"tip\": null, \"uid\": \"758f497b-9d58-44e5-8d66-297b6c50c22e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"351612e3-9202-4f3d-8020-cbfcefcde6f3\", \"required\": false, \"dateAdded\": \"2024-12-16T08:24:09+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"a82c6208-a9ea-495c-9256-4de6623dba14\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"59e9847f-c73f-42ef-b824-76d5b373a2d1\", \"required\": false, \"dateAdded\": \"2024-12-16T08:25:41+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"50d0ba1f-600c-4eaf-afa2-2eaa51dea9e3\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"b073e097-1f3b-4a55-8863-f4ef2014193b\", \"required\": false, \"dateAdded\": \"2024-12-16T08:26:49+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-14 03:49:32', '2024-12-16 08:26:50', NULL, 'fe45bc00-d2b4-4e00-ab42-4e4e30d63a63'),
(6, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"b8e26dc1-74b4-4027-988f-77fa77f39e87\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"a4a43c2d-a9c9-44ca-9390-d92c13532f20\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"aea4dc83-b392-4468-bf59-b825f22d08b4\", \"required\": false, \"dateAdded\": \"2024-12-14T04:21:11+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-14 04:21:11', '2024-12-14 04:21:11', '2024-12-16 07:52:30', '9561a839-1837-44ea-ac79-d3b4afaabfe7'),
(7, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"f1d8060a-8370-4129-8af3-f9bd0a08a454\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"4201e1e3-2baa-41f6-b170-9a4ed7aeb3e1\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-14T04:39:04+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"ca9098a6-e7be-4e8e-8d9e-e6c48fe50e8e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"849c69ca-0a92-4ba1-8611-6eeaa6b1194a\", \"required\": false, \"dateAdded\": \"2024-12-14T04:40:40+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"70c989dc-eb52-4c0a-bd79-02777875bf64\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"bd56fdf9-44d3-4311-9386-c988e7e564b4\", \"required\": false, \"dateAdded\": \"2024-12-14T04:40:40+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-14 04:40:40', '2024-12-14 04:40:40', '2024-12-16 07:52:33', 'd6498743-bfe6-4a3a-9b31-d24eb4afd9dc'),
(8, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"c8e6bedd-b1cf-40f1-981b-95861b2c4e81\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"1df5bacd-5a41-41a7-8cb9-12a89cfe0ea8\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Home\", \"width\": 100, \"handle\": \"home\", \"warning\": null, \"fieldUid\": \"8df4e961-03a9-4ce2-9522-dff5773f8bb2\", \"required\": false, \"dateAdded\": \"2024-12-14T04:56:32+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"ccf12ccd-86a8-4f1a-81f0-becd8c96e78c\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"8fa0d18e-8e33-4759-be01-bcca3cd76b66\", \"required\": false, \"dateAdded\": \"2024-12-14T04:56:32+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"f7ed7d0c-854f-4bac-b493-103c29514a78\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"212b81e9-e6b7-4205-9434-b10bf98e6e30\", \"required\": false, \"dateAdded\": \"2024-12-14T04:56:32+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-14 04:56:32', '2024-12-16 07:49:22', '2024-12-16 07:52:28', '6bd33871-4713-453b-90ff-8734497efb23'),
(9, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"76458a44-8e34-4557-a087-1d1a5e0a2cd1\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"f1473e77-3c3e-4c7f-b28c-1f5722f42874\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-16T08:16:21+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"eda43917-e552-4c57-a892-69aef5cab36b\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-16T08:16:21+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"87836a9f-ae5f-4937-8a83-a06a2ac726ae\", \"required\": false, \"dateAdded\": \"2024-12-19T08:02:28+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-16 08:16:21', '2024-12-19 08:02:28', NULL, '9143a076-131e-44ab-84e4-0bec86928901'),
(10, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"7b969353-301a-46c8-a3ec-a0b7e3a2b016\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"3a3793e7-cbbb-4941-ad40-e96cefc6c28d\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-16T08:15:26+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"6e20177a-1b97-45ec-94a6-29445daffe44\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-16T08:16:58+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-16 08:16:58', '2024-12-16 08:16:58', NULL, 'a8f399a3-fa29-4155-ae2e-cebaa2f2bec3'),
(11, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"c01b6ede-a76b-4619-935f-6d63c69101a3\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"b5b68f29-39fe-4111-8c65-e087bddacc53\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"c7dee369-fd57-4db4-a378-6af4a2ef33b3\", \"required\": false, \"dateAdded\": \"2024-12-16T08:17:36+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-16 08:17:36', '2024-12-17 07:28:59', NULL, '8c87dc56-be66-4a24-b9d9-0e8b8760e9cc'),
(12, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"24c18924-b1e6-4c8a-b577-8de14c3f0d02\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"f93f30aa-69f3-4d78-9092-c8421a13cbfc\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-16T08:57:58+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-16 08:57:58', '2024-12-16 08:57:58', '2024-12-16 09:01:56', '96fea3da-96cb-4442-80b6-c4dcde382051'),
(13, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"1b56ae2e-4943-46f6-bb3f-ff7040962cca\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"ccc01b2a-c6b0-4fce-ba4a-39d6dd783484\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-16T08:58:29+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-16 08:58:29', '2024-12-16 08:58:29', '2024-12-16 09:01:59', '8438385a-f781-4053-848f-9d5853e80bbc'),
(14, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"cbf616f6-76e7-4816-ad0f-bc3c83135c5b\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"78c1ef0b-550f-4b34-b95b-d5b6b984e593\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-16T08:58:50+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-16 08:58:50', '2024-12-16 08:58:50', '2024-12-16 09:01:53', '592928a0-4019-4961-a794-6958b7e1e591'),
(15, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"0ca732f6-bf76-48ec-b2aa-833546ab4afc\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"1b9ede35-c327-401a-9e3f-004b139fcdde\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Count Icon\", \"width\": 100, \"handle\": \"countIcon\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T07:33:36+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"3fed885b-83a3-43ff-94f7-47e0be473b4c\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Count Total\", \"width\": 100, \"handle\": \"countTotal\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T07:33:36+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"7962e5a6-64b1-4bce-a3b1-5e340ee3467c\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Count Caption\", \"width\": 100, \"handle\": \"countCaption\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T07:33:36+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-16 09:04:04', '2024-12-17 07:33:36', '2024-12-17 07:34:56', '4d0f2036-45b7-411f-bb10-16aeaafeadab'),
(16, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"f10c64b0-1ad9-4491-be52-c91827e72d20\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Icon\", \"width\": 100, \"handle\": \"countIcon\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T07:38:51+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Total\", \"width\": 100, \"handle\": \"countTotal\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T07:38:51+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"83520f31-746b-4d73-87ec-26eef4f17a80\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Caption\", \"width\": 100, \"handle\": \"countCaption\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T07:38:51+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-17 07:38:51', '2024-12-17 07:38:51', NULL, '511b36c6-66b4-4e93-aa19-78f2dce57455'),
(17, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"fd6abaa7-558c-4a1f-93b3-19a29e7e61ca\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"ab4c35d1-a99b-4852-98c4-974c000c2165\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"48436358-4cac-478a-ad18-3ad03acc069f\", \"required\": false, \"dateAdded\": \"2024-12-17T07:39:41+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-17 07:39:41', '2024-12-17 07:39:41', NULL, '573de19e-1a7f-44ca-9dc6-4a7112ee171d'),
(18, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"72282329-1ecc-4129-b3a5-ddd465bcfc3b\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"d5b081c2-017c-4b7e-892c-b2ee610449fe\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5e7e469f-f415-435e-b43b-0077f491bb8f\", \"required\": false, \"dateAdded\": \"2024-12-17T08:17:00+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"b97c3513-b430-4b12-8463-1a8e886b0ea6\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"About Link\", \"width\": 100, \"handle\": \"aboutLink\", \"warning\": null, \"fieldUid\": \"47ab6554-2c28-4a53-bb94-f62ffa323d2d\", \"required\": false, \"dateAdded\": \"2024-12-19T07:50:12+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-17 08:17:00', '2024-12-19 07:50:12', NULL, '94c65ea1-326f-4b57-a12e-38166a143c9c'),
(19, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"552154cc-8dcc-428d-8f75-74879f7a0a2c\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"0ff8846e-e928-475b-ad85-df6de6d4f1b9\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-17T08:22:41+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"4a503d03-1bc4-4761-b199-765407c909d1\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Produk Link\", \"width\": 100, \"handle\": \"produkLink\", \"warning\": null, \"fieldUid\": \"47ab6554-2c28-4a53-bb94-f62ffa323d2d\", \"required\": false, \"dateAdded\": \"2024-12-19T07:47:28+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-17 08:24:31', '2024-12-19 07:47:28', NULL, 'ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee'),
(20, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"33d47700-54e4-4173-9600-b84b2a93b2e3\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"699dee9a-4aa3-4fae-be2e-e62a842d798b\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-17T08:27:21+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"85e7f211-7495-4a72-a4d9-d9869f6099d1\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Deskripsi\", \"width\": 100, \"handle\": \"productDeskripsi\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T08:29:48+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"7968b039-e213-4d8f-bf99-63a2e4edf545\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Gambar\", \"width\": 100, \"handle\": \"productGambar\", \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-17T08:29:48+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-17 08:29:48', '2024-12-17 08:29:48', '2024-12-19 08:21:33', '10399e5a-9b36-4a59-a835-f5ea78fb6b66'),
(21, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"cc3f29a8-b4f8-4001-aa7b-e4a24951b05d\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"1f1fc377-9784-43ec-bdad-6eb6b7a1711d\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-17T09:03:50+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"77a411cb-9ef5-4f15-9fde-1d87c134336e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T09:05:09+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"6fb0b57b-5a02-4e90-809d-81ffcbf7bb67\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": \"body2\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T09:08:04+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"dec364b5-9d76-4063-b05b-9a93133a398b\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": \"body3\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T09:08:04+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"4e0b816a-2ad1-47e3-8571-652bd43c2ce7\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": \"body4\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-17T09:08:04+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-17 09:05:09', '2024-12-17 09:08:04', '2024-12-19 04:50:31', 'b1128255-c534-4221-ba74-b7c0bcb6c5c1'),
(22, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"553672ac-c50d-4235-bb71-26712101c7c6\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"1f6bcc96-271f-4075-9fb7-1c836274e2b7\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-18T07:51:38+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-17 09:05:15', '2024-12-19 04:44:36', NULL, '041513a3-d8dc-4761-9a83-f152bc4f8b57'),
(23, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"9c96ed45-8ba8-43e2-b778-b1ad92317717\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"ee0bbaf6-e112-4ed3-9ed8-de5e2a2cfd95\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-19T04:48:01+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"33eae665-d5a8-480a-a021-8b8191444c96\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"23782e63-3163-4c92-9076-7c4f1c479f7e\", \"required\": false, \"dateAdded\": \"2024-12-19T04:50:10+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-19 04:49:18', '2024-12-19 04:50:10', NULL, 'f6335658-d914-4496-ae7e-38ab534ed35e'),
(24, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"6b0ac9f1-ceb4-4cf9-8b9d-06d55574b7d8\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"9344e3bc-cb9a-435b-8749-6bb379a44a59\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-19T07:04:33+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"3312be43-8e24-47f8-8a22-5f3aec4df2e4\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"47ab6554-2c28-4a53-bb94-f62ffa323d2d\", \"required\": false, \"dateAdded\": \"2024-12-19T07:01:45+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-19 07:01:45', '2024-12-19 07:04:33', NULL, '2e77b349-5c64-4461-a18f-d474e326c290'),
(25, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"b4775fab-e96f-4bb1-8a86-322586fd2f47\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"52eb8da4-ff50-4a50-8f35-6808d02bc42f\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-19T07:28:17+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"43e95259-5a39-43ff-8097-a1297da17eb5\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Logo Produk\", \"width\": 100, \"handle\": \"logoProduk\", \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-19T07:35:03+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"910f26dd-3204-470a-b4d6-9c9a6bf8e293\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Gambar Produk\", \"width\": 100, \"handle\": \"gambarProduk\", \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-19T07:35:03+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"accde8e3-c0a6-4e21-a71b-ad87ec07755e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Deskripsi Produk\", \"width\": 100, \"handle\": \"deskripsiProduk\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-19T07:35:03+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"1586bb87-afba-4f1a-a365-c067e48c3b07\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Link Produk\", \"width\": 100, \"handle\": \"linkProduk\", \"warning\": null, \"fieldUid\": \"47ab6554-2c28-4a53-bb94-f62ffa323d2d\", \"required\": false, \"dateAdded\": \"2024-12-19T07:37:23+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-19 07:35:03', '2024-12-19 07:37:23', NULL, '49ca11dd-89a7-4b98-ad65-33c8af3d07e3'),
(26, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"94b3206d-c856-4119-a017-06cb1cafa85f\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"513471ec-cdf0-4c76-9bca-6a3034749062\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-19T07:55:02+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"a99ab77a-6706-42e8-9680-91266b415a1b\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5e7e469f-f415-435e-b43b-0077f491bb8f\", \"required\": false, \"dateAdded\": \"2024-12-19T07:57:33+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"47f36e0a-ecb4-4076-9343-41e52a018dd0\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"223b766e-568f-447c-98b0-d3f6bbeab860\", \"required\": false, \"dateAdded\": \"2024-12-19T08:21:24+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"b831de72-6748-4a25-96f6-af3f532f3782\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"5b8d2dcc-376f-4cae-9f71-1c8313af3bb4\", \"required\": false, \"dateAdded\": \"2024-12-19T08:21:24+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-19 07:57:33', '2024-12-19 08:21:24', NULL, '031c7190-9d63-4512-86ad-2f835f49c7f3'),
(27, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"ee92b4de-31d6-487b-80bd-3845c3519bd5\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"8e9132a4-7581-44f1-bc84-b94c316cae5c\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-19T08:38:41+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"63c6bdd5-3b10-42b2-a476-cd06d73ebdb8\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-19T08:40:56+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"11457d86-dc9e-4c4a-a6e1-7245bf3420ac\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-19T08:40:56+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"020a436e-41ff-46a2-8752-16f5ef612e19\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"87836a9f-ae5f-4937-8a83-a06a2ac726ae\", \"required\": false, \"dateAdded\": \"2024-12-19T08:40:56+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-19 08:40:56', '2024-12-19 08:40:56', NULL, 'b8db917f-6a74-414d-8d25-153eefc6105a'),
(28, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"d8a72109-a2cc-4b54-a0e8-49c37827aab6\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"79f1a256-b791-439d-ac3d-ce91613a5d23\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-19T09:05:02+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"9673e4b9-b308-4f2a-a02a-54d96f486bd1\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-19T09:05:02+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-19 09:05:02', '2024-12-19 09:05:02', NULL, '922cba56-7069-408f-aa43-1a054d0c045a'),
(29, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"971f0a4f-f503-4247-aa29-33a44ccb822a\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"bb1f3492-6e9e-4b29-b94a-0aec3bc65efd\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-20T01:24:38+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"1c048d07-4cda-4574-bd42-d598c6b983b3\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-20T01:26:29+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"385fc8dd-8b09-40e0-a190-f2e0dbb345a6\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-20T01:26:29+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-20 01:26:29', '2024-12-20 01:26:29', NULL, '19bedd77-d3d9-47a4-9a55-652d0250884f'),
(30, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"d422f1f4-b157-457b-9e94-c9028477e6bf\", \"name\": \"Content\", \"elements\": [{\"tip\": null, \"uid\": \"62bbe082-a074-4f51-8737-67de89be7d8e\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"Image Gallery\", \"width\": 100, \"handle\": \"imageGallery\", \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-20T01:38:11+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"8b21ca4c-f2e5-401d-9542-4b56ca270800\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": null, \"width\": 100, \"handle\": null, \"warning\": null, \"fieldUid\": \"dde45219-4f2c-4aab-b99c-e4e0dd36e4ef\", \"required\": false, \"dateAdded\": \"2024-12-20T01:38:11+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-20 01:38:11', '2024-12-20 01:38:11', NULL, '73b5153c-df44-47fe-80e2-4af28195d4de'),
(31, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"65981716-5648-4619-a3b6-7e2e659d57b2\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"b685d26e-923e-4a7e-ba66-fec61534569e\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-20T02:40:00+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}, {\"tip\": null, \"uid\": \"383e24df-4b59-44ec-9614-5245ba558846\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"People Name\", \"width\": 100, \"handle\": \"peopleName\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-20T02:38:38+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"2ca21f00-5ec7-40ac-8d07-0316a6036b5f\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"People Status\", \"width\": 100, \"handle\": \"peopleStatus\", \"warning\": null, \"fieldUid\": \"e694772e-9370-41bc-98e7-5bea324a09e4\", \"required\": false, \"dateAdded\": \"2024-12-20T02:38:38+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}, {\"tip\": null, \"uid\": \"250e07ce-3b56-4356-95e4-779182337a66\", \"type\": \"craft\\\\fieldlayoutelements\\\\CustomField\", \"label\": \"People Image\", \"width\": 100, \"handle\": \"peopleImage\", \"warning\": null, \"fieldUid\": \"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\", \"required\": false, \"dateAdded\": \"2024-12-20T02:38:38+00:00\", \"instructions\": null, \"userCondition\": null, \"includeInCards\": false, \"providesThumbs\": false, \"elementCondition\": null}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-20 02:38:38', '2024-12-20 02:40:00', NULL, '66afc82d-5d36-455e-a5a4-0f92c1f4c12e');
INSERT INTO `fieldlayouts` (`id`, `type`, `config`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(32, 'craft\\elements\\Entry', '{\"tabs\": [{\"uid\": \"d1eaa9aa-66a1-4eab-873c-f99ba0cd975c\", \"name\": \"Content\", \"elements\": [{\"id\": null, \"max\": null, \"min\": null, \"tip\": null, \"uid\": \"60d7d654-42d6-48b8-b077-a2c3f7d8cb8a\", \"name\": null, \"size\": null, \"step\": null, \"type\": \"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\", \"class\": null, \"label\": null, \"title\": null, \"width\": 100, \"warning\": null, \"disabled\": false, \"readonly\": false, \"required\": true, \"dateAdded\": \"2024-12-20T02:40:30+00:00\", \"inputType\": null, \"autocorrect\": true, \"orientation\": null, \"placeholder\": null, \"autocomplete\": false, \"instructions\": null, \"userCondition\": null, \"autocapitalize\": true, \"includeInCards\": false, \"providesThumbs\": false, \"labelAttributes\": [], \"elementCondition\": null, \"containerAttributes\": [], \"inputContainerAttributes\": []}], \"userCondition\": null, \"elementCondition\": null}], \"cardView\": []}', '2024-12-20 02:41:55', '2024-12-20 02:41:55', NULL, 'cf2c60fa-2900-4be9-9ea2-840431708f54');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `columnSuffix` char(8) DEFAULT NULL,
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `handle`, `context`, `columnSuffix`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Body', 'body', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2024-12-14 01:33:21', '2024-12-14 01:33:21', '2024-12-16 07:51:53', '849c69ca-0a92-4ba1-8611-6eeaa6b1194a'),
(2, 'Body Image', 'bodyImage', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-14 01:34:31', '2024-12-14 01:34:31', '2024-12-16 07:51:56', 'bd56fdf9-44d3-4311-9386-c988e7e564b4'),
(3, 'Colomn2', 'colomn2', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"070053ba-96c8-433d-9ac2-bf43330e2b89\",\"1e27297c-582c-45c4-9355-827f680cd44e\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":true,\"viewMode\":\"cards\"}', '2024-12-14 01:35:03', '2024-12-14 03:35:30', '2024-12-16 07:51:59', '8df4e961-03a9-4ce2-9522-dff5773f8bb2'),
(4, 'About', 'about', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"070053ba-96c8-433d-9ac2-bf43330e2b89\",\"1e27297c-582c-45c4-9355-827f680cd44e\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":true,\"viewMode\":\"cards\"}', '2024-12-14 03:39:36', '2024-12-14 03:39:36', '2024-12-16 07:51:51', '8fa0d18e-8e33-4759-be01-bcca3cd76b66'),
(5, 'Logo', 'logo', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-14 03:49:03', '2024-12-14 03:49:03', '2024-12-16 07:52:04', '0450cab4-c2d9-45a5-9593-e3dba487c7cb'),
(6, 'Logo Putih', 'logoPutih', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-14 04:10:18', '2024-12-14 04:10:18', '2024-12-16 07:52:09', 'dd1cdb3b-6b3b-44a4-88e7-c52ee26f6672'),
(7, 'Logo Icon', 'logoIcon', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-14 04:11:16', '2024-12-14 04:11:16', '2024-12-16 07:52:06', '7a5558a2-39db-4f39-849b-083bb6164930'),
(8, 'Product Body', 'productBody', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"91592db8-9200-46a0-8c0e-834760b21e0f\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":false,\"viewMode\":\"cards\"}', '2024-12-14 04:21:05', '2024-12-14 04:40:43', '2024-12-16 07:52:13', 'aea4dc83-b392-4468-bf59-b825f22d08b4'),
(9, 'Product', 'product', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"b0692c8f-13c6-42c6-a2b2-153cc6bcf186\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":true,\"viewMode\":\"cards\"}', '2024-12-14 04:21:15', '2024-12-14 04:24:24', '2024-12-16 07:52:11', '212b81e9-e6b7-4205-9434-b10bf98e6e30'),
(10, 'Layout', 'layout', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minEntries\":null,\"maxEntries\":null,\"viewMode\":\"cards\",\"showCardsInGrid\":false,\"includeTableView\":false,\"defaultTableColumns\":[],\"defaultIndexViewMode\":\"cards\",\"pageSize\":50,\"createButtonLabel\":null,\"propagationMethod\":\"all\",\"propagationKeyFormat\":null,\"siteSettings\":{\"64e53b69-ab01-497f-a11b-5a0e1ec07062\":[]},\"entryTypes\":[\"5ada7ebd-ad51-423b-bd67-9c7d59cdfc83\"]}', '2024-12-14 04:56:38', '2024-12-16 07:49:24', '2024-12-16 07:52:01', '367b5cea-1ee9-40b1-84dc-7d23cc24df69'),
(11, 'Body', 'body', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":false,\"initialRows\":4,\"multiline\":false,\"placeholder\":null,\"uiMode\":\"normal\"}', '2024-12-16 08:16:17', '2024-12-16 08:16:17', NULL, 'e694772e-9370-41bc-98e7-5bea324a09e4'),
(12, 'Body Image', 'bodyImage', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-16 08:16:53', '2024-12-16 08:16:53', NULL, '9c7052fe-6ae0-4dc9-b800-6447324e9ca6'),
(13, 'Home', 'home', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":\"Add Home\",\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"82e626b9-e432-44f0-b956-372ceb9dcb88\",\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":true,\"viewMode\":\"cards\"}', '2024-12-16 08:17:02', '2024-12-16 08:19:47', NULL, 'c7dee369-fd57-4db4-a378-6af4a2ef33b3'),
(14, 'Page Builder', 'pageBuilder', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":\"Add Block\",\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"0bd48f19-a61f-4496-9c18-648976c2448a\",\"35b67ba9-8772-4967-84bd-d5e8fd71105a\",\"23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d\",\"957dd5f0-daae-4594-a8d4-390e558d015b\",\"3f853b4a-4459-44c1-9fb3-3c173dde2158\",\"f450b812-50df-49fe-b071-a1e2acfe79f9\",\"2296a8c2-6424-4be4-91f9-e6d73d17ac0e\",\"ff5d9b00-e436-42c7-bfb3-dbc719fb9096\",\"a690ee2c-a907-442e-9ba7-0035bb472687\",\"801ae733-bab9-46c1-9010-27d168e4a10f\",\"f23489bd-024c-458d-a119-e20db2829502\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":null,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":false,\"viewMode\":\"blocks\"}', '2024-12-16 08:17:43', '2024-12-20 02:42:16', NULL, '23782e63-3163-4c92-9076-7c4f1c479f7e'),
(15, 'Logo Icon', 'logoIcon', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-16 08:23:43', '2024-12-16 08:23:43', NULL, '351612e3-9202-4f3d-8020-cbfcefcde6f3'),
(16, 'Logo', 'logo', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-16 08:25:36', '2024-12-16 08:25:36', NULL, '59e9847f-c73f-42ef-b824-76d5b373a2d1'),
(17, 'Logo Putih', 'logoPutih', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowSubfolders\":false,\"allowUploads\":true,\"allowedKinds\":null,\"branchLimit\":null,\"defaultUploadLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"defaultUploadLocationSubpath\":null,\"maintainHierarchy\":false,\"maxRelations\":null,\"minRelations\":null,\"previewMode\":\"full\",\"restrictFiles\":false,\"restrictLocation\":false,\"restrictedDefaultUploadSubpath\":null,\"restrictedLocationSource\":\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\",\"restrictedLocationSubpath\":null,\"selectionLabel\":null,\"showCardsInGrid\":false,\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2024-12-16 08:26:44', '2024-12-16 08:26:44', NULL, 'b073e097-1f3b-4a55-8863-f4ef2014193b'),
(18, 'Count', 'count', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"1935e245-297f-4f95-9e7c-b083019c1a43\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":false,\"viewMode\":\"cards\"}', '2024-12-16 08:58:54', '2024-12-17 07:38:56', NULL, '48436358-4cac-478a-ad18-3ad03acc069f'),
(19, 'About', 'about', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minEntries\":null,\"maxEntries\":null,\"viewMode\":\"cards\",\"showCardsInGrid\":true,\"includeTableView\":false,\"defaultTableColumns\":[],\"defaultIndexViewMode\":\"cards\",\"pageSize\":50,\"createButtonLabel\":null,\"propagationMethod\":\"all\",\"propagationKeyFormat\":null,\"siteSettings\":{\"64e53b69-ab01-497f-a11b-5a0e1ec07062\":[]},\"entryTypes\":[\"82e626b9-e432-44f0-b956-372ceb9dcb88\",\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\"]}', '2024-12-17 08:16:54', '2024-12-19 08:02:32', NULL, '5e7e469f-f415-435e-b43b-0077f491bb8f'),
(20, 'Product Category', 'productCategory', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"e3feff0b-ec00-433e-bd99-678b95dddc37\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":false,\"viewMode\":\"cards\"}', '2024-12-17 08:29:51', '2024-12-17 08:29:51', '2024-12-17 08:57:47', 'b4368d7b-e8fc-45f6-921a-9481bf228be4'),
(21, 'Product List', 'productList', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":\"Add Product\",\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"e3feff0b-ec00-433e-bd99-678b95dddc37\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":true,\"viewMode\":\"cards\"}', '2024-12-17 08:30:53', '2024-12-17 08:31:17', '2024-12-19 07:46:41', '86d4faa4-b753-4fc5-bd95-0eb421ea5909'),
(22, 'Contact', 'contact', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minEntries\":null,\"maxEntries\":null,\"viewMode\":\"cards\",\"showCardsInGrid\":true,\"includeTableView\":false,\"defaultTableColumns\":[],\"defaultIndexViewMode\":\"cards\",\"pageSize\":50,\"createButtonLabel\":null,\"propagationMethod\":\"all\",\"propagationKeyFormat\":null,\"siteSettings\":{\"64e53b69-ab01-497f-a11b-5a0e1ec07062\":[]},\"entryTypes\":[\"5a268c70-733e-400b-b2df-b0b2640b81e6\"]}', '2024-12-17 09:05:11', '2024-12-17 09:08:06', '2024-12-18 07:51:48', 'f050b5c8-3148-4775-a553-0a01195299bc'),
(23, 'Nav Link', 'navLink', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Link', '{\"maxLength\":255,\"showLabelField\":false,\"showTargetField\":false,\"typeSettings\":{\"url\":{\"allowRootRelativeUrls\":\"\",\"allowAnchors\":\"1\"}},\"types\":[\"url\"]}', '2024-12-19 07:01:39', '2024-12-19 07:01:39', NULL, '47ab6554-2c28-4a53-bb94-f62ffa323d2d'),
(24, 'Body Editor', 'bodyEditor', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\ckeditor\\Field', '{\"availableTransforms\":\"\",\"availableVolumes\":\"*\",\"ckeConfig\":\"95eea75c-5184-442c-aa2b-a95999a7d093\",\"createButtonLabel\":null,\"defaultTransform\":null,\"enableSourceEditingForNonAdmins\":false,\"purifierConfig\":null,\"purifyHtml\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"showWordCount\":false,\"wordLimit\":null}', '2024-12-19 08:02:20', '2024-12-19 08:03:14', NULL, '87836a9f-ae5f-4937-8a83-a06a2ac726ae'),
(25, 'About 2', 'about2', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"createButtonLabel\":null,\"defaultIndexViewMode\":\"cards\",\"entryTypes\":[\"82e626b9-e432-44f0-b956-372ceb9dcb88\",\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\"],\"includeTableView\":false,\"maxEntries\":null,\"minEntries\":null,\"pageSize\":50,\"propagationKeyFormat\":null,\"propagationMethod\":\"all\",\"showCardsInGrid\":true,\"viewMode\":\"cards\"}', '2024-12-19 08:19:45', '2024-12-19 08:28:20', NULL, '223b766e-568f-447c-98b0-d3f6bbeab860'),
(26, 'About 3', 'about3', 'global', NULL, NULL, 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"minEntries\":null,\"maxEntries\":null,\"viewMode\":\"cards\",\"showCardsInGrid\":true,\"includeTableView\":false,\"defaultTableColumns\":[],\"defaultIndexViewMode\":\"cards\",\"pageSize\":50,\"createButtonLabel\":null,\"propagationMethod\":\"all\",\"propagationKeyFormat\":null,\"siteSettings\":{\"64e53b69-ab01-497f-a11b-5a0e1ec07062\":[]},\"entryTypes\":[\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\",\"82e626b9-e432-44f0-b956-372ceb9dcb88\"]}', '2024-12-19 08:21:18', '2024-12-19 08:30:10', NULL, '5b8d2dcc-376f-4cae-9f71-1c8313af3bb4'),
(27, 'Option Gallery', 'optionGallery', 'global', NULL, NULL, 0, 'none', NULL, 'craft\\fields\\Dropdown', '{\"customOptions\":false,\"options\":[{\"label\":\"Slider\",\"value\":\"slider\",\"default\":\"\"},{\"label\":\"Grid\",\"value\":\"grid\",\"default\":\"\"}]}', '2024-12-20 01:37:46', '2024-12-20 01:37:46', NULL, 'dde45219-4f2c-4aab-b99c-e4e0dd36e4ef');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `globalsets`
--

INSERT INTO `globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(41, 'Site Info', 'siteInfo', 5, 1, '2024-12-14 03:49:32', '2024-12-14 03:49:32', '858bea49-abde-413c-ac37-8e6f094f6028');

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` json DEFAULT NULL,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gqlschemas`
--

INSERT INTO `gqlschemas` (`id`, `name`, `scope`, `isPublic`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Schema', '[\"sites.64e53b69-ab01-497f-a11b-5a0e1ec07062:read\", \"elements.drafts:read\", \"elements.revisions:read\", \"elements.inactive:read\", \"sections.1cf35403-22fd-43da-ba82-9eb6da059f47:read\", \"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:read\", \"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:read\", \"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:read\", \"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:read\", \"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:read\", \"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:read\", \"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:read\", \"globalsets.858bea49-abde-413c-ac37-8e6f094f6028:read\", \"sections.1cf35403-22fd-43da-ba82-9eb6da059f47:save\", \"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:edit\", \"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:create\", \"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:save\", \"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:delete\", \"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:edit\", \"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:create\", \"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:save\", \"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:delete\", \"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:edit\", \"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:create\", \"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:save\", \"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:delete\", \"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:edit\", \"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:create\", \"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:save\", \"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:delete\", \"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:edit\", \"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:create\", \"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:save\", \"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:delete\", \"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:edit\", \"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:create\", \"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:save\", \"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:delete\", \"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:edit\", \"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:create\", \"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:save\", \"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:delete\", \"globalsets.858bea49-abde-413c-ac37-8e6f094f6028:edit\"]', 1, '2024-12-17 08:50:35', '2024-12-18 03:08:37', 'd37a8f3f-5e35-46a0-a589-0f815b4a37c0');

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gqltokens`
--

INSERT INTO `gqltokens` (`id`, `name`, `accessToken`, `enabled`, `expiryDate`, `lastUsed`, `schemaId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Public Token', '__PUBLIC__', 1, NULL, NULL, NULL, '2024-12-18 03:08:37', '2024-12-18 03:08:37', '0344c79d-06d0-41e3-baee-a7f7f4eb1f83'),
(2, 'GRAPHQL_TOKEN', 'kFvuFBfXHI9PKmPDqocur4rIl1x3NU5V', 1, NULL, NULL, NULL, '2024-12-18 03:09:11', '2024-12-18 03:09:11', '8691e154-a96e-468c-8a0c-4a227e0cd492');

-- --------------------------------------------------------

--
-- Table structure for table `imagetransformindex`
--

CREATE TABLE `imagetransformindex` (
  `id` int NOT NULL,
  `assetId` int NOT NULL,
  `transformer` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `transformString` varchar(255) NOT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `imagetransformindex`
--

INSERT INTO `imagetransformindex` (`id`, `assetId`, `transformer`, `filename`, `format`, `transformString`, `fileExists`, `inProgress`, `error`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 9, 'craft\\imagetransforms\\ImageTransformer', '1.jpg', NULL, '_30x16_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:17', '2024-12-14 01:37:17', '2024-12-14 01:37:18', '61cf6f3e-0f45-4f1c-afe8-a4262c72b143'),
(2, 9, 'craft\\imagetransforms\\ImageTransformer', '1.jpg', NULL, '_60x33_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:17', '2024-12-14 01:37:17', '2024-12-14 01:37:19', 'd1a85f90-dd19-419c-8746-9b9cc79ef543'),
(3, 10, 'craft\\imagetransforms\\ImageTransformer', '2.jpg', NULL, '_30x16_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:23', '2024-12-14 01:37:23', '2024-12-14 01:37:24', '56731d8e-d701-4392-986d-9a076a2cb86d'),
(4, 10, 'craft\\imagetransforms\\ImageTransformer', '2.jpg', NULL, '_60x33_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:24', '2024-12-14 01:37:24', '2024-12-14 01:37:28', '0fe040a8-c9c6-432f-a3c0-0804dae93597'),
(5, 11, 'craft\\imagetransforms\\ImageTransformer', '3.jpg', NULL, '_30x16_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:28', '2024-12-14 01:37:28', '2024-12-14 01:37:28', '3f99f61d-73ff-48ae-ad5f-b17fb5f5758a'),
(6, 11, 'craft\\imagetransforms\\ImageTransformer', '3.jpg', NULL, '_60x33_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:28', '2024-12-14 01:37:28', '2024-12-14 01:37:28', 'c43e1c53-d6e1-4d6e-9ff2-5eeb1f778587'),
(7, 12, 'craft\\imagetransforms\\ImageTransformer', '4.jpg', NULL, '_30x16_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:32', '2024-12-14 01:37:32', '2024-12-14 01:37:32', '3bcf61f1-2124-4717-98c5-c10a5cddbcb2'),
(8, 12, 'craft\\imagetransforms\\ImageTransformer', '4.jpg', NULL, '_60x33_crop_center-center_none', 1, 0, 0, '2024-12-14 01:37:32', '2024-12-14 01:37:32', '2024-12-14 01:39:36', '5fd0866f-4e83-4aa9-b959-386d7a8a1f2d'),
(9, 9, 'craft\\imagetransforms\\ImageTransformer', '1.jpg', NULL, '_337x190_crop_center-center_none', 1, 0, 0, '2024-12-14 02:39:06', '2024-12-14 02:39:06', '2024-12-14 02:39:07', 'b43416d7-c1a7-4b8e-88d1-372853487887'),
(10, 9, 'craft\\imagetransforms\\ImageTransformer', '1.jpg', NULL, '_674x380_crop_center-center_none', 1, 0, 0, '2024-12-14 02:39:06', '2024-12-14 02:39:06', '2024-12-14 02:39:08', '4e407277-111e-457e-9c6c-40222efc6603'),
(11, 9, 'craft\\imagetransforms\\ImageTransformer', '1.jpg', NULL, '_1000x562_crop_center-center_none', 1, 0, 0, '2024-12-14 02:39:10', '2024-12-14 02:39:10', '2024-12-14 02:39:10', '3ec7addf-3daf-4553-be3b-5d29e8ba3aa5'),
(12, 35, 'craft\\imagetransforms\\ImageTransformer', 'image2.jpg', NULL, '_30x20_crop_center-center_none', 1, 0, 0, '2024-12-14 03:43:50', '2024-12-14 03:43:50', '2024-12-14 03:43:51', 'd55d600b-671c-4247-81b1-539b1f96381f'),
(13, 35, 'craft\\imagetransforms\\ImageTransformer', 'image2.jpg', NULL, '_60x40_crop_center-center_none', 1, 0, 0, '2024-12-14 03:43:50', '2024-12-14 03:43:50', '2024-12-14 03:46:59', '4c8282d2-5d8f-4e0f-aebc-83b426b003d0'),
(14, 42, 'craft\\imagetransforms\\ImageTransformer', 'newLogo2.png', NULL, '_19x30_crop_center-center_none', 1, 0, 0, '2024-12-14 03:52:30', '2024-12-14 03:52:30', '2024-12-14 03:52:30', '16a1674d-3176-49cb-a396-0d8ab8e38da3'),
(15, 42, 'craft\\imagetransforms\\ImageTransformer', 'newLogo2.png', NULL, '_39x60_crop_center-center_none', 1, 0, 0, '2024-12-14 03:52:30', '2024-12-14 03:52:30', '2024-12-14 04:05:29', '9a1b8795-3d1e-4cf0-b6e2-9ca400c44560'),
(16, 43, 'craft\\imagetransforms\\ImageTransformer', 'newLogo2-putih.png', NULL, '_18x30_crop_center-center_none', 1, 0, 0, '2024-12-14 04:10:34', '2024-12-14 04:10:34', '2024-12-14 04:10:34', '1b1f5d5b-d8af-4d9a-b7a9-3547f4e3c8b0'),
(17, 43, 'craft\\imagetransforms\\ImageTransformer', 'newLogo2-putih.png', NULL, '_37x60_crop_center-center_none', 1, 0, 0, '2024-12-14 04:10:34', '2024-12-14 04:10:34', '2024-12-14 04:10:41', '46d1a51d-faa0-4020-a7f6-52e8e13d10cf'),
(18, 44, 'craft\\imagetransforms\\ImageTransformer', 'newLogo2-128.png', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-14 04:17:01', '2024-12-14 04:17:01', '2024-12-14 04:17:01', '1c1b8b36-6bc8-4c38-92d4-80a936d36285'),
(19, 44, 'craft\\imagetransforms\\ImageTransformer', 'newLogo2-128.png', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-14 04:17:01', '2024-12-14 04:17:01', '2024-12-14 04:17:02', '79ed52b4-19ca-4437-910b-3048507be97e'),
(20, 49, 'craft\\imagetransforms\\ImageTransformer', 'dokterpost-logo.png', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-14 04:22:05', '2024-12-14 04:22:05', '2024-12-14 04:22:05', 'bc322cf9-6129-4d0a-8946-88a8ea7ec72a'),
(21, 49, 'craft\\imagetransforms\\ImageTransformer', 'dokterpost-logo.png', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-14 04:22:05', '2024-12-14 04:22:05', '2024-12-14 04:22:05', '2713995f-b64e-440e-93c0-34c972c1afce'),
(22, 53, 'craft\\imagetransforms\\ImageTransformer', 'doktercares-logo.png', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-14 04:23:11', '2024-12-14 04:23:11', '2024-12-14 04:23:11', '415d0143-9dfd-4f04-b538-6e389f2fe5a3'),
(23, 53, 'craft\\imagetransforms\\ImageTransformer', 'doktercares-logo.png', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-14 04:23:11', '2024-12-14 04:23:11', '2024-12-14 04:23:11', '8495f629-293c-4840-8162-5ed58ea29206'),
(24, 224, 'craft\\imagetransforms\\ImageTransformer', 'about1.jpg', NULL, '_30x20_crop_center-center_none', 1, 0, 0, '2024-12-19 04:53:58', '2024-12-19 04:53:58', '2024-12-19 04:53:58', '72356a4a-bb1a-493f-82fb-3a8519675514'),
(25, 224, 'craft\\imagetransforms\\ImageTransformer', 'about1.jpg', NULL, '_60x40_crop_center-center_none', 1, 0, 0, '2024-12-19 04:53:58', '2024-12-19 04:53:58', '2024-12-19 04:53:58', '068a9e74-1fd5-477f-804b-4acbcf29a507'),
(26, 267, 'craft\\imagetransforms\\ImageTransformer', '1.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:52', '2024-12-19 07:35:53', '2024-12-19 07:35:53', 'e92f7487-30a7-48cd-9a52-2ee6b8a875c7'),
(27, 267, 'craft\\imagetransforms\\ImageTransformer', '1.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:53', '2024-12-19 07:35:53', '2024-12-19 07:35:55', '4fa09dbc-81ce-4730-aa15-96f6ea0bb765'),
(28, 268, 'craft\\imagetransforms\\ImageTransformer', '2.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:53', '2024-12-19 07:35:53', '2024-12-19 07:35:54', 'ed63fb52-39cc-4bb8-9f55-ec026229f3ec'),
(29, 268, 'craft\\imagetransforms\\ImageTransformer', '2.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:53', '2024-12-19 07:35:53', '2024-12-19 07:35:55', '5a78a0a3-6c72-4a2d-8343-d5d993831337'),
(30, 269, 'craft\\imagetransforms\\ImageTransformer', '3.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:55', '2024-12-19 07:35:55', '2024-12-19 07:35:56', '5c64deac-1757-4ac2-9dab-5693b4dcbd79'),
(31, 269, 'craft\\imagetransforms\\ImageTransformer', '3.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:55', '2024-12-19 07:35:55', '2024-12-19 07:35:56', 'dd357915-4abf-46e2-a002-e458f4ed8b42'),
(32, 270, 'craft\\imagetransforms\\ImageTransformer', '4.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:56', '2024-12-19 07:35:56', '2024-12-19 07:35:58', '21994bff-f1af-4b25-86cc-6de2df815150'),
(33, 270, 'craft\\imagetransforms\\ImageTransformer', '4.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:56', '2024-12-19 07:35:56', '2024-12-19 07:35:59', '9c8e0205-2d61-410b-b9e5-0574127c422a'),
(34, 271, 'craft\\imagetransforms\\ImageTransformer', '5.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:58', '2024-12-19 07:35:58', '2024-12-19 07:35:59', '8e4124e1-4466-45eb-9600-b176e6bdbb6b'),
(35, 271, 'craft\\imagetransforms\\ImageTransformer', '5.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:58', '2024-12-19 07:35:58', '2024-12-19 07:35:59', '555c8c0c-5ff4-40fc-afab-e3f085e5a52b'),
(36, 272, 'craft\\imagetransforms\\ImageTransformer', '6.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:59', '2024-12-19 07:35:59', '2024-12-19 07:36:01', '5248131c-e881-4153-aeca-20036f164754'),
(37, 272, 'craft\\imagetransforms\\ImageTransformer', '6.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:35:59', '2024-12-19 07:35:59', '2024-12-19 07:36:01', '94cb8373-a08c-42b9-bb0a-59ec31dfd9b3'),
(38, 273, 'craft\\imagetransforms\\ImageTransformer', '7.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:01', '2024-12-19 07:36:01', '2024-12-19 07:36:03', '4359bfb1-32b4-4f74-ad21-e2106e4c8362'),
(39, 273, 'craft\\imagetransforms\\ImageTransformer', '7.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:01', '2024-12-19 07:36:01', '2024-12-19 07:36:04', '3075b8db-63e7-4405-82a1-7638dbf54d55'),
(40, 274, 'craft\\imagetransforms\\ImageTransformer', '8.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:03', '2024-12-19 07:36:03', '2024-12-19 07:36:04', 'fa33ad1b-9c16-4cd6-9692-b46951cb795a'),
(41, 274, 'craft\\imagetransforms\\ImageTransformer', '8.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:03', '2024-12-19 07:36:03', '2024-12-19 07:36:05', '85a37a35-5053-422b-926e-fa7938d4b60b'),
(42, 275, 'craft\\imagetransforms\\ImageTransformer', '9.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:04', '2024-12-19 07:36:04', '2024-12-19 07:36:05', '89b2e2d1-d1ce-4459-b70e-6ff9d9cdfd6c'),
(43, 275, 'craft\\imagetransforms\\ImageTransformer', '9.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:04', '2024-12-19 07:36:04', '2024-12-19 07:36:05', '851626b4-7a63-4b04-aa88-583af0c3466c'),
(44, 276, 'craft\\imagetransforms\\ImageTransformer', '10.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:06', '2024-12-19 07:36:06', '2024-12-19 07:36:07', '34db62e4-9f51-4fe1-944e-6d7f326bf1eb'),
(45, 276, 'craft\\imagetransforms\\ImageTransformer', '10.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:06', '2024-12-19 07:36:06', '2024-12-19 07:36:08', '2ec4e836-6def-4280-99a9-7f30f23dbe3c'),
(46, 277, 'craft\\imagetransforms\\ImageTransformer', '11.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:08', '2024-12-19 07:36:08', '2024-12-19 07:36:08', 'd35fc86f-6809-4244-a19c-3e1caa0c9ac5'),
(47, 277, 'craft\\imagetransforms\\ImageTransformer', '11.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:08', '2024-12-19 07:36:08', '2024-12-19 07:36:09', '672f8c28-f2b6-4459-a9db-8c9a080dd594'),
(48, 278, 'craft\\imagetransforms\\ImageTransformer', '12.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:09', '2024-12-19 07:36:09', '2024-12-19 07:36:10', '54262c39-1db2-4678-bf65-3da955c58208'),
(49, 278, 'craft\\imagetransforms\\ImageTransformer', '12.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:09', '2024-12-19 07:36:09', '2024-12-19 07:36:12', '114ef024-5d13-4e11-867a-fab4ed729359'),
(50, 279, 'craft\\imagetransforms\\ImageTransformer', '13.jpeg', NULL, '_30x30_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:11', '2024-12-19 07:36:11', '2024-12-19 07:36:12', '660249e6-268c-4f20-b027-3a7617b1841b'),
(51, 279, 'craft\\imagetransforms\\ImageTransformer', '13.jpeg', NULL, '_60x60_crop_center-center_none', 1, 0, 0, '2024-12-19 07:36:11', '2024-12-19 07:36:11', '2024-12-19 07:36:13', 'b9c02bf8-ac1b-405d-8661-63034955ce86'),
(52, 284, 'craft\\imagetransforms\\ImageTransformer', '1_2024-12-19-073835_ghmj.jpg', NULL, '_30x14_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:36', '2024-12-19 07:38:36', '2024-12-19 07:38:38', 'f6090ca0-798e-48f1-85d0-a1e1af5e90ed'),
(53, 284, 'craft\\imagetransforms\\ImageTransformer', '1_2024-12-19-073835_ghmj.jpg', NULL, '_60x28_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:37', '2024-12-19 07:38:37', '2024-12-19 07:38:38', '986d768e-6ffb-4246-b1cd-6d67b98a762d'),
(54, 285, 'craft\\imagetransforms\\ImageTransformer', '2_2024-12-19-073836_zyxq.jpg', NULL, '_30x14_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:37', '2024-12-19 07:38:37', '2024-12-19 07:38:39', '38fa1972-8c05-46ef-bfa7-fa71da24d310'),
(55, 285, 'craft\\imagetransforms\\ImageTransformer', '2_2024-12-19-073836_zyxq.jpg', NULL, '_60x28_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:37', '2024-12-19 07:38:37', '2024-12-19 07:38:39', 'c1bcfadb-8721-4076-9f4b-6e13818fbc1c'),
(56, 286, 'craft\\imagetransforms\\ImageTransformer', '3_2024-12-19-073837_pwcz.jpg', NULL, '_30x14_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:38', '2024-12-19 07:38:38', '2024-12-19 07:38:39', 'cc23e3c8-0ef5-4e05-baae-2b450a0d94ca'),
(57, 286, 'craft\\imagetransforms\\ImageTransformer', '3_2024-12-19-073837_pwcz.jpg', NULL, '_60x28_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:38', '2024-12-19 07:38:38', '2024-12-19 07:38:39', '478b44da-b9e4-4397-972f-9f1f53af2390'),
(58, 287, 'craft\\imagetransforms\\ImageTransformer', '4_2024-12-19-073840_rkad.jpg', NULL, '_30x14_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:41', '2024-12-19 07:38:41', '2024-12-19 07:38:42', 'd22faadf-3097-4d53-8b14-2f240fa9a10e'),
(59, 287, 'craft\\imagetransforms\\ImageTransformer', '4_2024-12-19-073840_rkad.jpg', NULL, '_60x28_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:41', '2024-12-19 07:38:41', '2024-12-19 07:38:43', '25b4b6a5-758a-4f09-b0c8-050026c9b6d6'),
(60, 288, 'craft\\imagetransforms\\ImageTransformer', '5.jpg', NULL, '_30x14_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:42', '2024-12-19 07:38:42', '2024-12-19 07:38:43', 'b218833c-90eb-43d5-87ea-2c5b776a6d66'),
(61, 288, 'craft\\imagetransforms\\ImageTransformer', '5.jpg', NULL, '_60x28_crop_center-center_none', 1, 0, 0, '2024-12-19 07:38:42', '2024-12-19 07:38:42', '2024-12-19 07:38:44', '06a7241a-1dab-464c-82de-5ddae688d8db'),
(62, 314, 'craft\\imagetransforms\\ImageTransformer', 'about2.jpg', NULL, '_30x23_crop_center-center_none', 1, 0, 0, '2024-12-19 08:21:58', '2024-12-19 08:21:58', '2024-12-19 08:21:58', 'cfd4593c-a279-4288-b8f2-2b22fafefc46'),
(63, 314, 'craft\\imagetransforms\\ImageTransformer', 'about2.jpg', NULL, '_60x46_crop_center-center_none', 1, 0, 0, '2024-12-19 08:21:58', '2024-12-19 08:21:58', '2024-12-19 08:27:02', 'a0732e9d-2906-4c67-a1ae-f23c7b38247c'),
(64, 317, 'craft\\imagetransforms\\ImageTransformer', 'about3.jpg', NULL, '_30x16_crop_center-center_none', 1, 0, 0, '2024-12-19 08:30:40', '2024-12-19 08:30:40', '2024-12-19 08:30:41', 'd69cee95-3f4e-4812-84a9-702fa221f6aa'),
(65, 317, 'craft\\imagetransforms\\ImageTransformer', 'about3.jpg', NULL, '_60x33_crop_center-center_none', 1, 0, 0, '2024-12-19 08:30:40', '2024-12-19 08:30:40', '2024-12-19 08:31:17', '073d73a7-23a4-40b5-b8c6-3f905e378745'),
(66, 331, 'craft\\imagetransforms\\ImageTransformer', 'mockup.png', NULL, '_30x14_crop_center-center_none', 1, 0, 0, '2024-12-19 08:42:11', '2024-12-19 08:42:11', '2024-12-19 08:42:11', '6dc3074d-7610-4a59-bee3-4cccc9b276b5'),
(67, 331, 'craft\\imagetransforms\\ImageTransformer', 'mockup.png', NULL, '_60x28_crop_center-center_none', 1, 0, 0, '2024-12-19 08:42:11', '2024-12-19 08:42:11', '2024-12-19 08:42:11', 'dcbd3ccb-6ad5-406e-8ba9-b0fc8eb4c12a'),
(68, 337, 'craft\\imagetransforms\\ImageTransformer', 'journey.png', NULL, '_30x21_crop_center-center_none', 1, 0, 0, '2024-12-20 01:21:26', '2024-12-20 01:21:26', '2024-12-20 01:21:27', '6152657b-63fd-4be9-bca0-36b47d9032ba'),
(69, 337, 'craft\\imagetransforms\\ImageTransformer', 'journey.png', NULL, '_60x43_crop_center-center_none', 1, 0, 0, '2024-12-20 01:21:26', '2024-12-20 01:21:26', '2024-12-20 01:21:27', '169c93b8-38f1-45dd-afa4-fa6d69f13869'),
(70, 343, 'craft\\imagetransforms\\ImageTransformer', 'fasilitas.png', NULL, '_20x30_crop_center-center_none', 1, 0, 0, '2024-12-20 01:28:17', '2024-12-20 01:28:17', '2024-12-20 01:28:18', '9323449a-66bb-499c-a80b-f9865b939c8a'),
(71, 343, 'craft\\imagetransforms\\ImageTransformer', 'fasilitas.png', NULL, '_40x60_crop_center-center_none', 1, 0, 0, '2024-12-20 01:28:17', '2024-12-20 01:28:17', '2024-12-20 01:28:18', 'd4551fba-e390-4004-bb62-2b8a3b9d1b8d'),
(72, 349, 'craft\\imagetransforms\\ImageTransformer', '1.png', NULL, '_30x18_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:54', '2024-12-20 01:38:54', '2024-12-20 01:38:55', '0340cfc5-5e96-44c1-bc55-ebc438427947'),
(73, 349, 'craft\\imagetransforms\\ImageTransformer', '1.png', NULL, '_60x37_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:54', '2024-12-20 01:38:54', '2024-12-20 01:38:55', 'bf4a60f2-d5f1-4570-aab6-ca1525cb71c2'),
(74, 350, 'craft\\imagetransforms\\ImageTransformer', '2.png', NULL, '_30x19_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:55', '2024-12-20 01:38:55', '2024-12-20 01:38:56', 'c62e17af-7df0-48f7-ba34-b97b75c738a8'),
(75, 350, 'craft\\imagetransforms\\ImageTransformer', '2.png', NULL, '_60x38_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:55', '2024-12-20 01:38:55', '2024-12-20 01:38:56', 'b80aae2a-bbd5-47be-a17e-14d399c6348f'),
(76, 351, 'craft\\imagetransforms\\ImageTransformer', '3.png', NULL, '_30x19_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:56', '2024-12-20 01:38:56', '2024-12-20 01:38:57', '0e2eadaa-5d87-4b47-b7fc-770595df3203'),
(77, 351, 'craft\\imagetransforms\\ImageTransformer', '3.png', NULL, '_60x38_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:56', '2024-12-20 01:38:56', '2024-12-20 01:38:57', 'dadd6ab7-f0c8-4954-8517-1a748bdd1f81'),
(78, 352, 'craft\\imagetransforms\\ImageTransformer', '4.png', NULL, '_30x19_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:59', '2024-12-20 01:38:59', '2024-12-20 01:39:01', 'c7ab582a-a71e-493b-9391-cf4f775eec6a'),
(79, 352, 'craft\\imagetransforms\\ImageTransformer', '4.png', NULL, '_60x38_crop_center-center_none', 1, 0, 0, '2024-12-20 01:38:59', '2024-12-20 01:38:59', '2024-12-20 01:39:02', 'f004ffdd-b20a-448e-9241-47a2d8a1cb22'),
(80, 353, 'craft\\imagetransforms\\ImageTransformer', '5.png', NULL, '_30x19_crop_center-center_none', 1, 0, 0, '2024-12-20 01:39:01', '2024-12-20 01:39:01', '2024-12-20 01:39:02', '023861dd-f55a-404b-a762-d00662fd583a'),
(81, 353, 'craft\\imagetransforms\\ImageTransformer', '5.png', NULL, '_60x38_crop_center-center_none', 1, 0, 0, '2024-12-20 01:39:01', '2024-12-20 01:39:01', '2024-12-20 01:39:02', 'ba866c1f-7870-4937-9765-98b02a74ee1b'),
(82, 370, 'craft\\imagetransforms\\ImageTransformer', 'WhatsApp-Image-2024-11-13-at-3.13.37-PM.jpeg', NULL, '_30x24_crop_center-center_none', 1, 0, 0, '2024-12-20 02:39:16', '2024-12-20 02:39:16', '2024-12-20 02:39:17', '03433152-f2ff-4a78-bf1d-23bf0e968d3a'),
(83, 370, 'craft\\imagetransforms\\ImageTransformer', 'WhatsApp-Image-2024-11-13-at-3.13.37-PM.jpeg', NULL, '_60x48_crop_center-center_none', 1, 0, 0, '2024-12-20 02:39:16', '2024-12-20 02:39:16', '2024-12-20 02:39:36', '18b24989-04cd-4a83-9745-f8ef9b2c10f2'),
(84, 375, 'craft\\imagetransforms\\ImageTransformer', 'WhatsApp-Image-2024-11-13-at-3.03.56-PM.jpeg', NULL, '_30x24_crop_center-center_none', 1, 0, 0, '2024-12-20 02:40:59', '2024-12-20 02:40:59', '2024-12-20 02:41:00', '98c2cf33-9b5e-4fe4-981e-f71049ea7552'),
(85, 375, 'craft\\imagetransforms\\ImageTransformer', 'WhatsApp-Image-2024-11-13-at-3.03.56-PM.jpeg', NULL, '_60x48_crop_center-center_none', 1, 0, 0, '2024-12-20 02:40:59', '2024-12-20 02:40:59', '2024-12-20 02:41:03', '5462e26f-2d04-4d26-b032-872f200c1e3a');

-- --------------------------------------------------------

--
-- Table structure for table `imagetransforms`
--

CREATE TABLE `imagetransforms` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop','letterbox') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `fill` varchar(11) DEFAULT NULL,
  `upscale` tinyint(1) NOT NULL DEFAULT '1',
  `parameterChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '5.5.7', '5.5.0.0', 0, 'tzkfgcxjtyht', '3@jriczxpock', '2024-12-13 08:59:52', '2024-12-20 02:42:16', 'df654e09-8481-46f9-b5bd-ccff4b716b14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft', 'Install', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'b86743fd-5cd6-44db-bc57-faf3a02071ec'),
(2, 'craft', 'm221101_115859_create_entries_authors_table', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '3353580b-4432-40c4-a0c5-c9f07ee4b998'),
(3, 'craft', 'm221107_112121_add_max_authors_to_sections', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '703af8fc-3bac-4745-a195-0f86c9d0cf37'),
(4, 'craft', 'm221205_082005_translatable_asset_alt_text', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'f9cbd3b5-d0b4-453a-9d0b-e0b384cfd37c'),
(5, 'craft', 'm230314_110309_add_authenticator_table', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '1cc651a8-22da-439d-be95-dc38d9683468'),
(6, 'craft', 'm230314_111234_add_webauthn_table', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'a4c2782e-7d47-49d1-a16b-ef620f4d0d0c'),
(7, 'craft', 'm230503_120303_add_recoverycodes_table', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'c5bd4b01-5c48-413f-bf4e-69e65907e275'),
(8, 'craft', 'm230511_000000_field_layout_configs', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '846331e9-b841-4a8d-a9c7-0b0b7da389f6'),
(9, 'craft', 'm230511_215903_content_refactor', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '19dc3abe-f555-4866-8503-a88cc2912769'),
(10, 'craft', 'm230524_000000_add_entry_type_show_slug_field', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'a74ddc76-937e-49a3-9273-c08a673d3963'),
(11, 'craft', 'm230524_000001_entry_type_icons', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '125fbd24-a2cb-4d6b-8ea7-e8792a265fa9'),
(12, 'craft', 'm230524_000002_entry_type_colors', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'f5f25e46-54c6-4686-9d13-12ef03a687db'),
(13, 'craft', 'm230524_220029_global_entry_types', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '538b432a-c562-4736-8809-fcc3c5b4f480'),
(14, 'craft', 'm230531_123004_add_entry_type_show_status_field', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2ea598e4-0f90-4b9f-80d8-84b329d3988b'),
(15, 'craft', 'm230607_102049_add_entrytype_slug_translation_columns', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'bac9578e-c68c-4e45-8102-af02e9413092'),
(16, 'craft', 'm230616_173810_kill_field_groups', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '6fc54711-8609-46c0-aac7-a175c7f54d1e'),
(17, 'craft', 'm230616_183820_remove_field_name_limit', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '451f406b-7668-4c00-bbb2-3ed695946373'),
(18, 'craft', 'm230617_070415_entrify_matrix_blocks', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '7c79f7b4-48a9-4945-bb00-aad288762338'),
(19, 'craft', 'm230710_162700_element_activity', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'e44189a8-1b17-4291-8c38-9157dbb68968'),
(20, 'craft', 'm230820_162023_fix_cache_id_type', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'dc9ad9c5-bd10-4966-b02d-74dd2a9b0c5b'),
(21, 'craft', 'm230826_094050_fix_session_id_type', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '8a6f668b-fb2a-44fd-b729-999f6d1979ec'),
(22, 'craft', 'm230904_190356_address_fields', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '4955ada7-6ff1-4ca0-af80-bcf92a6c2f5b'),
(23, 'craft', 'm230928_144045_add_subpath_to_volumes', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '732ec887-c554-43b6-afc5-86aa4b2d5adf'),
(24, 'craft', 'm231013_185640_changedfields_amend_primary_key', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '7fce68d6-fb6e-48c5-b1b5-294cea4544a0'),
(25, 'craft', 'm231213_030600_element_bulk_ops', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'f382679e-42c7-49cb-83a2-ac5de8f4d67c'),
(26, 'craft', 'm240129_150719_sites_language_amend_length', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '10ec4ea6-1fa8-440a-b106-e74e3bfaa30c'),
(27, 'craft', 'm240206_035135_convert_json_columns', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '8cb1d2fe-362c-4e8c-bbe5-e55a7a8e71a5'),
(28, 'craft', 'm240207_182452_address_line_3', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'c6919c13-11da-4a7e-97ef-99847a4ddabd'),
(29, 'craft', 'm240302_212719_solo_preview_targets', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '245f9713-7ec3-4718-a51c-cf2e9cbea7fa'),
(30, 'craft', 'm240619_091352_add_auth_2fa_timestamp', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'fd4cf7e1-42ad-4cc9-adaa-b0b35f2d0073'),
(31, 'craft', 'm240723_214330_drop_bulkop_fk', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'f4db29c3-b772-45c6-9d71-086fa2f1a176'),
(32, 'craft', 'm240731_053543_soft_delete_fields', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', 'd7f77a77-f938-4ff3-afb8-0b6fec9e79b6'),
(33, 'craft', 'm240805_154041_sso_identities', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '520cfd6d-5e5c-46cc-9b96-2d6c4d39e5f6'),
(34, 'craft', 'm240926_202248_track_entries_deleted_with_section', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-13 08:59:53', '02a9b536-a6df-495a-b232-e05cc88e4498'),
(35, 'plugin:ckeditor', 'Install', '2024-12-19 08:01:09', '2024-12-19 08:01:09', '2024-12-19 08:01:09', '3f8e6fdd-f0b8-4e16-9a6b-484eaae148ee'),
(36, 'plugin:ckeditor', 'm230408_163704_v3_upgrade', '2024-12-19 08:01:09', '2024-12-19 08:01:09', '2024-12-19 08:01:09', '962db1bf-3cee-4294-9008-064e451f9ffd');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ckeditor', '4.4.0', '3.0.0.0', '2024-12-19 08:01:09', '2024-12-19 08:01:09', '2024-12-19 08:01:09', '4c0e74ea-cd77-48c2-8246-982378fcf8a1');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.headingLevels.0', '1'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.headingLevels.1', '2'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.headingLevels.2', '3'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.headingLevels.3', '4'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.headingLevels.4', '5'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.headingLevels.5', '6'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.name', '\"Simple\"'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.toolbar.0', '\"heading\"'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.toolbar.1', '\"|\"'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.toolbar.2', '\"bold\"'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.toolbar.3', '\"italic\"'),
('ckeditor.configs.95eea75c-5184-442c-aa2b-a95999a7d093.toolbar.4', '\"link\"'),
('dateModified', '1734662536'),
('email.fromEmail', '\"admin@gmail.com\"'),
('email.fromName', '\"PT Multi Medika Mahadata\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.color', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elementCondition', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.dateAdded', '\"2024-12-16T08:17:36+00:00\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.fieldUid', '\"c7dee369-fd57-4db4-a378-6af4a2ef33b3\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.handle', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.instructions', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.label', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.required', 'false'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.tip', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.uid', '\"b5b68f29-39fe-4111-8c65-e087bddacc53\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.warning', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.elements.0.width', '100'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.name', '\"Content\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.uid', '\"c01b6ede-a76b-4619-935f-6d63c69101a3\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.fieldLayouts.8c87dc56-be66-4a24-b9d9-0e8b8760e9cc.tabs.0.userCondition', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.handle', '\"layoutHome\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.hasTitleField', 'false'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.icon', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.name', '\"Layout Home\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.showSlugField', 'true'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.showStatusField', 'true'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.slugTranslationKeyFormat', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.slugTranslationMethod', '\"site\"'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.titleFormat', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.titleTranslationKeyFormat', 'null'),
('entryTypes.0bd48f19-a61f-4496-9c18-648976c2448a.titleTranslationMethod', '\"site\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.color', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elementCondition', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.class', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.dateAdded', '\"2024-12-19T07:04:33+00:00\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.disabled', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.id', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.inputType', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.instructions', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.label', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.max', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.min', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.name', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.orientation', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.readonly', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.required', 'true'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.size', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.step', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.tip', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.title', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.uid', '\"9344e3bc-cb9a-435b-8749-6bb379a44a59\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.warning', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.0.width', '100'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.dateAdded', '\"2024-12-19T07:01:45+00:00\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.fieldUid', '\"47ab6554-2c28-4a53-bb94-f62ffa323d2d\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.handle', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.instructions', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.label', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.required', 'false'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.tip', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.uid', '\"3312be43-8e24-47f8-8a22-5f3aec4df2e4\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.warning', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.elements.1.width', '100'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.name', '\"Content\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.uid', '\"6b0ac9f1-ceb4-4cf9-8b9d-06d55574b7d8\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.fieldLayouts.2e77b349-5c64-4461-a18f-d474e326c290.tabs.0.userCondition', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.handle', '\"navigasi\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.hasTitleField', 'true'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.icon', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.name', '\"Navigasi\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.showSlugField', 'true'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.showStatusField', 'true'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.slugTranslationKeyFormat', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.slugTranslationMethod', '\"site\"'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.titleFormat', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.titleTranslationKeyFormat', 'null'),
('entryTypes.16c15485-2d15-44e2-b2f9-031f018db061.titleTranslationMethod', '\"site\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.color', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elementCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.dateAdded', '\"2024-12-17T07:38:51+00:00\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.handle', '\"countIcon\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.instructions', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.label', '\"Icon\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.required', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.tip', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.uid', '\"1ab64f96-478e-4849-bd7f-6949bb1b5a7b\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.warning', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.0.width', '100'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.dateAdded', '\"2024-12-17T07:38:51+00:00\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.handle', '\"countTotal\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.instructions', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.label', '\"Total\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.required', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.tip', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.uid', '\"d481bc3e-4cf1-4e6c-bf52-cb52cebdddeb\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.warning', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.1.width', '100'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.dateAdded', '\"2024-12-17T07:38:51+00:00\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.handle', '\"countCaption\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.instructions', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.label', '\"Caption\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.required', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.tip', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.uid', '\"83520f31-746b-4d73-87ec-26eef4f17a80\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.warning', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.elements.2.width', '100'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.name', '\"Content\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.uid', '\"f10c64b0-1ad9-4491-be52-c91827e72d20\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.fieldLayouts.511b36c6-66b4-4e93-aa19-78f2dce57455.tabs.0.userCondition', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.handle', '\"inputCount\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.hasTitleField', 'false'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.icon', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.name', '\"input Count\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.showSlugField', 'true'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.showStatusField', 'true'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.slugTranslationKeyFormat', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.slugTranslationMethod', '\"site\"'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.titleFormat', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.titleTranslationKeyFormat', 'null'),
('entryTypes.1935e245-297f-4f95-9e7c-b083019c1a43.titleTranslationMethod', '\"site\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.color', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elementCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.class', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.dateAdded', '\"2024-12-19T08:38:41+00:00\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.disabled', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.id', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.inputType', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.instructions', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.label', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.max', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.min', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.name', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.orientation', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.readonly', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.required', 'true'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.size', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.step', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.tip', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.title', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.uid', '\"8e9132a4-7581-44f1-bc84-b94c316cae5c\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.warning', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.0.width', '100'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.dateAdded', '\"2024-12-19T08:40:56+00:00\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.handle', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.instructions', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.label', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.required', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.tip', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.uid', '\"63c6bdd5-3b10-42b2-a476-cd06d73ebdb8\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.warning', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.1.width', '100'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.dateAdded', '\"2024-12-19T08:40:56+00:00\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.handle', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.instructions', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.label', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.required', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.tip', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.uid', '\"11457d86-dc9e-4c4a-a6e1-7245bf3420ac\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.warning', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.2.width', '100'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.dateAdded', '\"2024-12-19T08:40:56+00:00\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.fieldUid', '\"87836a9f-ae5f-4937-8a83-a06a2ac726ae\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.handle', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.instructions', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.label', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.required', 'false'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.tip', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.uid', '\"020a436e-41ff-46a2-8752-16f5ef612e19\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.warning', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.elements.3.width', '100'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.name', '\"Content\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.uid', '\"ee92b4de-31d6-487b-80bd-3845c3519bd5\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.fieldLayouts.b8db917f-6a74-414d-8d25-153eefc6105a.tabs.0.userCondition', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.handle', '\"layoutPlatform\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.hasTitleField', 'true'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.icon', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.name', '\"Layout Platform\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.showSlugField', 'true'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.showStatusField', 'true'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.slugTranslationKeyFormat', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.slugTranslationMethod', '\"site\"'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.titleFormat', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.titleTranslationKeyFormat', 'null'),
('entryTypes.2296a8c2-6424-4be4-91f9-e6d73d17ac0e.titleTranslationMethod', '\"site\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.color', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elementCondition', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.dateAdded', '\"2024-12-17T08:17:00+00:00\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.fieldUid', '\"5e7e469f-f415-435e-b43b-0077f491bb8f\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.handle', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.instructions', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.label', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.required', 'false'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.tip', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.uid', '\"d5b081c2-017c-4b7e-892c-b2ee610449fe\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.warning', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.0.width', '100'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.dateAdded', '\"2024-12-19T07:50:12+00:00\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.fieldUid', '\"47ab6554-2c28-4a53-bb94-f62ffa323d2d\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.handle', '\"aboutLink\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.instructions', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.label', '\"About Link\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.required', 'false'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.tip', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.uid', '\"b97c3513-b430-4b12-8463-1a8e886b0ea6\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.warning', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.elements.1.width', '100'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.name', '\"Content\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.uid', '\"72282329-1ecc-4129-b3a5-ddd465bcfc3b\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.fieldLayouts.94c65ea1-326f-4b57-a12e-38166a143c9c.tabs.0.userCondition', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.handle', '\"layoutAbout\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.hasTitleField', 'false'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.icon', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.name', '\"Layout About\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.showSlugField', 'true'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.showStatusField', 'true'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.slugTranslationKeyFormat', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.slugTranslationMethod', '\"site\"'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.titleFormat', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.titleTranslationKeyFormat', 'null'),
('entryTypes.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d.titleTranslationMethod', '\"site\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.color', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elementCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.class', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.dateAdded', '\"2024-12-20T02:40:00+00:00\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.disabled', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.id', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.inputType', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.instructions', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.label', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.max', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.min', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.name', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.orientation', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.readonly', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.required', 'true'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.size', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.step', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.tip', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.title', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.uid', '\"b685d26e-923e-4a7e-ba66-fec61534569e\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.warning', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.0.width', '100'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.dateAdded', '\"2024-12-20T02:38:38+00:00\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.handle', '\"peopleName\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.instructions', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.label', '\"People Name\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.required', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.tip', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.uid', '\"383e24df-4b59-44ec-9614-5245ba558846\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.warning', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.1.width', '100'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.dateAdded', '\"2024-12-20T02:38:38+00:00\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.handle', '\"peopleStatus\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.instructions', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.label', '\"People Status\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.required', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.tip', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.uid', '\"2ca21f00-5ec7-40ac-8d07-0316a6036b5f\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.warning', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.2.width', '100'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.dateAdded', '\"2024-12-20T02:38:38+00:00\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.handle', '\"peopleImage\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.instructions', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.label', '\"People Image\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.required', 'false'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.tip', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.uid', '\"250e07ce-3b56-4356-95e4-779182337a66\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.warning', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.elements.3.width', '100'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.name', '\"Content\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.uid', '\"65981716-5648-4619-a3b6-7e2e659d57b2\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.fieldLayouts.66afc82d-5d36-455e-a5a4-0f92c1f4c12e.tabs.0.userCondition', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.handle', '\"peoplePage\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.hasTitleField', 'true'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.icon', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.name', '\"People Page\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.showSlugField', 'true'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.showStatusField', 'true'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.slugTranslationKeyFormat', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.slugTranslationMethod', '\"site\"'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.titleFormat', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.titleTranslationKeyFormat', 'null'),
('entryTypes.28c9c6d3-3490-43f3-b0b5-b4801aeb1890.titleTranslationMethod', '\"site\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.color', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elementCondition', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.dateAdded', '\"2024-12-17T07:39:41+00:00\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.fieldUid', '\"48436358-4cac-478a-ad18-3ad03acc069f\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.handle', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.instructions', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.label', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.required', 'false'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.tip', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.uid', '\"ab4c35d1-a99b-4852-98c4-974c000c2165\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.warning', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.elements.0.width', '100'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.name', '\"Content\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.uid', '\"fd6abaa7-558c-4a1f-93b3-19a29e7e61ca\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.fieldLayouts.573de19e-1a7f-44ca-9dc6-4a7112ee171d.tabs.0.userCondition', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.handle', '\"layoutCount\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.hasTitleField', 'false'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.icon', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.name', '\"Layout Count\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.showSlugField', 'true'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.showStatusField', 'true'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.slugTranslationKeyFormat', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.slugTranslationMethod', '\"site\"'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.titleFormat', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.titleTranslationKeyFormat', 'null'),
('entryTypes.35b67ba9-8772-4967-84bd-d5e8fd71105a.titleTranslationMethod', '\"site\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.color', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elementCondition', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.class', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.dateAdded', '\"2024-12-18T07:51:38+00:00\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.disabled', 'false'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.id', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.inputType', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.instructions', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.label', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.max', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.min', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.name', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.orientation', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.readonly', 'false'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.required', 'true'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.size', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.step', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.tip', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.title', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.uid', '\"1f6bcc96-271f-4075-9fb7-1c836274e2b7\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.warning', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.elements.0.width', '100'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.name', '\"Content\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.uid', '\"553672ac-c50d-4235-bb71-26712101c7c6\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.fieldLayouts.041513a3-d8dc-4761-9a83-f152bc4f8b57.tabs.0.userCondition', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.handle', '\"layoutContact\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.hasTitleField', 'true'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.icon', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.name', '\"Layout Contact\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.showSlugField', 'true'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.showStatusField', 'true'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.slugTranslationKeyFormat', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.slugTranslationMethod', '\"site\"'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.titleFormat', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.titleTranslationKeyFormat', 'null'),
('entryTypes.3f853b4a-4459-44c1-9fb3-3c173dde2158.titleTranslationMethod', '\"site\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.color', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elementCondition', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.dateAdded', '\"2024-12-20T01:38:11+00:00\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.handle', '\"imageGallery\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.instructions', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.label', '\"Image Gallery\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.required', 'false'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.tip', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.uid', '\"62bbe082-a074-4f51-8737-67de89be7d8e\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.warning', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.0.width', '100'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.dateAdded', '\"2024-12-20T01:38:11+00:00\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.fieldUid', '\"dde45219-4f2c-4aab-b99c-e4e0dd36e4ef\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.handle', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.instructions', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.label', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.required', 'false'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.tip', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.uid', '\"8b21ca4c-f2e5-401d-9542-4b56ca270800\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.warning', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.elements.1.width', '100'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.name', '\"Content\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.uid', '\"d422f1f4-b157-457b-9e94-c9028477e6bf\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.fieldLayouts.73b5153c-df44-47fe-80e2-4af28195d4de.tabs.0.userCondition', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.handle', '\"layoutGallery\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.hasTitleField', 'false'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.icon', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.name', '\"Layout Gallery\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.showSlugField', 'true'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.showStatusField', 'true'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.slugTranslationKeyFormat', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.slugTranslationMethod', '\"site\"'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.titleFormat', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.titleTranslationKeyFormat', 'null'),
('entryTypes.801ae733-bab9-46c1-9010-27d168e4a10f.titleTranslationMethod', '\"site\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.color', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elementCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.class', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.dateAdded', '\"2024-12-16T08:16:21+00:00\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.disabled', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.id', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.inputType', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.instructions', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.label', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.max', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.min', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.name', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.orientation', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.readonly', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.required', 'true'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.size', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.step', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.tip', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.title', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.uid', '\"f1473e77-3c3e-4c7f-b28c-1f5722f42874\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.warning', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.0.width', '100'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.dateAdded', '\"2024-12-16T08:16:21+00:00\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.handle', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.instructions', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.label', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.required', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.tip', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.uid', '\"eda43917-e552-4c57-a892-69aef5cab36b\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.warning', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.1.width', '100'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.dateAdded', '\"2024-12-19T08:02:28+00:00\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.fieldUid', '\"87836a9f-ae5f-4937-8a83-a06a2ac726ae\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.handle', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.instructions', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.label', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.required', 'false'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.tip', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.uid', '\"95e0c148-c5f7-46ae-b1c7-5aee924e10e2\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.warning', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.elements.2.width', '100'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.name', '\"Content\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.uid', '\"76458a44-8e34-4557-a087-1d1a5e0a2cd1\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.fieldLayouts.9143a076-131e-44ab-84e4-0bec86928901.tabs.0.userCondition', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.handle', '\"inputText\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.hasTitleField', 'true'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.icon', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.name', '\"Input Text\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.showSlugField', 'true'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.showStatusField', 'true'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.slugTranslationKeyFormat', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.slugTranslationMethod', '\"site\"'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.titleFormat', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.titleTranslationKeyFormat', 'null'),
('entryTypes.82e626b9-e432-44f0-b956-372ceb9dcb88.titleTranslationMethod', '\"site\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.color', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elementCondition', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.class', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.dateAdded', '\"2024-12-17T08:22:41+00:00\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.disabled', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.id', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.inputType', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.instructions', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.label', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.max', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.min', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.name', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.orientation', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.readonly', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.required', 'true'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.size', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.step', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.tip', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.title', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.uid', '\"0ff8846e-e928-475b-ad85-df6de6d4f1b9\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.warning', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.0.width', '100'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.dateAdded', '\"2024-12-19T07:47:28+00:00\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.fieldUid', '\"47ab6554-2c28-4a53-bb94-f62ffa323d2d\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.handle', '\"produkLink\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.instructions', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.label', '\"Produk Link\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.required', 'false'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.tip', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.uid', '\"4a503d03-1bc4-4761-b199-765407c909d1\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.warning', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.elements.1.width', '100'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.name', '\"Content\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.uid', '\"552154cc-8dcc-428d-8f75-74879f7a0a2c\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.fieldLayouts.ebc8aa6a-83fe-4ea0-8e23-cddca2ff2bee.tabs.0.userCondition', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.handle', '\"layoutProduct\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.hasTitleField', 'true'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.icon', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.name', '\"Layout Product\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.showSlugField', 'true'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.showStatusField', 'true'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.slugTranslationKeyFormat', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.slugTranslationMethod', '\"site\"'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.titleFormat', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.titleTranslationKeyFormat', 'null'),
('entryTypes.957dd5f0-daae-4594-a8d4-390e558d015b.titleTranslationMethod', '\"site\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.color', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elementCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.class', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.dateAdded', '\"2024-12-19T07:28:17+00:00\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.disabled', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.id', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.inputType', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.instructions', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.label', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.max', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.min', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.name', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.orientation', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.readonly', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.required', 'true'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.size', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.step', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.tip', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.title', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.uid', '\"52eb8da4-ff50-4a50-8f35-6808d02bc42f\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.warning', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.0.width', '100'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.dateAdded', '\"2024-12-19T07:35:03+00:00\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.handle', '\"logoProduk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.instructions', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.label', '\"Logo Produk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.required', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.tip', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.uid', '\"43e95259-5a39-43ff-8097-a1297da17eb5\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.warning', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.1.width', '100'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.dateAdded', '\"2024-12-19T07:35:03+00:00\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.handle', '\"gambarProduk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.instructions', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.label', '\"Gambar Produk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.required', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.tip', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.uid', '\"910f26dd-3204-470a-b4d6-9c9a6bf8e293\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.warning', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.2.width', '100'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.dateAdded', '\"2024-12-19T07:35:03+00:00\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.handle', '\"deskripsiProduk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.instructions', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.label', '\"Deskripsi Produk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.required', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.tip', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.uid', '\"accde8e3-c0a6-4e21-a71b-ad87ec07755e\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.warning', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.3.width', '100'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.dateAdded', '\"2024-12-19T07:37:23+00:00\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.elementCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.fieldUid', '\"47ab6554-2c28-4a53-bb94-f62ffa323d2d\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.handle', '\"linkProduk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.includeInCards', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.instructions', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.label', '\"Link Produk\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.providesThumbs', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.required', 'false'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.tip', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.uid', '\"1586bb87-afba-4f1a-a365-c067e48c3b07\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.userCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.warning', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.elements.4.width', '100'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.name', '\"Content\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.uid', '\"b4775fab-e96f-4bb1-8a86-322586fd2f47\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.fieldLayouts.49ca11dd-89a7-4b98-ad65-33c8af3d07e3.tabs.0.userCondition', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.handle', '\"productPage\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.hasTitleField', 'true'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.icon', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.name', '\"Product Page\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.showSlugField', 'true'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.showStatusField', 'true'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.slugTranslationKeyFormat', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.slugTranslationMethod', '\"site\"'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.titleFormat', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.titleTranslationKeyFormat', 'null'),
('entryTypes.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce.titleTranslationMethod', '\"site\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.color', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elementCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.class', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.dateAdded', '\"2024-12-20T01:24:38+00:00\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.disabled', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.id', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.inputType', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.instructions', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.label', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.max', 'null');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.min', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.name', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.orientation', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.readonly', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.required', 'true'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.size', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.step', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.tip', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.title', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.uid', '\"bb1f3492-6e9e-4b29-b94a-0aec3bc65efd\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.warning', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.0.width', '100'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.dateAdded', '\"2024-12-20T01:26:29+00:00\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.fieldUid', '\"e694772e-9370-41bc-98e7-5bea324a09e4\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.handle', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.instructions', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.label', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.required', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.tip', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.uid', '\"1c048d07-4cda-4574-bd42-d598c6b983b3\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.warning', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.1.width', '100'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.dateAdded', '\"2024-12-20T01:26:29+00:00\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.handle', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.instructions', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.label', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.required', 'false'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.tip', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.uid', '\"385fc8dd-8b09-40e0-a190-f2e0dbb345a6\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.warning', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.elements.2.width', '100'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.name', '\"Content\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.uid', '\"971f0a4f-f503-4247-aa29-33a44ccb822a\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.fieldLayouts.19bedd77-d3d9-47a4-9a55-652d0250884f.tabs.0.userCondition', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.handle', '\"layoutFacilities\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.hasTitleField', 'true'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.icon', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.name', '\"Layout Facilities\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.showSlugField', 'true'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.showStatusField', 'true'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.slugTranslationKeyFormat', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.slugTranslationMethod', '\"site\"'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.titleFormat', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.titleTranslationKeyFormat', 'null'),
('entryTypes.a690ee2c-a907-442e-9ba7-0035bb472687.titleTranslationMethod', '\"site\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.color', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elementCondition', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.class', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.dateAdded', '\"2024-12-19T04:48:01+00:00\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.disabled', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.id', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.inputType', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.instructions', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.label', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.max', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.min', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.name', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.orientation', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.readonly', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.required', 'true'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.size', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.step', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.tip', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.title', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.uid', '\"ee0bbaf6-e112-4ed3-9ed8-de5e2a2cfd95\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.warning', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.0.width', '100'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.dateAdded', '\"2024-12-19T04:50:10+00:00\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.fieldUid', '\"23782e63-3163-4c92-9076-7c4f1c479f7e\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.handle', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.instructions', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.label', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.required', 'false'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.tip', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.uid', '\"33eae665-d5a8-480a-a021-8b8191444c96\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.warning', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.elements.1.width', '100'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.name', '\"Content\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.uid', '\"9c96ed45-8ba8-43e2-b778-b1ad92317717\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.fieldLayouts.f6335658-d914-4496-ae7e-38ab534ed35e.tabs.0.userCondition', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.handle', '\"aboutUs\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.hasTitleField', 'true'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.icon', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.name', '\"About Us\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.showSlugField', 'true'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.showStatusField', 'true'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.slugTranslationKeyFormat', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.slugTranslationMethod', '\"site\"'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.titleFormat', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.titleTranslationKeyFormat', 'null'),
('entryTypes.bffa2fcc-9f6d-417e-b3e9-404d7726cea0.titleTranslationMethod', '\"site\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.color', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elementCondition', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.class', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.dateAdded', '\"2024-12-13T09:02:33+00:00\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.disabled', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.id', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.inputType', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.instructions', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.label', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.max', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.min', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.name', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.orientation', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.readonly', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.required', 'true'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.size', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.step', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.tip', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.title', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.uid', '\"22cfbc31-4f9d-4342-bc4e-8ca2aaf21deb\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.warning', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.0.width', '100'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.dateAdded', '\"2024-12-16T08:17:49+00:00\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.fieldUid', '\"23782e63-3163-4c92-9076-7c4f1c479f7e\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.handle', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.instructions', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.label', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.required', 'false'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.tip', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.uid', '\"dfb0a5f9-9a2e-446f-b4a7-0ce38f3af139\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.warning', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.elements.1.width', '100'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.name', '\"Content\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.uid', '\"c5e50162-63ed-4758-ad18-6b202e75ec65\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.fieldLayouts.0e2e26ed-e75f-44ca-9043-8cb3880d4bb2.tabs.0.userCondition', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.handle', '\"homepage\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.hasTitleField', 'true'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.icon', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.name', '\"Homepage\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.showSlugField', 'true'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.showStatusField', 'true'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.slugTranslationKeyFormat', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.slugTranslationMethod', '\"site\"'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.titleFormat', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.titleTranslationKeyFormat', 'null'),
('entryTypes.d98fc999-1654-41da-9d7a-4727e195ef96.titleTranslationMethod', '\"site\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.color', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elementCondition', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.class', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.dateAdded', '\"2024-12-16T08:15:26+00:00\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.disabled', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.id', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.inputType', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.instructions', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.label', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.max', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.min', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.name', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.orientation', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.readonly', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.required', 'true'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.size', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.step', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.tip', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.title', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.uid', '\"3a3793e7-cbbb-4941-ad40-e96cefc6c28d\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.warning', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.0.width', '100'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.dateAdded', '\"2024-12-16T08:16:58+00:00\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.handle', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.instructions', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.label', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.required', 'false'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.tip', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.uid', '\"6e20177a-1b97-45ec-94a6-29445daffe44\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.warning', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.elements.1.width', '100'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.name', '\"Content\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.uid', '\"7b969353-301a-46c8-a3ec-a0b7e3a2b016\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.fieldLayouts.a8f399a3-fa29-4155-ae2e-cebaa2f2bec3.tabs.0.userCondition', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.handle', '\"inputImage\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.hasTitleField', 'true'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.icon', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.name', '\"Input Image\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.showSlugField', 'true'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.showStatusField', 'true'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.slugTranslationKeyFormat', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.slugTranslationMethod', '\"site\"'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.titleFormat', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.titleTranslationKeyFormat', 'null'),
('entryTypes.e0a64687-d271-4ab1-9ea4-0d9e2174fc13.titleTranslationMethod', '\"site\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.color', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elementCondition', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.class', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.dateAdded', '\"2024-12-20T02:40:30+00:00\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.disabled', 'false'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.id', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.inputType', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.instructions', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.label', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.max', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.min', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.name', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.orientation', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.readonly', 'false'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.required', 'true'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.size', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.step', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.tip', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.title', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.uid', '\"60d7d654-42d6-48b8-b077-a2c3f7d8cb8a\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.warning', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.elements.0.width', '100'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.name', '\"Content\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.uid', '\"d1eaa9aa-66a1-4eab-873c-f99ba0cd975c\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.fieldLayouts.cf2c60fa-2900-4be9-9ea2-840431708f54.tabs.0.userCondition', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.handle', '\"layoutManagement\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.hasTitleField', 'true'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.icon', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.name', '\"Layout Management\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.showSlugField', 'true'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.showStatusField', 'true'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.slugTranslationKeyFormat', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.slugTranslationMethod', '\"site\"'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.titleFormat', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.titleTranslationKeyFormat', 'null'),
('entryTypes.f23489bd-024c-458d-a119-e20db2829502.titleTranslationMethod', '\"site\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.color', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elementCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.class', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.dateAdded', '\"2024-12-19T07:55:02+00:00\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.disabled', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.elementCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.id', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.inputType', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.instructions', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.label', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.max', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.min', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.name', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.orientation', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.readonly', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.required', 'true'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.size', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.step', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.tip', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.title', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.uid', '\"513471ec-cdf0-4c76-9bca-6a3034749062\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.warning', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.0.width', '100'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.dateAdded', '\"2024-12-19T07:57:33+00:00\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.fieldUid', '\"5e7e469f-f415-435e-b43b-0077f491bb8f\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.handle', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.instructions', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.label', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.required', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.tip', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.uid', '\"a99ab77a-6706-42e8-9680-91266b415a1b\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.warning', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.1.width', '100'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.dateAdded', '\"2024-12-19T08:21:24+00:00\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.elementCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.fieldUid', '\"223b766e-568f-447c-98b0-d3f6bbeab860\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.handle', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.includeInCards', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.instructions', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.label', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.providesThumbs', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.required', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.tip', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.uid', '\"47f36e0a-ecb4-4076-9343-41e52a018dd0\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.userCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.warning', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.2.width', '100'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.dateAdded', '\"2024-12-19T08:21:24+00:00\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.elementCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.fieldUid', '\"5b8d2dcc-376f-4cae-9f71-1c8313af3bb4\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.handle', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.includeInCards', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.instructions', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.label', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.providesThumbs', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.required', 'false'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.tip', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.uid', '\"b831de72-6748-4a25-96f6-af3f532f3782\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.userCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.warning', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.elements.3.width', '100'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.name', '\"Content\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.uid', '\"94b3206d-c856-4119-a017-06cb1cafa85f\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.fieldLayouts.031c7190-9d63-4512-86ad-2f835f49c7f3.tabs.0.userCondition', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.handle', '\"layoutAboutUs\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.hasTitleField', 'true'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.icon', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.name', '\"Layout About Us\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.showSlugField', 'true'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.showStatusField', 'true'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.slugTranslationKeyFormat', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.slugTranslationMethod', '\"site\"'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.titleFormat', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.titleTranslationKeyFormat', 'null'),
('entryTypes.f450b812-50df-49fe-b071-a1e2acfe79f9.titleTranslationMethod', '\"site\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.color', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elementCondition', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.class', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.dateAdded', '\"2024-12-19T09:05:02+00:00\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.disabled', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.elementCondition', 'null');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.id', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.includeInCards', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.inputType', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.instructions', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.label', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.max', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.min', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.name', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.orientation', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.providesThumbs', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.readonly', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.required', 'true'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.size', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.step', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.tip', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.title', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\entries\\\\EntryTitleField\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.uid', '\"79f1a256-b791-439d-ac3d-ce91613a5d23\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.userCondition', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.warning', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.0.width', '100'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.dateAdded', '\"2024-12-19T09:05:02+00:00\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.elementCondition', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.fieldUid', '\"9c7052fe-6ae0-4dc9-b800-6447324e9ca6\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.handle', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.includeInCards', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.instructions', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.label', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.providesThumbs', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.required', 'false'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.tip', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.uid', '\"9673e4b9-b308-4f2a-a02a-54d96f486bd1\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.userCondition', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.warning', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.elements.1.width', '100'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.name', '\"Content\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.uid', '\"d8a72109-a2cc-4b54-a0e8-49c37827aab6\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.fieldLayouts.922cba56-7069-408f-aa43-1a054d0c045a.tabs.0.userCondition', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.handle', '\"layoutJourney\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.hasTitleField', 'true'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.icon', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.name', '\"Layout Journey\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.showSlugField', 'true'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.showStatusField', 'true'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.slugTranslationKeyFormat', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.slugTranslationMethod', '\"site\"'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.titleFormat', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.titleTranslationKeyFormat', 'null'),
('entryTypes.ff5d9b00-e436-42c7-bfb3-dbc719fb9096.titleTranslationMethod', '\"site\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.columnSuffix', 'null'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.handle', '\"about2\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.instructions', 'null'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.name', '\"About 2\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.searchable', 'false'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.createButtonLabel', 'null'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.defaultIndexViewMode', '\"cards\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.entryTypes.0', '\"82e626b9-e432-44f0-b956-372ceb9dcb88\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.entryTypes.1', '\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.includeTableView', 'false'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.maxEntries', 'null'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.minEntries', 'null'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.pageSize', '50'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.propagationKeyFormat', 'null'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.propagationMethod', '\"all\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.showCardsInGrid', 'true'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.settings.viewMode', '\"cards\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.translationKeyFormat', 'null'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.translationMethod', '\"site\"'),
('fields.223b766e-568f-447c-98b0-d3f6bbeab860.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.columnSuffix', 'null'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.handle', '\"pageBuilder\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.instructions', 'null'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.name', '\"Page Builder\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.searchable', 'false'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.createButtonLabel', '\"Add Block\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.defaultIndexViewMode', '\"cards\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.0', '\"0bd48f19-a61f-4496-9c18-648976c2448a\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.1', '\"35b67ba9-8772-4967-84bd-d5e8fd71105a\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.10', '\"f23489bd-024c-458d-a119-e20db2829502\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.2', '\"23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.3', '\"957dd5f0-daae-4594-a8d4-390e558d015b\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.4', '\"3f853b4a-4459-44c1-9fb3-3c173dde2158\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.5', '\"f450b812-50df-49fe-b071-a1e2acfe79f9\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.6', '\"2296a8c2-6424-4be4-91f9-e6d73d17ac0e\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.7', '\"ff5d9b00-e436-42c7-bfb3-dbc719fb9096\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.8', '\"a690ee2c-a907-442e-9ba7-0035bb472687\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.entryTypes.9', '\"801ae733-bab9-46c1-9010-27d168e4a10f\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.includeTableView', 'false'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.maxEntries', 'null'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.minEntries', 'null'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.pageSize', 'null'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.propagationKeyFormat', 'null'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.propagationMethod', '\"all\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.showCardsInGrid', 'false'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.settings.viewMode', '\"blocks\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.translationKeyFormat', 'null'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.translationMethod', '\"site\"'),
('fields.23782e63-3163-4c92-9076-7c4f1c479f7e.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.columnSuffix', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.handle', '\"logoIcon\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.instructions', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.name', '\"Logo Icon\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.searchable', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.allowedKinds', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.allowSelfRelations', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.allowSubfolders', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.allowUploads', 'true'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.branchLimit', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.defaultUploadLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.defaultUploadLocationSubpath', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.maintainHierarchy', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.maxRelations', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.minRelations', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.previewMode', '\"full\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.restrictedLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.restrictedLocationSubpath', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.restrictFiles', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.restrictLocation', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.selectionLabel', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.showCardsInGrid', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.showSiteMenu', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.showUnpermittedFiles', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.showUnpermittedVolumes', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.sources', '\"*\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.targetSiteId', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.validateRelatedElements', 'false'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.settings.viewMode', '\"list\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.translationKeyFormat', 'null'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.translationMethod', '\"none\"'),
('fields.351612e3-9202-4f3d-8020-cbfcefcde6f3.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.columnSuffix', 'null'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.handle', '\"navLink\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.instructions', 'null'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.name', '\"Nav Link\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.searchable', 'false'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.maxLength', '255'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.showLabelField', 'false'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.showTargetField', 'false'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.types.0', '\"url\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.typeSettings.__assoc__.0.0', '\"url\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.typeSettings.__assoc__.0.1.__assoc__.0.0', '\"allowRootRelativeUrls\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.typeSettings.__assoc__.0.1.__assoc__.0.1', '\"\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.typeSettings.__assoc__.0.1.__assoc__.1.0', '\"allowAnchors\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.settings.typeSettings.__assoc__.0.1.__assoc__.1.1', '\"1\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.translationKeyFormat', 'null'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.translationMethod', '\"none\"'),
('fields.47ab6554-2c28-4a53-bb94-f62ffa323d2d.type', '\"craft\\\\fields\\\\Link\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.columnSuffix', 'null'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.handle', '\"count\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.instructions', 'null'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.name', '\"Count\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.searchable', 'false'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.createButtonLabel', 'null'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.defaultIndexViewMode', '\"cards\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.entryTypes.0', '\"1935e245-297f-4f95-9e7c-b083019c1a43\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.includeTableView', 'false'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.maxEntries', 'null'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.minEntries', 'null'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.pageSize', '50'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.propagationKeyFormat', 'null'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.propagationMethod', '\"all\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.showCardsInGrid', 'false'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.settings.viewMode', '\"cards\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.translationKeyFormat', 'null'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.translationMethod', '\"site\"'),
('fields.48436358-4cac-478a-ad18-3ad03acc069f.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.columnSuffix', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.handle', '\"logo\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.instructions', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.name', '\"Logo\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.searchable', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.allowedKinds', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.allowSelfRelations', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.allowSubfolders', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.allowUploads', 'true'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.branchLimit', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.defaultUploadLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.defaultUploadLocationSubpath', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.maintainHierarchy', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.maxRelations', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.minRelations', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.previewMode', '\"full\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.restrictedLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.restrictedLocationSubpath', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.restrictFiles', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.restrictLocation', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.selectionLabel', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.showCardsInGrid', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.showSiteMenu', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.showUnpermittedFiles', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.showUnpermittedVolumes', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.sources', '\"*\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.targetSiteId', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.validateRelatedElements', 'false'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.settings.viewMode', '\"list\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.translationKeyFormat', 'null'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.translationMethod', '\"none\"'),
('fields.59e9847f-c73f-42ef-b824-76d5b373a2d1.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.columnSuffix', 'null'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.handle', '\"about3\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.instructions', 'null'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.name', '\"About 3\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.searchable', 'false'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.createButtonLabel', 'null'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.defaultIndexViewMode', '\"cards\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.entryTypes.0', '\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.entryTypes.1', '\"82e626b9-e432-44f0-b956-372ceb9dcb88\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.includeTableView', 'false'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.maxEntries', 'null'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.minEntries', 'null'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.pageSize', '50'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.propagationKeyFormat', 'null'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.propagationMethod', '\"all\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.showCardsInGrid', 'true'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.settings.viewMode', '\"cards\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.translationKeyFormat', 'null'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.translationMethod', '\"site\"'),
('fields.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.columnSuffix', 'null'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.handle', '\"about\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.instructions', 'null'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.name', '\"About\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.searchable', 'false'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.createButtonLabel', 'null'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.defaultIndexViewMode', '\"cards\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.entryTypes.0', '\"82e626b9-e432-44f0-b956-372ceb9dcb88\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.entryTypes.1', '\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.includeTableView', 'false'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.maxEntries', 'null'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.minEntries', 'null'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.pageSize', '50'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.propagationKeyFormat', 'null'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.propagationMethod', '\"all\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.showCardsInGrid', 'true'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.settings.viewMode', '\"cards\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.translationKeyFormat', 'null'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.translationMethod', '\"site\"'),
('fields.5e7e469f-f415-435e-b43b-0077f491bb8f.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.columnSuffix', 'null'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.handle', '\"bodyEditor\"'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.instructions', 'null'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.name', '\"Body Editor\"'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.searchable', 'false'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.availableTransforms', '\"\"'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.availableVolumes', '\"*\"'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.ckeConfig', '\"95eea75c-5184-442c-aa2b-a95999a7d093\"'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.createButtonLabel', 'null'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.defaultTransform', 'null'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.enableSourceEditingForNonAdmins', 'false'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.purifierConfig', 'null'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.purifyHtml', 'true'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.showUnpermittedFiles', 'false'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.showUnpermittedVolumes', 'false'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.showWordCount', 'false'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.settings.wordLimit', 'null'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.translationKeyFormat', 'null'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.translationMethod', '\"none\"'),
('fields.87836a9f-ae5f-4937-8a83-a06a2ac726ae.type', '\"craft\\\\ckeditor\\\\Field\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.columnSuffix', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.handle', '\"bodyImage\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.instructions', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.name', '\"Body Image\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.searchable', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.allowedKinds', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.allowSelfRelations', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.allowSubfolders', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.allowUploads', 'true'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.branchLimit', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.defaultUploadLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.defaultUploadLocationSubpath', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.maintainHierarchy', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.maxRelations', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.minRelations', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.previewMode', '\"full\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.restrictedLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.restrictedLocationSubpath', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.restrictFiles', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.restrictLocation', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.selectionLabel', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.showCardsInGrid', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.showSiteMenu', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.showUnpermittedFiles', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.showUnpermittedVolumes', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.sources', '\"*\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.targetSiteId', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.validateRelatedElements', 'false'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.settings.viewMode', '\"list\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.translationKeyFormat', 'null'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.translationMethod', '\"none\"'),
('fields.9c7052fe-6ae0-4dc9-b800-6447324e9ca6.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.columnSuffix', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.handle', '\"logoPutih\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.instructions', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.name', '\"Logo Putih\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.searchable', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.allowedKinds', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.allowSelfRelations', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.allowSubfolders', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.allowUploads', 'true'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.branchLimit', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.defaultUploadLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.defaultUploadLocationSubpath', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.maintainHierarchy', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.maxRelations', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.minRelations', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.previewMode', '\"full\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.restrictedDefaultUploadSubpath', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.restrictedLocationSource', '\"volume:bd7a5538-be19-4c69-88a3-0d06a9229312\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.restrictedLocationSubpath', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.restrictFiles', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.restrictLocation', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.selectionLabel', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.showCardsInGrid', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.showSiteMenu', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.showUnpermittedFiles', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.showUnpermittedVolumes', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.sources', '\"*\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.targetSiteId', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.validateRelatedElements', 'false'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.settings.viewMode', '\"list\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.translationKeyFormat', 'null'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.translationMethod', '\"none\"'),
('fields.b073e097-1f3b-4a55-8863-f4ef2014193b.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.columnSuffix', 'null'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.handle', '\"home\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.instructions', 'null'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.name', '\"Home\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.searchable', 'false'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.createButtonLabel', '\"Add Home\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.defaultIndexViewMode', '\"cards\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.entryTypes.0', '\"82e626b9-e432-44f0-b956-372ceb9dcb88\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.entryTypes.1', '\"e0a64687-d271-4ab1-9ea4-0d9e2174fc13\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.includeTableView', 'false'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.maxEntries', 'null'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.minEntries', 'null'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.pageSize', '50'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.propagationKeyFormat', 'null'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.propagationMethod', '\"all\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.showCardsInGrid', 'true'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.settings.viewMode', '\"cards\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.translationKeyFormat', 'null'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.translationMethod', '\"site\"'),
('fields.c7dee369-fd57-4db4-a378-6af4a2ef33b3.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.columnSuffix', 'null'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.handle', '\"optionGallery\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.instructions', 'null'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.name', '\"Option Gallery\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.searchable', 'false'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.customOptions', 'false'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.0.__assoc__.0.0', '\"label\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.0.__assoc__.0.1', '\"Slider\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.0.__assoc__.1.0', '\"value\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.0.__assoc__.1.1', '\"slider\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.0.__assoc__.2.0', '\"default\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.0.__assoc__.2.1', '\"\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.1.__assoc__.0.0', '\"label\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.1.__assoc__.0.1', '\"Grid\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.1.__assoc__.1.0', '\"value\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.1.__assoc__.1.1', '\"grid\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.1.__assoc__.2.0', '\"default\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.settings.options.1.__assoc__.2.1', '\"\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.translationKeyFormat', 'null'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.translationMethod', '\"none\"'),
('fields.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef.type', '\"craft\\\\fields\\\\Dropdown\"'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.columnSuffix', 'null'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.handle', '\"body\"'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.instructions', 'null'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.name', '\"Body\"'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.searchable', 'false'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.settings.byteLimit', 'null'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.settings.charLimit', 'null'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.settings.code', 'false'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.settings.initialRows', '4'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.settings.multiline', 'false'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.settings.placeholder', 'null'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.settings.uiMode', '\"normal\"'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.translationKeyFormat', 'null'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.translationMethod', '\"none\"'),
('fields.e694772e-9370-41bc-98e7-5bea324a09e4.type', '\"craft\\\\fields\\\\PlainText\"'),
('fs.assets.hasUrls', 'true'),
('fs.assets.name', '\"Assets\"'),
('fs.assets.settings.path', '\"@webroot/assets\"'),
('fs.assets.type', '\"craft\\\\fs\\\\Local\"'),
('fs.assets.url', '\"@assets\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elementCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.dateAdded', '\"2024-12-16T08:24:09+00:00\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.elementCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.fieldUid', '\"351612e3-9202-4f3d-8020-cbfcefcde6f3\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.handle', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.includeInCards', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.instructions', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.label', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.providesThumbs', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.required', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.tip', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.uid', '\"758f497b-9d58-44e5-8d66-297b6c50c22e\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.userCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.warning', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.0.width', '100'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.dateAdded', '\"2024-12-16T08:25:41+00:00\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.elementCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.fieldUid', '\"59e9847f-c73f-42ef-b824-76d5b373a2d1\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.handle', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.includeInCards', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.instructions', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.label', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.providesThumbs', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.required', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.tip', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.uid', '\"a82c6208-a9ea-495c-9256-4de6623dba14\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.userCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.warning', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.1.width', '100'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.dateAdded', '\"2024-12-16T08:26:49+00:00\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.elementCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.fieldUid', '\"b073e097-1f3b-4a55-8863-f4ef2014193b\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.handle', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.includeInCards', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.instructions', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.label', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.providesThumbs', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.required', 'false'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.tip', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.uid', '\"50d0ba1f-600c-4eaf-afa2-2eaa51dea9e3\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.userCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.warning', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.elements.2.width', '100'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.name', '\"Global\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.uid', '\"4085d194-77b0-4102-b62c-dab58898dede\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.fieldLayouts.fe45bc00-d2b4-4e00-ab42-4e4e30d63a63.tabs.0.userCondition', 'null'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.handle', '\"siteInfo\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.name', '\"Site Info\"'),
('globalSets.858bea49-abde-413c-ac37-8e6f094f6028.sortOrder', '1'),
('graphql.publicToken.enabled', 'true'),
('graphql.publicToken.expiryDate', 'null'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.isPublic', 'true'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.name', '\"Public Schema\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.0', '\"sites.64e53b69-ab01-497f-a11b-5a0e1ec07062:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.1', '\"elements.drafts:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.10', '\"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.11', '\"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.12', '\"globalsets.858bea49-abde-413c-ac37-8e6f094f6028:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.13', '\"sections.1cf35403-22fd-43da-ba82-9eb6da059f47:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.14', '\"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.15', '\"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:create\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.16', '\"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.17', '\"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:delete\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.18', '\"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.19', '\"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:create\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.2', '\"elements.revisions:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.20', '\"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.21', '\"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:delete\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.22', '\"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.23', '\"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:create\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.24', '\"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.25', '\"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:delete\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.26', '\"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.27', '\"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:create\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.28', '\"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.29', '\"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:delete\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.3', '\"elements.inactive:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.30', '\"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.31', '\"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:create\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.32', '\"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.33', '\"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:delete\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.34', '\"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.35', '\"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:create\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.36', '\"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.37', '\"nestedentryfields.86d4faa4-b753-4fc5-bd95-0eb421ea5909:delete\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.38', '\"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.39', '\"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:create\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.4', '\"sections.1cf35403-22fd-43da-ba82-9eb6da059f47:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.40', '\"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:save\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.41', '\"volumes.bd7a5538-be19-4c69-88a3-0d06a9229312:delete\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.42', '\"globalsets.858bea49-abde-413c-ac37-8e6f094f6028:edit\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.5', '\"nestedentryfields.5e7e469f-f415-435e-b43b-0077f491bb8f:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.6', '\"nestedentryfields.f050b5c8-3148-4775-a553-0a01195299bc:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.7', '\"nestedentryfields.48436358-4cac-478a-ad18-3ad03acc069f:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.8', '\"nestedentryfields.c7dee369-fd57-4db4-a378-6af4a2ef33b3:read\"'),
('graphql.schemas.d37a8f3f-5e35-46a0-a589-0f815b4a37c0.scope.9', '\"nestedentryfields.23782e63-3163-4c92-9076-7c4f1c479f7e:read\"'),
('meta.__names__.0b56403c-5415-4fd5-a06f-3253b5ef1ff5', '\"PT Multi Medika Mahadata\"'),
('meta.__names__.0bd48f19-a61f-4496-9c18-648976c2448a', '\"Layout Home\"'),
('meta.__names__.16c15485-2d15-44e2-b2f9-031f018db061', '\"Navigasi\"'),
('meta.__names__.1935e245-297f-4f95-9e7c-b083019c1a43', '\"input Count\"'),
('meta.__names__.1cf35403-22fd-43da-ba82-9eb6da059f47', '\"Homepage\"'),
('meta.__names__.223b766e-568f-447c-98b0-d3f6bbeab860', '\"About 2\"'),
('meta.__names__.2296a8c2-6424-4be4-91f9-e6d73d17ac0e', '\"Layout Platform\"'),
('meta.__names__.23782e63-3163-4c92-9076-7c4f1c479f7e', '\"Page Builder\"'),
('meta.__names__.23b74656-a3a1-44a0-a4ec-6a9c5ef0b09d', '\"Layout About\"'),
('meta.__names__.28c9c6d3-3490-43f3-b0b5-b4801aeb1890', '\"People Page\"'),
('meta.__names__.351612e3-9202-4f3d-8020-cbfcefcde6f3', '\"Logo Icon\"'),
('meta.__names__.35b67ba9-8772-4967-84bd-d5e8fd71105a', '\"Layout Count\"'),
('meta.__names__.3f853b4a-4459-44c1-9fb3-3c173dde2158', '\"Layout Contact\"'),
('meta.__names__.47ab6554-2c28-4a53-bb94-f62ffa323d2d', '\"Nav Link\"'),
('meta.__names__.48436358-4cac-478a-ad18-3ad03acc069f', '\"Count\"'),
('meta.__names__.59e9847f-c73f-42ef-b824-76d5b373a2d1', '\"Logo\"'),
('meta.__names__.5b8d2dcc-376f-4cae-9f71-1c8313af3bb4', '\"About 3\"'),
('meta.__names__.5e7e469f-f415-435e-b43b-0077f491bb8f', '\"About\"'),
('meta.__names__.64e53b69-ab01-497f-a11b-5a0e1ec07062', '\"PT Multi Medika Mahadata\"'),
('meta.__names__.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3', '\"People\"'),
('meta.__names__.7b5b5e69-db65-40ee-808d-2f27e5c64f46', '\"Navigation\"'),
('meta.__names__.801ae733-bab9-46c1-9010-27d168e4a10f', '\"Layout Gallery\"'),
('meta.__names__.82e626b9-e432-44f0-b956-372ceb9dcb88', '\"Input Text\"'),
('meta.__names__.858bea49-abde-413c-ac37-8e6f094f6028', '\"Site Info\"'),
('meta.__names__.87836a9f-ae5f-4937-8a83-a06a2ac726ae', '\"Body Editor\"'),
('meta.__names__.887f5473-9730-43e0-93f6-e467f4a0872a', '\"About\"'),
('meta.__names__.957dd5f0-daae-4594-a8d4-390e558d015b', '\"Layout Product\"'),
('meta.__names__.95eea75c-5184-442c-aa2b-a95999a7d093', '\"Simple\"'),
('meta.__names__.982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce', '\"Product Page\"'),
('meta.__names__.9c7052fe-6ae0-4dc9-b800-6447324e9ca6', '\"Body Image\"'),
('meta.__names__.a690ee2c-a907-442e-9ba7-0035bb472687', '\"Layout Facilities\"'),
('meta.__names__.b073e097-1f3b-4a55-8863-f4ef2014193b', '\"Logo Putih\"'),
('meta.__names__.b50b14a0-ffbc-4388-b37c-e54abf235690', '\"Product\"'),
('meta.__names__.bd7a5538-be19-4c69-88a3-0d06a9229312', '\"Images\"'),
('meta.__names__.bffa2fcc-9f6d-417e-b3e9-404d7726cea0', '\"About Us\"'),
('meta.__names__.c7dee369-fd57-4db4-a378-6af4a2ef33b3', '\"Home\"'),
('meta.__names__.d37a8f3f-5e35-46a0-a589-0f815b4a37c0', '\"Public Schema\"'),
('meta.__names__.d98fc999-1654-41da-9d7a-4727e195ef96', '\"Homepage\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('meta.__names__.dde45219-4f2c-4aab-b99c-e4e0dd36e4ef', '\"Option Gallery\"'),
('meta.__names__.e0a64687-d271-4ab1-9ea4-0d9e2174fc13', '\"Input Image\"'),
('meta.__names__.e694772e-9370-41bc-98e7-5bea324a09e4', '\"Body\"'),
('meta.__names__.f23489bd-024c-458d-a119-e20db2829502', '\"Layout Management\"'),
('meta.__names__.f450b812-50df-49fe-b071-a1e2acfe79f9', '\"Layout About Us\"'),
('meta.__names__.ff5d9b00-e436-42c7-bfb3-dbc719fb9096', '\"Layout Journey\"'),
('plugins.ckeditor.edition', '\"standard\"'),
('plugins.ckeditor.enabled', 'true'),
('plugins.ckeditor.schemaVersion', '\"3.0.0.0\"'),
('routes.43a56057-e266-4ce4-8f97-6974e30ee4a6.siteUid', 'null'),
('routes.43a56057-e266-4ce4-8f97-6974e30ee4a6.sortOrder', '1'),
('routes.43a56057-e266-4ce4-8f97-6974e30ee4a6.template', '\"about/_entry.twig\"'),
('routes.43a56057-e266-4ce4-8f97-6974e30ee4a6.uriParts.0', '\"about\"'),
('routes.43a56057-e266-4ce4-8f97-6974e30ee4a6.uriPattern', '\"about\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.defaultPlacement', '\"end\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.enableVersioning', 'true'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.entryTypes.0', '\"d98fc999-1654-41da-9d7a-4727e195ef96\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.handle', '\"homepage\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.maxAuthors', '1'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.name', '\"Homepage\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.propagationMethod', '\"all\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.enabledByDefault', 'true'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.hasUrls', 'true'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.template', '\"index.twig\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.uriFormat', '\"__home__\"'),
('sections.1cf35403-22fd-43da-ba82-9eb6da059f47.type', '\"single\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.defaultPlacement', '\"end\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.enableVersioning', 'true'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.entryTypes.0', '\"28c9c6d3-3490-43f3-b0b5-b4801aeb1890\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.handle', '\"people\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.maxAuthors', '1'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.name', '\"People\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.propagationMethod', '\"all\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.enabledByDefault', 'true'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.hasUrls', 'true'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.template', '\"people/_entry.twig\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.uriFormat', '\"people/{slug}\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.structure.maxLevels', 'null'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.structure.uid', '\"98cfbe5d-3238-4b86-b817-35155e08f311\"'),
('sections.6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3.type', '\"structure\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.defaultPlacement', '\"end\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.enableVersioning', 'true'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.entryTypes.0', '\"16c15485-2d15-44e2-b2f9-031f018db061\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.handle', '\"navigation\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.maxAuthors', '1'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.name', '\"Navigation\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.propagationMethod', '\"all\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.enabledByDefault', 'true'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.hasUrls', 'false'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.template', 'null'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.uriFormat', 'null'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.structure.maxLevels', 'null'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.structure.uid', '\"2c6b8361-9662-4a04-bc2c-ec6ddf83f79e\"'),
('sections.7b5b5e69-db65-40ee-808d-2f27e5c64f46.type', '\"structure\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.defaultPlacement', '\"end\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.enableVersioning', 'true'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.entryTypes.0', '\"bffa2fcc-9f6d-417e-b3e9-404d7726cea0\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.handle', '\"about\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.maxAuthors', '1'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.name', '\"About\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.propagationMethod', '\"all\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.enabledByDefault', 'true'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.hasUrls', 'true'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.template', '\"about/_entry.twig\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.uriFormat', '\"about\"'),
('sections.887f5473-9730-43e0-93f6-e467f4a0872a.type', '\"single\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.defaultPlacement', '\"end\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.enableVersioning', 'true'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.entryTypes.0', '\"982fe34a-17b5-4f5f-ad02-3f8ff92ce4ce\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.handle', '\"product\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.maxAuthors', '1'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.name', '\"Product\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.previewTargets.0.__assoc__.0.0', '\"label\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.previewTargets.0.__assoc__.0.1', '\"Primary entry page\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.previewTargets.0.__assoc__.1.0', '\"urlFormat\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.previewTargets.0.__assoc__.1.1', '\"{url}\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.previewTargets.0.__assoc__.2.0', '\"refresh\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.previewTargets.0.__assoc__.2.1', '\"1\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.propagationMethod', '\"all\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.enabledByDefault', 'true'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.hasUrls', 'true'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.template', '\"product/_entry.twig\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.siteSettings.64e53b69-ab01-497f-a11b-5a0e1ec07062.uriFormat', '\"product\"'),
('sections.b50b14a0-ffbc-4388-b37c-e54abf235690.type', '\"channel\"'),
('siteGroups.0b56403c-5415-4fd5-a06f-3253b5ef1ff5.name', '\"PT Multi Medika Mahadata\"'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.handle', '\"default\"'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.hasUrls', 'true'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.language', '\"en-US\"'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.name', '\"PT Multi Medika Mahadata\"'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.primary', 'true'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.siteGroup', '\"0b56403c-5415-4fd5-a06f-3253b5ef1ff5\"'),
('sites.64e53b69-ab01-497f-a11b-5a0e1ec07062.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"PT Multi Medika Mahadata\"'),
('system.schemaVersion', '\"5.5.0.0\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.require2fa', 'false'),
('users.requireEmailVerification', 'true'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.altTranslationKeyFormat', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.altTranslationMethod', '\"none\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elementCondition', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.autocomplete', 'false'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.autocorrect', 'true'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.class', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.dateAdded', '\"2024-12-14T01:28:28+00:00\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.disabled', 'false'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.elementCondition', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.id', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.includeInCards', 'false'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.inputType', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.instructions', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.label', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.max', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.min', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.name', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.orientation', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.placeholder', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.providesThumbs', 'false'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.readonly', 'false'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.requirable', 'false'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.size', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.step', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.tip', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.title', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\assets\\\\AssetTitleField\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.uid', '\"28aa8ad2-ab1a-4138-9e10-6b85af6af133\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.userCondition', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.warning', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.elements.0.width', '100'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.name', '\"Content\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.uid', '\"d6e0f83e-4347-4006-aba3-f2093e79f813\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fieldLayouts.2cad1f69-754c-4eb3-8f7b-d22eced2a17b.tabs.0.userCondition', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.fs', '\"assets\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.handle', '\"images\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.name', '\"Images\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.sortOrder', '1'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.subpath', '\"\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.titleTranslationKeyFormat', 'null'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.titleTranslationMethod', '\"site\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.transformFs', '\"\"'),
('volumes.bd7a5538-be19-4c69-88a3-0d06a9229312.transformSubpath', '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int NOT NULL,
  `ttr` int NOT NULL,
  `delay` int NOT NULL DEFAULT '0',
  `priority` int UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int DEFAULT NULL,
  `progress` smallint NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recoverycodes`
--

CREATE TABLE `recoverycodes` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `recoveryCodes` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int NOT NULL,
  `fieldId` int NOT NULL,
  `sourceId` int NOT NULL,
  `sourceSiteId` int DEFAULT NULL,
  `targetId` int NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(53, 2, 98, NULL, 9, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '4325f1d1-c838-4d7f-a3d4-c3b81812b101'),
(54, 2, 98, NULL, 10, 2, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'f076d73a-eaaf-4b6c-abbd-1d7cfc13d4d0'),
(55, 2, 98, NULL, 11, 3, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'e283e95e-d0d1-432c-91eb-40373ba071b7'),
(56, 2, 98, NULL, 12, 4, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'f5af8f9d-029c-416b-a372-ceb419560267'),
(57, 2, 100, NULL, 35, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '89e5a985-fe29-4cc7-9c7c-686a9bc5ce30'),
(58, 2, 102, NULL, 49, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '40068071-2538-42f2-90bf-993d844afa7e'),
(59, 2, 103, NULL, 53, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '77d26258-e788-4c1b-9863-95434c0a0ecb'),
(60, 2, 106, NULL, 9, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '8498a5bf-a183-499f-9f59-fc32a9cc37ac'),
(61, 2, 106, NULL, 10, 2, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'f38a550e-38a4-4f49-9e70-e1a390f38ed2'),
(62, 2, 106, NULL, 11, 3, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'dd3e695a-dec5-4c2d-a7b7-d9254415db5b'),
(63, 2, 106, NULL, 12, 4, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'bfdfdb10-2bed-4703-9f4c-f54db1c97416'),
(64, 2, 108, NULL, 35, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', '4992ee29-a64f-4539-8bde-f1eb4cb808d4'),
(65, 2, 110, NULL, 49, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'dba03766-8d59-4f42-b89d-ae2875aa22df'),
(66, 2, 111, NULL, 53, 1, '2024-12-14 05:03:49', '2024-12-14 05:03:49', 'c239a803-126d-44e8-8863-a619761a32ad'),
(67, 2, 118, NULL, 12, 4, '2024-12-16 07:51:00', '2024-12-16 07:51:04', 'a63e4632-e18a-4158-b12c-c9467f44d7f8'),
(68, 2, 118, NULL, 11, 3, '2024-12-16 07:51:00', '2024-12-16 07:51:04', 'e17524a7-35f3-4e6a-b348-17716ac6f91a'),
(69, 2, 118, NULL, 10, 2, '2024-12-16 07:51:00', '2024-12-16 07:51:03', '2e428def-7bc9-42ec-b4be-a697d9e880cb'),
(70, 2, 118, NULL, 9, 1, '2024-12-16 07:51:00', '2024-12-16 07:51:02', '3993e8bc-058d-4640-b06a-b56b8505a449'),
(75, 12, 126, NULL, 9, 1, '2024-12-16 08:20:46', '2024-12-16 08:20:46', '54e0ac16-36f0-49e1-85d0-1b13501d0aa3'),
(76, 12, 126, NULL, 10, 2, '2024-12-16 08:20:46', '2024-12-16 08:20:46', 'a058a60a-1f5a-4671-b849-3edf8fad8ab5'),
(77, 12, 126, NULL, 11, 3, '2024-12-16 08:20:46', '2024-12-16 08:20:46', '85fa3b9b-4c52-4c85-a18f-b76249512564'),
(78, 12, 126, NULL, 12, 4, '2024-12-16 08:20:46', '2024-12-16 08:20:46', 'bbdf4afd-6897-401c-8c33-578b1e684611'),
(79, 12, 130, NULL, 9, 1, '2024-12-16 08:20:46', '2024-12-16 08:20:46', 'fe6df0d5-496d-44a9-ae9c-334de5431e13'),
(80, 12, 130, NULL, 10, 2, '2024-12-16 08:20:46', '2024-12-16 08:20:46', 'c8d2b0be-6937-4e12-92f8-0a926abcdcd0'),
(81, 12, 130, NULL, 11, 3, '2024-12-16 08:20:46', '2024-12-16 08:20:46', 'e84e4525-7554-4fc8-bd10-956727768063'),
(82, 12, 130, NULL, 12, 4, '2024-12-16 08:20:46', '2024-12-16 08:20:46', '74599f23-60c3-4014-8ead-dcbb1ffa8459'),
(83, 15, 41, NULL, 44, 1, '2024-12-16 08:24:20', '2024-12-16 08:24:20', '1fff7540-ae99-457e-b59d-45111e3012e2'),
(84, 16, 41, NULL, 42, 1, '2024-12-16 08:25:54', '2024-12-16 08:25:54', '36ffdac8-87db-4faf-bcb3-2d29d4ae52ec'),
(85, 17, 41, NULL, 43, 1, '2024-12-16 08:27:12', '2024-12-16 08:27:12', '59722cc9-566f-45af-bb95-d8f16cc32f4d'),
(87, 12, 172, NULL, 35, 1, '2024-12-17 08:18:21', '2024-12-17 08:18:21', 'ed46ef04-f8c7-4023-b8b4-f0bb9c78b8fd'),
(88, 12, 176, NULL, 35, 1, '2024-12-17 08:18:21', '2024-12-17 08:18:21', 'f7d18f08-44a2-4484-9aa1-dd8f41b8d171'),
(91, 12, 194, NULL, 49, 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', 'c3e67ed7-a2d0-441f-b4c2-72f122045848'),
(92, 12, 195, NULL, 53, 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', '9a12fc4e-fb35-4781-a3d1-5aa7e4e37768'),
(93, 12, 200, NULL, 49, 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', '5efda3d8-4760-4b41-b854-43d68f357d95'),
(94, 12, 201, NULL, 53, 1, '2024-12-17 08:50:08', '2024-12-17 08:50:08', 'e960fffd-b2d5-4d87-b35b-91905068390c'),
(96, 12, 239, NULL, 224, 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '00cd5293-27ea-43de-abd2-f8dc3422c8cd'),
(97, 12, 246, NULL, 224, 1, '2024-12-19 04:58:39', '2024-12-19 04:58:39', '20bd7bc4-1d34-4ce3-ac42-57c12a4b88ad'),
(98, 12, 254, NULL, 53, 1, '2024-12-19 06:34:59', '2024-12-19 06:34:59', '1bc1a20c-d468-4aac-81fe-c0b035ff16f6'),
(99, 12, 257, NULL, 53, 1, '2024-12-19 06:35:08', '2024-12-19 06:35:08', 'ad0c03c0-1886-4643-9fcb-4f07b6f30572'),
(100, 12, 266, NULL, 53, 1, '2024-12-19 07:35:37', '2024-12-19 07:35:37', '101deb2a-9d8f-409c-98c6-9ba9fc88b636'),
(101, 12, 266, NULL, 267, 2, '2024-12-19 07:35:53', '2024-12-19 07:35:53', '7fea6efd-a031-4534-914a-d0957dc8489f'),
(102, 12, 266, NULL, 268, 3, '2024-12-19 07:35:55', '2024-12-19 07:35:55', 'ae8df5e1-ae92-4b3a-a40d-c32a1d04df82'),
(103, 12, 266, NULL, 269, 4, '2024-12-19 07:35:57', '2024-12-19 07:35:57', '6d725e61-b1c7-4b08-8ae0-22eacbfc1b0c'),
(104, 12, 266, NULL, 270, 5, '2024-12-19 07:35:59', '2024-12-19 07:35:59', '56f37ca1-2f0c-4fe1-8324-bddc7ee67b96'),
(105, 12, 266, NULL, 271, 6, '2024-12-19 07:36:00', '2024-12-19 07:36:00', 'dde070fd-1753-4762-bd92-d2ddc26af07c'),
(106, 12, 266, NULL, 272, 7, '2024-12-19 07:36:02', '2024-12-19 07:36:02', 'b8f56ca6-07f3-4097-a043-5aeab6817a88'),
(107, 12, 266, NULL, 273, 8, '2024-12-19 07:36:04', '2024-12-19 07:36:04', '3e143ddc-d662-4667-b0d9-558987fd3fa8'),
(108, 12, 266, NULL, 274, 9, '2024-12-19 07:36:05', '2024-12-19 07:36:05', '657aceb9-7a17-4f75-a25f-34ac9bf30816'),
(109, 12, 266, NULL, 275, 10, '2024-12-19 07:36:07', '2024-12-19 07:36:07', '06d84f51-22b6-414a-ac73-16430efd2323'),
(110, 12, 266, NULL, 276, 11, '2024-12-19 07:36:08', '2024-12-19 07:36:08', '11e3ed73-9f69-4ff6-9389-47bb4d54d800'),
(111, 12, 266, NULL, 277, 12, '2024-12-19 07:36:10', '2024-12-19 07:36:10', '1a3f5387-7685-4607-b252-3f60b4ea159b'),
(112, 12, 266, NULL, 278, 13, '2024-12-19 07:36:11', '2024-12-19 07:36:11', '52a6da6f-9328-4af5-a420-916d38202915'),
(113, 12, 266, NULL, 279, 14, '2024-12-19 07:36:12', '2024-12-19 07:36:12', 'b34d0185-6028-4da2-85b6-7ba995f9e936'),
(114, 12, 280, NULL, 53, 1, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '998efcfa-f293-40bd-934c-29eefe132d12'),
(115, 12, 280, NULL, 267, 2, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '73bbab3a-d8a3-41e4-98b8-8e96545c3c2c'),
(116, 12, 280, NULL, 268, 3, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '66c4a1ac-1f84-4d78-a61d-70f03446ef3a'),
(117, 12, 280, NULL, 269, 4, '2024-12-19 07:36:41', '2024-12-19 07:36:41', 'ab707888-d569-4c3e-b62e-e331547dbf36'),
(118, 12, 280, NULL, 270, 5, '2024-12-19 07:36:41', '2024-12-19 07:36:41', 'dad61c65-eb26-4baa-bd5a-eaff27e5de52'),
(119, 12, 280, NULL, 271, 6, '2024-12-19 07:36:41', '2024-12-19 07:36:41', 'a81c3f51-e896-43ad-8829-8389d00123ba'),
(120, 12, 280, NULL, 272, 7, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '4afa91b5-903d-4573-bcc6-fc66b36e6daa'),
(121, 12, 280, NULL, 273, 8, '2024-12-19 07:36:41', '2024-12-19 07:36:41', 'aee71175-23ac-4266-8be4-09cd4b39253a'),
(122, 12, 280, NULL, 274, 9, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '62b121a5-054e-434d-8069-e253173aa881'),
(123, 12, 280, NULL, 275, 10, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '63878c94-0627-471c-911f-2f0b3a889fd6'),
(124, 12, 280, NULL, 276, 11, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '49213a6b-d0fb-46e0-ad98-4eeef0416e07'),
(125, 12, 280, NULL, 277, 12, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '6cdb4e18-462a-43e4-a09a-89ad1c7e4d21'),
(126, 12, 280, NULL, 278, 13, '2024-12-19 07:36:41', '2024-12-19 07:36:41', 'c25495d6-6a5c-4cf2-adeb-cdbfc018851b'),
(127, 12, 280, NULL, 279, 14, '2024-12-19 07:36:41', '2024-12-19 07:36:41', '90c096e8-4c27-475c-92ad-1abbcbdc8844'),
(142, 12, 282, NULL, 53, 1, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '5e3a418b-f7e8-4fde-95c7-9e983e4bb7ca'),
(143, 12, 282, NULL, 267, 2, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '618a0615-0bd9-44fb-b81e-4cfe2610f072'),
(144, 12, 282, NULL, 268, 3, '2024-12-19 07:37:48', '2024-12-19 07:37:48', 'c7de9907-76fe-428d-a0c3-67cfb8305bce'),
(145, 12, 282, NULL, 269, 4, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '4467a25a-8047-4819-9c67-8ce43d8b76e7'),
(146, 12, 282, NULL, 270, 5, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '6e038480-4ed9-4597-bfbc-3c0270fd16bf'),
(147, 12, 282, NULL, 271, 6, '2024-12-19 07:37:48', '2024-12-19 07:37:48', 'e3281bfb-e675-46f7-8a4d-c68ede40ff4b'),
(148, 12, 282, NULL, 272, 7, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '296a43f0-cd26-4277-b422-dd432b5a1fe5'),
(149, 12, 282, NULL, 273, 8, '2024-12-19 07:37:48', '2024-12-19 07:37:48', 'cb756b39-2019-402d-a630-3ee4d86a67e1'),
(150, 12, 282, NULL, 274, 9, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '5d585063-d477-4627-b7cf-cea651de4e36'),
(151, 12, 282, NULL, 275, 10, '2024-12-19 07:37:48', '2024-12-19 07:37:48', 'a1a95265-5c74-4cfc-8201-d74f085df51b'),
(152, 12, 282, NULL, 276, 11, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '453f1584-f1eb-4a67-a2c2-1ed8e5e43d39'),
(153, 12, 282, NULL, 277, 12, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '3ad9ad21-c803-4134-aa4d-b657fcf2af4f'),
(154, 12, 282, NULL, 278, 13, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '573718c8-480a-4ca9-b867-45bde83d576a'),
(155, 12, 282, NULL, 279, 14, '2024-12-19 07:37:48', '2024-12-19 07:37:48', '5ad74e27-0d56-4dd1-8f42-7898917142d6'),
(156, 12, 283, NULL, 49, 1, '2024-12-19 07:38:27', '2024-12-19 07:38:27', 'f4b4221d-ba50-48bb-accc-70e3b0d63669'),
(157, 12, 283, NULL, 284, 2, '2024-12-19 07:38:38', '2024-12-19 07:38:38', '88d6aac5-bd14-4bfc-aaf3-a46a478aad0f'),
(158, 12, 283, NULL, 285, 3, '2024-12-19 07:38:39', '2024-12-19 07:38:39', 'b248482e-666e-4b37-a260-9cd84ef05913'),
(159, 12, 283, NULL, 286, 4, '2024-12-19 07:38:41', '2024-12-19 07:38:41', 'f2ae291d-593f-4754-9719-fba2cba318fc'),
(160, 12, 283, NULL, 287, 5, '2024-12-19 07:38:43', '2024-12-19 07:38:43', '57d8f000-9233-44dd-ae84-82e3f2da1369'),
(161, 12, 283, NULL, 288, 6, '2024-12-19 07:38:44', '2024-12-19 07:38:44', '4e2a2613-8545-42fc-9e2e-e7dff79f9802'),
(162, 12, 289, NULL, 49, 1, '2024-12-19 07:39:08', '2024-12-19 07:39:08', 'def12a5b-392b-4ec0-a51d-8e9f0aa037ff'),
(163, 12, 289, NULL, 284, 2, '2024-12-19 07:39:08', '2024-12-19 07:39:08', 'b0a24a3a-cba0-4cc7-956d-2c9840a4983f'),
(164, 12, 289, NULL, 285, 3, '2024-12-19 07:39:08', '2024-12-19 07:39:08', '6b3c16e8-65d7-4f37-ada3-71ac5cd92d07'),
(165, 12, 289, NULL, 286, 4, '2024-12-19 07:39:08', '2024-12-19 07:39:08', '37c44def-3384-47cf-805a-89dd770ba43d'),
(166, 12, 289, NULL, 287, 5, '2024-12-19 07:39:08', '2024-12-19 07:39:08', '8bf59cd9-f021-44e9-b3c0-c93fef74216f'),
(167, 12, 289, NULL, 288, 6, '2024-12-19 07:39:08', '2024-12-19 07:39:08', '267fed8b-c894-4cee-9a55-6d7328c0f783'),
(169, 12, 305, NULL, 224, 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '0c4b1656-08cc-40de-a02c-cd70ed1b61c6'),
(170, 12, 309, NULL, 224, 1, '2024-12-19 08:04:31', '2024-12-19 08:04:31', '4834358a-4eb7-4f1f-af10-746e574521c3'),
(173, 12, 320, NULL, 314, 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '3807154e-1714-40d2-95ae-65d1bd7d6088'),
(174, 12, 321, NULL, 317, 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', '185054b0-0514-42c4-baaa-2d64756e45c0'),
(175, 12, 326, NULL, 314, 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', 'a8d859bc-0894-4662-8f2b-d6f162f5c1f2'),
(176, 12, 327, NULL, 317, 1, '2024-12-19 08:31:15', '2024-12-19 08:31:15', 'f64d2f99-2e57-4e3b-a41e-f6d213303f83'),
(178, 12, 332, NULL, 331, 1, '2024-12-19 08:43:13', '2024-12-19 08:43:13', '47f3f255-2d1d-4649-b7f1-52ddf103d550'),
(179, 12, 334, NULL, 331, 1, '2024-12-19 08:43:13', '2024-12-19 08:43:13', '732643db-cd6d-495d-953b-dc94b2ddf6c4'),
(181, 12, 338, NULL, 337, 1, '2024-12-20 01:21:30', '2024-12-20 01:21:30', '3c338dd2-11d5-45a0-a8e8-b1491c244338'),
(182, 12, 340, NULL, 337, 1, '2024-12-20 01:21:30', '2024-12-20 01:21:30', '64dd0bb3-c80e-4d8f-81cc-222fc052f711'),
(184, 12, 344, NULL, 343, 1, '2024-12-20 01:28:22', '2024-12-20 01:28:22', '0783f89a-d97c-401f-906e-02ab705d0290'),
(185, 12, 346, NULL, 343, 1, '2024-12-20 01:28:22', '2024-12-20 01:28:22', '3aeda532-bdd2-4220-bbc7-ce1217342138'),
(191, 12, 354, NULL, 349, 1, '2024-12-20 01:41:24', '2024-12-20 01:41:24', 'fb3b85b4-fe24-404f-abac-11d8d90b3e8b'),
(192, 12, 354, NULL, 350, 2, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '1ae0e0c8-4c3a-42a8-8543-ee0acba0156e'),
(193, 12, 354, NULL, 351, 3, '2024-12-20 01:41:24', '2024-12-20 01:41:24', 'aff974fd-5937-46f1-841f-7172736c4025'),
(194, 12, 354, NULL, 352, 4, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '08c9afb9-9a34-4c3a-98da-e8ec6abea045'),
(195, 12, 354, NULL, 353, 5, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '019a195d-52cf-4d0b-bb00-33669aeda4a5'),
(196, 12, 356, NULL, 349, 1, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '0307fe4c-5c9a-4196-bdd8-1c04ff92125e'),
(197, 12, 356, NULL, 350, 2, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '8f87c92a-c140-474d-82c8-8e26562d3026'),
(198, 12, 356, NULL, 351, 3, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '627e8c6e-15f2-41a6-8fab-a87f8680b493'),
(199, 12, 356, NULL, 352, 4, '2024-12-20 01:41:24', '2024-12-20 01:41:24', '08fee3a1-7754-4dc9-8427-4aed29ce9126'),
(200, 12, 356, NULL, 353, 5, '2024-12-20 01:41:24', '2024-12-20 01:41:24', 'b3e848ff-9d29-4704-9d0b-53a859575e34'),
(206, 12, 360, NULL, 349, 1, '2024-12-20 01:42:17', '2024-12-20 01:42:17', '26e2c14b-aeef-440b-b81e-6cff5785dcc3'),
(207, 12, 360, NULL, 350, 2, '2024-12-20 01:42:17', '2024-12-20 01:42:17', 'c1b379db-29db-430e-96e1-02fc9b8a3f23'),
(208, 12, 360, NULL, 351, 3, '2024-12-20 01:42:17', '2024-12-20 01:42:17', '3dc290f7-8289-4be3-a170-10b25d915c6d'),
(209, 12, 360, NULL, 352, 4, '2024-12-20 01:42:17', '2024-12-20 01:42:17', 'a30cec04-949c-4c30-ab96-a0999d4b95b1'),
(210, 12, 360, NULL, 353, 5, '2024-12-20 01:42:17', '2024-12-20 01:42:17', 'e0d6de6f-0279-484c-bc02-16fc60e69238'),
(216, 12, 364, NULL, 349, 1, '2024-12-20 01:57:11', '2024-12-20 01:57:11', '1d6fb316-a8b1-4b1a-958c-602cfede8402'),
(217, 12, 364, NULL, 350, 2, '2024-12-20 01:57:11', '2024-12-20 01:57:11', 'd4c8b19b-9263-4bce-a8bb-23bd0a4b7f81'),
(218, 12, 364, NULL, 351, 3, '2024-12-20 01:57:11', '2024-12-20 01:57:11', '77bce502-3196-4886-a211-7b69c87b7132'),
(219, 12, 364, NULL, 352, 4, '2024-12-20 01:57:11', '2024-12-20 01:57:11', 'a7875aee-9cba-4901-8abd-e631130a04d0'),
(220, 12, 364, NULL, 353, 5, '2024-12-20 01:57:11', '2024-12-20 01:57:11', '262c0ce2-3f91-4f02-b582-0ffcff69c667'),
(226, 12, 368, NULL, 349, 1, '2024-12-20 02:35:26', '2024-12-20 02:35:26', '2523bcfd-83ac-4bc5-85ce-e0b98c248fcb'),
(227, 12, 368, NULL, 350, 2, '2024-12-20 02:35:26', '2024-12-20 02:35:26', 'bd808ff2-fb7f-4d13-92e8-646ab4bdca20'),
(228, 12, 368, NULL, 351, 3, '2024-12-20 02:35:26', '2024-12-20 02:35:26', 'ebffb3f9-b770-4971-8f85-2d14df7728c1'),
(229, 12, 368, NULL, 352, 4, '2024-12-20 02:35:26', '2024-12-20 02:35:26', 'a8eed2b1-41c6-4685-8e63-5e6623a4b5b1'),
(230, 12, 368, NULL, 353, 5, '2024-12-20 02:35:26', '2024-12-20 02:35:26', '7dcb058e-6757-432b-86c5-b20646234109'),
(231, 12, 369, NULL, 370, 1, '2024-12-20 02:39:17', '2024-12-20 02:39:17', '314ddbce-81f4-463d-85de-3daf5240ee7e'),
(232, 12, 371, NULL, 370, 1, '2024-12-20 02:39:33', '2024-12-20 02:39:33', '5e72eda0-4a5c-4c68-92e3-25442087f3b6'),
(234, 12, 373, NULL, 370, 1, '2024-12-20 02:40:13', '2024-12-20 02:40:13', '1590d7f5-6d57-4bc1-84e5-7f49de9b7f9a'),
(235, 12, 374, NULL, 375, 1, '2024-12-20 02:41:00', '2024-12-20 02:41:00', '4efed231-9c80-48e0-b660-0bb6f234a094'),
(236, 12, 376, NULL, 375, 1, '2024-12-20 02:41:02', '2024-12-20 02:41:02', '5b12b500-5678-49a1-a7a3-835b97d25cb7');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('1291fec1', '@craft/web/assets/d3/dist'),
('12f43057', '@bower/jquery/dist'),
('1813a041', '@craft/web/assets/jqueryui/dist'),
('19f0f776', '@craft/web/assets/iframeresizer/dist'),
('1dfe8f5', '@craft/web/assets/pluginstore/dist'),
('1f992240', '@craft/web/assets/fieldsettings/dist'),
('235db285', '@craft/web/assets/htmx/dist'),
('2401b4a8', '@craft/web/assets/routes/dist'),
('2c604377', '@craft/web/assets/recententries/dist'),
('2fe72b23', '@craft/web/assets/conditionbuilder/dist'),
('3495d62e', '@craft/web/assets/axios/dist'),
('378b300a', '@craft/web/assets/dashboard/dist'),
('3f9c0e2', '@craft/web/assets/tailwindreset/dist'),
('41cd9928', '@craft/web/assets/velocity/dist'),
('427c767c', '@craft/web/assets/fabric/dist'),
('440944fd', '@craft/web/assets/jquerytouchevents/dist'),
('445a9b9f', '@craft/web/assets/jquerypayment/dist'),
('4e6e9c3f', '@craft/web/assets/assetindexes/dist'),
('4ec7ac0', '@craft/web/assets/selectize/dist'),
('4ec816c1', '@craft/web/assets/feed/dist'),
('55b5b12c', '@craft/web/assets/editsection/dist'),
('55ed4173', '@craft/web/assets/vue/dist'),
('5a8d343b', '@craft/web/assets/matrix/dist'),
('66876ea', '@craft/web/assets/fileupload/dist'),
('68dc7950', '@craft/ckeditor/web/assets/ckeditor/dist'),
('6ace416b', '@craft/web/assets/garnish/dist'),
('71dd2b85', '@craft/web/assets/craftsupport/dist'),
('73b9fc41', '@craft/web/assets/xregexp/dist'),
('7773b1fd', '@craft/web/assets/timepicker/dist'),
('78014141', '@craft/web/assets/picturefill/dist'),
('7b400294', '@craft/web/assets/admintable/dist'),
('80a29868', '@craft/web/assets/jquerytouchevents/dist'),
('80f1470a', '@craft/web/assets/jquerypayment/dist'),
('856645bd', '@craft/web/assets/velocity/dist'),
('86d7aae9', '@craft/web/assets/fabric/dist'),
('8825aef4', '@craft/web/assets/sites/dist'),
('8a4d888', '@craft/web/assets/cp/dist'),
('911e6db9', '@craft/web/assets/editsection/dist'),
('911ec6f7', '@craft/web/assets/queuemanager/dist'),
('91469de6', '@craft/web/assets/vue/dist'),
('9492ea9d', '@craft/web/assets/userpermissions/dist'),
('96fd3cd7', '@craft/web/assets/utilities/dist'),
('9e26e8ae', '@craft/web/assets/matrix/dist'),
('ae659dfe', '@craft/web/assets/garnish/dist'),
('b3d86d68', '@craft/web/assets/timepicker/dist'),
('b576f710', '@craft/web/assets/craftsupport/dist'),
('b6e607b2', '@craft/web/assets/graphiql/dist'),
('b71220d4', '@craft/web/assets/xregexp/dist'),
('ba52a045', '@craft/web/assets/focalpoint/dist'),
('bcaa9dd4', '@craft/web/assets/picturefill/dist'),
('bfebde01', '@craft/web/assets/admintable/dist'),
('c047a655', '@craft/web/assets/selectize/dist'),
('c1735fcb', '@craft/web/assets/installer/dist'),
('c2c3aa7f', '@craft/web/assets/fileupload/dist'),
('c5743460', '@craft/web/assets/pluginstore/dist'),
('c7521c77', '@craft/web/assets/tailwindreset/dist'),
('c94b8916', '@craft/web/assets/prismjs/dist'),
('cc0f041d', '@craft/web/assets/cp/dist'),
('d63a2254', '@craft/web/assets/d3/dist'),
('d65fecc2', '@bower/jquery/dist'),
('d671dd8c', '@craft/web/assets/updateswidget/dist'),
('db32fed5', '@craft/web/assets/fieldsettings/dist'),
('dcb87cd4', '@craft/web/assets/jqueryui/dist'),
('dd5b2be3', '@craft/web/assets/iframeresizer/dist'),
('de05583', '@craft/web/assets/prismjs/dist'),
('df5e89d7', '@craft/web/assets/generalsettings/dist'),
('e108d9bd', '@craft/web/assets/updater/dist'),
('e5a6f5c', '@craft/web/assets/updates/dist'),
('e7f66e10', '@craft/web/assets/htmx/dist'),
('e8cb9fe2', '@craft/web/assets/recententries/dist'),
('eb4cf7b6', '@craft/web/assets/conditionbuilder/dist'),
('f03e0abb', '@craft/web/assets/axios/dist'),
('f320ec9f', '@craft/web/assets/dashboard/dist');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int NOT NULL,
  `canonicalId` int NOT NULL,
  `creatorId` int DEFAULT NULL,
  `num` int NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `canonicalId`, `creatorId`, `num`, `notes`) VALUES
(33, 86, 1, 1, NULL),
(34, 86, 1, 2, 'Applied “Draft 1”'),
(35, 97, 1, 1, NULL),
(36, 98, 1, 1, NULL),
(37, 99, 1, 1, NULL),
(38, 100, 1, 1, NULL),
(39, 101, 1, 1, NULL),
(40, 102, 1, 1, NULL),
(41, 103, 1, 1, NULL),
(42, 86, 1, 3, NULL),
(43, 86, 1, 4, NULL),
(44, 86, 1, 5, 'Applied “Draft 1”'),
(45, 124, 1, 1, NULL),
(46, 125, 1, 1, NULL),
(47, 126, 1, 1, NULL),
(48, 86, 1, 6, 'Applied “Draft 1”'),
(49, 124, 1, 2, NULL),
(50, 148, 1, 1, NULL),
(51, 149, 1, 1, NULL),
(52, 150, 1, 1, NULL),
(53, 151, 1, 1, NULL),
(54, 152, 1, 1, NULL),
(55, 86, 1, 7, 'Applied “Draft 1”'),
(56, 86, 1, 8, 'Applied “Draft 1”'),
(57, 86, 1, 9, ''),
(58, 86, 1, 10, ''),
(59, 86, 1, 11, 'Applied “Draft 1”'),
(60, 170, 1, 1, NULL),
(61, 171, 1, 1, NULL),
(62, 172, 1, 1, NULL),
(63, 86, 1, 12, 'Applied “Draft 1”'),
(64, 124, 1, 3, NULL),
(65, 125, 1, 2, NULL),
(66, 170, 1, 2, NULL),
(67, 171, 1, 2, NULL),
(68, 181, 1, 1, NULL),
(69, 86, 1, 13, 'Applied “Draft 1”'),
(70, 124, 1, 4, NULL),
(71, 125, 1, 3, NULL),
(72, 181, 1, 2, NULL),
(73, 194, 1, 1, NULL),
(74, 195, 1, 1, NULL),
(75, 86, 1, 14, 'Applied “Draft 1”'),
(76, 206, 1, 1, NULL),
(77, 207, 1, 1, NULL),
(78, 208, 1, 1, NULL),
(79, 86, 1, 15, 'Applied “Draft 1”'),
(80, 86, 1, 16, 'Applied “Draft 1”'),
(81, 86, 1, 17, ''),
(82, 206, 1, 2, NULL),
(83, 219, 1, 1, NULL),
(84, 219, 1, 2, 'Applied “Draft 1”'),
(85, 238, 1, 1, NULL),
(86, 239, 1, 1, NULL),
(87, 240, 1, 1, NULL),
(88, 241, 1, 1, NULL),
(89, 242, 1, 1, NULL),
(90, 243, 1, 1, NULL),
(91, 251, 1, 1, ''),
(92, 252, 1, 1, NULL),
(93, 254, 1, 1, NULL),
(94, 261, 1, 1, ''),
(95, 264, 1, 1, ''),
(96, 266, 1, 1, ''),
(97, 266, 1, 2, 'Applied “Draft 1”'),
(98, 283, 1, 1, ''),
(99, 86, 1, 18, ''),
(100, 86, 1, 19, 'Applied “Draft 1”'),
(101, 181, 1, 3, NULL),
(102, 86, 1, 20, 'Applied “Draft 1”'),
(103, 170, 1, 3, NULL),
(104, 219, 1, 3, 'Applied “Draft 1”'),
(105, 304, 1, 1, NULL),
(106, 305, 1, 1, NULL),
(107, 306, 1, 1, NULL),
(108, 219, 1, 4, 'Applied “Draft 1”'),
(109, 304, 1, 2, NULL),
(110, 319, 1, 1, NULL),
(111, 320, 1, 1, NULL),
(112, 321, 1, 1, NULL),
(113, 322, 1, 1, NULL),
(114, 219, 1, 5, 'Applied “Draft 1”'),
(115, 332, 1, 1, NULL),
(116, 219, 1, 6, 'Applied “Draft 1”'),
(117, 338, 1, 1, NULL),
(118, 219, 1, 7, 'Applied “Draft 1”'),
(119, 344, 1, 1, NULL),
(120, 219, 1, 8, 'Applied “Draft 1”'),
(121, 354, 1, 1, NULL),
(122, 219, 1, 9, 'Applied “Draft 1”'),
(123, 354, 1, 2, NULL),
(124, 219, 1, 10, 'Applied “Draft 1”'),
(125, 354, 1, 3, NULL),
(126, 219, 1, 11, ''),
(127, 354, 1, 4, NULL),
(128, 369, 1, 1, ''),
(129, 369, 1, 2, 'Applied “Draft 1”'),
(130, 374, 1, 1, ''),
(131, 219, 1, 12, 'Applied “Draft 1”'),
(132, 379, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int NOT NULL,
  `siteId` int NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' admin gmail com '),
(1, 'firstname', 0, 1, ''),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'slug', 0, 1, ''),
(1, 'username', 0, 1, ' admin '),
(9, 'alt', 0, 1, ''),
(9, 'extension', 0, 1, ' jpg '),
(9, 'filename', 0, 1, ' 1 jpg '),
(9, 'kind', 0, 1, ' image '),
(9, 'slug', 0, 1, ''),
(9, 'title', 0, 1, ' 1 '),
(10, 'alt', 0, 1, ''),
(10, 'extension', 0, 1, ' jpg '),
(10, 'filename', 0, 1, ' 2 jpg '),
(10, 'kind', 0, 1, ' image '),
(10, 'slug', 0, 1, ''),
(10, 'title', 0, 1, ' 2 '),
(11, 'alt', 0, 1, ''),
(11, 'extension', 0, 1, ' jpg '),
(11, 'filename', 0, 1, ' 3 jpg '),
(11, 'kind', 0, 1, ' image '),
(11, 'slug', 0, 1, ''),
(11, 'title', 0, 1, ' 3 '),
(12, 'alt', 0, 1, ''),
(12, 'extension', 0, 1, ' jpg '),
(12, 'filename', 0, 1, ' 4 jpg '),
(12, 'kind', 0, 1, ' image '),
(12, 'slug', 0, 1, ''),
(12, 'title', 0, 1, ' 4 '),
(35, 'alt', 0, 1, ''),
(35, 'extension', 0, 1, ' jpg '),
(35, 'filename', 0, 1, ' image2 jpg '),
(35, 'kind', 0, 1, ' image '),
(35, 'slug', 0, 1, ''),
(35, 'title', 0, 1, ' image2 '),
(41, 'slug', 0, 1, ''),
(42, 'alt', 0, 1, ''),
(42, 'extension', 0, 1, ' png '),
(42, 'filename', 0, 1, ' newlogo2 png '),
(42, 'kind', 0, 1, ' image '),
(42, 'slug', 0, 1, ''),
(42, 'title', 0, 1, ' new logo2 '),
(43, 'alt', 0, 1, ''),
(43, 'extension', 0, 1, ' png '),
(43, 'filename', 0, 1, ' newlogo2 putih png '),
(43, 'kind', 0, 1, ' image '),
(43, 'slug', 0, 1, ''),
(43, 'title', 0, 1, ' new logo2 putih '),
(44, 'alt', 0, 1, ''),
(44, 'extension', 0, 1, ' png '),
(44, 'filename', 0, 1, ' newlogo2 128 png '),
(44, 'kind', 0, 1, ' image '),
(44, 'slug', 0, 1, ''),
(44, 'title', 0, 1, ' new logo2 128 '),
(49, 'alt', 0, 1, ''),
(49, 'extension', 0, 1, ' png '),
(49, 'filename', 0, 1, ' dokterpost logo png '),
(49, 'kind', 0, 1, ' image '),
(49, 'slug', 0, 1, ''),
(49, 'title', 0, 1, ' dokterpost logo '),
(53, 'alt', 0, 1, ''),
(53, 'extension', 0, 1, ' png '),
(53, 'filename', 0, 1, ' doktercares logo png '),
(53, 'kind', 0, 1, ' image '),
(53, 'slug', 0, 1, ''),
(53, 'title', 0, 1, ' doktercares logo '),
(86, 'slug', 0, 1, ' homepage '),
(86, 'title', 0, 1, ' homepage '),
(97, 'slug', 0, 1, ' empowering innovation shaping the future '),
(97, 'title', 0, 1, ' empowering innovation shaping the future '),
(98, 'slug', 0, 1, ' gambar '),
(98, 'title', 0, 1, ' gambar '),
(99, 'slug', 0, 1, ' wealthier doctor healthier '),
(99, 'title', 0, 1, ' wealthier doctor healthier '),
(100, 'slug', 0, 1, ' gambar '),
(100, 'title', 0, 1, ' gambar '),
(101, 'slug', 0, 1, ' temp nsqjcuisuuxfmdifhdhvubsubbcvnqfjqzeh '),
(101, 'title', 0, 1, ''),
(102, 'slug', 0, 1, ' dokterpost '),
(102, 'title', 0, 1, ' dokterpost '),
(103, 'slug', 0, 1, ' doktercares '),
(103, 'title', 0, 1, ' doktercares '),
(115, 'slug', 0, 1, ' temp fcpcljynmezwcpnyaiuhpxkydzojldwvztwc '),
(115, 'title', 0, 1, ''),
(116, 'slug', 0, 1, ' temp enacsabxtnbzlaanniipfisogucdlpfiifkl '),
(116, 'title', 0, 1, ''),
(117, 'slug', 0, 1, ' empowering innovation shaping the future '),
(117, 'title', 0, 1, ' empowering innovation shaping the future '),
(118, 'slug', 0, 1, ' gambar '),
(118, 'title', 0, 1, ' gambar '),
(124, 'slug', 0, 1, ''),
(124, 'title', 0, 1, ''),
(125, 'slug', 0, 1, ' empowering innovation shaping the future '),
(125, 'title', 0, 1, ' empowering innovation shaping the future '),
(126, 'slug', 0, 1, ' gambar '),
(126, 'title', 0, 1, ' gambar '),
(134, 'slug', 0, 1, ' temp yuvepwrzwzlqwzxewsbflebsfgbcefctwnzv '),
(134, 'title', 0, 1, ''),
(135, 'slug', 0, 1, ' temp rtjordbwkfgiavsddhszrxzqehuxzzezbkgk '),
(135, 'title', 0, 1, ''),
(136, 'slug', 0, 1, ' temp uzbphzcoebssruatcsezlhkyqgfdezocfgii '),
(136, 'title', 0, 1, ''),
(137, 'slug', 0, 1, ' temp ahawicdtkuhlarrszahtozsiwhmwpifoclbe '),
(137, 'title', 0, 1, ''),
(140, 'slug', 0, 1, ' temp wcmaaxbmepceqnfuzkzavayoaurjjwihtruw '),
(140, 'title', 0, 1, ''),
(141, 'slug', 0, 1, ' temp zmlojufrcmyecvglhwbmyvrxyjghulkbpjim '),
(141, 'title', 0, 1, ''),
(142, 'slug', 0, 1, ' temp zvtuipynsmuqohexqijxibnvkjqqckyqmxbu '),
(142, 'title', 0, 1, ''),
(148, 'slug', 0, 1, ' temp yfvqoplcjyebyotxychchhuzcbbgdjsbzokd '),
(148, 'title', 0, 1, ''),
(149, 'slug', 0, 1, ' temp yavyuaezgoiodlobwqlmtmwcdztcpjftxeyd '),
(149, 'title', 0, 1, ''),
(150, 'slug', 0, 1, ' temp oyxzazbebtlewaqmrrvnioalpeonyqvchwxu '),
(150, 'title', 0, 1, ''),
(151, 'slug', 0, 1, ' temp jwarwcytjjdnbruvthhrlwaczheyyougehqt '),
(151, 'title', 0, 1, ''),
(152, 'slug', 0, 1, ' temp xlnoerfzcassrilslviinjwcjiwaxrcrqyen '),
(152, 'title', 0, 1, ''),
(170, 'slug', 0, 1, ' temp khbwgreabrxkgioprhkhctbyjdfglnmrespv '),
(170, 'title', 0, 1, ''),
(171, 'slug', 0, 1, ' wealthier doctor healthier '),
(171, 'title', 0, 1, ' wealthier doctor healthier '),
(172, 'slug', 0, 1, ' gambar '),
(172, 'title', 0, 1, ' gambar '),
(181, 'slug', 0, 1, ' empowering innovation shaping '),
(181, 'title', 0, 1, ' product in multimedika maha data '),
(194, 'slug', 0, 1, ' dokter post '),
(194, 'title', 0, 1, ' dokter post '),
(195, 'slug', 0, 1, ' dokter cares '),
(195, 'title', 0, 1, ' dokter cares '),
(206, 'slug', 0, 1, ' contact us '),
(206, 'title', 0, 1, ' contact us '),
(207, 'slug', 0, 1, ' contact us '),
(207, 'title', 0, 1, ' contact us '),
(208, 'slug', 0, 1, ' contact '),
(208, 'title', 0, 1, ' contact '),
(219, 'slug', 0, 1, ' about '),
(219, 'title', 0, 1, ' about '),
(224, 'alt', 0, 1, ''),
(224, 'extension', 0, 1, ' jpg '),
(224, 'filename', 0, 1, ' about1 jpg '),
(224, 'kind', 0, 1, ' image '),
(224, 'slug', 0, 1, ''),
(224, 'title', 0, 1, ' about1 '),
(238, 'slug', 0, 1, ' temp hrxvqdnxzfteiilmdnmyhpqointzxfgpaqak '),
(238, 'title', 0, 1, ''),
(239, 'slug', 0, 1, ' gambar '),
(239, 'title', 0, 1, ' gambar '),
(240, 'slug', 0, 1, ' text2 '),
(240, 'title', 0, 1, ' text1 '),
(241, 'slug', 0, 1, ' aboutmulti medika mahadata '),
(241, 'title', 0, 1, ' text2 '),
(242, 'slug', 0, 1, ' text3 '),
(242, 'title', 0, 1, ' text3 '),
(243, 'slug', 0, 1, ' text4 '),
(243, 'title', 0, 1, ' text4 '),
(251, 'slug', 0, 1, ' product '),
(251, 'title', 0, 1, ' product '),
(252, 'slug', 0, 1, ' product '),
(252, 'title', 0, 1, ' product '),
(253, 'slug', 0, 1, ' temp vynwfcfosmjqpufycvlcraxjqybemushsgel '),
(253, 'title', 0, 1, ''),
(254, 'slug', 0, 1, ' doktercares '),
(254, 'title', 0, 1, ' doktercares '),
(258, 'slug', 0, 1, ' temp xynzfjkhnqlxuivzdhtjvgfwyjdhszpavdbo '),
(258, 'title', 0, 1, ''),
(259, 'slug', 0, 1, ' temp kgpzcsxvwvsjcvipxbahbmlmasmcxtbpqgmj '),
(259, 'title', 0, 1, ''),
(260, 'slug', 0, 1, ' temp zhrbcxhfkiobpikadrjzalkneyttztyxtbby '),
(260, 'title', 0, 1, ''),
(261, 'slug', 0, 1, ' home '),
(261, 'title', 0, 1, ' home '),
(262, 'slug', 0, 1, ' temp siivmpnrxvkfdtsrpzlxovayuuhmfhptgczo '),
(262, 'title', 0, 1, ''),
(264, 'slug', 0, 1, ' about '),
(264, 'title', 0, 1, ' about '),
(266, 'slug', 0, 1, ' doktercares '),
(266, 'title', 0, 1, ' doktercares '),
(267, 'alt', 0, 1, ''),
(267, 'extension', 0, 1, ' jpeg '),
(267, 'filename', 0, 1, ' 1 jpeg '),
(267, 'kind', 0, 1, ' image '),
(267, 'slug', 0, 1, ''),
(267, 'title', 0, 1, ' 1 '),
(268, 'alt', 0, 1, ''),
(268, 'extension', 0, 1, ' jpeg '),
(268, 'filename', 0, 1, ' 2 jpeg '),
(268, 'kind', 0, 1, ' image '),
(268, 'slug', 0, 1, ''),
(268, 'title', 0, 1, ' 2 '),
(269, 'alt', 0, 1, ''),
(269, 'extension', 0, 1, ' jpeg '),
(269, 'filename', 0, 1, ' 3 jpeg '),
(269, 'kind', 0, 1, ' image '),
(269, 'slug', 0, 1, ''),
(269, 'title', 0, 1, ' 3 '),
(270, 'alt', 0, 1, ''),
(270, 'extension', 0, 1, ' jpeg '),
(270, 'filename', 0, 1, ' 4 jpeg '),
(270, 'kind', 0, 1, ' image '),
(270, 'slug', 0, 1, ''),
(270, 'title', 0, 1, ' 4 '),
(271, 'alt', 0, 1, ''),
(271, 'extension', 0, 1, ' jpeg '),
(271, 'filename', 0, 1, ' 5 jpeg '),
(271, 'kind', 0, 1, ' image '),
(271, 'slug', 0, 1, ''),
(271, 'title', 0, 1, ' 5 '),
(272, 'alt', 0, 1, ''),
(272, 'extension', 0, 1, ' jpeg '),
(272, 'filename', 0, 1, ' 6 jpeg '),
(272, 'kind', 0, 1, ' image '),
(272, 'slug', 0, 1, ''),
(272, 'title', 0, 1, ' 6 '),
(273, 'alt', 0, 1, ''),
(273, 'extension', 0, 1, ' jpeg '),
(273, 'filename', 0, 1, ' 7 jpeg '),
(273, 'kind', 0, 1, ' image '),
(273, 'slug', 0, 1, ''),
(273, 'title', 0, 1, ' 7 '),
(274, 'alt', 0, 1, ''),
(274, 'extension', 0, 1, ' jpeg '),
(274, 'filename', 0, 1, ' 8 jpeg '),
(274, 'kind', 0, 1, ' image '),
(274, 'slug', 0, 1, ''),
(274, 'title', 0, 1, ' 8 '),
(275, 'alt', 0, 1, ''),
(275, 'extension', 0, 1, ' jpeg '),
(275, 'filename', 0, 1, ' 9 jpeg '),
(275, 'kind', 0, 1, ' image '),
(275, 'slug', 0, 1, ''),
(275, 'title', 0, 1, ' 9 '),
(276, 'alt', 0, 1, ''),
(276, 'extension', 0, 1, ' jpeg '),
(276, 'filename', 0, 1, ' 10 jpeg '),
(276, 'kind', 0, 1, ' image '),
(276, 'slug', 0, 1, ''),
(276, 'title', 0, 1, ' 10 '),
(277, 'alt', 0, 1, ''),
(277, 'extension', 0, 1, ' jpeg '),
(277, 'filename', 0, 1, ' 11 jpeg '),
(277, 'kind', 0, 1, ' image '),
(277, 'slug', 0, 1, ''),
(277, 'title', 0, 1, ' 11 '),
(278, 'alt', 0, 1, ''),
(278, 'extension', 0, 1, ' jpeg '),
(278, 'filename', 0, 1, ' 12 jpeg '),
(278, 'kind', 0, 1, ' image '),
(278, 'slug', 0, 1, ''),
(278, 'title', 0, 1, ' 12 '),
(279, 'alt', 0, 1, ''),
(279, 'extension', 0, 1, ' jpeg '),
(279, 'filename', 0, 1, ' 13 jpeg '),
(279, 'kind', 0, 1, ' image '),
(279, 'slug', 0, 1, ''),
(279, 'title', 0, 1, ' 13 '),
(283, 'slug', 0, 1, ' dokterpost '),
(283, 'title', 0, 1, ' dokterpost '),
(284, 'alt', 0, 1, ''),
(284, 'extension', 0, 1, ' jpg '),
(284, 'filename', 0, 1, ' 1 2024 12 19 073835 ghmj jpg '),
(284, 'kind', 0, 1, ' image '),
(284, 'slug', 0, 1, ''),
(284, 'title', 0, 1, ' 1 '),
(285, 'alt', 0, 1, ''),
(285, 'extension', 0, 1, ' jpg '),
(285, 'filename', 0, 1, ' 2 2024 12 19 073836 zyxq jpg '),
(285, 'kind', 0, 1, ' image '),
(285, 'slug', 0, 1, ''),
(285, 'title', 0, 1, ' 2 '),
(286, 'alt', 0, 1, ''),
(286, 'extension', 0, 1, ' jpg '),
(286, 'filename', 0, 1, ' 3 2024 12 19 073837 pwcz jpg '),
(286, 'kind', 0, 1, ' image '),
(286, 'slug', 0, 1, ''),
(286, 'title', 0, 1, ' 3 '),
(287, 'alt', 0, 1, ''),
(287, 'extension', 0, 1, ' jpg '),
(287, 'filename', 0, 1, ' 4 2024 12 19 073840 rkad jpg '),
(287, 'kind', 0, 1, ' image '),
(287, 'slug', 0, 1, ''),
(287, 'title', 0, 1, ' 4 '),
(288, 'alt', 0, 1, ''),
(288, 'extension', 0, 1, ' jpg '),
(288, 'filename', 0, 1, ' 5 jpg '),
(288, 'kind', 0, 1, ' image '),
(288, 'slug', 0, 1, ''),
(288, 'title', 0, 1, ' 5 '),
(304, 'slug', 0, 1, ' about multi medika mahadata '),
(304, 'title', 0, 1, ' about multi medika mahadata '),
(305, 'slug', 0, 1, ' gambar '),
(305, 'title', 0, 1, ' gambar '),
(306, 'slug', 0, 1, ' teks 1 '),
(306, 'title', 0, 1, ' teks 1 '),
(314, 'alt', 0, 1, ''),
(314, 'extension', 0, 1, ' jpg '),
(314, 'filename', 0, 1, ' about2 jpg '),
(314, 'kind', 0, 1, ' image '),
(314, 'slug', 0, 1, ''),
(314, 'title', 0, 1, ' about2 '),
(317, 'alt', 0, 1, ''),
(317, 'extension', 0, 1, ' jpg '),
(317, 'filename', 0, 1, ' about3 jpg '),
(317, 'kind', 0, 1, ' image '),
(317, 'slug', 0, 1, ''),
(317, 'title', 0, 1, ' about3 '),
(319, 'slug', 0, 1, ' text 2 '),
(319, 'title', 0, 1, ' text 2 '),
(320, 'slug', 0, 1, ' gambar '),
(320, 'title', 0, 1, ' gambar '),
(321, 'slug', 0, 1, ' gambar '),
(321, 'title', 0, 1, ' gambar '),
(322, 'slug', 0, 1, ' text 3 '),
(322, 'title', 0, 1, ' text 3 '),
(331, 'alt', 0, 1, ''),
(331, 'extension', 0, 1, ' png '),
(331, 'filename', 0, 1, ' mockup png '),
(331, 'kind', 0, 1, ' image '),
(331, 'slug', 0, 1, ''),
(331, 'title', 0, 1, ' mockup '),
(332, 'slug', 0, 1, ' our platform member '),
(332, 'title', 0, 1, ' our platform member '),
(337, 'alt', 0, 1, ''),
(337, 'extension', 0, 1, ' png '),
(337, 'filename', 0, 1, ' journey png '),
(337, 'kind', 0, 1, ' image '),
(337, 'slug', 0, 1, ''),
(337, 'title', 0, 1, ' journey '),
(338, 'slug', 0, 1, ' our journey '),
(338, 'title', 0, 1, ' our journey '),
(343, 'alt', 0, 1, ''),
(343, 'extension', 0, 1, ' png '),
(343, 'filename', 0, 1, ' fasilitas png '),
(343, 'kind', 0, 1, ' image '),
(343, 'slug', 0, 1, ''),
(343, 'title', 0, 1, ' fasilitas '),
(344, 'slug', 0, 1, ' facilities at multi medika mahadata '),
(344, 'title', 0, 1, ' facilities at multi medika mahadata '),
(349, 'alt', 0, 1, ''),
(349, 'extension', 0, 1, ' png '),
(349, 'filename', 0, 1, ' 1 png '),
(349, 'kind', 0, 1, ' image '),
(349, 'slug', 0, 1, ''),
(349, 'title', 0, 1, ' 1 '),
(350, 'alt', 0, 1, ''),
(350, 'extension', 0, 1, ' png '),
(350, 'filename', 0, 1, ' 2 png '),
(350, 'kind', 0, 1, ' image '),
(350, 'slug', 0, 1, ''),
(350, 'title', 0, 1, ' 2 '),
(351, 'alt', 0, 1, ''),
(351, 'extension', 0, 1, ' png '),
(351, 'filename', 0, 1, ' 3 png '),
(351, 'kind', 0, 1, ' image '),
(351, 'slug', 0, 1, ''),
(351, 'title', 0, 1, ' 3 '),
(352, 'alt', 0, 1, ''),
(352, 'extension', 0, 1, ' png '),
(352, 'filename', 0, 1, ' 4 png '),
(352, 'kind', 0, 1, ' image '),
(352, 'slug', 0, 1, ''),
(352, 'title', 0, 1, ' 4 '),
(353, 'alt', 0, 1, ''),
(353, 'extension', 0, 1, ' png '),
(353, 'filename', 0, 1, ' 5 png '),
(353, 'kind', 0, 1, ' image '),
(353, 'slug', 0, 1, ''),
(353, 'title', 0, 1, ' 5 '),
(354, 'slug', 0, 1, ' temp htrsyrulukctuteoorjswpyectfaefppqawt '),
(354, 'title', 0, 1, ''),
(369, 'slug', 0, 1, ' direktur '),
(369, 'title', 0, 1, ' direktur '),
(370, 'alt', 0, 1, ''),
(370, 'extension', 0, 1, ' jpeg '),
(370, 'filename', 0, 1, ' whatsapp image 2024 11 13 at 3 13 37 pm jpeg '),
(370, 'kind', 0, 1, ' image '),
(370, 'slug', 0, 1, ''),
(370, 'title', 0, 1, ' whats app image 2024 11 13 at 3 13 37 pm '),
(374, 'slug', 0, 1, ' general manager '),
(374, 'title', 0, 1, ' general manager '),
(375, 'alt', 0, 1, ''),
(375, 'extension', 0, 1, ' jpeg '),
(375, 'filename', 0, 1, ' whatsapp image 2024 11 13 at 3 03 56 pm jpeg '),
(375, 'kind', 0, 1, ' image '),
(375, 'slug', 0, 1, ''),
(375, 'title', 0, 1, ' whats app image 2024 11 13 at 3 03 56 pm '),
(379, 'slug', 0, 1, ' our board of management '),
(379, 'title', 0, 1, ' our board of management ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int NOT NULL,
  `structureId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `maxAuthors` smallint UNSIGNED NOT NULL DEFAULT '1',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `defaultPlacement` enum('beginning','end') NOT NULL DEFAULT 'end',
  `previewTargets` json DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `maxAuthors`, `propagationMethod`, `defaultPlacement`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Homepage', 'homepage', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2024-12-13 09:04:07', '2024-12-13 09:04:07', NULL, '1cf35403-22fd-43da-ba82-9eb6da059f47'),
(2, NULL, 'About', 'about', 'single', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2024-12-19 04:49:25', '2024-12-19 04:49:25', NULL, '887f5473-9730-43e0-93f6-e467f4a0872a'),
(3, NULL, 'Product', 'product', 'channel', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2024-12-19 06:32:36', '2024-12-19 06:32:36', '2024-12-19 06:52:50', '87a28098-f28a-49f0-8465-62ff877c2b51'),
(4, 1, 'People', 'people', 'structure', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2024-12-19 06:33:00', '2024-12-19 06:33:00', '2024-12-19 06:52:54', 'e8c662e5-812a-42b2-9537-a6d4a515eaf8'),
(5, 2, 'Navigation', 'navigation', 'structure', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2024-12-19 07:03:51', '2024-12-19 07:03:51', NULL, '7b5b5e69-db65-40ee-808d-2f27e5c64f46'),
(6, NULL, 'Product', 'product', 'channel', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2024-12-19 07:35:12', '2024-12-19 07:35:12', NULL, 'b50b14a0-ffbc-4388-b37c-e54abf235690'),
(7, 3, 'People', 'people', 'structure', 1, 1, 'all', 'end', '[{\"label\": \"Primary entry page\", \"refresh\": \"1\", \"urlFormat\": \"{url}\"}]', '2024-12-20 02:38:45', '2024-12-20 02:38:45', NULL, '6c25dd36-7b7a-4a33-b2bb-02e7f4fedca3');

-- --------------------------------------------------------

--
-- Table structure for table `sections_entrytypes`
--

CREATE TABLE `sections_entrytypes` (
  `sectionId` int NOT NULL,
  `typeId` int NOT NULL,
  `sortOrder` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sections_entrytypes`
--

INSERT INTO `sections_entrytypes` (`sectionId`, `typeId`, `sortOrder`) VALUES
(1, 1, 1),
(2, 21, 1),
(3, 1, 1),
(4, 1, 1),
(5, 22, 1),
(6, 23, 1),
(7, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int NOT NULL,
  `sectionId` int NOT NULL,
  `siteId` int NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', 'index.twig', 1, '2024-12-13 09:04:07', '2024-12-14 01:03:42', 'd7be5c17-3fa4-44ee-881f-27cdc01a616e'),
(2, 2, 1, 1, 'about', 'about/_entry.twig', 1, '2024-12-19 04:49:25', '2024-12-19 04:49:25', '29e094ae-eca8-4cbd-a7bf-d61d9b68df25'),
(3, 3, 1, 1, 'product/{slug}', 'product/_entry.twig', 1, '2024-12-19 06:32:36', '2024-12-19 06:32:36', '95c7f7bd-6b7d-463c-9522-ef631087262f'),
(4, 4, 1, 1, 'people/{slug}', 'people/_entry.twig', 1, '2024-12-19 06:33:00', '2024-12-19 06:33:00', '905a6bed-b22c-4800-a708-07f5f4dba7ba'),
(5, 5, 1, 0, NULL, NULL, 1, '2024-12-19 07:03:51', '2024-12-19 07:03:51', '999bf9e7-1b9f-4754-87c3-5fdf46e3997e'),
(6, 6, 1, 1, 'product', 'product/_entry.twig', 1, '2024-12-19 07:35:12', '2024-12-19 07:39:49', '19d9ac98-2b04-4f9f-96d9-c01c748055af'),
(7, 7, 1, 1, 'people/{slug}', 'people/_entry.twig', 1, '2024-12-20 02:38:45', '2024-12-20 02:38:45', '4bd3660e-9552-4a2f-986a-c7babe08a7d5');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'FVoBAPBJUFoq8CptTpZjzErn_0m2fCbc8MKDmRRlR6sB5OHbECxAg4fJ_i1TxP6cI5G5YZnZM7qveRMB0SZI9F3_UvXC13mWiWOB', '2024-12-13 09:01:43', '2024-12-13 09:08:11', '2d1c6320-120e-4ac3-b311-4fed382bc172'),
(2, 1, 'INgN_tqJnWLqCYYBkg7EK5SdbQQikZhfgtnjmwQp-yjU8ALTYHP1bXBQjmPavkfWYLil1rTSU5wAjyILV2Q5moivgsNUAvowoKNm', '2024-12-14 01:03:21', '2024-12-14 05:31:42', 'b80d4ed2-56a3-4817-aef1-528725a15f91'),
(3, 1, 'zlNCYgS2L7Osv3nepRgxhP02CicFnXOGEeuM1dn5jULZpGWN0eFv9mYe08uaW-Yx1QIrspX-1nVh7D01qyXjSkyeDyIUQA_zxWrt', '2024-12-16 07:47:08', '2024-12-16 09:04:21', '748489cb-709d-40a2-9d1c-d04ae0338f02'),
(4, 1, 'fViIcE1P7o2636hoSZiqxotdp0z7KD2AF_D5UIMst_rr5-f0yl5LGPCCmOQMNovtIs-lzATIjCXCWjdk1cCgcFOBBevo88a89Ps1', '2024-12-17 07:15:55', '2024-12-17 09:22:17', '6ac68ed5-f133-4940-9cc4-2e8dfdb66a32'),
(9, 1, 'waYec6cDNLht7WV1Z-A1K692oGsIuumIPSO-Ru7oqOk0asDzmadUVwhj5Nnp05W3igslwcSCsiITlQZThPHVPDwFXRKP--WriFmj', '2024-12-19 06:05:25', '2024-12-19 09:06:18', 'fefbde5f-bf82-4909-907f-fa08e8ebb534'),
(10, 1, 'YahZTfl3rIhsjkM8lmGfpN1wcIsz9hSm6hJVgC1rpd__WtXSNFb1dYo_YxSo5dcqmnftxUi7LkUeYCnwDH1rO1k6JbctjRFRHadA', '2024-12-20 01:11:03', '2024-12-20 02:55:11', '4b41591a-7aee-4f66-9a8b-6bf5c9a34cfc');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'PT Multi Medika Mahadata', '2024-12-13 08:59:52', '2024-12-13 08:59:52', NULL, '0b56403c-5415-4fd5-a06f-3253b5ef1ff5');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` varchar(255) NOT NULL DEFAULT 'true',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'true', 'PT Multi Medika Mahadata', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2024-12-13 08:59:52', '2024-12-13 08:59:52', NULL, '64e53b69-ab01-497f-a11b-5a0e1ec07062');

-- --------------------------------------------------------

--
-- Table structure for table `sso_identities`
--

CREATE TABLE `sso_identities` (
  `provider` varchar(255) NOT NULL,
  `identityId` varchar(255) NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int NOT NULL,
  `structureId` int NOT NULL,
  `elementId` int DEFAULT NULL,
  `root` int UNSIGNED DEFAULT NULL,
  `lft` int UNSIGNED NOT NULL,
  `rgt` int UNSIGNED NOT NULL,
  `level` smallint UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 8, 0, '2024-12-19 06:34:05', '2024-12-19 06:37:58', 'e8f10690-802a-47c9-889a-328fc13ffe99'),
(2, 1, 253, 1, 2, 3, 1, '2024-12-19 06:34:05', '2024-12-19 06:34:05', 'c2556b20-ec21-43c3-8179-a00e81bd0e3b'),
(3, 1, 258, 1, 4, 5, 1, '2024-12-19 06:37:45', '2024-12-19 06:37:45', '16f55d10-bbc9-4e36-b6a6-9475bcd1d2fd'),
(4, 1, 259, 1, 6, 7, 1, '2024-12-19 06:37:57', '2024-12-19 06:37:57', '988cf1bb-36a4-4c46-9b6c-700173b6cf98'),
(5, 2, NULL, 5, 1, 10, 0, '2024-12-19 07:04:04', '2024-12-19 07:18:17', '1d52dd2b-333a-45f9-aaf4-91af51248361'),
(6, 2, 260, 5, 2, 3, 1, '2024-12-19 07:04:04', '2024-12-19 07:18:17', 'd41ef5cd-34eb-409b-8e08-e377f8e97e98'),
(7, 2, 261, 5, 4, 5, 1, '2024-12-19 07:04:40', '2024-12-19 07:18:17', 'e0b51485-3d54-4b20-98a3-063c1cc1fe2a'),
(8, 2, 262, 5, 8, 9, 1, '2024-12-19 07:04:46', '2024-12-19 07:18:17', 'ea1e9f77-38e2-4349-b1ac-a3b89ef6b13e'),
(9, 2, 264, 5, 6, 7, 1, '2024-12-19 07:06:57', '2024-12-19 07:18:17', '6ba9ab29-29cb-46ee-bfeb-1e3860573021'),
(10, 3, NULL, 10, 1, 6, 0, '2024-12-20 02:38:54', '2024-12-20 02:40:18', '4e41c86b-bba4-4248-ba59-54da37773608'),
(11, 3, 369, 10, 2, 3, 1, '2024-12-20 02:38:54', '2024-12-20 02:38:54', '9574c57f-a1a5-4add-bd4a-41d7d445a8a8'),
(12, 3, 374, 10, 4, 5, 1, '2024-12-20 02:40:18', '2024-12-20 02:40:18', '37dcfce3-1c93-486e-b8f5-612afa02bfc7');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int NOT NULL,
  `maxLevels` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, '2024-12-19 06:33:00', '2024-12-19 06:33:00', '2024-12-19 06:52:54', '77ab2449-c348-4c5a-afea-1f54d40215a2'),
(2, NULL, '2024-12-19 07:03:51', '2024-12-19 07:03:51', NULL, '2c6b8361-9662-4a04-bc2c-ec6ddf83f79e'),
(3, NULL, '2024-12-20 02:38:45', '2024-12-20 02:38:45', NULL, '98cfbe5d-3238-4b86-b817-35155e08f311');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint UNSIGNED DEFAULT NULL,
  `usageCount` tinyint UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, '-LZsFCcmmKVIiU5_AbcY0tDtSjDWe1pD', '[\"preview\\/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"canonicalId\":86,\"siteId\":1,\"draftId\":null,\"revisionId\":null,\"userId\":1}]', NULL, NULL, '2024-12-17 07:50:01', '2024-12-16 07:50:01', '2024-12-16 07:50:01', 'c90234c4-4347-4e73-8ee5-0d059e813dd4');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int NOT NULL,
  `groupId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int NOT NULL,
  `permissionId` int NOT NULL,
  `groupId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int NOT NULL,
  `permissionId` int NOT NULL,
  `userId` int NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int NOT NULL,
  `preferences` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\": \"en-US\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `photoId` int DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `photoId`, `active`, `pending`, `locked`, `suspended`, `admin`, `username`, `fullName`, `firstName`, `lastName`, `email`, `password`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`) VALUES
(1, NULL, 1, 0, 0, 0, 1, 'Admin', NULL, NULL, NULL, 'admin@gmail.com', '$2y$13$HS6v6Xn..hPW6wk7Y8au7OAyPfpazm.MgIFWgt/zCOwvZ6O1dB5/y', '2024-12-20 01:11:03', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, '2024-12-13 08:59:53', '2024-12-13 08:59:53', '2024-12-20 01:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int NOT NULL,
  `parentId` int DEFAULT NULL,
  `volumeId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2024-12-14 01:30:53', '2024-12-14 01:30:53', '0ec73ce7-2a48-4bc5-818d-2bcb446547dd'),
(2, NULL, NULL, 'Temporary Uploads', NULL, '2024-12-14 01:36:39', '2024-12-14 01:36:39', '1489b81f-918f-496c-8d37-f983633a680e'),
(3, 2, NULL, 'user_1', 'user_1/', '2024-12-14 01:36:39', '2024-12-14 01:36:39', '8251d901-0571-4fd3-b028-d445095c9f6b');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int NOT NULL,
  `fieldLayoutId` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fs` varchar(255) NOT NULL,
  `subpath` varchar(255) DEFAULT NULL,
  `transformFs` varchar(255) DEFAULT NULL,
  `transformSubpath` varchar(255) DEFAULT NULL,
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `altTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `altTranslationKeyFormat` text,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `fs`, `subpath`, `transformFs`, `transformSubpath`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `altTranslationMethod`, `altTranslationKeyFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, 'Images', 'images', 'assets', '', '', '', 'site', NULL, 'none', NULL, 1, '2024-12-14 01:30:53', '2024-12-14 01:30:53', NULL, 'bd7a5538-be19-4c69-88a3-0d06a9229312');

-- --------------------------------------------------------

--
-- Table structure for table `webauthn`
--

CREATE TABLE `webauthn` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `credentialId` varchar(255) DEFAULT NULL,
  `credential` text,
  `credentialName` varchar(255) DEFAULT NULL,
  `dateLastUsed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint UNSIGNED DEFAULT NULL,
  `colspan` tinyint DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"limit\": 10, \"siteId\": 1, \"section\": \"*\"}', 1, '2024-12-13 09:01:44', '2024-12-13 09:01:44', 'fc5eba94-8bee-4e15-a904-af313cc60364'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2024-12-13 09:01:44', '2024-12-13 09:01:44', 'd9b21da5-2a4e-4f07-869f-9912f3709701'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2024-12-13 09:01:44', '2024-12-13 09:01:44', '9446fb7b-6f3e-4ac0-b9d4-9d2a85993b82'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\": \"https://craftcms.com/news.rss\", \"limit\": 5, \"title\": \"Craft News\"}', 1, '2024-12-13 09:01:44', '2024-12-13 09:01:44', 'a50f7a23-33c2-4847-9861-cf1c074ed778');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ddzawpvgnpfzhotrowcmyvkakljqibvdfvvi` (`primaryOwnerId`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mdciunesdutvcxpbcrcwecxnrcfrjghtyarw` (`userId`,`unread`,`dateRead`,`dateCreated`),
  ADD KEY `idx_brrldvlqirrvszwfztcbcbeprlxbbghqidab` (`dateRead`),
  ADD KEY `fk_mzdlhkkedmwygylmyagsqngxbhbfwehzbtuj` (`pluginId`);

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_givczdtxlovcaeyjtcdlgjeetsncyktnucjv` (`sessionId`,`volumeId`),
  ADD KEY `idx_pqwioqjsxmqlgseygrjmadstrnsnrusjqbyn` (`volumeId`);

--
-- Indexes for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lzkmgfpzqvhaajpmhkfaraoummdcueevbovb` (`filename`,`folderId`),
  ADD KEY `idx_qbpkyyqiiecrlwrrubjxbdxxkmbenqmgltks` (`folderId`),
  ADD KEY `idx_yzaitkyaxqtzyldqdwiesfjnvrehfctiegjm` (`volumeId`),
  ADD KEY `fk_mecpvzhxkqhskrozwuaekpicpbruwpckelfr` (`uploaderId`);

--
-- Indexes for table `assets_sites`
--
ALTER TABLE `assets_sites`
  ADD PRIMARY KEY (`assetId`,`siteId`),
  ADD KEY `fk_lrubfipglrvokcnabliwxoqxajxhmbyolzfz` (`siteId`);

--
-- Indexes for table `authenticator`
--
ALTER TABLE `authenticator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ovtlfucwjecdcyghjxmznodesjqvwebvwoox` (`userId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kmwnpelokmtsafvooclwwvfbjyxaezebkdme` (`groupId`),
  ADD KEY `fk_zmxcomohkgqhcchlselioqgvdebltpxloxoj` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_kpjtcypfkrhmqdfsgvxqujrfhbulobsjfjid` (`name`),
  ADD KEY `idx_fgcjitftijbwvovwxeglahaptzkhsdivbmfd` (`handle`),
  ADD KEY `idx_wmukjcbzwygtrgudexkulehhgubyygrhghoe` (`structureId`),
  ADD KEY `idx_vhcahgzpbphhoxbfoelnwscqjptzlkyoqwgi` (`fieldLayoutId`),
  ADD KEY `idx_diqylfcsbjnsbcqboagcwiynfczquakklhdj` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_xprotmnxvyezypalovwtzuwmueopcoqrzksu` (`groupId`,`siteId`),
  ADD KEY `idx_ebvzmztpkrvqvtpitgjkqfjpykquvmvqzdxv` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `idx_rvvmkfhpjnjqbsflnufajzcpqufmdlixujzd` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_yiosqqflkihqgpfgpmxgehevabgcuivcmpuk` (`siteId`),
  ADD KEY `fk_siupomuueynfzxynvfdidutkzwyjagvfvlmo` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`,`layoutElementUid`),
  ADD KEY `idx_truhpzawmfvazubvtkuxhotasafsjjzxacpp` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `fk_hpqjksiuwvurheovvszurlpopvfhkbkmewdh` (`siteId`),
  ADD KEY `fk_kmuzxirmgrlanprxgtkvwnvlchxwmdnacvnv` (`fieldId`),
  ADD KEY `fk_kxsdatwzxawwtvbtfcijmzmmfqauipveunyt` (`userId`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_esyhvkehwtohizoucwwzhzvhypukikeegdru` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_jmvclslrhcodnukdediyaokugijgldhhjztm` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_isdyjknkebedrijcgzswgfnhonbdxjayntvz` (`creatorId`,`provisional`),
  ADD KEY `idx_yatqopeqtephkcjmmstuytuzkmywlxasizpq` (`saved`),
  ADD KEY `fk_uoubrqsihtjfnuehsehlzcyrscfrwbnmarvv` (`canonicalId`);

--
-- Indexes for table `elementactivity`
--
ALTER TABLE `elementactivity`
  ADD PRIMARY KEY (`elementId`,`userId`,`type`),
  ADD KEY `idx_ngrrywjxmaqnsugljmoeewusslpeitaccrav` (`elementId`,`timestamp`,`userId`),
  ADD KEY `fk_pjjgvgskbfauzrxpmwjyujphhjtgnyxlfuzg` (`userId`),
  ADD KEY `fk_tahskwnhibkdzghrxtbndanoojgsepjwtyzj` (`siteId`),
  ADD KEY `fk_cwhbeydfszdqqstslbyeoyyyurhknpwdeccj` (`draftId`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hibswylxkcmdvnetzwvbonbjxqfqyxjeqwlw` (`dateDeleted`),
  ADD KEY `idx_ydjphvdlfffvmdrstwkxceyggqzkuxqerddo` (`fieldLayoutId`),
  ADD KEY `idx_limexmlftjrolukwwtqzuauuwrfyjybpxixk` (`type`),
  ADD KEY `idx_fkenhjjlahzhujnqfsxfzrnpopckmpayoivj` (`enabled`),
  ADD KEY `idx_cmbndpezudlwcpbxjbmycodrznfurxyruazd` (`canonicalId`),
  ADD KEY `idx_rcesngyxrispxshuonvvnhirxevrijveteva` (`archived`,`dateCreated`),
  ADD KEY `idx_gxjzcuoimjlnhrdgadpgzpjglufluettamfp` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`),
  ADD KEY `idx_jlyhsjidgzyhmtoovpdyqifvaacpdpwnmkuo` (`archived`,`dateDeleted`,`draftId`,`revisionId`,`canonicalId`,`enabled`),
  ADD KEY `fk_htkbkwfzgnzdwbdglfpwcibkoqpalgdwvlvo` (`draftId`),
  ADD KEY `fk_mboyliswymvufymbaewzsgtameilgzzxhswh` (`revisionId`);

--
-- Indexes for table `elements_bulkops`
--
ALTER TABLE `elements_bulkops`
  ADD PRIMARY KEY (`elementId`,`key`),
  ADD KEY `idx_grbhgxetiqwzpjzbdlfelplixxrwejnttbik` (`timestamp`);

--
-- Indexes for table `elements_owners`
--
ALTER TABLE `elements_owners`
  ADD PRIMARY KEY (`elementId`,`ownerId`),
  ADD KEY `fk_bbstcqleugryfwpdajocoeffekijeeofcnqr` (`ownerId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vynswjkwkpukztjuzlilgersbmubuxnsqtnx` (`elementId`,`siteId`),
  ADD KEY `idx_kgpmtftdbrcgyjxnewbftuwtmhsonutathjp` (`siteId`),
  ADD KEY `idx_tjcfqnicyyzmgehjiqiquqtaqshdxxbdqpxl` (`title`,`siteId`),
  ADD KEY `idx_anmgbawlafafbqzbqzgcwdhoogqeurynnhsr` (`slug`,`siteId`),
  ADD KEY `idx_uqdaovrfgsyjqjdsdjivyudytbqwtmomsamv` (`enabled`),
  ADD KEY `idx_ueyuraemzoccecjzzvxnnckbtdjlwopkcnsk` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eduurvkjeitpgvwgivocuqbrtafllyxujclr` (`postDate`),
  ADD KEY `idx_xnwbgxvpaukhmoesyhydugrqgjrcpytzufbg` (`expiryDate`),
  ADD KEY `idx_rwaepjgdfufzrwyptzmtbeszilnnkzsdhnyk` (`sectionId`),
  ADD KEY `idx_kxdqhzdpfnqzoeuwtjtfynnilusvwxxyhuvq` (`typeId`),
  ADD KEY `idx_ukbamsmljqjtouuggldrwuvkbrejdyeiygid` (`primaryOwnerId`),
  ADD KEY `idx_eiufjzjpsdhbywkexhujtvpjqysyvpqvckau` (`fieldId`),
  ADD KEY `fk_xzizasnpviywcmlutgleyghjsjxylqyhhykz` (`parentId`);

--
-- Indexes for table `entries_authors`
--
ALTER TABLE `entries_authors`
  ADD PRIMARY KEY (`entryId`,`authorId`),
  ADD KEY `idx_gkkltdtfsdwvuapexdbnozoeeywrgjqgqddm` (`authorId`),
  ADD KEY `idx_mjaxclwmoehefeijmbwnfcaxffqannxlnkos` (`entryId`,`sortOrder`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lltkbqlmcqirxreboxawzzuwrkkrjbricmga` (`fieldLayoutId`),
  ADD KEY `idx_cmprvqvrdgblgvekmcthpyvaearpdqpasmrs` (`dateDeleted`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_esokactutvuoejdfcovcfxpbtbfkxmauewvo` (`dateDeleted`),
  ADD KEY `idx_hjicxkuvlgtamnierfpeexrrmjqzghedfvjd` (`type`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eytgbmbdxcwspionetuazaabjdovdbalbrug` (`handle`,`context`),
  ADD KEY `idx_xaiiqctzcsdkpoyiqofntnoiuzwvsxwopode` (`context`),
  ADD KEY `idx_qbjqbfmlxkjybwkrbpthumsmysiidmzhtxdw` (`dateDeleted`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hkfsuxtkobdicbsxhedjoyhvdkmpcthjzhdy` (`name`),
  ADD KEY `idx_rlrfzmbxiemcxuubexoqkeyhnmwvsvarwngp` (`handle`),
  ADD KEY `idx_fmwzmzzqsrybhenslfzxvcsvwvwrrscltmoe` (`fieldLayoutId`),
  ADD KEY `idx_cinaruumyvodobplwjtulxmqjncijtepquec` (`sortOrder`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_kvlgjqchlpicmpsdfsvuhwvfkdkayrwmurla` (`accessToken`),
  ADD UNIQUE KEY `idx_simqyrquwnmegmnnuyoxmdvwefuayyzhknuj` (`name`),
  ADD KEY `fk_oyufyosugjfynnwjzdflohnmwknwyyanstxw` (`schemaId`);

--
-- Indexes for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nvlfujombdylfecwfmtlxddrhicvuceochvz` (`assetId`,`transformString`);

--
-- Indexes for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_xtyzqdaqdufwskkhepdtflcvdcdaufnyhtrp` (`name`),
  ADD KEY `idx_bnshqpfwtswymsgvldubsefxjmkyobougnyd` (`handle`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_tnehmohwekzqcjcbfwmxcrqhawncahxloxzh` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_sywxmsmrkhoyupzmmghobfmqhkjjdkfhsmoh` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bdldloqpmmiiwcdtdgtbuejofevlmsqgtbtn` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `idx_cbrjhqvxxfzepjeqaryvkorjispeafgqvptp` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `recoverycodes`
--
ALTER TABLE `recoverycodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_rxpvxmxuhsmgnqajqcncnmaczfgusyjrwybe` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `idx_adfuviwhllifznpzizxyqjiurusyeeuavndy` (`sourceId`),
  ADD KEY `idx_xkyckskljqitafiotragxxidvtnbymzbvtbs` (`targetId`),
  ADD KEY `idx_qdbirjafezjuayedbeuhejihslqdpumeuyqy` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_qgxvokrwgfrwomaaoxwrwyfdafxoztoacskd` (`canonicalId`,`num`),
  ADD KEY `fk_haxyydtnpdrvmhzlcejogckosjueharfojoa` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `idx_hfqpswlkixekujwxmbrreajmcqsvebzvaoyw` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fomefannhliejyjnzoiagmdjqenjywlrzese` (`handle`),
  ADD KEY `idx_qgazysseidebbeqnlksqptrfsvkwlwkyyfhc` (`name`),
  ADD KEY `idx_kjalomjvunuelnwtbritdkgfqhapptbgkuth` (`structureId`),
  ADD KEY `idx_bhtjkmisfymadkawfdtvxepzhalrnidwigco` (`dateDeleted`);

--
-- Indexes for table `sections_entrytypes`
--
ALTER TABLE `sections_entrytypes`
  ADD PRIMARY KEY (`sectionId`,`typeId`),
  ADD KEY `fk_bwwkeptxiazexqrhukmneddnjeosceapdpll` (`typeId`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_wuyxjjaccweqfdovawljlrsypdanmozdwmtj` (`sectionId`,`siteId`),
  ADD KEY `idx_pgmoojttsykagsmcwzxjewgcfiytvpaacsbw` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_zjzssmtnilsvlejjpajuitzxkmylbyyxczbj` (`uid`),
  ADD KEY `idx_oaozigymjsemthnlravfdpfrxooqistbzkyx` (`token`),
  ADD KEY `idx_tzhrwmrlfwwaonddmniecnjscgaulsoasuzs` (`dateUpdated`),
  ADD KEY `idx_btomfgkwuuhkkvaxrukqirscgrcatrqjepuo` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_vfjefpdvwlvriitayzgjxaaozooobftcjsle` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ggesomkjefwaablvaistiqblrhmjmjifiqmr` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cobujabrzawwjdhhfctxohmtiayditzdbntn` (`dateDeleted`),
  ADD KEY `idx_xsdekmyqilkcpqdfjjwkcivbvtmfzssnnyja` (`handle`),
  ADD KEY `idx_elaqjannrinttmtefjjdfgvqnldkbqnnrcqo` (`sortOrder`),
  ADD KEY `fk_zvdngmhewwfynkwmatavsicdnbnkhittxnwa` (`groupId`);

--
-- Indexes for table `sso_identities`
--
ALTER TABLE `sso_identities`
  ADD PRIMARY KEY (`provider`,`identityId`,`userId`),
  ADD KEY `fk_fdxkvdcytrzgdsaahffzkjpoevwdmdvxczht` (`userId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_llgzoegdowvjnhbopwsjwsojdmswmarctgbq` (`structureId`,`elementId`),
  ADD KEY `idx_fgwnldrdjwjfwqiqtlkzggushbbfieezicls` (`root`),
  ADD KEY `idx_ygqkebtllpkoucyozuuababqqminjutjadue` (`lft`),
  ADD KEY `idx_icrdijuoaxctypoubdfpivewdtqixqqhpabt` (`rgt`),
  ADD KEY `idx_oascqnmgptzxqomqxomgzginsmptsyjbzloj` (`level`),
  ADD KEY `idx_qmjyxkczxjnaghidvujxqxtliokszkdkxvyw` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cfdbxrpzqnmeogqopqabypljetsqoqakmjuj` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_guyldxcdxpchroliqgxzmgrxuciupzpfdfmq` (`key`,`language`),
  ADD KEY `idx_txdydiapetlnmoztgbtluztgvsubaozvbehs` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ltbuqskbhlsmsfnlxsddqvzyavnrycmghpxl` (`name`),
  ADD KEY `idx_btfryqanmfidjnpgcrjiqttmvtwvnwhtkebk` (`handle`),
  ADD KEY `idx_eirobuopfohusirzhcygzxvdkdnjsysbglaf` (`dateDeleted`),
  ADD KEY `fk_dlqtskqymxeqpehhwgzbiqtlskgakbyxokvu` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_drmuvihlfclcesaowzmnoefehemvsoblfhqg` (`groupId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_ojplpawgcngwzemmzvvomtubrktssbihnqgv` (`token`),
  ADD KEY `idx_voasgznaklmtroaidebqklxkuoibomqqwwcg` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hznaqxqqtwbdxllawaxoarfjzrjphypnkrkr` (`handle`),
  ADD KEY `idx_kijmyvimqdbpivolvwkpjdifuxturwpazmjd` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_oaeeaviybgfwkqohbqvejozqfoukxozmtfub` (`groupId`,`userId`),
  ADD KEY `idx_bgziuktnxzcsirqpplvammuyqlaieytczmiq` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_fvfxwfnvzwqjaakounzbnhjdahjcyhnhtwhx` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_lgpmoctnfrzsuqbbnyrcyuclyazyhzopzbwf` (`permissionId`,`groupId`),
  ADD KEY `idx_mxsqeuagahvvlcxmcgthpzeyfhgelydkhyuo` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_uoovpkufbsqehbepkfshzlcpmyrnxtkwpeew` (`permissionId`,`userId`),
  ADD KEY `idx_zgfypegztorhdflqphzspriqbscfmdnjvtro` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ispmqryetrjgpsmvvxftsulkyspdjkbqmbwb` (`active`),
  ADD KEY `idx_cwguzjfqcbwhrmumyejhwjvspabhgsgzjguo` (`locked`),
  ADD KEY `idx_aempvnfyrwizttnxlcphgcpatkmchroncggw` (`pending`),
  ADD KEY `idx_neetszuzbfxarpzwmjjetqkoyujkydjvsvwv` (`suspended`),
  ADD KEY `idx_znxnbuuzcdyqqjluasqhdrpcrdqbaeoabesl` (`verificationCode`),
  ADD KEY `idx_ygigzbajyjyagvmqdxntwcuyzvhtrsyrbgmx` (`email`),
  ADD KEY `idx_lraugawvhjqnzusuqphlaiytkeeuukucsgkb` (`username`),
  ADD KEY `fk_igefrzjznfwatbavwhfzllibtmfybfybvgao` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_hwpqnvrnbqpiwiacoqlxeoipwcjkmzyphrca` (`name`,`parentId`,`volumeId`),
  ADD KEY `idx_uvzujjhlagojwvrrobxgepwewfkgokmagrix` (`parentId`),
  ADD KEY `idx_ftrtguvfbqumwnkxkvconeieqsdgdbtyefcf` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ompsqzlodxzmxtswbujsvlkpkvdecwnsieqd` (`name`),
  ADD KEY `idx_pgxvhfjvepuiiitmailgxsnbazcoyksecmaq` (`handle`),
  ADD KEY `idx_icydehcoazygpqqkkwmwilgvitqgageketxc` (`fieldLayoutId`),
  ADD KEY `idx_otpncilesbtcahywkjahedmxlaizgzkbamxb` (`dateDeleted`);

--
-- Indexes for table `webauthn`
--
ALTER TABLE `webauthn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_caiwvunymjqzxjwoksimfhgkbyipivqqzlpg` (`userId`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nwhyvqrbxmlffjcsuvrxkicrfiznrnvccuml` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assetindexingsessions`
--
ALTER TABLE `assetindexingsessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authenticator`
--
ALTER TABLE `authenticator`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `imagetransformindex`
--
ALTER TABLE `imagetransformindex`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `imagetransforms`
--
ALTER TABLE `imagetransforms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=783;

--
-- AUTO_INCREMENT for table `recoverycodes`
--
ALTER TABLE `recoverycodes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webauthn`
--
ALTER TABLE `webauthn`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_ddzawpvgnpfzhotrowcmyvkakljqibvdfvvi` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_iodsbbmfsrlvzsvszhflacinrxrxtukejlpl` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `fk_ldlqhfqrbbmgcetbeclpvaahwrpmhpybwman` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mzdlhkkedmwygylmyagsqngxbhbfwehzbtuj` FOREIGN KEY (`pluginId`) REFERENCES `plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `fk_xdftcpgdhszsaovfdtaebnudqqoeatzzcdfu` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zzavrfxyjqpxtcysmqjsnskmvooyupcurtac` FOREIGN KEY (`sessionId`) REFERENCES `assetindexingsessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `fk_jicrksmicfnzgjpncwdntrajqzlycmijzvsy` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mecpvzhxkqhskrozwuaekpicpbruwpckelfr` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_qxogfzwqurxtitznarebbjxfyhslgikzgotg` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tqthyabuymrdesmhaecgfauiygsgpzfaktve` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets_sites`
--
ALTER TABLE `assets_sites`
  ADD CONSTRAINT `fk_lrubfipglrvokcnabliwxoqxajxhmbyolzfz` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_viotlxhbehmrjgmjsvrsafgznsqmkoylaeho` FOREIGN KEY (`assetId`) REFERENCES `assets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `authenticator`
--
ALTER TABLE `authenticator`
  ADD CONSTRAINT `fk_ovtlfucwjecdcyghjxmznodesjqvwebvwoox` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_hvhqnjdxlnilrxtgptasrmdwudbxeqafjzyn` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_idwrnvwoxacasfymjoidzvegfgqfhznioauz` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zmxcomohkgqhcchlselioqgvdebltpxloxoj` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `fk_bciyanwshslzxyhynqcalteqdogapkfssrsg` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_gzfatkswvhwgrcakhzudpznrbpsdvaovizex` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `fk_fuplaulzxdhbtvkpummsbhnyqauojsqxbgfq` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hyvantbaalayoevqyrgnrdtggxrvnfarrhcl` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `fk_siupomuueynfzxynvfdidutkzwyjagvfvlmo` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tyezrtnallirzqymwfmsshhiybyvjwajfflg` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_yiosqqflkihqgpfgpmxgehevabgcuivcmpuk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `fk_hpqjksiuwvurheovvszurlpopvfhkbkmewdh` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kmuzxirmgrlanprxgtkvwnvlchxwmdnacvnv` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kxsdatwzxawwtvbtfcijmzmmfqauipveunyt` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ntqddezprwbrkhowxsbrdvxoigaslpatstym` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `fk_esyhvkehwtohizoucwwzhzvhypukikeegdru` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `fk_lwgndjmzvgysvizpxqirgeyqnuhfhrlaqirg` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_uoubrqsihtjfnuehsehlzcyrscfrwbnmarvv` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elementactivity`
--
ALTER TABLE `elementactivity`
  ADD CONSTRAINT `fk_cwhbeydfszdqqstslbyeoyyyurhknpwdeccj` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_fmxkodvqbgdfcbtskiqdyqbcbkaydxterxvj` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pjjgvgskbfauzrxpmwjyujphhjtgnyxlfuzg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tahskwnhibkdzghrxtbndanoojgsepjwtyzj` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `fk_htkbkwfzgnzdwbdglfpwcibkoqpalgdwvlvo` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mboyliswymvufymbaewzsgtameilgzzxhswh` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rlctjxafisdgropvkxherczpeozcmerlwnlf` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vdqlvogzqlnsxdwzboytyltqkhivzhvfaair` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elements_owners`
--
ALTER TABLE `elements_owners`
  ADD CONSTRAINT `fk_bbstcqleugryfwpdajocoeffekijeeofcnqr` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_maibutajmyodngbayabdgjlrfztzzrerzsto` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `fk_fygxhwmohcwxesdpqpdpxpyagzwgloznugil` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tjcfuzybpjjbpczglbuppckodfdquevvncnv` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `fk_fvnbkdspgtlbmwcszabllvwqiqgffgtsgqca` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hpobdxdyjeswaiylefgocpfvuochucovoliz` FOREIGN KEY (`primaryOwnerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jcykajnvrpppxxqtseyycllfphlxedwbzhyo` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lriqhzruiusqiidxmjvbpxosglqsbpoqplyq` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vxisqaliaodlsffutslpqopbxqquzykbjeaj` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_xzizasnpviywcmlutgleyghjsjxylqyhhykz` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `entries_authors`
--
ALTER TABLE `entries_authors`
  ADD CONSTRAINT `fk_fathcjooachydyhdavbhbrokrxdpehtozlcr` FOREIGN KEY (`entryId`) REFERENCES `entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_odfwfgllkfkjyywcbmdhlshwbpqafdozgcpc` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `fk_bmtuijfmsniueozurcuonjhmqhaliktqnkpr` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `fk_atyhacnqnsbvvvwemcegqipkffiwacnoghsl` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_kgithkismjgdhwvbmhsrxpjbasqwwhuteyxs` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `fk_oyufyosugjfynnwjzdflohnmwknwyyanstxw` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `fk_gooojthfiokmnmmxhkvfjhiljqxnfzyxwggu` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_okmmpusvlybvzdzndmmacqbjtavinkfhwxte` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sorzlyecbwjrvpghmspsfuzwgefqkcqiwfyh` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `fk_haxyydtnpdrvmhzlcejogckosjueharfojoa` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_uwpelhilmbhzvgakzjqxsbgbjddyllndhhof` FOREIGN KEY (`canonicalId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `fk_uhzntiabjvydvhftjppfqkjoixknxfycbvuy` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_entrytypes`
--
ALTER TABLE `sections_entrytypes`
  ADD CONSTRAINT `fk_bwwkeptxiazexqrhukmneddnjeosceapdpll` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_mnmodbrqocurhlbzqmhdovzodmstbinehcvn` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `fk_kbtixiupsfvuyejqzznteropkcxcxbkfcflr` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_zebntfxiateckgyovwxmvlxfsdptaifeykzg` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_qlcpirgxugnxuaxusauowxwoehcvzyrxmyzd` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `fk_rvjtlodanprmsvpvskmthipcjtukialigfzp` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `fk_zvdngmhewwfynkwmatavsicdnbnkhittxnwa` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sso_identities`
--
ALTER TABLE `sso_identities`
  ADD CONSTRAINT `fk_fdxkvdcytrzgdsaahffzkjpoevwdmdvxczht` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `fk_wtombshkfamlpgkuofbzkhjgnnrsipigyzdo` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `fk_dlqtskqymxeqpehhwgzbiqtlskgakbyxokvu` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_awzffjwexcazoufswglazoxkcchlmrwdmeup` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hnsvhcdyjnepovzctbwtfjitiqubvopwhtgn` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `fk_epffwftzvmttzzsfpcvgltptefwyizelyimh` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_nrledqtthgkqqdbdonaluaswqzfgvvitucan` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `fk_gowlcqnfiswzkmktofwthrvlmurejfctrbjs` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_muulywhdrootsysfvrlrindkskgtylgkjffo` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `fk_limifkpaezyamineoutrkrmizehzjqzvantm` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_rzeorvyvxcfcjgxftarpxvjecpkrrnbissry` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `fk_urtimkatkyieyywochgxhlwhwvtxuimixvef` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_gfnmhuspedayyiiqiqtdzcjtwezvfrgekqmw` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_igefrzjznfwatbavwhfzllibtmfybfybvgao` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `fk_rlclsfddhfgasgnawddjlmtmfhcbijsmdigo` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_wyihqdjexpvmuwugqldcunhgviiaeulgfpss` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `fk_junmecoikwohqvckcwiofsyubzuxgxgxupgw` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `webauthn`
--
ALTER TABLE `webauthn`
  ADD CONSTRAINT `fk_caiwvunymjqzxjwoksimfhgkbyipivqqzlpg` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `fk_yykthsyeztfduoygjsxqtngwhwmrojviiipi` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
