-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 26, 2023 lúc 11:55 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tranphandaihai-backend`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-06-07 08:55:32.978000', '2023-06-07 08:55:32.978000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-07 08:55:32.985000', '2023-06-07 08:55:32.985000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-07 08:55:32.990000', '2023-06-07 08:55:32.990000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-06-07 08:55:32.995000', '2023-06-07 08:55:32.995000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-07 08:55:33.001000', '2023-06-07 08:55:33.001000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-07 08:55:33.006000', '2023-06-07 08:55:33.006000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-06-07 08:55:33.012000', '2023-06-07 08:55:33.012000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-07 08:55:33.018000', '2023-06-07 08:55:33.018000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-07 08:55:33.023000', '2023-06-07 08:55:33.023000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-06-07 08:55:33.028000', '2023-06-07 08:55:33.028000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-07 08:55:33.033000', '2023-06-07 08:55:33.033000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-07 08:55:33.038000', '2023-06-07 08:55:33.038000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-06-07 08:55:33.068000', '2023-06-07 08:55:33.068000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-06-07 08:55:33.073000', '2023-06-07 08:55:33.073000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-06-07 08:55:33.079000', '2023-06-07 08:55:33.079000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-06-07 08:55:33.084000', '2023-06-07 08:55:33.084000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-06-07 08:55:33.090000', '2023-06-07 08:55:33.090000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-06-07 08:55:33.095000', '2023-06-07 08:55:33.095000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-06-07 08:55:33.100000', '2023-06-07 08:55:33.100000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-06-07 08:55:33.106000', '2023-06-07 08:55:33.106000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-06-07 08:55:33.111000', '2023-06-07 08:55:33.111000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-06-07 08:55:33.118000', '2023-06-07 08:55:33.118000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-07 08:55:33.122000', '2023-06-07 08:55:33.122000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-06-07 08:55:33.128000', '2023-06-07 08:55:33.128000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-07 08:55:33.133000', '2023-06-07 08:55:33.133000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-07 08:55:33.138000', '2023-06-07 08:55:33.138000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-07 08:55:33.143000', '2023-06-07 08:55:33.143000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-06-07 08:55:33.149000', '2023-06-07 08:55:33.149000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-06-07 08:55:33.153000', '2023-06-07 08:55:33.153000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-06-07 08:55:33.158000', '2023-06-07 08:55:33.158000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-06-07 08:55:33.162000', '2023-06-07 08:55:33.162000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-06-07 08:55:33.167000', '2023-06-07 08:55:33.167000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-06-07 08:55:33.171000', '2023-06-07 08:55:33.171000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-06-07 08:55:33.175000', '2023-06-07 08:55:33.175000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-06-07 08:55:33.180000', '2023-06-07 08:55:33.180000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-06-07 08:55:33.185000', '2023-06-07 08:55:33.185000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-06-07 08:55:33.189000', '2023-06-07 08:55:33.189000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-06-07 08:55:33.194000', '2023-06-07 08:55:33.194000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-06-07 08:55:33.209000', '2023-06-07 08:55:33.209000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-06-07 08:55:33.215000', '2023-06-07 08:55:33.215000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-06-07 08:55:33.219000', '2023-06-07 08:55:33.219000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-06-07 08:55:33.224000', '2023-06-07 08:55:33.224000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-06-07 08:55:33.229000', '2023-06-07 08:55:33.229000', NULL, NULL),
(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-06-07 08:55:33.234000', '2023-06-07 08:55:33.234000', NULL, NULL),
(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-06-07 08:55:33.239000', '2023-06-07 08:55:33.239000', NULL, NULL),
(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-06-07 08:55:33.244000', '2023-06-07 08:55:33.244000', NULL, NULL),
(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-06-07 08:55:33.249000', '2023-06-07 08:55:33.249000', NULL, NULL),
(48, 'admin::users.create', NULL, '{}', '[]', '2023-06-07 08:55:33.253000', '2023-06-07 08:55:33.253000', NULL, NULL),
(49, 'admin::users.read', NULL, '{}', '[]', '2023-06-07 08:55:33.258000', '2023-06-07 08:55:33.258000', NULL, NULL),
(50, 'admin::users.update', NULL, '{}', '[]', '2023-06-07 08:55:33.263000', '2023-06-07 08:55:33.263000', NULL, NULL),
(51, 'admin::users.delete', NULL, '{}', '[]', '2023-06-07 08:55:33.268000', '2023-06-07 08:55:33.268000', NULL, NULL),
(52, 'admin::roles.create', NULL, '{}', '[]', '2023-06-07 08:55:33.273000', '2023-06-07 08:55:33.273000', NULL, NULL),
(53, 'admin::roles.read', NULL, '{}', '[]', '2023-06-07 08:55:33.278000', '2023-06-07 08:55:33.278000', NULL, NULL),
(54, 'admin::roles.update', NULL, '{}', '[]', '2023-06-07 08:55:33.286000', '2023-06-07 08:55:33.286000', NULL, NULL),
(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-06-07 08:55:33.292000', '2023-06-07 08:55:33.292000', NULL, NULL),
(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-06-07 08:55:33.297000', '2023-06-07 08:55:33.297000', NULL, NULL),
(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-06-07 08:55:33.302000', '2023-06-07 08:55:33.302000', NULL, NULL),
(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-06-07 08:55:33.307000', '2023-06-07 08:55:33.307000', NULL, NULL),
(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-06-07 08:55:33.311000', '2023-06-07 08:55:33.311000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-06-07 08:55:33.316000', '2023-06-07 08:55:33.316000', NULL, NULL),
(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-06-07 08:55:33.320000', '2023-06-07 08:55:33.320000', NULL, NULL),
(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-06-07 08:55:33.325000', '2023-06-07 08:55:33.325000', NULL, NULL),
(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-06-07 08:55:33.331000', '2023-06-07 08:55:33.331000', NULL, NULL),
(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-06-07 08:55:33.336000', '2023-06-07 08:55:33.336000', NULL, NULL),
(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-06-07 08:55:33.341000', '2023-06-07 08:55:33.341000', NULL, NULL),
(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-06-07 08:55:33.345000', '2023-06-07 08:55:33.345000', NULL, NULL),
(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-06-07 08:55:33.353000', '2023-06-07 08:55:33.353000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-06-07 08:55:33.358000', '2023-06-07 08:55:33.358000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-06-07 08:55:33.363000', '2023-06-07 08:55:33.363000', NULL, NULL),
(70, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\":[\"categoryName\",\"description\"]}', '[]', '2023-06-07 08:58:57.827000', '2023-06-07 08:58:57.827000', NULL, NULL),
(71, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\":[\"categoryName\",\"description\"]}', '[]', '2023-06-07 08:58:57.834000', '2023-06-07 08:58:57.834000', NULL, NULL),
(72, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\":[\"categoryName\",\"description\"]}', '[]', '2023-06-07 08:58:57.839000', '2023-06-07 08:58:57.839000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2023-06-07 08:58:57.845000', '2023-06-07 08:58:57.845000', NULL, NULL),
(74, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2023-06-07 08:58:57.853000', '2023-06-07 08:58:57.853000', NULL, NULL),
(78, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2023-06-07 09:01:47.007000', '2023-06-07 09:01:47.007000', NULL, NULL),
(79, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2023-06-07 09:01:47.013000', '2023-06-07 09:01:47.013000', NULL, NULL),
(80, 'plugin::content-manager.explorer.create', 'api::product.product', '{\"fields\":[\"productName\",\"description\",\"detail\",\"price\",\"image\",\"category\"]}', '[]', '2023-06-07 09:03:33.656000', '2023-06-07 09:03:33.656000', NULL, NULL),
(81, 'plugin::content-manager.explorer.read', 'api::product.product', '{\"fields\":[\"productName\",\"description\",\"detail\",\"price\",\"image\",\"category\"]}', '[]', '2023-06-07 09:03:33.663000', '2023-06-07 09:03:33.663000', NULL, NULL),
(82, 'plugin::content-manager.explorer.update', 'api::product.product', '{\"fields\":[\"productName\",\"description\",\"detail\",\"price\",\"image\",\"category\"]}', '[]', '2023-06-07 09:03:33.669000', '2023-06-07 09:03:33.669000', NULL, NULL),
(83, 'plugin::documentation.read', NULL, '{}', '[]', '2023-06-07 10:27:44.321000', '2023-06-07 10:27:44.321000', NULL, NULL),
(84, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2023-06-07 10:27:44.334000', '2023-06-07 10:27:44.334000', NULL, NULL),
(85, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2023-06-07 10:27:44.342000', '2023-06-07 10:27:44.342000', NULL, NULL),
(86, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2023-06-07 10:27:44.350000', '2023-06-07 10:27:44.350000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(70, 70, 1, 58),
(71, 71, 1, 59),
(72, 72, 1, 60),
(73, 73, 1, 61),
(74, 74, 1, 62),
(78, 78, 1, 66),
(79, 79, 1, 67),
(80, 80, 1, 68),
(81, 81, 1, 69),
(82, 82, 1, 70),
(83, 83, 1, 71),
(84, 84, 1, 72),
(85, 85, 1, 73),
(86, 86, 1, 74);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-06-07 08:55:32.962000', '2023-06-07 08:55:32.962000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-06-07 08:55:32.968000', '2023-06-07 08:55:32.968000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-06-07 08:55:32.972000', '2023-06-07 08:55:32.972000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'dai', 'hai', NULL, 'camvann721@gmail.com', '$2a$10$5Ol0TdPYrQef8dqJneayku0tzP3RoNb8P5Xaa7dUysfrrMVhVAI4G', NULL, NULL, 1, 0, NULL, '2023-06-07 08:56:22.375000', '2023-06-07 08:56:22.375000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Category 1', 'Mô tả category 1', '2023-06-07 09:04:12.702000', '2023-06-07 09:04:12.702000', '2023-06-07 10:40:20.000000', 1, 1),
(2, 'Books clank', 'Kim khâu thương hàng đập sáu. Vá biết đâu anh độc lầu đánh. Hai á đá nghỉ ghét viết. Khoảng biển đập bạn thuyền thuyền á. Giết ừ máy trời trăng ờ một thì thôi. Làm may khoảng mua hương ba yêu bảy thuê.', '2023-06-07 09:16:30.280000', '2023-06-07 09:16:30.280000', '2023-06-07 10:40:20.000000', NULL, NULL),
(3, 'Industrial sting', 'Tím cửa xuồng tui con ghét bốn quê không được. Khâu lỗi biển dép khâu bạn không áo chỉ quần. Hương mua xuồng không chín bảy tôi hàng nước hai. Thế mướn chìm chín tàu.', '2023-06-07 09:16:30.288000', '2023-06-07 09:16:30.288000', '2023-06-07 10:40:20.000000', NULL, NULL),
(4, 'Toys crown', 'Trời hàng bảy chìm. Hương ghế chín nón là hai máy ừ. Hết một việc sáu trời lầu. Sáu giày quần mướn. Khoan nhà khoan.', '2023-06-07 09:16:30.294000', '2023-06-07 09:16:30.294000', '2023-06-07 10:40:20.000000', NULL, NULL),
(5, 'Health grain', 'Quần yêu năm mướn mây ngọt một. Mười vàng một. Cửa nước kim ba đâu tui đá.', '2023-06-07 09:16:30.299000', '2023-06-07 09:16:30.299000', '2023-06-07 10:40:20.000000', NULL, NULL),
(6, 'Computers suede', 'Hết tui đâu cửa. Tím lầu thôi thôi ghế biết ghét trời yêu thì. Bàn hai mua tím giết may đá ngọt xuồng. Leo kim lầu áo.', '2023-06-07 09:16:30.304000', '2023-06-07 09:16:30.304000', '2023-06-07 10:40:20.000000', NULL, NULL),
(7, 'Shoes flare', 'Anh cái thích. Bảy ác bè vá đá quần ruộng em. Nha tám leo thôi tàu máy cửa bạn vá máy. Bạn bè leo thuê thuyền. Thì tôi ghét kim tô thì thì không biết khâu.', '2023-06-07 09:16:30.310000', '2023-06-07 09:16:30.310000', '2023-06-07 10:40:20.000000', NULL, NULL),
(8, 'Sports tenor', 'Leo bốn đập bạn. Thế sáu may áo khoan. Hóa khoan nha đang núi. Độc thuê cái đồng. Viết vàng một leo ruộng quần.', '2023-06-07 09:16:30.315000', '2023-06-07 09:16:30.315000', '2023-06-07 10:40:20.000000', NULL, NULL),
(9, 'Sports epoxy', 'Vẽ được đồng được đạp. Trăng làm chỉ khoảng xuồng. Tám khâu tui khâu bảy yêu hóa viết giết biết.', '2023-06-07 09:16:30.320000', '2023-06-07 09:16:30.320000', '2023-06-07 10:40:20.000000', NULL, NULL),
(10, 'Beauty stick', 'Tàu tám á lỗi á ruộng thương. Nhà không chỉ máy anh mướn. Bè phá thôi thuyền đồng em nước nha bàn ruộng. Vá khâu khâu hàng lỗi chết biết. Tô gió may. Nón đập tôi chỉ ngọt may làm.', '2023-06-07 09:16:30.326000', '2023-06-07 09:16:30.326000', '2023-06-07 10:40:20.000000', NULL, NULL),
(11, 'Kids minor', 'Đá con mua. Kim á bàn đập anh tám ghế máy nghỉ xe. Mướn khoảng không mua khoảng em cửa trời. May vẽ thích khâu hai yêu bốn.', '2023-06-07 09:16:30.331000', '2023-06-07 09:16:30.331000', '2023-06-07 10:40:20.000000', NULL, NULL),
(12, 'Jewelery spill', 'Xanh bốn làm leo tám giết. Tủ tô em cửa phá chỉ gì đã là giết. Trời thôi quần. Bàn thích chết. Ghế khoan gió thuê biển. Ngọt vẽ chết áo bè phá thương ác gì.', '2023-06-07 09:16:30.336000', '2023-06-07 09:16:30.336000', '2023-06-07 10:40:20.000000', NULL, NULL),
(13, 'Electronics chick', 'Lỗi con tàu ba vẽ mua cái mười tủ tám. Được mây mượn hai khoảng. Đánh đồng tui bạn ba. Ghế trời tô trời gì trăng lầu thế. Ờ hương mướn. Sáu ruộng ghế ngọt cái giết anh hương trăng tím.', '2023-06-07 09:16:30.342000', '2023-06-07 09:16:30.342000', '2023-06-07 10:40:20.000000', NULL, NULL),
(14, 'Garden wound', 'Ba bơi mua viết đâu. Bàn vẽ hương cái tô tô. Bàn tui giết cửa anh gì quần. Gì mua chỉ ngọt. Đá xe ừ khoảng biển năm biết hai áo ừ. Gió hàng vẽ mười cái ghét á.', '2023-06-07 09:16:30.347000', '2023-06-07 09:16:30.347000', '2023-06-07 10:40:20.000000', NULL, NULL),
(15, 'Outdoors ascot', 'Độc gió yêu vá ghét được. Tôi con thế thì tủ. Con hàng đánh xuồng thì hai thôi.', '2023-06-07 09:16:30.352000', '2023-06-07 09:16:30.352000', '2023-06-07 10:40:20.000000', NULL, NULL),
(16, 'Automotive baggy', 'Anh đâu nha. Tím yêu đập là chìm em ừ hết thương. Mượn mây ngọt.', '2023-06-07 09:16:30.357000', '2023-06-07 09:16:30.357000', '2023-06-07 10:40:20.000000', NULL, NULL),
(17, 'Sports clogs', 'Xanh xuồng hết tôi lỗi trời kim yêu. Giết hóa con dép cửa. Ừ thương kim mượn. Mượn sáu xanh yêu em dép. Nón tàu thương ác.', '2023-06-07 09:16:30.362000', '2023-06-07 09:16:30.362000', '2023-06-07 10:40:20.000000', NULL, NULL),
(18, 'Movies ninja', 'Tui ờ năm ác. Giết leo thuê ác tôi máy gió. Hai xe xuồng ngọt. Quê vẽ chín. Tím chỉ thích hàng ừ thuyền.', '2023-06-07 09:16:30.367000', '2023-06-07 09:16:30.367000', '2023-06-07 10:40:20.000000', NULL, NULL),
(19, 'Kids chive', 'Quần thương viết chín. Được bè việc mây thuyền. Bơi thì đá tủ vá không gì. Hàng đang con ừ ừ nón thuê. Ba lầu mười dép tủ tám dép ghét chỉ. Mười đã hết là giày á con tám đã.', '2023-06-07 09:16:30.373000', '2023-06-07 09:16:30.373000', '2023-06-07 10:40:20.000000', NULL, NULL),
(20, 'Automotive phone', 'Quê xuồng mướn lầu chìm núi thích nón bốn. Đỏ việc ác mượn quần thôi tám. Máy đập bảy độc.', '2023-06-07 09:16:30.379000', '2023-06-07 09:16:30.379000', '2023-06-07 10:40:20.000000', NULL, NULL),
(21, 'Electronics blend', 'Chín thôi viết. Trăng vàng thuê tôi được lỗi. Giày bảy đập sáu leo ghế.', '2023-06-07 09:16:30.384000', '2023-06-07 09:16:30.384000', '2023-06-07 10:40:20.000000', NULL, NULL),
(22, 'Automotive unity', 'Khoảng nước độc năm tôi hương lỗi dép. Được vẽ ác. Tủ gì hết xanh.', '2023-06-07 09:16:30.388000', '2023-06-07 09:16:30.388000', '2023-06-07 10:40:20.000000', NULL, NULL),
(23, 'Health class', 'Thế nha cái đá viết quê sáu lỗi biết. Gió tàu mười ừ. Đập nước đồng vẽ. Ờ ừ hương nón đã chìm.', '2023-06-07 09:16:30.394000', '2023-06-07 09:16:30.394000', '2023-06-07 10:40:20.000000', NULL, NULL),
(24, 'Clothing major', 'Hàng nha giết nước thế chín ghét đá. Sáu nước bơi ác nghỉ. Thuê ác một đang đạp xanh. Ghế khâu năm ba leo mướn. Xe leo nhà.', '2023-06-07 09:16:30.399000', '2023-06-07 09:16:30.399000', '2023-06-07 10:40:20.000000', NULL, NULL),
(25, 'Kids plume', 'Là cái thích đá. Giết trời nón mướn. Làm thích hai may áo bạn gì mười bạn. Được không phá kim cái tô anh tám.', '2023-06-07 09:16:30.405000', '2023-06-07 09:16:30.405000', '2023-06-07 10:40:20.000000', NULL, NULL),
(26, 'Health rumor', 'Nghỉ hết xanh biết gió chết giày xe. Độc thương chín con đá. Giết khoảng ghế bè cửa phá ghế vẽ. Hết đánh xuồng chìm xanh gió tám nước.', '2023-06-07 09:16:30.410000', '2023-06-07 09:16:30.410000', '2023-06-07 10:40:20.000000', NULL, NULL),
(27, 'Automotive swine', 'Tủ việc núi. Đã bơi tui bè làm đỏ không quần bơi thuyền. Đã á áo gió. Khoảng khoan năm thuyền mây em đạp.', '2023-06-07 09:16:30.416000', '2023-06-07 09:16:30.416000', '2023-06-07 10:40:20.000000', NULL, NULL),
(28, 'Baby grade', 'Chín nón bảy thế nha tui. Mua thuyền trời quần núi. Quần khoan phá gì trời xanh thuê là bốn. May mua quê xanh đạp hàng xe độc hóa.', '2023-06-07 09:16:30.421000', '2023-06-07 09:16:30.421000', '2023-06-07 10:40:20.000000', NULL, NULL),
(29, 'Jewelery beech', 'Thuyền hai áo. Thôi bè thích tím nghỉ phá một ngọt. Vẽ khoảng gì. Thích làm may bơi mua thích. Xe làm tủ xanh yêu một tôi phá. Ác leo độc đạp mướn.', '2023-06-07 09:16:30.426000', '2023-06-07 09:16:30.426000', '2023-06-07 10:40:20.000000', NULL, NULL),
(30, 'Grocery sleep', 'Ừ thuyền thì lầu em ghế viết. Bạn ghét máy á trời biết đá nước ờ hương. Biển hàng không thích đang bơi. Đập thích nghỉ khâu xanh con là quần.', '2023-06-07 09:16:30.431000', '2023-06-07 09:16:30.431000', '2023-06-07 10:40:20.000000', NULL, NULL),
(31, 'Beauty polyp', 'Bơi trời tím mua bốn ghế yêu máy nước vá. Vẽ làm ba ba hết không tám mười ruộng quê. Xe viết bạn nghỉ giết nước kim tủ hết. Đang áo xuồng mướn. Ghét ừ biết tôi hai thôi máy. Thì nha ừ áo mượn viết dép nước mượn.', '2023-06-07 09:16:30.436000', '2023-06-07 09:16:30.436000', '2023-06-07 10:40:20.000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'quan-jeans-vintage.jpg', NULL, NULL, 730, 487, '{\"thumbnail\":{\"name\":\"thumbnail_quan-jeans-vintage.jpg\",\"hash\":\"thumbnail_quan_jeans_vintage_6bc8dec001\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":234,\"height\":156,\"size\":6.54,\"url\":\"/uploads/thumbnail_quan_jeans_vintage_6bc8dec001.jpg\"},\"small\":{\"name\":\"small_quan-jeans-vintage.jpg\",\"hash\":\"small_quan_jeans_vintage_6bc8dec001\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":334,\"size\":23.01,\"url\":\"/uploads/small_quan_jeans_vintage_6bc8dec001.jpg\"}}', 'quan_jeans_vintage_6bc8dec001', '.jpg', 'image/jpeg', 44.92, '/uploads/quan_jeans_vintage_6bc8dec001.jpg', NULL, 'local', NULL, '/1', '2023-06-07 09:06:58.225000', '2023-06-07 09:06:58.225000', 1, 1),
(2, 'quan-jeans-rach-xam-qj1637-10754-slide-products-5c6d2c303769f.jpg', NULL, NULL, 800, 1067, '{\"thumbnail\":{\"name\":\"thumbnail_quan-jeans-rach-xam-qj1637-10754-slide-products-5c6d2c303769f.jpg\",\"hash\":\"thumbnail_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":117,\"height\":156,\"size\":4.59,\"url\":\"/uploads/thumbnail_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68.jpg\"},\"medium\":{\"name\":\"medium_quan-jeans-rach-xam-qj1637-10754-slide-products-5c6d2c303769f.jpg\",\"hash\":\"medium_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":562,\"height\":750,\"size\":53.72,\"url\":\"/uploads/medium_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68.jpg\"},\"small\":{\"name\":\"small_quan-jeans-rach-xam-qj1637-10754-slide-products-5c6d2c303769f.jpg\",\"hash\":\"small_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":375,\"height\":500,\"size\":27.49,\"url\":\"/uploads/small_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68.jpg\"},\"large\":{\"name\":\"large_quan-jeans-rach-xam-qj1637-10754-slide-products-5c6d2c303769f.jpg\",\"hash\":\"large_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":1000,\"size\":86.17,\"url\":\"/uploads/large_quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68.jpg\"}}', 'quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68', '.jpg', 'image/jpeg', 96.10, '/uploads/quan_jeans_rach_xam_qj1637_10754_slide_products_5c6d2c303769f_c57d5a8a68.jpg', NULL, 'local', NULL, '/1', '2023-06-07 09:06:58.336000', '2023-06-07 09:06:58.336000', 1, 1),
(3, '13433-clean-z2130532420869-ac15fa387b8b5fb6bc62f4b86387f913.jpg', NULL, NULL, 4032, 4032, '{\"thumbnail\":{\"name\":\"thumbnail_13433-clean-z2130532420869-ac15fa387b8b5fb6bc62f4b86387f913.jpg\",\"hash\":\"thumbnail_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":156,\"height\":156,\"size\":4.67,\"url\":\"/uploads/thumbnail_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85.jpg\"},\"large\":{\"name\":\"large_13433-clean-z2130532420869-ac15fa387b8b5fb6bc62f4b86387f913.jpg\",\"hash\":\"large_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":1000,\"height\":1000,\"size\":61.41,\"url\":\"/uploads/large_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85.jpg\"},\"small\":{\"name\":\"small_13433-clean-z2130532420869-ac15fa387b8b5fb6bc62f4b86387f913.jpg\",\"hash\":\"small_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":500,\"height\":500,\"size\":21.89,\"url\":\"/uploads/small_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85.jpg\"},\"medium\":{\"name\":\"medium_13433-clean-z2130532420869-ac15fa387b8b5fb6bc62f4b86387f913.jpg\",\"hash\":\"medium_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"path\":null,\"width\":750,\"height\":750,\"size\":38.94,\"url\":\"/uploads/medium_13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85.jpg\"}}', '13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85', '.jpg', 'image/jpeg', 625.10, '/uploads/13433_clean_z2130532420869_ac15fa387b8b5fb6bc62f4b86387f913_91736c1f85.jpg', NULL, 'local', NULL, '/1', '2023-06-07 09:06:58.562000', '2023-06-07 09:06:58.562000', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(4, 2, 9, 'api::product.product', 'image', 1),
(5, 1, 9, 'api::product.product', 'image', 2),
(6, 3, 1, 'api::product.product', 'image', 1),
(7, 2, 2, 'api::product.product', 'image', 1),
(8, 3, 3, 'api::product.product', 'image', 1),
(9, 1, 4, 'api::product.product', 'image', 1),
(10, 2, 5, 'api::product.product', 'image', 1),
(11, 3, 6, 'api::product.product', 'image', 1),
(12, 2, 7, 'api::product.product', 'image', 1),
(13, 1, 8, 'api::product.product', 'image', 1),
(14, 3, 9, 'api::product.product', 'image', 1),
(15, 2, 10, 'api::product.product', 'image', 1),
(16, 1, 11, 'api::product.product', 'image', 1),
(17, 2, 12, 'api::product.product', 'image', 1),
(18, 3, 13, 'api::product.product', 'image', 1),
(19, 2, 14, 'api::product.product', 'image', 1),
(20, 1, 15, 'api::product.product', 'image', 1),
(21, 1, 16, 'api::product.product', 'image', 1),
(22, 3, 1, 'api::product.product', 'image', 1),
(23, 2, 2, 'api::product.product', 'image', 1),
(24, 3, 3, 'api::product.product', 'image', 1),
(25, 1, 4, 'api::product.product', 'image', 1),
(26, 2, 5, 'api::product.product', 'image', 1),
(27, 3, 6, 'api::product.product', 'image', 1),
(28, 2, 7, 'api::product.product', 'image', 1),
(29, 1, 8, 'api::product.product', 'image', 1),
(30, 3, 9, 'api::product.product', 'image', 1),
(31, 2, 10, 'api::product.product', 'image', 1),
(32, 1, 11, 'api::product.product', 'image', 1),
(33, 2, 12, 'api::product.product', 'image', 1),
(34, 3, 13, 'api::product.product', 'image', 1),
(35, 2, 14, 'api::product.product', 'image', 1),
(36, 1, 15, 'api::product.product', 'image', 1),
(37, 1, 16, 'api::product.product', 'image', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-06-07 08:55:32.932000', '2023-06-07 08:55:32.932000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `detail` longtext DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `detail`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Product1', 'mo ta product 1', 'detail', 50000, '2023-06-07 09:07:35.147000', '2023-06-07 09:07:35.147000', '2023-06-17 08:26:48.000000', 1, 1),
(2, 'Awesome Wooden Hatfiddle', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientscon', 'Hàng trăng hóa lầu ghét đạp xanh làm. Hóa ờ thế tủ vàng thương giày đang anh hàng. Việc ừ hương làm.', 50861, '2023-06-07 09:23:23.016000', '2023-06-07 09:23:23.016000', '2023-06-17 08:26:48.000000', NULL, NULL),
(3, 'Bespoke Frozen Computersuffocation', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartsequel', 'Tím ruộng khoảng biết kim bốn lỗi mượn. May chìm tàu biết dép. Độc nón thương ruộng nha xe. Mây ghét độc. Áo giày bơi.', 71185, '2023-06-07 09:23:23.023000', '2023-06-07 09:23:23.023000', '2023-06-17 08:26:48.000000', NULL, NULL),
(4, 'Gorgeous Fresh Mousedrop', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitlinen', 'Thế mây chìm áo năm hai hai việc ghét bốn. Đánh lầu đang nghỉ. Bơi giết giày ruộng chìm máy mười. Một thế thích chết hàng chín. Xuồng á chết mua núi.', 55911, '2023-06-07 09:23:23.030000', '2023-06-07 09:23:23.030000', '2023-06-17 08:26:48.000000', NULL, NULL),
(5, 'Ergonomic Granite Saladfoundation', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designcornmeal', 'Leo cái ruộng nước. Đá ngọt sáu khoan vàng chỉ hàng mượn con mượn. Bảy đồng chín nghỉ tui thuê xe việc máy chết.', 48411, '2023-06-07 09:23:23.035000', '2023-06-07 09:23:23.035000', '2023-06-17 08:26:48.000000', NULL, NULL),
(6, 'Oriental Rubber Chipsadvertisement', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientslion', 'Bè đang hết xe nghỉ. Làm kim tím biển thuê bơi đang thuê. Giày mướn ờ dép bè ờ nha đánh ờ. Giết hóa áo thương gì em vàng á là. Giết xuồng làm bơi lầu chỉ bơi bốn.', 82645, '2023-06-07 09:23:23.041000', '2023-06-07 09:23:23.041000', '2023-06-17 08:26:48.000000', NULL, NULL),
(7, 'Bespoke Rubber Shoesharmonise', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitfeed', 'Ngọt thế hương. Thì tím ừ được. Mượn năm quần bốn ba yêu đồng yêu. Vẽ thôi tàu. Chết núi đâu ghế nhà.', 28769, '2023-06-07 09:23:23.047000', '2023-06-07 09:23:23.047000', '2023-06-17 08:26:48.000000', NULL, NULL),
(8, 'Handmade Concrete Saladplatinum', 'The Football Is Good For Training And Recreational Purposeschess', 'Đánh may bạn khâu tím trời tui được khoảng thương. Nhà xuồng đạp. Đỏ chỉ nha gió ngọt xe thương ruộng xuồng. Sáu ờ chìm núi nón.', 46529, '2023-06-07 09:23:23.053000', '2023-06-07 09:23:23.053000', '2023-06-17 08:26:48.000000', NULL, NULL),
(9, 'Bespoke Concrete Pantsdamage', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsmRNA', 'Quần chìm làm. Là hàng năm. Thế biển thích ghế con đỏ.', 81826, '2023-06-07 09:23:23.058000', '2023-06-07 09:54:17.011000', '2023-06-17 08:26:48.000000', NULL, 1),
(10, 'Rustic Concrete Pizzaprofession', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsmycoplasma', 'Đập thích vá tủ bàn. Ba giày đá bốn mười. Mướn nha giày ghế đâu leo bảy một ghét đồng. Độc một ngọt. Làm chết viết xanh.', 42839, '2023-06-07 09:23:23.064000', '2023-06-07 09:23:23.064000', '2023-06-17 08:26:48.000000', NULL, NULL),
(11, 'Handmade Fresh Pizzapliers', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivepicket', 'Đâu chết nhà hóa may. Em ba đạp xe đập cửa bốn. Máy may ruộng chết một ghét ba trời nghỉ khâu. Ác con xe. Em bơi thế ghế vàng đạp đạp.', 98110, '2023-06-07 09:23:23.069000', '2023-06-07 09:23:23.069000', '2023-06-17 08:26:48.000000', NULL, NULL),
(12, 'Elegant Concrete Hatboycott', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportpreparation', 'Đồng núi xanh nha thuê đang hàng tàu được xuồng. Mượn đạp viết bơi lỗi đang tàu một được. Hóa mướn thuyền tủ biển nón khoảng đạp hai hương. Tôi sáu thích thích là áo khoảng biển. Tàu chìm thuê. Bảy biển nghỉ đâu là xanh.', 23371, '2023-06-07 09:23:23.074000', '2023-06-07 09:23:23.074000', '2023-06-17 08:26:48.000000', NULL, NULL),
(13, 'Recycled Frozen Shoesmascara', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportcutlet', 'Gió áo năm lầu núi mướn. Được độc đạp đồng đâu ba ác đá leo hàng. Thuyền đỏ là gió. Độc đâu đỏ hàng đỏ bảy tàu chín tôi. Bè chết nón tôi mây biển. Vá chìm đỏ đỏ.', 90532, '2023-06-07 09:23:23.080000', '2023-06-07 09:23:23.080000', '2023-06-17 08:26:48.000000', NULL, NULL),
(14, 'Handcrafted Plastic Pizzasturgeon', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartpavement', 'Yêu nhà cửa bè. Nhà ba nước chỉ. Tủ chết cái trời.', 72263, '2023-06-07 09:23:23.085000', '2023-06-07 09:23:23.085000', '2023-06-17 08:26:48.000000', NULL, NULL),
(15, 'Fantastic Rubber Glovesjar', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveprizefight', 'Trời thế thuyền. Lầu đánh việc. Anh gió đồng núi lỗi ừ. Anh bè viết. Gió em xuồng tui thương kim.', 35605, '2023-06-07 09:23:23.091000', '2023-06-07 09:23:23.091000', '2023-06-17 08:26:48.000000', NULL, NULL),
(16, 'Ergonomic Bronze Keyboardthrush', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016prejudice', 'Khoan hết hương anh nón tàu tím. Vẽ thế thuê độc trăng em chìm nghỉ mây thôi. Tôi á may gió. Thì vá máy biển đang máy mười bàn cái. Một quần máy quê quê nghỉ giết. Cái yêu á vá vàng quần núi chết.', 23544, '2023-06-07 09:23:23.097000', '2023-06-07 09:23:23.097000', '2023-06-17 08:26:48.000000', NULL, NULL),
(17, 'Intelligent Fresh Baconjournalism', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivefratricide', 'Đã áo cửa ờ năm khâu đập khoảng. Mười chết may xuồng nước khoảng vá. Lỗi em nghỉ vẽ hương quần nước đỏ chìm lỗi. Quần sáu trăng con làm khoảng trời hai xuồng. Làm mướn khoan mua á viết.', 24212, '2023-06-07 09:23:23.102000', '2023-06-07 09:23:23.102000', '2023-06-17 08:26:48.000000', NULL, NULL),
(18, 'Small Soft Ballwoodland', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jtic', 'Xanh đồng làm đã. Khoan nón xe nhà. Gió được giết xanh. Thuyền vàng nước thôi tui ngọt chín đâu viết lầu.', 34226, '2023-06-07 09:23:23.108000', '2023-06-07 09:23:23.108000', '2023-06-17 08:26:48.000000', NULL, NULL),
(19, 'Tasty Wooden Soapdetection', 'The Football Is Good For Training And Recreational Purposesvein', 'Yêu trăng ừ đồng. Năm chìm thương. Tui hết nón tàu mướn áo đá xanh tủ. Máy ác bè được giày mướn đồng đỏ. Mười là tui đánh thích không viết xuồng ghét tô.', 49017, '2023-06-07 09:23:23.114000', '2023-06-07 09:23:23.114000', '2023-06-17 08:26:48.000000', NULL, NULL),
(20, 'Practical Rubber Baconberet', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016redhead', 'Trời hàng cửa thích. Sáu khâu xe tô. Vàng dép đỏ lầu ghế. Làm tôi xe tám đâu mười.', 62351, '2023-06-07 09:23:23.119000', '2023-06-07 09:23:23.119000', '2023-06-17 08:26:48.000000', NULL, NULL),
(21, 'Recycled Wooden Tablefilm', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitinsurrection', 'Xanh thì xuồng. Vẽ hàng chết tàu ruộng được khoảng em ngọt viết. Máy may nước phá chỉ là vàng. Nước đâu tàu phá vẽ bơi xanh bảy đá ghế.', 45513, '2023-06-07 09:23:23.123000', '2023-06-07 09:23:23.123000', '2023-06-17 08:26:48.000000', NULL, NULL),
(22, 'Practical Steel Carplantation', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityretrospectivity', 'Ba ghét phá nghỉ chín độc gì ác. Thôi đánh hàng nghỉ cửa chín. Gì lầu xuồng á khâu tủ dép không. Đập em lỗi độc chìm hết nón. Nha kim xuồng.', 22535, '2023-06-07 09:23:23.130000', '2023-06-07 09:23:23.130000', '2023-06-17 08:26:48.000000', NULL, NULL),
(23, 'Fantastic Cotton Chipsvice', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartcensus', 'Xanh một phá đạp xe xanh đạp. Làm đánh đánh đỏ không. Mây ờ đang giết á thích tủ thương. Đâu tui mua đánh đâu vẽ bàn thuê.', 34205, '2023-06-07 09:23:23.136000', '2023-06-07 09:23:23.136000', '2023-06-17 08:26:48.000000', NULL, NULL),
(24, 'Generic Concrete Bikeresidue', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartsardine', 'Được gió khâu đỏ xe thích con nước tím. Xe đồng biết tám quần bảy chết đánh bạn lầu. Tám chìm xe đỏ một. Đang trăng núi tủ. Bốn mười bốn làm thương khâu thôi mướn em mười.', 40499, '2023-06-07 09:23:23.142000', '2023-06-07 09:23:23.142000', '2023-06-17 08:26:48.000000', NULL, NULL),
(25, 'Small Steel Fishoversight', 'The Football Is Good For Training And Recreational Purposesstrobe', 'Viết đạp giày hai cửa mây. Ngọt là xuồng tôi chín phá vẽ nha xanh dép. Tô cửa mượn quần bè đã độc. Giết gió một cửa vàng quần phá. Tám nha gió xe.', 75124, '2023-06-07 09:23:23.149000', '2023-06-07 09:23:23.149000', '2023-06-17 08:26:48.000000', NULL, NULL),
(26, 'Refined Wooden Towelsshred', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveoutlay', 'Máy là trăng thích nha tôi khoảng giày. Hai ruộng tô đã mướn. Tím tôi đã.', 84543, '2023-06-07 09:23:23.155000', '2023-06-07 09:23:23.155000', '2023-06-17 08:26:48.000000', NULL, NULL),
(27, 'Electronic Plastic Shirthull', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designtrolley', 'Năm xanh mây việc khoan đã bạn ừ nhà. Không con tui không năm đâu ghế. Viết chỉ bàn mây ghét đâu trời tui đỏ. Yêu kim ừ chết đập việc xanh.', 67847, '2023-06-07 09:23:23.162000', '2023-06-07 09:23:23.162000', '2023-06-17 08:26:48.000000', NULL, NULL),
(28, 'Elegant Bronze Tunapronunciation', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitycartilage', 'Viết cửa chết mướn biết đang thích thì. Thế quần lầu nha. Vá tàu xanh không vá em hóa khâu.', 33713, '2023-06-07 09:23:23.168000', '2023-06-07 09:23:23.168000', '2023-06-17 08:26:48.000000', NULL, NULL),
(29, 'Luxurious Metal Chipsangle', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designbowler', 'Máy thương thôi anh máy tím nha biển. Lầu bạn không. Đang đánh năm. Biển biết máy. Mười khâu may đỏ xe thôi kim xe.', 47893, '2023-06-07 09:23:23.175000', '2023-06-07 09:23:23.175000', '2023-06-17 08:26:48.000000', NULL, NULL),
(30, 'Handcrafted Concrete Ballhesitation', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jthermostat', 'Máy thế ờ yêu ừ nha nghỉ ruộng. Đạp tôi đã. Trời nón hai nghỉ quần thuyền. Làm vẽ nước bạn yêu. Khoan được làm giày leo hàng tàu chỉ. Hàng yêu khoảng đỏ leo gió áo gì.', 65388, '2023-06-07 09:23:23.181000', '2023-06-07 09:23:23.181000', '2023-06-17 08:26:48.000000', NULL, NULL),
(31, 'Oriental Soft Carreaction', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jland', 'Chín sáu biết hết gì. Chìm tui hóa ờ mây thuê đang gió. Ừ ghế cửa đồng quê áo chết. Nón ghế vá. Vẽ bè chìm đồng. Tàu vàng vẽ tô ngọt việc ghế thuyền ờ.', 36015, '2023-06-07 09:23:23.187000', '2023-06-07 09:23:23.187000', '2023-06-17 08:26:48.000000', NULL, NULL),
(32, 'Unbranded Wooden Soapdisembodiment', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsmark', 'Chỉ bàn một đâu nước đánh. Á tủ bảy hai gì độc. Thương ờ là trời con mười bàn.', 57132, '2023-06-07 10:27:44.413000', '2023-06-07 10:27:44.413000', '2023-06-17 08:26:48.000000', NULL, NULL),
(33, 'Handmade Cotton Chipspropane', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportepic', 'Mười trời bảy. Chìm khâu xanh trăng cửa. Bốn may tô chín bảy leo. Việc cửa bảy lỗi đã bơi. Quê hương cửa được đang chìm tàu. Thương thương phá là con tô.', 92026, '2023-06-07 10:27:44.423000', '2023-06-07 10:27:44.423000', '2023-06-17 08:26:48.000000', NULL, NULL),
(34, 'Practical Frozen Saladstumbling', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016reinscription', 'Đang xanh đập chết khoan cửa quần leo máy năm. Ác hóa bạn máy. Đập cửa núi ờ bốn mượn hương đạp chìm. Tàu con khâu yêu em nón biết. Quần hàng hai. Đập ác thì.', 82085, '2023-06-07 10:27:44.433000', '2023-06-07 10:27:44.433000', '2023-06-17 08:26:48.000000', NULL, NULL),
(35, 'Rustic Concrete Balloval', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016booklet', 'Năm độc anh lầu nước bảy thích giày làm. Đỏ tím ừ làm viết em bơi hương được viết. Bảy sáu bốn lầu nước. Núi đá thương xe.', 25865, '2023-06-07 10:27:44.443000', '2023-06-07 10:27:44.443000', '2023-06-17 08:26:48.000000', NULL, NULL),
(36, 'Unbranded Rubber Pizzamath', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportnative', 'Được thuê bè biển tôi. Chín quê gió nghỉ tím. Chỉ tím vàng thuyền á hóa cửa. Biết bốn biển mua chín xe.', 94578, '2023-06-07 10:27:44.453000', '2023-06-07 10:27:44.453000', '2023-06-17 08:26:48.000000', NULL, NULL),
(37, 'Recycled Concrete Shirtmobility', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand aparteve', 'Thuê ba biết trăng tô. Máy tám con đập vẽ lỗi lầu ruộng. Phá biển đá. Chỉ em lầu bảy hương tàu. Viết giày đánh đang tám giết nha xe.', 23623, '2023-06-07 10:27:44.462000', '2023-06-07 10:27:44.462000', '2023-06-17 08:26:48.000000', NULL, NULL),
(38, 'Generic Wooden Keyboardstyling', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designstair', 'Hóa lỗi đồng thôi giết xuồng thế thế ờ đã. Vàng em hương áo núi được bốn. Thuyền gì á.', 32659, '2023-06-07 10:27:44.470000', '2023-06-07 10:27:44.470000', '2023-06-17 08:26:48.000000', NULL, NULL),
(39, 'Generic Wooden Baconfirewall', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designloafer', 'Em lầu lầu khoan kim tím xuồng tám chết đỏ. Đập mướn vẽ đang con. Viết kim nước thuê tô.', 33262, '2023-06-07 10:27:44.480000', '2023-06-07 10:27:44.480000', '2023-06-17 08:26:48.000000', NULL, NULL),
(40, 'Unbranded Metal Baconpillow', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jstockings', 'Ờ gì nhà đã thì chín quê leo thôi tím. Đâu giày đỏ thuê việc tàu lầu. Thương ừ máy chìm gì á bảy.', 70243, '2023-06-07 10:27:44.489000', '2023-06-07 10:27:44.489000', '2023-06-17 08:26:48.000000', NULL, NULL),
(41, 'Ergonomic Fresh Ballleptocephalus', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand aparttorso', 'Nhà tôi khoảng tui vàng chín làm. Hết bạn trời ghét hàng bơi thích. Anh á hết năm. Nha độc bè leo. Xe may thì gì xe vàng tím tím biết tám. Đập yêu mười năm tàu khoảng năm.', 95671, '2023-06-07 10:27:44.499000', '2023-06-07 10:27:44.499000', '2023-06-17 08:26:48.000000', NULL, NULL),
(42, 'Handcrafted Bronze Ballyouth', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designswitch', 'Trăng hai nhà đạp khoan. Thuê ruộng một hương. Ruộng quần xe giết thuê làm yêu ba. Cái vá em chết chín đánh. Mây bạn lầu.', 73112, '2023-06-07 10:27:44.511000', '2023-06-07 10:27:44.511000', '2023-06-17 08:26:48.000000', NULL, NULL),
(43, 'Electronic Frozen Fishscope', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jmode', 'Nước xe mượn ừ. Ghế gió giết hương đồng. Nhà thuyền mười. Không chết vá áo trời sáu nón hai. Mây xuồng đang.', 56484, '2023-06-07 10:27:44.519000', '2023-06-07 10:27:44.519000', '2023-06-17 08:26:48.000000', NULL, NULL),
(44, 'Tasty Steel Glovestriad', 'The Football Is Good For Training And Recreational Purposesmeatloaf', 'Dép ngọt phá con gì bạn. Quần thích ngọt đồng mây trời độc vá tôi tím. Dép biết biển ờ. Mua thế chỉ gió trăng hai đang đạp ba.', 65402, '2023-06-07 10:27:44.530000', '2023-06-07 10:27:44.530000', '2023-06-17 08:26:48.000000', NULL, NULL),
(45, 'Licensed Granite Pantsforestry', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartwording', 'Chết đá bàn vẽ khoan là con biết. Leo máy nha thì là kim bốn. Gì là ba tui mười xuồng khoảng đang chín biết. Em trăng ghét khoan. Đánh khâu vàng thế ghế cửa phá nón anh giết. Thôi đồng năm tô biết.', 26928, '2023-06-07 10:27:44.540000', '2023-06-07 10:27:44.540000', '2023-06-17 08:26:48.000000', NULL, NULL),
(46, 'Practical Soft Computeroctet', 'The Football Is Good For Training And Recreational Purposesiridescence', 'Quần được ghét hóa vá nón độc. Thì cửa đánh phá trời xuồng tím. Dép may đá ngọt bốn. Gì xe đập cái thôi cửa tôi tui tui độc. Dép đồng thuyền ba dép chỉ khâu bảy thích.', 87839, '2023-06-07 10:27:44.550000', '2023-06-07 10:27:44.550000', '2023-06-17 08:26:48.000000', NULL, NULL),
(47, 'Tasty Soft Bikemorning', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designmercury', 'Tô gió bốn đạp tôi ác con. Viết hàng ba đánh hết. Ngọt ngọt là thương hàng đánh ghét tủ ghét đang. Thương đạp chín bạn ừ.', 95907, '2023-06-07 10:27:44.559000', '2023-06-07 10:27:44.559000', '2023-06-17 08:26:48.000000', NULL, NULL),
(48, 'Handcrafted Granite Tunateaching', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsrandomisation', 'Chín cái nghỉ xanh ờ thuê đá đỏ lỗi tô. Ghét lầu đá. Khoan tôi nhà ghế trăng may khoan ghét ghế. Trăng một đỏ mây làm bảy máy bạn ba lầu. Ừ tôi thuyền. Phá biển giết năm chìm con vá khâu.', 46854, '2023-06-07 10:27:44.568000', '2023-06-07 10:27:44.568000', '2023-06-17 08:26:48.000000', NULL, NULL),
(49, 'Ergonomic Plastic Keyboardturtle', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesfarmer', 'Mua ờ mượn giày leo ờ gió. Đâu bạn nón đập mua leo hương độc hóa. Mướn nhà chìm máy tám không nha hai đập. Ác hóa đang đỏ em đập bảy. Ngọt thôi anh anh đã cửa. Anh em kim.', 33459, '2023-06-07 10:27:44.578000', '2023-06-07 10:27:44.578000', '2023-06-17 08:26:48.000000', NULL, NULL),
(50, 'Sleek Soft Chickentamale', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jorient', 'Thuyền đập khoan anh bơi đỏ hết. Thôi việc tôi. Anh mướn leo thôi bốn máy. Phá chỉ xe nước bàn lầu sáu mượn. Không bàn cửa trời may.', 48769, '2023-06-07 10:27:44.587000', '2023-06-07 10:27:44.587000', '2023-06-17 08:26:48.000000', NULL, NULL),
(51, 'Electronic Concrete Chaircyclooxygenase', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jserver', 'Đồng tàu tô tủ khoan xe nón khoan việc chết. Bàn bơi chìm. Khoan quần xuồng việc ừ nghỉ quần.', 60261, '2023-06-07 10:27:44.596000', '2023-06-07 10:27:44.596000', '2023-06-17 08:26:48.000000', NULL, NULL),
(52, 'Refined Steel Keyboardrobe', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalssociology', 'Dép giết mướn năm. Chết bảy anh lầu thuyền vá chìm làm kim quê. Bàn độc chết năm hàng tủ. Bàn thương viết anh gì thế lầu vá. Hương quê một núi phá nón gì nón một mướn. Đá chín hóa mướn độc phá.', 60951, '2023-06-07 10:27:44.604000', '2023-06-07 10:27:44.604000', '2023-06-17 08:26:48.000000', NULL, NULL),
(53, 'Handmade Concrete Towelsstarter', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportbladder', 'Chỉ độc được tôi. Ác sáu bảy em. Thôi áo nón. Đỏ ruộng là. Lỗi quần vẽ hết là. Bè yêu ghét.', 88143, '2023-06-07 10:27:44.615000', '2023-06-07 10:27:44.615000', '2023-06-17 08:26:48.000000', NULL, NULL),
(54, 'Elegant Steel Shoesvol', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartplay', 'Leo hàng là mười thế ghét trời. Bơi cửa ừ hương tím ruộng con mua. Sáu làm đá.', 54833, '2023-06-07 10:27:44.623000', '2023-06-07 10:27:44.623000', '2023-06-17 08:26:48.000000', NULL, NULL),
(55, 'Incredible Plastic Pizzarespect', 'The Football Is Good For Training And Recreational Purposesporthole', 'Ba kim khoảng sáu ừ đã cái ba đồng ghế. Việc bàn hương vá khâu tàu hết xanh. Quê một viết xanh giết đã khoảng chín đâu mượn. Bơi thì được xuồng chín xuồng vàng làm.', 80574, '2023-06-07 10:27:44.632000', '2023-06-07 10:27:44.632000', '2023-06-17 08:26:48.000000', NULL, NULL),
(56, 'Elegant Fresh Chickensilk', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveheating', 'Xanh độc mượn bơi mây ghế viết tô xe xanh. Cửa tô anh sáu mười tui tủ. Viết bạn ngọt. Tàu chỉ kim hai không. Hai nón thương đập trời hai. Đạp đập ờ ờ bạn anh sáu thích thôi.', 87241, '2023-06-07 10:27:44.641000', '2023-06-07 10:27:44.641000', '2023-06-17 08:26:48.000000', NULL, NULL),
(57, 'Refined Wooden Baconmoney', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fittrance', 'Cửa không hóa. Quần vàng mười ác bảy thuê đập. Anh biết viết tui ghét năm. Hóa bơi lỗi năm đạp lầu ghế. Đỏ cửa đánh.', 77391, '2023-06-07 10:27:44.649000', '2023-06-07 10:27:44.649000', '2023-06-17 08:26:48.000000', NULL, NULL),
(58, 'Electronic Cotton Shoesremoval', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsbowtie', 'Thuyền yêu thuyền tàu mướn máy ghét tô. Hương áo đạp nghỉ. Đâu đánh biết biển thôi ờ nha năm khoan hàng. Chìm vẽ vẽ khâu mướn nha. Khoảng em khoảng gió mười trăng khoan nước.', 83828, '2023-06-07 10:27:44.657000', '2023-06-07 10:27:44.657000', '2023-06-17 08:26:48.000000', NULL, NULL),
(59, 'Luxurious Soft Shirthouseboat', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartslaw', 'Tàu cửa đạp viết. Thôi thương khoan ghế không tàu khoảng bạn. Quê xuồng chết thế.', 86666, '2023-06-07 10:27:44.665000', '2023-06-07 10:27:44.665000', '2023-06-17 08:26:48.000000', NULL, NULL),
(60, 'Modern Fresh Baconradiosonde', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsgran', 'Ác quần ừ khâu hóa ừ việc không không. Ờ yêu sáu áo quê dép độc ờ đang. Đỏ xanh nón tủ giày nhà được.', 32167, '2023-06-07 10:27:44.673000', '2023-06-07 10:27:44.673000', '2023-06-17 08:26:48.000000', NULL, NULL),
(61, 'Incredible Bronze Chipsengagement', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesreception', 'Gió nón nghỉ trời. Đạp áo núi áo gió nước. Việc bốn đỏ. Cửa em tủ sáu.', 30550, '2023-06-07 10:27:44.682000', '2023-06-07 10:27:44.682000', '2023-06-17 08:26:48.000000', NULL, NULL),
(62, 'Small Granite Chickenpimp', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityobject', 'Mây cái bơi biết vàng nha lầu nước nón kim. Giết xe bốn sáu. Trăng quần quê khoan. Tím ba ba ngọt thích độc năm. Chín viết nón giết núi may mười gì. Vàng thích biển máy hai nhà xuồng bốn.', 68958, '2023-06-07 18:53:38.109000', '2023-06-07 18:53:38.109000', '2023-06-17 08:26:48.000000', NULL, NULL),
(63, 'Licensed Granite Ballclothes', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportwilderness', 'Xuồng nhà ngọt biết hương viết thế. Năm ờ yêu tám đỏ dép. Biển tím việc dép ngọt thế độc vá. Ác ruộng giày nước ghét dép đánh giết.', 35534, '2023-06-07 18:53:38.116000', '2023-06-07 18:53:38.116000', '2023-06-17 08:26:48.000000', NULL, NULL),
(64, 'Tasty Frozen Gloveshandsaw', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsengine', 'Ờ việc bè ngọt cửa con con cái gió ngọt. Đâu chỉ vàng biển mây. Ờ lầu đá đang leo em. Nước biển bàn mười á hương đỏ. Biết mua hai.', 58399, '2023-06-07 18:53:38.123000', '2023-06-07 18:53:38.123000', '2023-06-17 08:26:48.000000', NULL, NULL),
(65, 'Rustic Rubber Tunahurdle', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designclass', 'Em nước ghét leo đạp được sáu con nhà. Trời bàn thuê chín hóa sáu ghét cái. Khoảng kim khoan xanh khoan đang núi thuê hai đạp. Đập sáu đang biết năm vàng. Á giày ruộng là.', 33570, '2023-06-07 18:53:38.129000', '2023-06-07 18:53:38.129000', '2023-06-17 08:26:48.000000', NULL, NULL),
(66, 'Awesome Concrete Keyboardfolder', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jproximity', 'Thôi em thế hóa thế tủ nha. Bốn xanh ruộng ngọt khoan nhà cửa cái đập. Đã ruộng năm tím xe chỉ gì một xuồng nha. Xanh anh em kim là lầu. Một hương biết.', 33219, '2023-06-07 18:53:38.136000', '2023-06-07 18:53:38.136000', '2023-06-17 08:26:48.000000', NULL, NULL),
(67, 'Practical Steel Chairstem', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016tiara', 'Biển đỏ vẽ xanh bốn ừ. Ác quê dép thôi bơi tím ruộng máy xe. Bốn làm dép mây đã.', 69534, '2023-06-07 18:53:38.142000', '2023-06-07 18:53:38.142000', '2023-06-17 08:26:48.000000', NULL, NULL),
(68, 'Elegant Concrete Carsupreme', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsstew', 'Bè khoảng chết yêu máy đâu. Gì một mua đạp. Chết không đã thì biết. Xanh đồng ngọt khoảng được.', 73961, '2023-06-07 18:53:38.147000', '2023-06-07 18:53:38.147000', '2023-06-17 08:26:48.000000', NULL, NULL),
(69, 'Handmade Fresh Computersecretariat', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designpantologist', 'Bảy yêu đang mười máy đang. Bảy gió việc ghét thế thuê ờ. Thuyền quần đánh đâu bốn máy thôi biển. Quê ba ừ nghỉ viết nón máy. Máy ừ được sáu đỏ ba nước đã. Cửa làm cửa tủ xuồng làm leo thôi viết đập.', 86457, '2023-06-07 18:53:38.153000', '2023-06-07 18:53:38.153000', '2023-06-17 08:26:48.000000', NULL, NULL),
(70, 'Practical Soft Hatexpert', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesmerchant', 'Ừ đã vá. Hàng làm ghét khoan chỉ xe. Mướn đồng giết chìm vàng. Thôi ghét nha trăng hết thuê biết. Lỗi bạn thuê nha bạn mướn đập kim. Bè bảy đâu yêu đồng anh.', 20414, '2023-06-07 18:53:38.159000', '2023-06-07 18:53:38.159000', '2023-06-17 08:26:48.000000', NULL, NULL),
(71, 'Modern Soft Hatsupreme', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitygrasp', 'Bơi yêu đã nha ừ thích vá việc đồng. Leo kim việc ờ mượn khâu tàu kim. Hương cửa hết thế mướn. Năm bàn anh thuyền em kim phá quê.', 39344, '2023-06-07 18:53:38.165000', '2023-06-07 18:53:38.165000', '2023-06-17 08:26:48.000000', NULL, NULL),
(72, 'Electronic Metal Tunamouton', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitfigurine', 'Năm chín giết tui mười bàn khoảng đạp. Nghỉ con cái á. Vẽ xuồng bạn lầu bảy đã đâu bơi. Mười đỏ thế mua tàu.', 62536, '2023-06-07 18:53:38.171000', '2023-06-07 18:53:38.171000', '2023-06-17 08:26:48.000000', NULL, NULL),
(73, 'Oriental Cotton Bikereservoir', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesfoodstuffs', 'Áo bạn tám vẽ bàn. Đỏ chín máy ừ bè nhà tàu viết. Bốn quần đập máy bạn anh sáu phá. Xe thì tám anh đập tô tui quê ba leo. Cái may em á bè.', 23977, '2023-06-07 18:53:38.178000', '2023-06-07 18:53:38.178000', '2023-06-17 08:26:48.000000', NULL, NULL),
(74, 'Electronic Concrete Cheeseclaw', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportsonata', 'Tàu hàng giết. Vẽ ba nha bạn đỏ anh. Em tím giày. Mây không áo nước á hương thế cửa vá. Ác viết ruộng ác. Ác dép mười gió quần thì.', 41864, '2023-06-07 18:53:38.185000', '2023-06-07 18:53:38.185000', '2023-06-17 08:26:48.000000', NULL, NULL),
(75, 'Sleek Rubber Bikelogin', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclessensitivity', 'Lầu bạn mướn không á. Ờ viết được nón yêu yêu. Anh tôi nước chết hóa hàng bạn bạn áo thích. Ờ thuyền làm tôi thuyền bè tủ. Ruộng viết phá ừ viết lầu ngọt đá khâu.', 86856, '2023-06-07 18:53:38.191000', '2023-06-07 18:53:38.191000', '2023-06-17 08:26:48.000000', NULL, NULL),
(76, 'Licensed Cotton Glovesdrill', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartregulation', 'Tàu bơi hai. Đang hương mười hàng anh thuyền quê bạn. Sáu mướn trăng bốn thuê ghét nước hai biết gì. Đỏ bè năm nước áo năm thì. Đâu vàng á mượn thì.', 33841, '2023-06-07 18:53:38.196000', '2023-06-07 18:53:38.196000', '2023-06-17 08:26:48.000000', NULL, NULL),
(77, 'Practical Frozen Saladmercury', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientscausal', 'Hết yêu lỗi nón đồng khoan bốn nha vá chín. Khoảng thích bè nón ruộng gió khoan. Dép đạp đá. Bạn tui đỏ thôi núi em. Xe tàu được cái mua tàu. Chìm thương lầu ghế thì nha ờ tui giày.', 29315, '2023-06-07 18:53:38.202000', '2023-06-07 18:53:38.202000', '2023-06-17 08:26:48.000000', NULL, NULL),
(78, 'Luxurious Cotton Cheesesettler', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivedolphin', 'Biển hai biết hết nước vẽ gì quần quê. Á đang bè thương kim. Chỉ bè sáu. Tàu thì không anh. Biển gió nha làm đánh nón chỉ vẽ. Áo biết việc đá thế được hết đỏ chín đỏ.', 99934, '2023-06-07 18:53:38.207000', '2023-06-07 18:53:38.207000', '2023-06-17 08:26:48.000000', NULL, NULL),
(79, 'Unbranded Metal Pantsmineral', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designhippopotamus', 'Vá ruộng em ba bơi giết không. Không chết xe tàu được chín ờ. Đánh lỗi thôi là. Nha chìm hàng bè nước. Máy hương là làm ờ đồng bốn khâu may. Bảy nón chín.', 56683, '2023-06-07 18:53:38.215000', '2023-06-07 18:53:38.215000', '2023-06-17 08:26:48.000000', NULL, NULL),
(80, 'Rustic Bronze Cheeseeffect', 'The Football Is Good For Training And Recreational Purposespolarisation', 'Chết độc là bạn không. Tím giày khâu hóa tui đồng quê bàn nước. Con giết dép. Đạp lỗi vá chỉ vẽ phá trời quần. May một vá phá trời biết nha. Áo đồng tô bè khâu cái dép.', 75847, '2023-06-07 18:53:38.223000', '2023-06-07 18:53:38.223000', '2023-06-17 08:26:48.000000', NULL, NULL),
(81, 'Recycled Bronze Computerstrife', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016correspondence', 'Mua là may thôi tui mây gió lỗi chìm. Nón gì giày thuyền ghế chín ghế trời chìm hết. Ba mua một thuê bơi. Thì vẽ khoan gió không mua. Trời chỉ may mướn vẽ tím mười.', 23546, '2023-06-07 18:53:38.228000', '2023-06-07 18:53:38.228000', '2023-06-17 08:26:48.000000', NULL, NULL),
(82, 'Ergonomic Concrete Chipsnondisclosure', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsnotepad', 'Ba yêu mua xe vá hóa. Đá cái lỗi một vá tủ hai. Đá đập chìm máy đỏ hai. Đập ghế ác biết tủ đạp thuyền xe. Vẽ quần thôi bảy cái bè nón.', 59582, '2023-06-07 18:53:38.234000', '2023-06-07 18:53:38.234000', '2023-06-17 08:26:48.000000', NULL, NULL),
(83, 'Handmade Bronze Cheeseallegation', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016proliferation', 'Nha đánh mười biển ngọt con. Thuê giày chín thôi thích ba. Tô dép tôi khâu trời. Thích bốn chỉ đập mướn biết gió gió.', 79107, '2023-06-07 18:53:38.240000', '2023-06-07 18:53:38.240000', '2023-06-17 08:26:48.000000', NULL, NULL),
(84, 'Modern Bronze Baconagency', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsalmond', 'Nón sáu thuyền lỗi hóa tím đã hóa. Quê máy ghế cửa. Thuyền một gió mười chỉ gió.', 63251, '2023-06-07 18:53:38.245000', '2023-06-07 18:53:38.245000', '2023-06-17 08:26:48.000000', NULL, NULL),
(85, 'Elegant Concrete Saladtemp', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitylieu', 'Biển vẽ thì ờ. Ba đánh đập vàng mượn mây khâu mướn mua. Mây đỏ không giết con tui đạp đạp mười áo.', 45884, '2023-06-07 18:53:38.250000', '2023-06-07 18:53:38.250000', '2023-06-17 08:26:48.000000', NULL, NULL),
(86, 'Tasty Fresh Shirtinspector', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientscicada', 'Máy núi viết độc gió độc lầu. Bàn nha hàng. Thì ba xanh khâu gì một đập đâu viết. Áo xuồng quần xuồng thôi vàng đã. Gì ừ bốn xanh lầu cái nón mượn xuồng.', 57780, '2023-06-07 18:53:38.255000', '2023-06-07 18:53:38.255000', '2023-06-17 08:26:48.000000', NULL, NULL),
(87, 'Handcrafted Bronze Chipstanker', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designninja', 'Bàn nghỉ đồng tui là thế tàu. Năm nghỉ thôi nghỉ tím biển. Xanh tủ áo ờ thôi leo bốn. Thuyền đập được không tủ gió ác nước. Gì biết thôi tàu ghế phá bạn á việc. Mây giết tô thuê ngọt làm mây.', 90035, '2023-06-07 18:53:38.262000', '2023-06-07 18:53:38.262000', '2023-06-17 08:26:48.000000', NULL, NULL),
(88, 'Modern Soft Shoesfine', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designrainmaker', 'Leo khoan á hàng tàu. Thuê bơi ghét thích vá bạn gì hết chết đồng. Mua tím kim vàng đã tím ờ. Nghỉ thích sáu cửa đập khâu nước ruộng thuê. Đập quần thích.', 68649, '2023-06-07 18:53:38.268000', '2023-06-07 18:53:38.268000', '2023-06-17 08:26:48.000000', NULL, NULL),
(89, 'Handmade Cotton Baconapron', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsreluctance', 'Hết mua tàu gì viết đập trời tô. Tím tô nhà á nước đâu. Ba đập phá mười ghế. Gió hết tủ việc mười đạp dép.', 36865, '2023-06-07 18:53:38.273000', '2023-06-07 18:53:38.273000', '2023-06-17 08:26:48.000000', NULL, NULL),
(90, 'Unbranded Rubber Shirtfaucet', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivefollowing', 'Hóa đồng đồng đang ghế tủ đỏ. Sáu mây vá thôi biển bè. Lỗi sáu tô á nha vá nha mướn hương đã. Lầu ruộng tô nước đâu leo nha viết cái. Xanh biển xe núi giày quê hương. Mây đạp bốn quần thì thương nghỉ đâu.', 63176, '2023-06-07 18:53:38.278000', '2023-06-07 18:53:38.278000', '2023-06-17 08:26:48.000000', NULL, NULL),
(91, 'Recycled Fresh Keyboarddoorpost', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jorchestra', 'Yêu gió thuyền máy mua cửa thương máy. Đỏ gió đá ghế bảy em con ghét. Đang sáu vẽ đỏ khâu leo vàng kim vá ba.', 44284, '2023-06-07 18:53:38.284000', '2023-06-07 18:53:38.284000', '2023-06-17 08:26:48.000000', NULL, NULL),
(92, 'Modern Cotton Hatbrushfire', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesfun', 'Bè biết chín cái khâu vẽ. Chết nghỉ mướn ruộng em bè mười chìm mua. Được gió núi chìm nón ờ vẽ ờ. Tàu hương hương nghỉ tám xuồng vẽ mượn khoan bảy. Hết áo may ghét quần áo khâu đập hai xe. Tôi khoan một viết giết trời.', 56043, '2023-06-08 14:35:14.736000', '2023-06-08 14:35:14.736000', '2023-06-17 08:26:48.000000', NULL, NULL),
(93, 'Oriental Concrete Cheesetambour', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designlender', 'Khâu quê chết việc. Em giết giày làm chỉ con ghét cửa. Bạn ờ thì.', 77881, '2023-06-08 14:35:14.748000', '2023-06-08 14:35:14.748000', '2023-06-17 08:26:48.000000', NULL, NULL),
(94, 'Bespoke Rubber Sausageseducation', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalshair', 'Bốn trời kim tôi ruộng. Ba làm mua tô. Nhà thuyền mười vẽ khâu bạn.', 84384, '2023-06-08 14:35:14.757000', '2023-06-08 14:35:14.757000', '2023-06-17 08:26:48.000000', NULL, NULL),
(95, 'Electronic Fresh Saladcutover', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveacupuncture', 'Vá độc đập. Leo em ghét đá bơi vẽ khâu hương chết tàu. Tàu nha trăng em yêu hai gió quần bạn tám. May biết phá áo quần làm đá bè. Tô mười biết mười thuyền phá ờ áo độc. Trời sáu tui bạn biết tàu áo gió máy thuê.', 43635, '2023-06-08 14:35:14.767000', '2023-06-08 14:35:14.767000', '2023-06-17 08:26:48.000000', NULL, NULL),
(96, 'Rustic Fresh Baconborrowing', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsexterior', 'Sáu viết đá tô đâu bàn. Năm thế nước may đạp may. Lỗi leo máy.', 67115, '2023-06-08 14:35:14.774000', '2023-06-08 14:35:14.774000', '2023-06-17 08:26:48.000000', NULL, NULL),
(97, 'Tasty Plastic Bikepercentage', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclescrowd', 'Núi ruộng ghế đá bốn. Á khâu một xuồng may núi việc thuyền chết hương. Chìm nước nón một xe. Đâu đạp vẽ ngọt phá.', 48454, '2023-06-08 14:35:14.783000', '2023-06-08 14:35:14.783000', '2023-06-17 08:26:48.000000', NULL, NULL),
(98, 'Awesome Plastic Carshrimp', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designshark', 'Bốn tím đâu anh xanh trăng hóa đã một đã. Mua đánh biển. Tui anh mây chín thuê năm ruộng ghế.', 45135, '2023-06-08 14:35:14.794000', '2023-06-08 14:35:14.794000', '2023-06-17 08:26:48.000000', NULL, NULL),
(99, 'Refined Fresh Cheesecrisis', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitservice', 'May thôi ba. Tím độc hai đã biển bè thì thì. Đỏ hai con. Được đang nghỉ ngọt không.', 34630, '2023-06-08 14:35:14.804000', '2023-06-08 14:35:14.804000', '2023-06-17 08:26:48.000000', NULL, NULL),
(100, 'Handmade Plastic Pizzadick', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitybijou', 'Tôi mây ghế hết khoan. Đang năm không. Hai máy ruộng ngọt độc núi trời mây bạn con. Đánh vàng làm giày lỗi ác nha con tô. Đồng không mây ruộng khoảng quần vẽ đánh.', 95797, '2023-06-08 14:35:14.814000', '2023-06-08 14:35:14.814000', '2023-06-17 08:26:48.000000', NULL, NULL),
(101, 'Electronic Bronze Carcaption', 'The Football Is Good For Training And Recreational Purposesracing', 'Được mua tôi thế mây á thích. Vá biết mười cửa. Mướn xanh chìm giết hương thích giết. Ừ là nước hóa em con.', 54884, '2023-06-08 14:35:14.824000', '2023-06-08 14:35:14.824000', '2023-06-17 08:26:48.000000', NULL, NULL),
(102, 'Intelligent Soft Chipsshark', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitlox', 'Nha chìm nón ừ thuê trăng. Đá ghét thích mây xuồng bè trời gì. Kim yêu việc dép là hóa giày lỗi. Bốn mướn thôi tám đạp nha gì gió. Sáu biển đỏ đập xe. Yêu thế đâu làm hai gì tôi thích biết mười.', 28503, '2023-06-08 14:35:14.835000', '2023-06-08 14:35:14.835000', '2023-06-17 08:26:48.000000', NULL, NULL),
(103, 'Modern Plastic Soaptear', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalswaiting', 'Em thì chỉ hàng kim là áo chết chín. Leo giày chỉ vá một viết may hương. Ghét leo leo hóa nhà đã. Mua ngọt giết ừ.', 43377, '2023-06-08 14:35:14.846000', '2023-06-08 14:35:14.846000', '2023-06-17 08:26:48.000000', NULL, NULL),
(104, 'Handmade Frozen Hatattack', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveconservation', 'Hương đạp yêu anh hóa nghỉ bè biển. Bàn đã vá gió đá áo chìm đã. Cái mua yêu. Sáu bảy khoảng. Tủ nón thuê không thuyền nghỉ.', 43421, '2023-06-08 14:35:14.857000', '2023-06-08 14:35:14.857000', '2023-06-17 08:26:48.000000', NULL, NULL),
(105, 'Gorgeous Plastic Saladoutside', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartberet', 'Một mướn biết cái. Nón bạn hai ruộng vàng. Bốn nhà thuyền.', 35374, '2023-06-08 14:35:14.864000', '2023-06-08 14:35:14.864000', '2023-06-17 08:26:48.000000', NULL, NULL),
(106, 'Intelligent Bronze Keyboardword', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsplatter', 'Chín nghỉ kim mướn đã tàu mười ruộng. Núi hết ruộng bè áo là tàu ác tàu. Ruộng bốn bè làm may. Leo cái cửa trời viết. Bốn thôi thương.', 64516, '2023-06-08 14:35:14.874000', '2023-06-08 14:35:14.874000', '2023-06-17 08:26:48.000000', NULL, NULL),
(107, 'Elegant Rubber Glovesvol', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jbasil', 'Làm chết khoảng thích sáu năm. Gió khâu chìm phá. Tô núi đỏ mua độc tàu khoan em. Ghét ghét thuyền xuồng. Con bảy mây làm mây được chết núi thuyền.', 23678, '2023-06-08 14:35:14.882000', '2023-06-08 14:35:14.882000', '2023-06-17 08:26:48.000000', NULL, NULL),
(108, 'Bespoke Cotton Chairforce', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityextremist', 'Mướn lỗi thuê nghỉ. Thế may ờ. Bốn hóa đang.', 40814, '2023-06-08 14:35:14.890000', '2023-06-08 14:35:14.890000', '2023-06-17 08:26:48.000000', NULL, NULL),
(109, 'Rustic Fresh Ballmorphology', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartvolunteer', 'Gió ngọt gì gió trăng đỏ tui đánh tôi. Bảy quần núi đập nón ba đạp em giết. Á yêu á giày cái yêu nghỉ nha bàn chín.', 36854, '2023-06-08 14:35:14.898000', '2023-06-08 14:35:14.898000', '2023-06-17 08:26:48.000000', NULL, NULL),
(110, 'Awesome Granite Ballhazel', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivefencing', 'Bạn quần hai chỉ ờ. Giày gió vẽ. Cái cửa cái mướn một gió trời. Thế tô chín việc dép. Gió thuyền biết đỏ chín máy mua tủ may đâu. Mười giày khoan nón đâu mua ba.', 26318, '2023-06-08 14:35:14.906000', '2023-06-08 14:35:14.906000', '2023-06-17 08:26:48.000000', NULL, NULL),
(111, 'Rustic Wooden Chickentambourine', 'The Football Is Good For Training And Recreational Purposesenigma', 'Đập năm em anh. Hàng khâu đã tám nghỉ gió. Bè tui vàng. Bơi mây làm tủ vá đạp á em tô. Ngọt hết đồng mười làm bàn biết á. Xuồng mây hương tui.', 30666, '2023-06-08 14:35:14.913000', '2023-06-08 14:35:14.913000', '2023-06-17 08:26:48.000000', NULL, NULL),
(112, 'Gorgeous Steel Pantswithdrawal', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalseffectiveness', 'Gì viết chết việc núi phá. Cửa nước việc ba ruộng. Xanh nhà không áo ruộng là. Bè xuồng nhà xe. Việc bơi bốn tàu. Khoan ghét nước.', 30117, '2023-06-08 14:35:14.921000', '2023-06-08 14:35:14.921000', '2023-06-17 08:26:48.000000', NULL, NULL),
(113, 'Modern Soft Fishmemo', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclessunrise', 'Cửa thì thế biết tủ ba nghỉ biết vàng trăng. Thì thương nón mướn. Đạp làm quê trời tôi năm kim. Khâu ghế nha làm. Tui khoảng đỏ tàu bạn vàng.', 91631, '2023-06-08 14:35:14.928000', '2023-06-08 14:35:14.928000', '2023-06-17 08:26:48.000000', NULL, NULL),
(114, 'Elegant Soft Gloveswetland', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsclearing', 'Vẽ tám phá nha là chìm. Vàng gió may tô vàng tui ờ lầu thì trăng. Bốn đỏ hóa may bảy ghét hóa con hương. Năm viết đang giết đập khoảng khâu ruộng đồng giày. May bơi đâu xe. Tui đỏ leo núi quần thích không là.', 52356, '2023-06-08 14:35:14.937000', '2023-06-08 14:35:14.937000', '2023-06-17 08:26:48.000000', NULL, NULL),
(115, 'Refined Plastic Chipslibido', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitscreening', 'Năm kim tui. Ừ phá đạp chìm tủ thương. Mua tám bơi ờ tôi em tủ vàng. Máy bạn biển. Đá đang thuyền chìm vàng tám.', 83657, '2023-06-08 14:35:14.944000', '2023-06-08 14:35:14.944000', '2023-06-17 08:26:48.000000', NULL, NULL),
(116, 'Tasty Soft Pantsgenre', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016island', 'Giết viết bơi đánh trăng làm được biết em. Độc tàu lầu bảy nước dép mười giết hương. Khoan hàng đá thương quần em xe.', 92461, '2023-06-08 14:35:14.950000', '2023-06-08 14:35:14.950000', '2023-06-17 08:26:48.000000', NULL, NULL),
(117, 'Awesome Rubber Fishsousaphone', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclessparerib', 'Lầu hóa ruộng tôi thuê thích ừ giày cái. Sáu xe thuê cửa. Thuyền thương khoan tủ quê thích sáu khoan thế khâu. Không lỗi dép vẽ núi thì nón.', 90410, '2023-06-08 14:35:14.957000', '2023-06-08 14:35:14.957000', '2023-06-17 08:26:48.000000', NULL, NULL),
(118, 'Elegant Frozen Pizzamanipulation', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesdahlia', 'Ừ viết yêu khoảng anh bàn làm tui sáu. Đá ngọt khoảng năm bạn đập đánh tủ đã. Khoan đạp là ác yêu giày. Con ác em em chỉ hàng. Tô xanh thế cái năm.', 46739, '2023-06-08 14:35:14.966000', '2023-06-08 14:35:14.966000', '2023-06-17 08:26:48.000000', NULL, NULL),
(119, 'Handmade Granite Shoeswelcome', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsrubbish', 'Nón trời không tím máy. Ghế nghỉ nón dép vá đang. Đồng khoan ngọt ghế ờ khâu xanh.', 34414, '2023-06-08 14:35:14.974000', '2023-06-08 14:35:14.974000', '2023-06-17 08:26:48.000000', NULL, NULL),
(120, 'Awesome Rubber Chipscauseway', 'The Football Is Good For Training And Recreational Purposesshortage', 'Chín mướn máy kim lỗi cái nghỉ năm ruộng tủ. Anh tui vàng ghét ba đồng. Ghế thương giết giày thuyền thuê được.', 32679, '2023-06-08 14:35:14.982000', '2023-06-08 14:35:14.982000', '2023-06-17 08:26:48.000000', NULL, NULL),
(121, 'Small Soft Carasset', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016salami', 'Nước thì đạp mua hết đạp chết đã gió. Máy núi đạp là mua mướn nghỉ đâu hóa không. Bảy ừ thương thôi đạp. Bè tím thuê ghét được bốn. Tám đồng năm kim hóa gì núi. Chết biết giày.', 69712, '2023-06-08 14:35:14.991000', '2023-06-08 14:35:14.991000', '2023-06-17 08:26:48.000000', NULL, NULL),
(122, 'Bespoke Fresh Tablegranola', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitykiwi', 'Nha cái xe nón bàn vàng. Hương thôi bè may đập. Bơi bè bàn bàn. Độc thì sáu. Tám đang thích bơi khoan. Nhà xe yêu đâu.', 36680, '2023-06-08 14:51:22.041000', '2023-06-08 14:51:22.041000', '2023-06-17 08:26:48.000000', NULL, NULL),
(123, 'Fantastic Cotton Gloveskeep', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016hepatitis', 'Leo thôi ờ dép. Đâu xuồng vẽ đá ghét thích đạp. Cửa thuê ba đá ghế leo bảy thương đập khâu. Hết nhà ừ trăng. Tô hóa con trời. Hương đá bơi.', 95168, '2023-06-08 14:51:22.085000', '2023-06-08 14:51:22.085000', '2023-06-17 08:26:48.000000', NULL, NULL);
INSERT INTO `products` (`id`, `product_name`, `description`, `detail`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(124, 'Ergonomic Cotton Saladmale', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportkangaroo', 'Chết thuê khoảng leo tím tui trăng đâu tím mướn. Bạn bốn anh con. Đá thế tô thế trăng đã thế áo hóa chỉ. Đá đồng tím mười. Tô quê dép đã.', 42620, '2023-06-08 14:51:22.131000', '2023-06-08 14:51:22.131000', '2023-06-17 08:26:48.000000', NULL, NULL),
(125, 'Gorgeous Plastic Ballsyrup', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designbuck', 'Mây cửa hàng đá bè kim. Đánh mượn bàn hàng xanh tám ác chết mua. Khoảng đỏ độc vá. Hàng một mướn đánh. Ghét á vá mượn vẽ lỗi đâu. Tôi khoảng máy.', 80309, '2023-06-08 14:51:22.194000', '2023-06-08 14:51:22.194000', '2023-06-17 08:26:48.000000', NULL, NULL),
(126, 'Rustic Concrete Bacondissonance', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Joptimist', 'Hết bảy gì mướn biển trăng. Tủ trời mua độc mượn bè ghét. Gió thuyền quần thôi thuê chín quê bàn độc đã. Thôi cửa hai cửa quê việc đạp đánh. Khâu khoan không trời hai con quần ừ.', 62262, '2023-06-08 14:51:22.235000', '2023-06-08 14:51:22.235000', '2023-06-17 08:26:48.000000', NULL, NULL),
(127, 'Gorgeous Granite Shirtterrace', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityfanlight', 'Trời tàu thích nha. Giết xe hai trăng bảy. Bảy khâu trời chỉ ghét á lầu xuồng thích. Nhà bàn tàu nha lỗi dép leo tám bạn. Xe thuê cái leo giết một. Đã đạp quê bốn máy khâu viết gì khoan.', 24150, '2023-06-08 14:51:22.314000', '2023-06-08 14:51:22.314000', '2023-06-17 08:26:48.000000', NULL, NULL),
(128, 'Modern Wooden Ballflight', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesdevice', 'Đánh khâu tôi thôi vá hai làm. Tàu xuồng đang dép tàu bơi nón thích. Đồng bàn mua đỏ bè lầu phá ờ. Tàu năm ngọt viết sáu chỉ lỗi. Chỉ là đã đánh cửa leo không nhà tàu.', 27198, '2023-06-08 14:51:22.354000', '2023-06-08 14:51:22.354000', '2023-06-17 08:26:48.000000', NULL, NULL),
(129, 'Gorgeous Cotton Pizzafingernail', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016satellite', 'Quần trăng trăng xe lỗi thuyền. Là đánh thế dép chìm trăng thích. Chỉ tàu quần chết quần thôi lỗi khoảng chết thích.', 61918, '2023-06-08 14:51:22.442000', '2023-06-08 14:51:22.442000', '2023-06-17 08:26:48.000000', NULL, NULL),
(130, 'Refined Rubber Chickengander', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivesoy', 'Cửa đánh khoan mua việc sáu thôi leo con đã. Gió quần hàng con thuyền nha con hết quê nước. Hương giày tôi mây bàn mua ruộng.', 63732, '2023-06-08 14:51:22.468000', '2023-06-08 14:51:22.468000', '2023-06-17 08:26:48.000000', NULL, NULL),
(131, 'Fantastic Cotton Glovespriest', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designscallion', 'Vá ừ máy năm độc. Tím khoảng chìm nón vá đâu không không. Quê thì chín.', 58245, '2023-06-08 14:51:22.509000', '2023-06-08 14:51:22.509000', '2023-06-17 08:26:48.000000', NULL, NULL),
(132, 'Ergonomic Plastic Pizzacommon', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportdig', 'Đồng ruộng đánh đánh bốn. Trời bơi vá đánh tui may vàng. Hương giết con nước thế mây.', 23422, '2023-06-08 14:51:22.543000', '2023-06-08 14:51:22.543000', '2023-06-17 08:26:48.000000', NULL, NULL),
(133, 'Awesome Granite Ballathletics', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesicon', 'Phá không ghét tô áo chín đồng. Đồng ruộng áo khoan thì gió bàn. Bơi giết cái nhà khâu biết ba tôi cửa năm. Bốn hóa hàng đỏ chín quê.', 77933, '2023-06-08 14:51:22.597000', '2023-06-08 14:51:22.597000', '2023-06-17 08:26:48.000000', NULL, NULL),
(134, 'Fantastic Fresh Saladschizophrenic', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jgood', 'May kim làm bạn là một. Gì bốn quần em bè khâu. Tui núi cửa thương tám tui. Đồng quê làm nghỉ em biển.', 22694, '2023-06-08 14:51:22.605000', '2023-06-08 14:51:22.605000', '2023-06-17 08:26:48.000000', NULL, NULL),
(135, 'Rustic Cotton Tunaneighborhood', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalswarrant', 'Cửa tủ kim. Máy khoảng chìm tô giết may chín. Đập quê vá biển xanh ghét ngọt tủ mây đập. Lỗi thì đá bốn. Giết bè bàn tui ừ khâu tủ giày ghét.', 29159, '2023-06-08 14:51:22.614000', '2023-06-08 14:51:22.614000', '2023-06-17 08:26:48.000000', NULL, NULL),
(136, 'Luxurious Steel Fishhint', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsappeal', 'Bè đỏ yêu kim tím đồng được. Viết tô xanh bè được nước bạn. Gió may biết trăng. Ba thương bốn thương anh viết em giày quần. Đã trời gì thế xuồng mượn khâu vẽ ác trăng. Biển năm khâu vàng.', 76608, '2023-06-08 14:51:22.621000', '2023-06-08 14:51:22.621000', '2023-06-17 08:26:48.000000', NULL, NULL),
(137, 'Practical Frozen Cheesetweet', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsfiesta', 'Quần trời thích tui tô. Vẽ núi thôi tui xe ừ em làm ờ máy. Nón nón lỗi tám.', 41215, '2023-06-08 14:51:22.629000', '2023-06-08 14:51:22.629000', '2023-06-17 08:26:48.000000', NULL, NULL),
(138, 'Gorgeous Cotton Shoesthread', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designbegonia', 'Khoảng xanh chìm bè viết trời giết nhà hai. Ruộng tủ xanh độc tô thuê thì xe. Tàu vẽ giày gió cửa nha đồng đỏ trời. Cái trời ngọt vàng hóa. Xe thế không hóa sáu hương làm. Khâu biển lầu đâu bốn vẽ thuyền.', 72886, '2023-06-08 14:51:22.636000', '2023-06-08 14:51:22.636000', '2023-06-17 08:26:48.000000', NULL, NULL),
(139, 'Tasty Steel Pizzagrandchild', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityrethinking', 'Biết tám vẽ bảy vàng đã việc tím vàng. Ác con thế xanh biển. Chìm tôi cái mua quê ghế.', 40029, '2023-06-08 14:51:22.642000', '2023-06-08 14:51:22.642000', '2023-06-17 08:26:48.000000', NULL, NULL),
(140, 'Intelligent Bronze Soapspear', 'The Football Is Good For Training And Recreational Purposesglove', 'Tám quần ác là hết là hóa độc nha khâu. Không con làm đỏ bàn ba. Viết dép xanh bơi yêu. Chết sáu thích mướn bốn cửa em yêu. Tui chìm đập tám tám đỏ may vàng thích.', 92250, '2023-06-08 14:51:22.650000', '2023-06-08 14:51:22.650000', '2023-06-17 08:26:48.000000', NULL, NULL),
(141, 'Modern Granite Sausagesconsumption', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveparamecium', 'Chỉ mây thế. Mười mượn chỉ. Trăng hương đâu. Chìm là ngọt vàng đang trời mượn.', 82609, '2023-06-08 14:51:22.656000', '2023-06-08 14:51:22.656000', '2023-06-17 08:26:48.000000', NULL, NULL),
(142, 'Gorgeous Granite Computerfreezer', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitycomics', 'Khoan mượn cái mượn đỏ nón tím đã. Khâu tủ mướn đạp. Ừ trời ghét cửa hai. Hàng đạp xuồng tủ xuồng lỗi chết khoảng.', 54665, '2023-06-08 14:51:22.663000', '2023-06-08 14:51:22.663000', '2023-06-17 08:26:48.000000', NULL, NULL),
(143, 'Bespoke Granite Pantsschema', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityguest', 'Á sáu nha hàng khoảng ác cửa dép. Sáu hóa ngọt hương viết mượn núi bạn. May máy ờ trời ba vá giày thích giày. Vá xuồng nón độc cái vẽ quần thì tàu. Bốn làm đang phá. Kim hai trăng.', 51059, '2023-06-08 14:51:22.669000', '2023-06-08 14:51:22.669000', '2023-06-17 08:26:48.000000', NULL, NULL),
(144, 'Elegant Soft Tunawatcher', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitreading', 'Mười hóa thuyền ba xanh leo đâu bàn tím. Thế núi chìm mượn tô nước là. Ghét quê chìm. Hàng ghét nước mười sáu vẽ gió phá.', 64314, '2023-06-08 14:51:22.677000', '2023-06-08 14:51:22.677000', '2023-06-17 08:26:48.000000', NULL, NULL),
(145, 'Oriental Plastic Shoesstain', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designcrocus', 'Năm cửa gió thuyền cửa. Xe ác lỗi bơi bạn chết chín con khâu. Thôi máy nhà mượn xe xuồng khoan là. Ừ núi bè kim vẽ được hàng tôi khoảng. Năm tôi viết vá khâu gì.', 22325, '2023-06-08 14:51:22.684000', '2023-06-08 14:51:22.684000', '2023-06-17 08:26:48.000000', NULL, NULL),
(146, 'Small Fresh Tablemissile', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsdredger', 'Kim tôi hương được không. Việc nghỉ tám nghỉ chín. Vàng cái hóa bè khâu viết biển máy giết. Gió chìm hóa xe đá nghỉ. Việc tô áo năm chỉ ghế.', 69641, '2023-06-08 14:51:22.690000', '2023-06-08 14:51:22.690000', '2023-06-17 08:26:48.000000', NULL, NULL),
(147, 'Modern Rubber Hatspice', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientssea', 'Chỉ đỏ là bốn ghét một. Cái mua xanh hương tàu. Phá gió thích máy thế sáu đạp mượn tôi. Nón tám nước thôi.', 22013, '2023-06-08 14:51:22.702000', '2023-06-08 14:51:22.702000', '2023-06-17 08:26:48.000000', NULL, NULL),
(148, 'Sleek Rubber Balldefeat', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclescleft', 'Được ờ biết ác núi. May thích mượn hóa chín hàng được xuồng. Áo chỉ bạn. Yêu anh ghét vá tô lầu dép chìm kim. Ghế cửa dép dép đồng ruộng viết thôi. Viết gió thuyền là anh đập thì đạp phá.', 73592, '2023-06-08 14:51:22.708000', '2023-06-08 14:51:22.708000', '2023-06-17 08:26:48.000000', NULL, NULL),
(149, 'Luxurious Plastic Bacondensity', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jfall', 'Vàng mười đập quần đập là mua. Biển bơi bè hàng phá bè đạp làm hóa. Mười cửa chỉ. Không anh nha một quần tôi khoan đỏ.', 65374, '2023-06-08 14:51:22.714000', '2023-06-08 14:51:22.714000', '2023-06-17 08:26:48.000000', NULL, NULL),
(150, 'Luxurious Concrete Chairdirndl', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportassault', 'Chìm thì phá. Xuồng bơi độc gì hết mua tám hóa leo đâu. Đang biển khoan mười.', 25256, '2023-06-08 14:51:22.722000', '2023-06-08 14:51:22.722000', '2023-06-17 08:26:48.000000', NULL, NULL),
(151, 'Fantastic Concrete Saladpetition', 'The Football Is Good For Training And Recreational Purposespence', 'Bốn ghét tám chìm quê xuồng bạn ờ. Máy lầu xuồng. Trời tàu xanh phá xuồng.', 95813, '2023-06-08 14:51:22.728000', '2023-06-08 14:51:22.728000', '2023-06-17 08:26:48.000000', NULL, NULL),
(152, 'Modern Plastic Soapstart', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designsettlement', 'Con con giết may giày tui. Mua nha sáu độc lỗi tám áo là. May độc vẽ mượn giày kim đồng tím trời biết. Mượn biển bè giết yêu. Chìm núi máy.', 69817, '2023-06-17 07:46:55.183000', '2023-06-17 07:46:55.183000', '2023-06-17 08:26:48.000000', NULL, NULL),
(153, 'Small Fresh Ballmonger', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jmankind', 'Khâu độc đã chìm trăng thì chín giày giày tôi. Thích vàng ruộng khoan tủ xuồng đạp đỏ mướn vá. Kim tui máy.', 67218, '2023-06-17 07:46:55.193000', '2023-06-17 07:46:55.193000', '2023-06-17 08:26:48.000000', NULL, NULL),
(154, 'Generic Wooden Computergrab-bag', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartimport', 'Hương tủ khoảng nha năm biết ghế ba khoảng. Nha ừ trăng độc máy đánh được thuê núi viết. Hóa leo kim đã núi biết gió đánh ngọt. Leo thì tím thôi khâu. Năm khâu bàn mua đá may một bơi. Biết một đâu đập.', 25973, '2023-06-17 07:46:55.201000', '2023-06-17 07:46:55.201000', '2023-06-17 08:26:48.000000', NULL, NULL),
(155, 'Sleek Bronze Towelsclassic', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveworth', 'Núi chìm thuê sáu thuê. Nghỉ khâu mướn quê đâu làm mua ruộng chìm vàng. Gì bảy ác. Là ba ruộng lầu dép may quần thế giết xe. Một nghỉ thế thuyền tô lầu gió hóa đang nước.', 85909, '2023-06-17 07:46:55.211000', '2023-06-17 07:46:55.211000', '2023-06-17 08:26:48.000000', NULL, NULL),
(156, 'Practical Cotton Bikeabolishment', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartton', 'Bốn thế cái đang thuê chín. Giày được gì yêu tám leo. Giày ngọt đạp biển thuyền giày tô tím thế núi. Cửa kim thương trời nha xanh vá độc tám. Bảy không nước áo bảy ghế phá thôi làm thế. Độc thì khoảng khoan anh đã kim con.', 73506, '2023-06-17 07:46:55.219000', '2023-06-17 07:46:55.219000', '2023-06-17 08:26:48.000000', NULL, NULL),
(157, 'Unbranded Cotton Shoesprogram', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesscissors', 'Sáu cửa thích ừ. Viết mười hết biển hàng. Quần leo đạp vẽ bơi kim núi ba.', 52962, '2023-06-17 07:46:55.228000', '2023-06-17 07:46:55.228000', '2023-06-17 08:26:48.000000', NULL, NULL),
(158, 'Ergonomic Concrete Ballattic', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jshield', 'Đạp phá năm nón tám đạp đá gì đã mướn. Leo yêu chín bàn. Chỉ ba gì xanh mười. Chìm ghét đã dép ghế đã á em vàng. Bảy dép dép bảy.', 25033, '2023-06-17 07:46:55.235000', '2023-06-17 07:46:55.235000', '2023-06-17 08:26:48.000000', NULL, NULL),
(159, 'Oriental Granite Towelswarlock', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016accordance', 'Mướn viết khoan hương lầu. Được hai lầu đang đã. Ác may ba khoan bạn kim chỉ cái. Chìm biển nón thì vẽ. Thế tủ tôi tôi.', 71542, '2023-06-17 07:46:55.242000', '2023-06-17 07:46:55.242000', '2023-06-17 08:26:48.000000', NULL, NULL),
(160, 'Incredible Steel Pizzasaving', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityvulture', 'Đồng bơi thuyền. Đập ờ đâu lầu mua xanh sáu trăng chết ghế. Bạn nón lỗi ghét mười ghét ờ thuyền năm hết. Ừ tám phá cửa bảy bạn nhà. Giày biển tôi con được leo.', 56372, '2023-06-17 07:46:55.249000', '2023-06-17 07:46:55.249000', '2023-06-17 08:26:48.000000', NULL, NULL),
(161, 'Refined Rubber Hatnymph', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jdeveloper', 'Bơi tui tôi ác hàng kim là đã. Mượn mây viết xanh bốn tô bàn tám ác chỉ. Ba chỉ nón đã đánh em viết thích ờ ờ. Khoan đang ờ ờ đánh vẽ mây.', 54583, '2023-06-17 07:46:55.257000', '2023-06-17 07:46:55.257000', '2023-06-17 08:26:48.000000', NULL, NULL),
(162, 'Unbranded Frozen Chipseardrum', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientssurvival', 'Giày là may tủ được ngọt thương bàn tui mười. Giết cái năm được thích tám không. Giết gì thuê ruộng bè giết mượn giết hết.', 78192, '2023-06-17 07:46:55.265000', '2023-06-17 07:46:55.265000', '2023-06-17 08:26:48.000000', NULL, NULL),
(163, 'Elegant Plastic Shoesoboe', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jminute', 'Vàng ruộng thôi độc á hết đỏ thì mướn. Ba đồng biển gì ghét vẽ là ruộng biết. Chỉ quê khâu đâu việc anh một tô. Bốn quần xuồng chìm đồng được. Khoan độc tui thôi việc ác tô.', 70581, '2023-06-17 07:46:55.273000', '2023-06-17 07:46:55.273000', '2023-06-17 08:26:48.000000', NULL, NULL),
(164, 'Intelligent Plastic Shoesregistration', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclestourism', 'Mượn thương giết trời vẽ tui con tô thuyền. Là may thế đập được vẽ ruộng tám khâu. Giết leo mượn tôi áo đá khoảng thôi xe.', 67325, '2023-06-17 07:46:55.281000', '2023-06-17 07:46:55.281000', '2023-06-17 08:26:48.000000', NULL, NULL),
(165, 'Intelligent Wooden Sausagesvictim', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016proposal', 'Bạn anh là đồng viết bơi tám đập. Độc áo đập đập. Đỏ tám phá không. Biết leo trời tui giết nghỉ bạn. Tủ nha tô ghế thương mây kim nón. Quê may ba hết quần hết.', 87136, '2023-06-17 07:46:55.288000', '2023-06-17 07:46:55.288000', '2023-06-17 08:26:48.000000', NULL, NULL),
(166, 'Sleek Cotton Cheeseimpudence', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesbutcher', 'Tô tàu hàng đánh áo không đã xe tím đánh. Nhà mua mượn. Đồng hóa máy.', 29038, '2023-06-17 07:46:55.295000', '2023-06-17 07:46:55.295000', '2023-06-17 08:26:48.000000', NULL, NULL),
(167, 'Rustic Concrete Soapgradient', 'The Football Is Good For Training And Recreational Purposespennant', 'Cái nghỉ độc ghét thuyền viết hai không thì phá. Một nón biết đã ờ thuyền anh. Giày gió viết cái gió năm viết chìm anh. Trời ác yêu xe viết lỗi mua nghỉ đồng. Viết khoảng may giết.', 79476, '2023-06-17 07:46:55.302000', '2023-06-17 07:46:55.302000', '2023-06-17 08:26:48.000000', NULL, NULL),
(168, 'Recycled Metal Ballvest', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclessniffle', 'Vẽ mướn núi bàn ghét ờ bốn phá. Hai mướn năm mua giày gió mười đánh vàng hương. Một chỉ khâu bơi chìm đá vàng giày ghét. Ác ờ chết trời năm tôi hết tủ thương quần. Việc làm tím phá vẽ xanh độc bơi mây ruộng.', 37617, '2023-06-17 07:46:55.309000', '2023-06-17 07:46:55.309000', '2023-06-17 08:26:48.000000', NULL, NULL),
(169, 'Modern Bronze Saladsquare', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalslyre', 'Vàng không tím đồng vàng chết nước không yêu. Khoan năm chín. Biết vẽ làm giày gió mây thế mua giày một. Viết quần thuyền. Mua áo chìm bảy vá trời yêu. Nha đỏ phá tui gì nghỉ đâu.', 46454, '2023-06-17 07:46:55.317000', '2023-06-17 07:46:55.317000', '2023-06-17 08:26:48.000000', NULL, NULL),
(170, 'Fantastic Frozen Sausagestemporariness', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivephrase', 'Trời bảy xe. Ngọt mười đâu. Lầu mây khâu anh ngọt ác vẽ.', 40484, '2023-06-17 07:46:55.325000', '2023-06-17 07:46:55.325000', '2023-06-17 08:26:48.000000', NULL, NULL),
(171, 'Elegant Steel Tunaelimination', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitrequirement', 'Đánh ác tủ hàng vẽ đạp vẽ nón biết dép. Xe xuồng cửa chỉ năm là. Thì đã ba ghét ờ đá.', 71930, '2023-06-17 07:46:55.332000', '2023-06-17 07:46:55.332000', '2023-06-17 08:26:48.000000', NULL, NULL),
(172, 'Refined Frozen Pantsmuffin', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclestrial', 'Áo đâu máy giày thuê ba tủ tô leo á. Trời cái là tôi leo khâu ba đánh thương hết. May việc cái hết hết thôi đang hàng quần hai. Không thích nhà em khâu. Chỉ tám thôi hai. Hàng là gió quần ừ gió xuồng giày hết chín.', 38498, '2023-06-17 07:46:55.339000', '2023-06-17 07:46:55.339000', '2023-06-17 08:26:48.000000', NULL, NULL),
(173, 'Rustic Wooden Carleaker', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016bull', 'Chìm đá hết nha lầu. May chín dép anh việc núi. Bạn áo lỗi độc.', 74638, '2023-06-17 07:46:55.346000', '2023-06-17 07:46:55.346000', '2023-06-17 08:26:48.000000', NULL, NULL),
(174, 'Awesome Plastic Shirtoats', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supporthedge', 'Thuê đâu ờ may. Con một chín ừ. Núi khâu máy mượn tủ thôi leo. Được bàn giết. Năm bè tám thương á xe thuê. Gió tô leo tô vá việc đạp nha.', 25236, '2023-06-17 07:46:55.352000', '2023-06-17 07:46:55.352000', '2023-06-17 08:26:48.000000', NULL, NULL),
(175, 'Recycled Frozen Mouseenclave', 'The Football Is Good For Training And Recreational Purposesdig', 'Hàng tui đâu hàng. Quê là anh nghỉ ruộng. Thế thuyền nước mướn mướn quần tôi mướn xuồng áo. Áo ghét đập.', 66890, '2023-06-17 07:46:55.359000', '2023-06-17 07:46:55.359000', '2023-06-17 08:26:48.000000', NULL, NULL),
(176, 'Rustic Frozen Carsignify', 'The Football Is Good For Training And Recreational Purposesguess', 'Thương mười á ác tím mây. Bảy hết lầu trời khoảng xuồng. Tôi làm tàu. Là thuê mây dép nón tím. Cái làm biển vá ghế. Ngọt bàn đạp chìm đang đang đồng mười tủ.', 51176, '2023-06-17 07:46:55.368000', '2023-06-17 07:46:55.368000', '2023-06-17 08:26:48.000000', NULL, NULL),
(177, 'Ergonomic Rubber Computerreminder', 'The Football Is Good For Training And Recreational Purposesairmail', 'Cửa em hàng tôi mua chỉ. Biển ruộng chìm tàu đập ừ hương đá. Thuyền lỗi hai ờ nha cái. Bè độc việc thuyền nha xanh chìm đánh.', 27830, '2023-06-17 07:46:55.375000', '2023-06-17 07:46:55.375000', '2023-06-17 08:26:48.000000', NULL, NULL),
(178, 'Handmade Metal Mouseanteater', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designimpress', 'Quần thuyền khoảng giết sáu thì đâu ghế tủ. Thích đánh ngọt ừ. Quê nhà bàn. Vàng tủ đạp bàn thuê thương không.', 39184, '2023-06-17 07:46:55.382000', '2023-06-17 07:46:55.382000', '2023-06-17 08:26:48.000000', NULL, NULL),
(179, 'Sleek Wooden Tunawildlife', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jcupboard', 'Dép ừ con ghế. Máy mây ác mây tô tím ghét bạn năm. Việc đá hàng. Bốn nghỉ mây chín chìm mua nghỉ nha.', 27835, '2023-06-17 07:46:55.388000', '2023-06-17 07:46:55.388000', '2023-06-17 08:26:48.000000', NULL, NULL),
(180, 'Incredible Granite Towelspsychologist', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand aparteel', 'Vẽ em ghế vá. Tám giày tám chết chết tô khoan. Máy nước máy may thương gió. Bốn đạp hương khoảng ruộng đâu mây một.', 84885, '2023-06-17 07:46:55.395000', '2023-06-17 07:46:55.395000', '2023-06-17 08:26:48.000000', NULL, NULL),
(181, 'Practical Plastic Cargradient', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand aparttriangle', 'Ruộng gì xe áo hết. Giày đập tủ mây bơi. Thôi sáu bè không phá biển bảy núi. Bàn là đâu xe.', 49650, '2023-06-17 07:46:55.401000', '2023-06-17 07:46:55.401000', '2023-06-17 08:26:48.000000', NULL, NULL),
(182, 'Licensed Bronze Shirtexhibition', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitypressurisation', 'Ừ chín đạp phá đồng. Thuê được máy độc làm sáu phá. Nước không năm. Đã thì leo.', 33629, '2023-06-17 07:53:32.558000', '2023-06-17 07:53:32.558000', '2023-06-17 08:26:48.000000', NULL, NULL),
(183, 'Sleek Rubber Tunafireplace', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitygraduate', 'Thế mua một mượn xuồng đạp con. Tủ áo chết đồng hóa ừ hóa giày. Chỉ ờ yêu mây bơi. Chín đang một ghế vá. Năm chìm xe yêu. Mười hai khâu làm núi tím anh.', 75495, '2023-06-17 07:53:32.568000', '2023-06-17 07:53:32.568000', '2023-06-17 08:26:48.000000', NULL, NULL),
(184, 'Unbranded Fresh Carburst', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscleswife', 'Thế hàng cửa kim lỗi cái giết. Ác bảy là anh. Phá quần thì đâu. Ghế kim bốn nón xuồng phá ờ. Bảy biển mua.', 56130, '2023-06-17 07:53:32.575000', '2023-06-17 07:53:32.575000', '2023-06-17 08:26:48.000000', NULL, NULL),
(185, 'Intelligent Granite Cargrasshopper', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designpolitics', 'Xanh thích viết nghỉ leo núi. Quần tàu xuồng hết xe núi lỗi xuồng vàng. Dép dép kim tàu không may thôi bảy tám chết. Chìm xuồng bốn thương gió mười biển ờ. Thì dép ờ trăng tám.', 32813, '2023-06-17 07:53:32.585000', '2023-06-17 07:53:32.585000', '2023-06-17 08:26:48.000000', NULL, NULL),
(186, 'Handmade Concrete Ballqualification', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designcrest', 'Nghỉ không đỏ may tủ em em bốn khoảng em. Giết chín bè khoảng nón nhà xe. Biết được xe.', 34782, '2023-06-17 07:53:32.592000', '2023-06-17 07:53:32.592000', '2023-06-17 08:26:48.000000', NULL, NULL),
(187, 'Practical Bronze Mousepheromone', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsbonus', 'Tui là gió hai nghỉ khoảng quần em. Hai vá ghét cái giày tủ nước mây. Hai sáu bàn nha đã mây nghỉ chết. Quê nước bàn tím đỏ máy hương.', 67442, '2023-06-17 07:53:32.599000', '2023-06-17 07:53:32.599000', '2023-06-17 08:26:48.000000', NULL, NULL),
(188, 'Licensed Plastic Fishchecking', 'The Football Is Good For Training And Recreational Purposesdoorpost', 'Bạn chín cửa lầu năm giết nước lầu việc. Bè giết gì đập tím chỉ quần. Thôi đang cửa. Ba vá chỉ một chết đồng tím đá. Yêu may nón bơi cửa tui. Ruộng ngọt hai á thôi.', 46688, '2023-06-17 07:53:32.606000', '2023-06-17 07:53:32.606000', '2023-06-17 08:26:48.000000', NULL, NULL),
(189, 'Modern Concrete Mouseheadrest', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesmaple', 'Là mượn thích hóa mây thuê. Biết tám chín á xe bè anh khoan xe. Đâu hóa xuồng.', 28660, '2023-06-17 07:53:32.614000', '2023-06-17 07:53:32.614000', '2023-06-17 08:26:48.000000', NULL, NULL),
(190, 'Bespoke Cotton Tunasensibility', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityparliament', 'Chìm ừ tủ. Được hết đỏ không đá hương đánh là. Nghỉ lỗi vẽ nghỉ mây chỉ anh mượn việc viết.', 26446, '2023-06-17 07:53:32.622000', '2023-06-17 07:53:32.622000', '2023-06-17 08:26:48.000000', NULL, NULL),
(191, 'Recycled Plastic Keyboardeditor', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designkeeper', 'Hai tui leo vàng. Là ruộng thuê không chết nha ngọt ác độc. Nón hết ngọt đang thương lỗi.', 45894, '2023-06-17 07:53:32.633000', '2023-06-17 07:53:32.633000', '2023-06-17 08:26:48.000000', NULL, NULL),
(192, 'Generic Metal Hatnecessity', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsdirector', 'Đã bàn tui. Hóa hương thương tô sáu việc. Đập trời cái bảy phá ruộng giết em thuê. Lỗi thương bốn. Thuyền ngọt ghét bè. May yêu mây gì xanh may yêu.', 89549, '2023-06-17 07:53:32.643000', '2023-06-17 07:53:32.643000', '2023-06-17 08:26:48.000000', NULL, NULL),
(193, 'Fantastic Plastic Tunalight', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jweapon', 'May thì giày. Quần trăng làm ừ đâu đạp hai. Tôi mượn mượn nhà bè leo năm làm. Ờ cửa tím giết yêu chín biển.', 39889, '2023-06-17 07:53:32.653000', '2023-06-17 07:53:32.653000', '2023-06-17 08:26:48.000000', NULL, NULL),
(194, 'Oriental Cotton Shoesterminology', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsyoungster', 'Hết gì khâu trăng. Nước nón vẽ. Thương khâu biển mười vẽ đạp vẽ vàng năm.', 25458, '2023-06-17 07:53:32.661000', '2023-06-17 07:53:32.661000', '2023-06-17 08:26:48.000000', NULL, NULL),
(195, 'Fantastic Cotton Pizzaepisode', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartbandolier', 'Vá đã biển độc một. Làm hóa ruộng mười khoảng con. Một nước được tàu nha. Tô tô tủ mười hóa quần bàn đạp. Khâu thì thì hương. Ừ mười cái con ừ giết hàng mua không.', 41070, '2023-06-17 07:53:32.668000', '2023-06-17 07:53:32.668000', '2023-06-17 08:26:48.000000', NULL, NULL),
(196, 'Handmade Plastic Towelsinhibition', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016abnormality', 'Hương khâu vá. May chìm trời em xuồng trăng được một chỉ. Đâu ừ núi là gió mượn sáu. Giày là tàu hàng cái.', 75058, '2023-06-17 07:53:32.675000', '2023-06-17 07:53:32.675000', '2023-06-17 08:26:48.000000', NULL, NULL),
(197, 'Rustic Soft Chipsinquiry', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jdark', 'Đang giày hàng trăng áo. Vẽ đồng ác nha. Đồng đâu khâu biết quần.', 91511, '2023-06-17 07:53:32.683000', '2023-06-17 07:53:32.683000', '2023-06-17 08:26:48.000000', NULL, NULL),
(198, 'Practical Rubber Pantsfailure', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsvictim', 'Khâu con tô ừ lầu tui khâu. Chín cửa đỏ ờ. Mượn đỏ trăng nha việc ba.', 66309, '2023-06-17 07:53:32.689000', '2023-06-17 07:53:32.689000', '2023-06-17 08:26:48.000000', NULL, NULL),
(199, 'Awesome Concrete Baconsum', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportskullduggery', 'Bơi ờ kim viết tám được là đá. Làm núi ác leo tủ độc. Gì không tám đồng. Tô là leo cửa bàn. Đâu á hương mướn được cửa ờ bạn.', 58999, '2023-06-17 07:53:32.697000', '2023-06-17 07:53:32.697000', '2023-06-17 08:26:48.000000', NULL, NULL),
(200, 'Ergonomic Granite Chickenvitality', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designtransom', 'Thì ờ mười yêu á. Khoan mướn tám thôi anh máy quê. Đánh anh áo bảy biết mua là. Ba tủ ghế. Vàng may tủ ờ thích lỗi mua chỉ. Vẽ tô chín độc biết bè.', 90899, '2023-06-17 07:53:32.706000', '2023-06-17 07:53:32.706000', '2023-06-17 08:26:48.000000', NULL, NULL),
(201, 'Awesome Granite Fishsponge', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitystepping-stone', 'Lầu là lỗi giết đập. Đồng ừ trời làm thế thuê. Đá đánh á quần bốn nha. Độc là dép tôi chết. Xe thuê bạn đỏ. Anh nha hai biển.', 82360, '2023-06-17 07:53:32.713000', '2023-06-17 07:53:32.713000', '2023-06-17 08:26:48.000000', NULL, NULL),
(202, 'Rustic Fresh Cheesegram', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016alliance', 'Trời tô là. Gì đang ruộng mười biển kim ngọt phá núi ngọt. Trời đạp biển giết anh lỗi.', 79943, '2023-06-17 07:53:32.720000', '2023-06-17 07:53:32.720000', '2023-06-17 08:26:48.000000', NULL, NULL),
(203, 'Intelligent Plastic Chairgeek', 'The Football Is Good For Training And Recreational Purposesdecryption', 'Độc mượn thôi chìm chìm việc bàn ngọt. Được hết cửa chỉ. Đập anh hương viết viết tôi bàn tui nước việc. Tám chìm ngọt đồng mười em đạp ờ. Tô khoảng ba em. Mượn biết vẽ đâu.', 23566, '2023-06-17 07:53:32.728000', '2023-06-17 07:53:32.728000', '2023-06-17 08:26:48.000000', NULL, NULL),
(204, 'Luxurious Cotton Fishgigantism', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016agenda', 'Yêu tôi đạp. Anh tủ thích ờ. Vá đánh hai khâu ghét vàng.', 52812, '2023-06-17 07:53:32.735000', '2023-06-17 07:53:32.735000', '2023-06-17 08:26:48.000000', NULL, NULL),
(205, 'Tasty Metal Tunadistrict', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesrecreation', 'Máy đã đồng đâu mua ác dép đánh. Việc khoảng ác giày giết yêu. Ngọt xuồng mây. Nha hai á nón nghỉ bè quê. Hóa dép thương xanh ba xanh giày phá thì. Xuồng hàng bè núi trời trời ruộng quần bơi.', 55798, '2023-06-17 07:53:32.742000', '2023-06-17 07:53:32.742000', '2023-06-17 08:26:48.000000', NULL, NULL),
(206, 'Sleek Steel Balltremor', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitfrock', 'Đá thôi đâu hai chỉ bè bảy. Thế bạn em trời đỏ anh kim ừ. Xanh trăng bốn chỉ nha cái chết ruộng là.', 60257, '2023-06-17 07:53:32.749000', '2023-06-17 07:53:32.749000', '2023-06-17 08:26:48.000000', NULL, NULL),
(207, 'Refined Fresh Glovesbanker', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartbreakdown', 'Ruộng biết nước chết việc đánh trăng vẽ anh ba. Yêu đồng thế vá cái thế khoan. Xuồng khoảng việc yêu thế may việc ừ thì. Áo khâu bàn mượn tôi. Độc năm hương trăng biển áo nước đồng.', 84838, '2023-06-17 07:53:32.756000', '2023-06-17 07:53:32.756000', '2023-06-17 08:26:48.000000', NULL, NULL),
(208, 'Sleek Wooden Baconyin', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartgrid', 'Hóa độc gió là tui. Giày mua được thuyền đỏ khoảng xe. Ờ tám giết tàu. Kim tím bốn cửa xe chín thuê.', 88469, '2023-06-17 07:53:32.762000', '2023-06-17 07:53:32.762000', '2023-06-17 08:26:48.000000', NULL, NULL),
(209, 'Elegant Soft Bikepony', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jheating', 'Ruộng núi hương tui thì hàng kim ruộng đánh vá. Khoan nhà quần anh một cái. Biển tàu thuê tô đá xuồng.', 43867, '2023-06-17 07:53:32.768000', '2023-06-17 07:53:32.768000', '2023-06-17 08:26:48.000000', NULL, NULL),
(210, 'Handmade Frozen Bikecount', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designbreadfruit', 'Đạp năm nghỉ hàng thuyền chỉ. Khoảng bạn tím khâu vàng anh quần đỏ là đã. Tô nước cái ờ biển ghế cửa ghế lầu ba. Mua vẽ á thuyền áo bạn quần không ngọt gì. Yêu ghét đánh hai khâu ác.', 65102, '2023-06-17 07:53:32.775000', '2023-06-17 07:53:32.775000', '2023-06-17 08:26:48.000000', NULL, NULL),
(211, 'Modern Metal Shoesobjective', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitknee', 'Áo bơi chết. Đâu thương núi máy. Gió gì hai tô làm nón thích hóa nhà.', 83296, '2023-06-17 07:53:32.782000', '2023-06-17 07:53:32.782000', '2023-06-17 08:26:48.000000', NULL, NULL),
(212, 'Fantastic Frozen Bikecoupon', 'The Football Is Good For Training And Recreational Purposescolloquy', 'Cửa khoảng thuê ờ đạp năm thương giết tôi. Thuê khoan chìm mây. Dép đập mua mướn cái năm. Giết gì bơi nha cái. Phá dép vá phá độc ngọt bốn đá không nón.', 64590, '2023-06-17 07:54:05.791000', '2023-06-17 07:54:05.791000', '2023-06-17 08:26:48.000000', NULL, NULL),
(213, 'Generic Steel Ballchemotaxis', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesfeeling', 'Chín hàng xe nhà cái thương. Khoảng bơi ờ tám viết chỉ á bạn. Núi ác ừ mượn cửa giết. Cái ừ dép đánh lầu quần.', 93923, '2023-06-17 07:54:05.799000', '2023-06-17 07:54:05.799000', '2023-06-17 08:26:48.000000', NULL, NULL),
(214, 'Incredible Rubber Shirtheel', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartcrusader', 'Chín biển may thuyền. Khoảng cửa việc tủ xuồng nón. Xuồng không cửa ác may bảy yêu. Năm chỉ bảy giày chín viết hàng em ba vá. Tui mua hai hết bè. Giày đồng bạn quê làm.', 49024, '2023-06-17 07:54:05.806000', '2023-06-17 07:54:05.806000', '2023-06-17 08:26:48.000000', NULL, NULL),
(215, 'Sleek Rubber Bacondrum', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jsupernatural', 'Ừ nha tô chỉ nhà. Bơi chìm đang khoảng con ừ. Ngọt mượn mười viết ba xanh khoảng quần giày biển. Quê máy núi ghét.', 89196, '2023-06-17 07:54:05.812000', '2023-06-17 07:54:05.812000', '2023-06-17 08:26:48.000000', NULL, NULL),
(216, 'Tasty Concrete Baconroad', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartinfarction', 'Máy tôi nghỉ may độc may nha. Ghét hương lỗi hai hàng hàng. Nước ruộng ruộng ba năm mua thôi.', 38579, '2023-06-17 07:54:05.820000', '2023-06-17 07:54:05.820000', '2023-06-17 08:26:48.000000', NULL, NULL),
(217, 'Generic Steel Chickenbunkhouse', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsleaf', 'Ừ chết thôi chỉ thuê lầu bảy ghế trăng tôi. Ác mây bốn tám trăng leo con ghét tủ ừ. Một chín trăng hương thuyền tui. Em tủ hết chìm. Chỉ dép chỉ khoan xanh viết.', 66672, '2023-06-17 07:54:05.827000', '2023-06-17 07:54:05.827000', '2023-06-17 08:26:48.000000', NULL, NULL),
(218, 'Oriental Metal Towelsinventory', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016chairlift', 'Ờ nghỉ bảy leo ờ phá được bè. Leo hóa tô chết. Giết kim áo xe hương viết nhà. Gì làm đã tủ độc khoảng chìm. Cái đang ừ chết núi.', 46354, '2023-06-17 07:54:05.834000', '2023-06-17 07:54:05.834000', '2023-06-17 08:26:48.000000', NULL, NULL),
(219, 'Ergonomic Cotton Tunaeffacement', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityseabass', 'Hai bàn máy mua nha gió nha gió một ừ. Tủ tôi ba núi. Máy vẽ khâu đánh. Mua một hàng quê đá đỏ đâu yêu hai núi.', 77284, '2023-06-17 07:54:05.842000', '2023-06-17 07:54:05.842000', '2023-06-17 08:26:48.000000', NULL, NULL),
(220, 'Handcrafted Fresh Saladstag', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designyam', 'Thôi mua thích ba. Quê ngọt yêu nước phá đang một. Đồng anh gì ừ bàn thì ghế mượn. Hai tủ giết đánh hàng hàng leo biết em. Nha em gió. Quê cái biết tàu cửa vẽ đập ghét.', 77507, '2023-06-17 07:54:05.850000', '2023-06-17 07:54:05.850000', '2023-06-17 08:26:48.000000', NULL, NULL),
(221, 'Modern Metal Hatporthole', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportarmour', 'Ừ hàng mười hai làm vá đánh núi hương thích. Độc đã hai chìm bàn. Vá cửa một tô khâu mướn. Giày hóa ờ cái thương mây tôi mười nghỉ tôi. Máy đỏ tô năm.', 65408, '2023-06-17 07:54:05.858000', '2023-06-17 07:54:05.858000', '2023-06-17 08:26:48.000000', NULL, NULL),
(222, 'Intelligent Fresh Computerwin', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitwind-chime', 'Đang bạn lầu mướn. Đỏ tui bè hương ba mười thương. Vá không bảy chỉ yêu bàn đang.', 75537, '2023-06-17 07:54:05.864000', '2023-06-17 07:54:05.864000', '2023-06-17 08:26:48.000000', NULL, NULL),
(223, 'Incredible Metal Chickencausal', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designdioxide', 'Kim giết bơi. Dép đá ờ tô. Xanh viết đâu thôi nghỉ sáu thuyền độc chín ác. Hàng ghét vàng con gì tủ. Vàng đập tui.', 73086, '2023-06-17 07:54:05.871000', '2023-06-17 07:54:05.871000', '2023-06-17 08:26:48.000000', NULL, NULL),
(224, 'Small Plastic Pantsspork', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitsuccess', 'Bảy núi dép. Hết mười đỏ phá. Kim mượn vá tám gió. Mây ghét đã trăng chết nhà thôi ghét ờ hai. Anh bạn chín. Tám đã tàu xe leo khâu tôi vá.', 43093, '2023-06-17 07:54:05.878000', '2023-06-17 07:54:05.878000', '2023-06-17 08:26:48.000000', NULL, NULL),
(225, 'Generic Fresh Biketop-hat', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsfall', 'Nhà bảy tôi tui ba. Yêu hàng thích không đồng ờ biết khoan. Leo đồng ờ vá phá xe giày ác kim. Đồng một vá thuyền sáu.', 78256, '2023-06-17 07:54:05.884000', '2023-06-17 07:54:05.884000', '2023-06-17 08:26:48.000000', NULL, NULL),
(226, 'Gorgeous Cotton Fishrailroad', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jmonocle', 'Thuyền mượn đâu. Hóa phá bảy. Áo kim mua nhà khoảng không đồng. Trăng tủ ghét thì trời ghét đỏ xuồng đâu giày.', 59914, '2023-06-17 07:54:05.892000', '2023-06-17 07:54:05.892000', '2023-06-17 08:26:48.000000', NULL, NULL),
(227, 'Licensed Granite Tablestinger', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivevinyl', 'Chỉ quần yêu nghỉ chìm nha. Đã giết nhà. Tôi bảy đánh bơi mướn.', 85186, '2023-06-17 07:54:05.899000', '2023-06-17 07:54:05.899000', '2023-06-17 08:26:48.000000', NULL, NULL),
(228, 'Gorgeous Rubber Chickenshutdown', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartstraw', 'Thương độc giết nón xanh. Mười chìm ruộng đâu bè thôi giết thế. Dép sáu mua nón đâu thuyền không. Ruộng nghỉ chết. Vá mây thương nước anh làm đập ghế lầu.', 25956, '2023-06-17 07:54:05.906000', '2023-06-17 07:54:05.906000', '2023-06-17 08:26:48.000000', NULL, NULL),
(229, 'Bespoke Granite Cheeseinformation', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveincubation', 'Mây xuồng nón lỗi là cửa ghế khoan thì viết. Máy hàng ba á áo nhà việc trăng. Núi đỏ tím hàng bạn năm. Tui xanh cái thì lầu thế kim khoảng tui. Đỏ viết ác là ruộng gió biết.', 67324, '2023-06-17 07:54:05.913000', '2023-06-17 07:54:05.913000', '2023-06-17 08:26:48.000000', NULL, NULL),
(230, 'Sleek Bronze Baconspectrum', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityoutlay', 'Lầu tím gió thôi lỗi không ừ năm. Vàng vàng mượn đồng thuê sáu bảy ghế. Tui hai lầu thì ruộng leo núi đồng. Nghỉ chỉ đánh. Thuê mượn thương nhà hết gió quê nón làm.', 57413, '2023-06-17 07:54:05.920000', '2023-06-17 07:54:05.920000', '2023-06-17 08:26:48.000000', NULL, NULL),
(231, 'Luxurious Wooden Mouseelicit', 'The Football Is Good For Training And Recreational Purposesgravitas', 'Tím thế mây đâu tô. Đâu hết hết núi áo. Đập một vàng tôi vá gió độc tám.', 35383, '2023-06-17 07:54:05.927000', '2023-06-17 07:54:05.927000', '2023-06-17 08:26:48.000000', NULL, NULL),
(232, 'Generic Bronze Hatdonkey', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityheifer', 'Biết quê tím. Yêu năm thế phá ừ năm. Nghỉ nhà yêu hương ghét thế.', 71665, '2023-06-17 07:54:05.934000', '2023-06-17 07:54:05.934000', '2023-06-17 08:26:48.000000', NULL, NULL),
(233, 'Refined Metal Shoeswalkway', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivefisting', 'Xe quần chìm. Tím mướn đá giết ừ tôi là. Cửa đồng vẽ. Quần áo đồng tám gió hai thuyền mười bạn con. Hóa dép đập đỏ.', 77087, '2023-06-17 07:54:05.941000', '2023-06-17 07:54:05.941000', '2023-06-17 08:26:48.000000', NULL, NULL),
(234, 'Intelligent Cotton Shirtseafood', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016strength', 'Là đã đỏ đã bảy xe máy lầu. Không bảy việc bạn được ghét em hóa. Xuồng con đâu bè thích tím làm ghế.', 70218, '2023-06-17 07:54:05.947000', '2023-06-17 07:54:05.947000', '2023-06-17 08:26:48.000000', NULL, NULL),
(235, 'Sleek Plastic Baconchimpanzee', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientspsychologist', 'Chìm cái đỏ khâu chỉ quần nhà. Yêu biết tàu đã là mượn bốn. Núi hương là á anh. Nón leo ngọt bốn nón vàng. Ngọt bàn quê.', 73979, '2023-06-17 07:54:05.954000', '2023-06-17 07:54:05.954000', '2023-06-17 08:26:48.000000', NULL, NULL),
(236, 'Modern Wooden Sausagesboom', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jphrasing', 'Tui độc một may tôi vá mây. Ừ biển thôi nón quê giày lầu tui cửa. Khâu tui trăng. Khâu được đang. Là yêu tủ đồng nha vá một đỏ. Xe không xuồng cửa nghỉ.', 45179, '2023-06-17 07:54:05.961000', '2023-06-17 07:54:05.961000', '2023-06-17 08:26:48.000000', NULL, NULL),
(237, 'Refined Rubber Pizzaaccelerant', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivenightgown', 'Đá ruộng xe đã thuê. Đã đỏ đập tui nón thích. Nghỉ mượn á phá đang tím mượn. Leo con tui đỏ thích.', 24711, '2023-06-17 07:54:05.968000', '2023-06-17 07:54:05.968000', '2023-06-17 08:26:48.000000', NULL, NULL),
(238, 'Handmade Rubber Pizzasin', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitfigure', 'Đánh gió hết á không. Tô hương ờ phá bốn lầu vẽ độc thôi. Độc vẽ sáu thương tím thương quê thích đang hương. Bơi xe thích tám.', 25343, '2023-06-17 07:54:05.975000', '2023-06-17 07:54:05.975000', '2023-06-17 08:26:48.000000', NULL, NULL),
(239, 'Refined Metal Bikepolice', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitysimvastatin', 'Tui lầu đạp ghế. Kim không quần khâu ừ khâu máy chín. Cửa leo một.', 81862, '2023-06-17 07:54:05.982000', '2023-06-17 07:54:05.982000', '2023-06-17 08:26:48.000000', NULL, NULL),
(240, 'Unbranded Rubber Pizzacure', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportnutmeg', 'Biển mây chết nước thế mượn ghét biển. Tô nha việc nghỉ lỗi ruộng vá năm thuê xe. Xe nghỉ tím.', 51126, '2023-06-17 07:54:05.990000', '2023-06-17 07:54:05.990000', '2023-06-17 08:26:48.000000', NULL, NULL),
(241, 'Unbranded Concrete Shoesgang', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016rubric', 'Núi đạp biển mượn ghét tui. Thôi tám đã chín đánh đâu khoan. Á tui giày. Đâu nón năm kim khâu.', 75761, '2023-06-17 07:54:05.997000', '2023-06-17 07:54:05.997000', '2023-06-17 08:26:48.000000', NULL, NULL),
(242, 'Luxurious Frozen Keyboardtriangle', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jginger', 'Bơi ghét ghế quê ba thuyền tím ghét đang bè. Gió lỗi viết nước vẽ khoan hương. Việc ngọt ba thương đỏ. Bè cửa em chín khâu mười gió. Quần mượn thuyền quần ruộng.', 24450, '2023-06-17 07:55:48.842000', '2023-06-17 07:55:48.842000', '2023-06-17 08:26:48.000000', NULL, NULL),
(243, 'Gorgeous Metal Baconstandardization', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jpick', 'Xe chìm tủ thuyền đồng là bơi. Yêu ruộng chỉ ruộng độc tủ gì. Thuyền máy đánh biết hương quê nhà đang gió. Tàu thuyền gió thích con nước đá anh. Ờ biển em bàn thì mượn quần con mượn khâu. Nghỉ mướn khoan.', 40656, '2023-06-17 07:55:48.851000', '2023-06-17 07:55:48.851000', '2023-06-17 08:26:48.000000', NULL, NULL),
(244, 'Ergonomic Rubber Shoesgarbage', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityingrate', 'Giày hóa bạn. Ruộng đạp bè giày bạn tôi bạn xuồng không. Yêu đá con nón. Nón việc xanh thích nón hết.', 69026, '2023-06-17 07:55:48.858000', '2023-06-17 07:55:48.858000', '2023-06-17 08:26:48.000000', NULL, NULL),
(245, 'Sleek Wooden Mouserivulet', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitcollection', 'Hóa viết việc mượn mười anh thương. Kim ờ giày quê. Cái á phá gì máy ờ. Yêu kim anh quần. Thích xanh chỉ biển xe chỉ xanh viết.', 46662, '2023-06-17 07:55:48.865000', '2023-06-17 07:55:48.865000', '2023-06-17 08:26:48.000000', NULL, NULL),
(246, 'Licensed Rubber Chickenwebpage', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartarrangement', 'Viết là ờ gì việc việc. Tàu anh phá đồng đánh thôi áo đâu đá khoan. Giày cửa vẽ độc bạn đâu thương tím đập. Thuyền chín đồng biển.', 69638, '2023-06-17 07:55:48.871000', '2023-06-17 07:55:48.871000', '2023-06-17 08:26:48.000000', NULL, NULL),
(247, 'Elegant Metal Computerjudo', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitassociate', 'Mua vá ác thuyền. Quần núi ác viết biển đạp tôi. Hai không giày đánh leo chín. Lỗi bảy chín xanh mua tám thích. Anh việc khoan ừ nghỉ mây trăng á. Hàng lỗi đập nón.', 33242, '2023-06-17 07:55:48.878000', '2023-06-17 07:55:48.878000', '2023-06-17 08:26:48.000000', NULL, NULL);
INSERT INTO `products` (`id`, `product_name`, `description`, `detail`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(248, 'Modern Concrete Ballcanoe', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesespalier', 'Khoảng thôi là đâu đâu anh đạp gió hương. Bảy là giày mua bạn nghỉ xe xe. Khoảng em chỉ đỏ. Bạn nước kim yêu.', 79374, '2023-06-17 07:55:48.884000', '2023-06-17 07:55:48.884000', '2023-06-17 08:26:48.000000', NULL, NULL),
(249, 'Sleek Rubber Cheeseoffence', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designbulb', 'Cái máy gì việc hết leo đỏ phá khâu. Tàu nón mượn mượn cái biết tôi. Đang thế tô đập ngọt cửa biển đá. Ờ ác biết. Gì chỉ lầu mười chỉ trăng.', 53037, '2023-06-17 07:55:48.891000', '2023-06-17 07:55:48.891000', '2023-06-17 08:26:48.000000', NULL, NULL),
(250, 'Awesome Metal Shoeshog', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jvanity', 'May ừ vàng hết. Nha trăng khoan giết núi. Dép thương biết đỏ viết ghét thuyền tàu. Thế đã đánh thương. Đánh con thế đang một khâu một chỉ. Tám hết ghét yêu lầu dép á mướn biển leo.', 87880, '2023-06-17 07:55:48.898000', '2023-06-17 07:55:48.898000', '2023-06-17 08:26:48.000000', NULL, NULL),
(251, 'Generic Concrete Chickenpolice', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designflax', 'Bàn tám bè tô xanh đâu yêu. Tủ vẽ leo đã trời. Gió được kim. Chìm thì nón lỗi.', 67730, '2023-06-17 07:55:48.905000', '2023-06-17 07:55:48.905000', '2023-06-17 08:26:48.000000', NULL, NULL),
(252, 'Fantastic Steel Fishpantology', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsmonth', 'Nghỉ đập hết đồng chỉ đang dép. Hàng tím đâu leo tô khoảng. May làm mười nước máy ừ. Cái tôi mua trăng.', 84807, '2023-06-17 07:55:48.912000', '2023-06-17 07:55:48.912000', '2023-06-17 08:26:48.000000', NULL, NULL),
(253, 'Intelligent Fresh Shirtwarren', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitabolishment', 'Làm lỗi chín yêu xe. Đánh xe tám thế giết em mười. Chìm quần hóa mượn một cửa thích.', 54403, '2023-06-17 07:55:48.919000', '2023-06-17 07:55:48.919000', '2023-06-17 08:26:48.000000', NULL, NULL),
(254, 'Recycled Steel Chipscase', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jgaffe', 'Đánh thôi mười mười vá mua mượn lỗi. Tủ thì cái tôi vá. Thôi năm trời. Đang giày việc vẽ leo ác khoan hàng mượn.', 92360, '2023-06-17 07:55:48.926000', '2023-06-17 07:55:48.926000', '2023-06-17 08:26:48.000000', NULL, NULL),
(255, 'Incredible Bronze Shirtscreening', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsobesity', 'Đã quê tủ đánh con biển bảy biết. Chín giết cái. Máy mua đâu bạn thì bạn đạp bạn ba ngọt. Đạp thuê mười hương thế mua. Giày nhà mây tím nha tui trời chết dép tám.', 85485, '2023-06-17 07:55:48.933000', '2023-06-17 07:55:48.933000', '2023-06-17 08:26:48.000000', NULL, NULL),
(256, 'Intelligent Bronze Chipschafe', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsjalapeño', 'Cửa mười ba hai con quần năm em bảy. Yêu khoảng đâu nước đang đã hóa tô sáu. Gió đồng tôi ghét giày hàng cái giày giày. Núi biết biển. Ngọt hàng đã. Áo phá đang bạn con tui khâu ruộng.', 96888, '2023-06-17 07:55:48.939000', '2023-06-17 07:55:48.939000', '2023-06-17 08:26:48.000000', NULL, NULL),
(257, 'Awesome Concrete Bacontalking', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016vinyl', 'Bảy con nha trăng. Biết đập nước lỗi xe quần mười núi tủ. Tủ thì không ngọt thôi núi vàng giày.', 43369, '2023-06-17 07:55:48.946000', '2023-06-17 07:55:48.946000', '2023-06-17 08:26:48.000000', NULL, NULL),
(258, 'Ergonomic Metal Carhose', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalswish', 'Chìm xe chín tám lầu ghét bàn ba hết. Độc nước lầu ghét khoảng. Trời ghế kim tô vá. Mua nón thích nhà em tui gì đá. Xe một vá ruộng mây. Bơi độc mười thích.', 91195, '2023-06-17 07:55:48.953000', '2023-06-17 07:55:48.953000', '2023-06-17 08:26:48.000000', NULL, NULL),
(259, 'Luxurious Bronze Shirtboyhood', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designchemistry', 'Tím vẽ lầu tàu anh ngọt giết bàn. Máy làm bạn nhà ghế thuyền. Tàu thì xuồng khoảng khoảng ruộng mười sáu. Khoan mười bốn núi tô. Chỉ hàng quê tám đập độc đã nước bảy. Vá ghét vàng thì áo anh chết độc sáu.', 81318, '2023-06-17 07:55:48.959000', '2023-06-17 07:55:48.959000', '2023-06-17 08:26:48.000000', NULL, NULL),
(260, 'Gorgeous Concrete Sausageswatcher', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportdivalent', 'Ruộng độc khoan hóa bảy giết vẽ lỗi núi. Khoan cửa mua vàng được trời nghỉ thích may. Chín hàng độc tám ác xuồng khoảng lỗi. Thích ừ không bơi. Nghỉ cửa trăng thuyền thuê đạp bè thôi. Độc phá hai tím đang.', 67610, '2023-06-17 07:55:48.966000', '2023-06-17 07:55:48.966000', '2023-06-17 08:26:48.000000', NULL, NULL),
(261, 'Awesome Bronze Bikegoing', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016due', 'Thương trời đỏ. Tím đã hương nhà á thích chìm đá. Đỏ làm xuồng bè kim núi bạn.', 83097, '2023-06-17 07:55:48.971000', '2023-06-17 07:55:48.971000', '2023-06-17 08:26:48.000000', NULL, NULL),
(262, 'Fantastic Concrete Shirtreplication', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsduster', 'Xe máy trời giết là đâu. Tui kim nước thuê tủ. Đạp thuê mây dép may xanh mướn khâu. Vẽ thôi tím mượn. May bè sáu đồng nhà áo. Bốn ngọt anh anh.', 47973, '2023-06-17 07:55:48.977000', '2023-06-17 07:55:48.977000', '2023-06-17 08:26:48.000000', NULL, NULL),
(263, 'Recycled Frozen Baconpolyp', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivetracksuit', 'Tàu lỗi chết máy tàu quần hóa hết. Mười thích gió. Thế là tàu viết em hương đá thích năm. Là nón mượn bè máy áo mây ruộng tím. Tàu mây làm ghét ruộng thôi kim. Xanh tô nước mượn cửa mua lỗi tám.', 92161, '2023-06-17 07:55:48.984000', '2023-06-17 07:55:48.984000', '2023-06-17 08:26:48.000000', NULL, NULL),
(264, 'Luxurious Cotton Tunadirndl', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitdisclaimer', 'Đâu một khâu. Hai không áo khâu ruộng dép. Nhà cửa núi ba độc đánh bốn độc trăng.', 81197, '2023-06-17 07:55:48.991000', '2023-06-17 07:55:48.991000', '2023-06-17 08:26:48.000000', NULL, NULL),
(265, 'Incredible Rubber Cheeseyogurt', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitjourney', 'Là trăng ngọt tím khâu thương. Vẽ ba bơi sáu mướn thế nghỉ. Cái xuồng nghỉ ngọt giết biết.', 45475, '2023-06-17 07:55:48.998000', '2023-06-17 07:55:48.998000', '2023-06-17 08:26:48.000000', NULL, NULL),
(266, 'Elegant Steel Sausagestulip', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designsnack', 'Biết khoan ngọt là mượn bạn hai đánh cửa sáu. Hết độc chìm mượn. Tủ vá hết. Dép tám vá bàn dép thương thuyền ghế. Đang độc bạn hàng. Đỏ sáu đâu mướn.', 89141, '2023-06-17 07:55:49.004000', '2023-06-17 07:55:49.004000', '2023-06-17 08:26:48.000000', NULL, NULL),
(267, 'Modern Concrete Carbreakfast', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsjewellery', 'Tám làm lỗi ngọt ghế ờ đạp. Đạp ngọt mười đang bè thì khoan đánh. Không chỉ nha chỉ giày nha kim thương chết mua.', 59580, '2023-06-17 07:55:49.010000', '2023-06-17 07:55:49.010000', '2023-06-17 08:26:48.000000', NULL, NULL),
(268, 'Intelligent Wooden Fishexplanation', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand aparttheme', 'Quần vá anh lầu thích thương thôi. Mây gì đồng đập. Khoan khoảng giày anh thì.', 44380, '2023-06-17 07:55:49.016000', '2023-06-17 07:55:49.016000', '2023-06-17 08:26:48.000000', NULL, NULL),
(269, 'Tasty Steel Pantsdawn', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsmug', 'Cái phá cái làm khâu thuyền hàng. Núi tô mây thôi vá được á cái trăng anh. Xe mua anh mười tô. Bốn xuồng việc nha là kim hai nước. Gì là ghế đá thương.', 96214, '2023-06-17 07:55:49.022000', '2023-06-17 07:55:49.022000', '2023-06-17 08:26:48.000000', NULL, NULL),
(270, 'Licensed Cotton Keyboardimpudence', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesbelly', 'Mướn tô phá bè đã làm yêu anh một tui. Khoan máy hương đạp yêu. Anh mười đánh trời anh đá mượn tám. Máy tô thuyền thương kim ghế. Không leo bạn bốn vẽ.', 84846, '2023-06-17 07:55:49.027000', '2023-06-17 07:55:49.027000', '2023-06-17 08:26:48.000000', NULL, NULL),
(271, 'Unbranded Rubber Sausagesmaestro', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016daughter', 'Bàn trời bốn. Độc là ghế mười vàng biển thế hàng thuyền. Tàu thôi đá. Thương núi đồng phá ừ. Mười đã bạn vàng. Á ác năm độc hàng dép quê.', 98379, '2023-06-17 07:55:49.034000', '2023-06-17 07:55:49.034000', '2023-06-17 08:26:48.000000', NULL, NULL),
(272, 'Licensed Metal Saladwarfare', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesclass', 'Khoảng một nha. Biết viết á nón đâu thôi khâu máy đã khoan. Năm bàn phá chết ác nón thuê vá đánh. Thuê tàu xuồng nón một. Đạp đỏ chết khoảng xuồng may không được.', 40239, '2023-06-17 08:00:40.927000', '2023-06-17 08:00:40.927000', '2023-06-17 08:26:48.000000', NULL, NULL),
(273, 'Refined Wooden Tableguarantee', 'The Football Is Good For Training And Recreational Purposesassessment', 'Sáu xanh đã. Mua may kim phá. Biết đỏ đạp vẽ. Bơi không á.', 43840, '2023-06-17 08:00:40.936000', '2023-06-17 08:00:40.936000', '2023-06-17 08:26:48.000000', NULL, NULL),
(274, 'Luxurious Soft Sausagestortellini', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designgelding', 'Ờ tô thương khoảng chín lầu em. Mua lỗi mướn thì mây nghỉ. Biển mua núi đồng khoảng ruộng được đã áo. Hóa thuyền làm thuyền đâu. Không dép mua đá em. Là áo vẽ.', 33368, '2023-06-17 08:00:40.942000', '2023-06-17 08:00:40.942000', '2023-06-17 08:26:48.000000', NULL, NULL),
(275, 'Intelligent Bronze Chipsstory-telling', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016oil', 'Vàng xanh bàn thôi đâu thích. Trời tui mượn khoảng viết xuồng thuê hết ác bè. Bốn nghỉ nghỉ may hết trăng nhà bạn kim đỏ. Ừ không đỏ khâu thương sáu mướn độc em chìm. Hết giày bạn phá tím.', 24092, '2023-06-17 08:00:40.949000', '2023-06-17 08:00:40.949000', '2023-06-17 08:26:48.000000', NULL, NULL),
(276, 'Tasty Concrete Mousestorey', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designlouse', 'Là lầu á tui đâu làm tủ nhà. Mười thế đã ngọt vẽ năm nghỉ trăng thuyền dép. Một đạp tủ xe ruộng mười may. Thuyền nón tàu áo ừ đang. Nón giết bè hương hương phá kim. Giết thôi đánh bơi con dép.', 72863, '2023-06-17 08:00:40.955000', '2023-06-17 08:00:40.955000', '2023-06-17 08:26:48.000000', NULL, NULL),
(277, 'Fantastic Bronze Fishsignet', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designmessage', 'Xuồng ờ thuyền vẽ gió đồng tím viết con. Tôi biết đâu kim mượn máy gì giày nước. Kim chín tủ nước quần trời được tui vẽ yêu.', 20179, '2023-06-17 08:00:40.960000', '2023-06-17 08:00:40.960000', '2023-06-17 08:26:48.000000', NULL, NULL),
(278, 'Elegant Steel Keyboardcomplicity', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesambulance', 'Vá phá phá mua trăng được nón. Thuyền hàng nghỉ tôi không xe leo thuyền chìm. Ác tím thuê mượn sáu. Sáu ác mướn. Em làm mây biết xanh chín không.', 98192, '2023-06-17 08:00:40.966000', '2023-06-17 08:00:40.966000', '2023-06-17 08:26:48.000000', NULL, NULL),
(279, 'Electronic Fresh Carlinseed', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityconflict', 'Khâu trời đang. Ghế hóa nha được đạp lầu tủ. Tủ làm mướn quê. Thuê nghỉ hai bảy vẽ biển á. Vẽ bạn hàng giày may tui. Được tám chỉ.', 97374, '2023-06-17 08:00:40.971000', '2023-06-17 08:00:40.971000', '2023-06-17 08:26:48.000000', NULL, NULL),
(280, 'Intelligent Plastic Ballcougar', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jreplacement', 'Vàng ghế hương trời mướn biển ngọt đồng biển. Giết núi thôi ghế máy bè tui nhà thế đá. Con thuyền ờ trời. Mượn quần trăng quê đá. Tủ vàng ghét nha sáu quê giày khoảng thì nước.', 75115, '2023-06-17 08:00:40.977000', '2023-06-17 08:00:40.977000', '2023-06-17 08:26:48.000000', NULL, NULL),
(281, 'Sleek Soft Chairribbon', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016sow', 'Xe hương may thương tui bơi vá đá. Bảy chìm thuyền vàng tui một khoan. Hóa đồng đâu đã quần ờ xuồng tôi chỉ chỉ. Cửa khâu ngọt hóa biển may một. Làm đã viết thế biết nhà.', 64411, '2023-06-17 08:00:40.983000', '2023-06-17 08:00:40.983000', '2023-06-17 08:26:48.000000', NULL, NULL),
(282, 'Modern Plastic Pizzaukulele', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitparallelogram', 'Tủ bè quần gì máy. Lầu hóa mượn kim bốn thương thế yêu. Đồng khoảng nước việc con. Chín chín chết thế được tám đạp đập tô.', 43353, '2023-06-17 08:00:40.989000', '2023-06-17 08:00:40.989000', '2023-06-17 08:26:48.000000', NULL, NULL),
(283, 'Ergonomic Fresh Ballbuzzard', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jdeputy', 'Đang bảy xanh đồng trời ghế quê thương mua. Hai vẽ con thôi đánh đang nón giày. May vá thương biển đá tôi á xuồng đạp trăng.', 77246, '2023-06-17 08:00:40.995000', '2023-06-17 08:00:40.995000', '2023-06-17 08:26:48.000000', NULL, NULL),
(284, 'Ergonomic Granite Ballkingdom', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityappendix', 'Chết kim bè hết. Quần ừ biết vẽ thì mười tôi. Vàng sáu ba đạp quê tui.', 98948, '2023-06-17 08:00:41.000000', '2023-06-17 08:00:41.000000', '2023-06-17 08:26:48.000000', NULL, NULL),
(285, 'Rustic Plastic Hatantelope', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016knowledge', 'Thuyền ghét ghét. Xanh thương mười được. May bảy cái bè vẽ chìm. Đã mây khoảng nhà khoan vàng nha xe chín biết. May nhà xe đồng không nhà xuồng yêu tàu á.', 49297, '2023-06-17 08:00:41.005000', '2023-06-17 08:00:41.005000', '2023-06-17 08:26:48.000000', NULL, NULL),
(286, 'Gorgeous Steel Bikehoof', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesracism', 'Thuyền khâu nhà xuồng. Đá chết thương bạn đập sáu một. Thôi đã anh vàng ngọt. May sáu tôi trăng viết không mua cái lỗi.', 21952, '2023-06-17 08:00:41.010000', '2023-06-17 08:00:41.010000', '2023-06-17 08:26:48.000000', NULL, NULL),
(287, 'Rustic Frozen Chickendigger', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitincrease', 'Bè bè đang hết mua cửa máy biết anh. Dép đỏ năm bạn nhà biển. Vàng biết đá đang anh. Bè nón giết tủ chín tủ. Đánh viết đập năm quê khoan bơi. Chín vá thế con đá anh á chín.', 28374, '2023-06-17 08:00:41.015000', '2023-06-17 08:00:41.015000', '2023-06-17 08:26:48.000000', NULL, NULL),
(288, 'Refined Bronze Saladhelo', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsgerbil', 'Phá tủ nước đánh thôi hàng nghỉ biết khoảng ờ. Lầu máy nón hàng đánh tám tủ xuồng đỏ bốn. Thuê đập thì nha bơi bốn vẽ. Dép lỗi nghỉ may khoan thuyền xanh con. Anh không nghỉ gió tám được khâu quần là.', 39905, '2023-06-17 08:00:41.020000', '2023-06-17 08:00:41.020000', '2023-06-17 08:26:48.000000', NULL, NULL),
(289, 'Rustic Steel Soapostrich', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitachievement', 'Mây nước bốn viết giết sáu giết hóa. Mây máy đã sáu ba không. Chết dép ruộng khoảng được trời. Mười áo là dép trăng leo viết hết đạp.', 21705, '2023-06-17 08:00:41.026000', '2023-06-17 08:00:41.026000', '2023-06-17 08:26:48.000000', NULL, NULL),
(290, 'Fantastic Frozen Soaponline', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designreception', 'Năm chìm đánh thương mướn bốn việc nước ghét. Tui nha lỗi bè may không cái. Vá ghét nhà nón lầu trời mua thích kim leo.', 61529, '2023-06-17 08:00:41.032000', '2023-06-17 08:00:41.032000', '2023-06-17 08:26:48.000000', NULL, NULL),
(291, 'Oriental Soft Biketrapezoid', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designpug', 'Chết ghế bơi nón lỗi khoan chết đã. Gió hương bảy đã giết máy mượn thì. Một mướn vá hương dép đang viết ừ đỏ. Bàn làm thuê thôi hết gì bơi. Năm gì anh thì.', 60787, '2023-06-17 08:00:41.037000', '2023-06-17 08:00:41.037000', '2023-06-17 08:26:48.000000', NULL, NULL),
(292, 'Unbranded Frozen Chickendisruption', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportheifer', 'Mua gió đỏ năm. Lỗi thôi tám. Tám vá thuê lầu xuồng đạp giết bạn. Hết ừ mười.', 84387, '2023-06-17 08:00:41.042000', '2023-06-17 08:00:41.042000', '2023-06-17 08:26:48.000000', NULL, NULL),
(293, 'Fantastic Wooden Fishwidget', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivecastle', 'Mướn chìm một áo cửa trăng. Giết thế khâu xe. Mây chết đỏ xuồng khoảng không thôi nghỉ. Giết ác quần đang được bảy.', 36838, '2023-06-17 08:00:41.047000', '2023-06-17 08:00:41.047000', '2023-06-17 08:26:48.000000', NULL, NULL),
(294, 'Recycled Metal Chipsease', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesrequirement', 'Sáu xanh á áo. Thích thế đồng. Khoan mây cái đá em. Ba chín leo bơi ngọt chết. Giết may lỗi một hàng. Mượn tô sáu nhà lỗi.', 41860, '2023-06-17 08:00:41.052000', '2023-06-17 08:00:41.052000', '2023-06-17 08:26:48.000000', NULL, NULL),
(295, 'Elegant Steel Chairclearing', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclespheasant', 'Leo khoan gì xe anh. Bè đỏ ờ đập ghét. Là mua việc độc. Phá một anh.', 38404, '2023-06-17 08:00:41.057000', '2023-06-17 08:00:41.057000', '2023-06-17 08:26:48.000000', NULL, NULL),
(296, 'Rustic Fresh Glovesbooklet', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartcurd', 'Không con tôi tủ áo á nghỉ tám nghỉ. Leo em biết chín chín may tô mua đâu xanh. Mười ruộng cửa năm ba hai mua xe chết.', 72742, '2023-06-17 08:00:41.063000', '2023-06-17 08:00:41.063000', '2023-06-17 08:26:48.000000', NULL, NULL),
(297, 'Intelligent Granite Hattool', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitdivalent', 'Giày khoan quần gió được. Giết mười là đạp tô tô thuyền là gì thuê. Ngọt nhà khâu vẽ thế hai bốn hóa đánh. Trăng ghét chín hết em hàng. Ngọt mây thế đang thế.', 99858, '2023-06-17 08:00:41.068000', '2023-06-17 08:00:41.068000', '2023-06-17 08:26:48.000000', NULL, NULL),
(298, 'Awesome Bronze Towelsusher', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportmotorcycle', 'Quần bạn quê tui đâu đâu thích hết tôi. Ghế ba bè độc cái thì viết. Hàng núi đồng năm khâu nước cửa em anh hóa. Xe sáu ờ.', 61824, '2023-06-17 08:00:41.073000', '2023-06-17 08:00:41.073000', '2023-06-17 08:26:48.000000', NULL, NULL),
(299, 'Electronic Granite Chickenbehalf', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016therapy', 'Áo khoan nước khoảng tám. Quần hai ghế việc hàng. Trăng cái cửa tám mười. Nhà khâu em một tám độc tôi thương.', 67145, '2023-06-17 08:00:41.078000', '2023-06-17 08:00:41.078000', '2023-06-17 08:26:48.000000', NULL, NULL),
(300, 'Bespoke Rubber Towelspopsicle', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportstair', 'Khâu biển năm con tui thuyền yêu ừ. Nhà chìm bốn bạn nón tôi thế đỏ mười làm. Tám ba ba ba may bạn. Tô hóa thuyền tô đồng xanh bảy tô đá dép. Bốn mướn đâu ờ chín núi leo thế áo.', 98334, '2023-06-17 08:00:41.083000', '2023-06-17 08:00:41.083000', '2023-06-17 08:26:48.000000', NULL, NULL),
(301, 'Luxurious Metal Sausagesgo-kart', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jbackup', 'Bạn lầu khoảng đã đồng đánh nón sáu xanh đập. Đã trời đâu đánh độc. Em tàu ờ đâu thương áo.', 46219, '2023-06-17 08:00:41.088000', '2023-06-17 08:00:41.088000', '2023-06-17 08:26:48.000000', NULL, NULL),
(302, 'Incredible Steel Computerpinto', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsfreckle', 'Thương đã là đỏ. Sáu thương xe được đạp áo cái đang bè. Ừ anh mây em quê á xuồng vàng. Chết quần đã gì tôi.', 33142, '2023-06-17 10:19:35.445000', '2023-06-17 10:19:35.445000', NULL, NULL, NULL),
(303, 'Electronic Cotton Computermochi', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jhellcat', 'Mây ờ cái leo thôi đánh tôi ba. Khâu chỉ chết chỉ anh không. Trời ghét làm khâu ghế bốn quê thuê đánh. Lầu giết gì ờ. Mướn phá mười leo bơi.', 79684, '2023-06-17 10:19:35.456000', '2023-06-17 10:19:35.456000', NULL, NULL, NULL),
(304, 'Awesome Fresh Shirtmaid', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016complexity', 'Thôi tô được nghỉ thương ngọt tám. Thôi năm giày đánh tám hai anh lỗi đánh tím. Vẽ lỗi mây đỏ mười gió. Ghế trăng kim. Yêu hóa quần ừ chỉ đánh đánh em.', 30512, '2023-06-17 10:19:35.463000', '2023-06-17 10:19:35.463000', NULL, NULL, NULL),
(305, 'Small Bronze Gloveshellcat', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsanchovy', 'Phá khoảng đạp ngọt xe viết yêu. Khoảng leo quần tám nón. Ba tủ khoan dép vẽ tàu thôi mười yêu đồng. Ngọt năm tàu đã mười. Khoan ba giày hàng tô mướn á đỏ bảy.', 84243, '2023-06-17 10:19:35.471000', '2023-06-17 10:19:35.471000', NULL, NULL, NULL),
(306, 'Luxurious Concrete Cheesedud', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclespouch', 'Hàng tím việc ừ anh. Tám đang ghế trăng mười hóa thích làm khoảng hương. Nha á năm. May đâu mướn may tám nước áo. Trăng sáu hàng đỏ mua đá lỗi á bảy. Mây tím vá ghét may trời việc vẽ.', 99667, '2023-06-17 10:19:35.477000', '2023-06-17 10:19:35.477000', NULL, NULL, NULL),
(307, 'Practical Bronze Chickenhurdler', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityevolution', 'Dép mượn máy lỗi ừ nhà làm. Ngọt không độc đồng. Hết tím đồng đập ghế cái. Ừ năm bàn. Là được tui gió kim ờ trời việc áo.', 97690, '2023-06-17 10:19:35.485000', '2023-06-17 10:19:35.485000', NULL, NULL, NULL),
(308, 'Small Metal Bikemerchandise', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsintegral', 'Bàn á đang. Khoan tàu độc hàng khoan áo yêu. Viết không gì nước nha khâu tám chỉ. Ờ nón trời đá bốn thuê khâu.', 90678, '2023-06-17 10:19:35.492000', '2023-06-17 10:19:35.492000', NULL, NULL, NULL),
(309, 'Luxurious Concrete Chipsjournalism', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportswamp', 'Biển con trăng. Anh chín chìm bàn giết khoảng quần mua trời đâu. Thích đánh con mây con làm.', 56373, '2023-06-17 10:19:35.498000', '2023-06-17 10:19:35.498000', NULL, NULL, NULL),
(310, 'Handmade Fresh Fishfibre', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016completion', 'Thôi đang ghế là yêu mướn ngọt. Gió khoảng mây ngọt. Thích mướn nón giày hóa. Hóa được biết một phá đánh mười ruộng nghỉ nha. Đồng phá chết cửa đang quần xanh đang á đã.', 84221, '2023-06-17 10:19:35.505000', '2023-06-17 10:19:35.505000', NULL, NULL, NULL),
(311, 'Oriental Plastic Glovesatom', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jhandgun', 'Bốn giày ghét leo yêu con kim mười. Mua việc xuồng kim mượn ờ hóa vẽ tím tô. Nước lỗi ngọt đồng hết tô trăng. Em thế ác ruộng. Đồng khâu đánh độc gió đâu sáu đồng mười. Phá quần em mua đang viết phá đập.', 85905, '2023-06-17 10:19:35.512000', '2023-06-17 10:19:35.512000', NULL, NULL, NULL),
(312, 'Refined Cotton Towelsheadache', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016prescription', 'Nha sáu nhà đập thôi vá ghế viết. Chỉ tím hàng lầu hai vá con lỗi hóa bạn. Thôi tủ kim mua.', 65407, '2023-06-17 10:19:35.520000', '2023-06-17 10:19:35.520000', NULL, NULL, NULL),
(313, 'Tasty Metal Bikeceremony', 'The Football Is Good For Training And Recreational Purposescannon', 'Ác nón biết mười. Nghỉ đỏ mây chìm xuồng thì yêu. May thuê thương bạn tôi mượn phá là nha. Xuồng gì độc được. Tôi ba mua thế lầu nghỉ bảy yêu.', 40826, '2023-06-17 10:19:35.527000', '2023-06-17 10:19:35.527000', NULL, NULL, NULL),
(314, 'Unbranded Plastic Chairactivation', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesfowl', 'May nước là mua nón được. Em việc xe á khâu. Mướn quần bơi lầu bàn quê mượn hết biết độc.', 31566, '2023-06-17 10:19:35.533000', '2023-06-17 10:19:35.533000', NULL, NULL, NULL),
(315, 'Rustic Granite Hatprovince', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartrent', 'Phá viết xanh đập. Xuồng may bàn hương ruộng giày mây ngọt. Biển áo nước mua trời. Ác lỗi tô.', 85100, '2023-06-17 10:19:35.539000', '2023-06-17 10:19:35.539000', NULL, NULL, NULL),
(316, 'Unbranded Bronze Towelsrespite', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jmolasses', 'Ghế gió bảy khoảng đánh ghét đỏ. Nha là khoan. Vẽ may quê tủ vá. Thương đã quần mười hết nhà tím.', 47786, '2023-06-17 10:19:35.546000', '2023-06-17 10:19:35.546000', NULL, NULL, NULL),
(317, 'Licensed Bronze Pantspolarization', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartgodmother', 'Một phá khâu máy áo hương được viết biết gì. Thích máy gì thương năm núi trời. Đang nhà giày xe bè chỉ ờ máy. Thích phá sáu á vá ờ tàu đồng á bạn. Vàng biết chết đang bè lầu giày đập biển giết. Tàu lỗi mượn mướn bơi.', 94518, '2023-06-17 10:19:35.553000', '2023-06-17 10:19:35.553000', NULL, NULL, NULL),
(318, 'Luxurious Concrete Fishcommonsense', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jramen', 'Yêu nha mượn thì bạn mượn ruộng. Không vá áo biển khâu khâu đâu thích tàu. Đạp lầu phá biển ruộng là. Khoan khâu đập ờ thế yêu.', 64980, '2023-06-17 10:19:35.561000', '2023-06-17 10:19:35.561000', NULL, NULL, NULL),
(319, 'Bespoke Fresh Pantscastle', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalityfaithful', 'Thuê tàu mượn tủ nước mượn nón mười. Là làm mua lỗi. Vàng dép giày bạn trăng áo vá thế. Tôi đồng chết đâu phá chết may. Đỏ vẽ ừ nghỉ kim nón hương.', 70754, '2023-06-17 10:19:35.568000', '2023-06-17 10:19:35.568000', NULL, NULL, NULL),
(320, 'Small Steel Chairstarter', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivepajamas', 'Đâu máy gió khoan vàng nha nghỉ ngọt. Ngọt mười xanh cửa quê mười đang bạn chỉ. Ba ác á khâu đập tôi.', 24831, '2023-06-17 10:19:35.575000', '2023-06-17 10:19:35.575000', NULL, NULL, NULL),
(321, 'Awesome Bronze Tableburn-out', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesdust', 'Ừ biết tủ được đánh ừ. Hóa kim tô đỏ ừ giết đỏ khâu hóa. Áo máy đập nước thôi nước. Khâu đánh đạp. Hàng lầu ba cái may ruộng bốn. Nha anh đạp thuyền kim ác vẽ khoảng.', 36467, '2023-06-17 10:19:35.582000', '2023-06-17 10:19:35.582000', NULL, NULL, NULL),
(322, 'Intelligent Plastic Hatcork', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesvenison', 'Mướn á tô. Giày thế tám. Lầu nha nghỉ đỏ năm nón. Đạp may bơi.', 50013, '2023-06-17 10:19:35.588000', '2023-06-17 10:19:35.588000', NULL, NULL, NULL),
(323, 'Incredible Frozen Hatprotest', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalslitigation', 'Ghét đá chìm mướn máy bàn xanh bảy cửa bạn. Kim á việc tôi đã tôi hết. Yêu bàn năm bàn yêu ba mượn ghế. Vẽ đỏ hai bơi độc nghỉ chỉ xe. Tàu máy tui bè nghỉ. Nhà đạp xuồng dép.', 60051, '2023-06-17 10:19:35.595000', '2023-06-17 10:19:35.595000', NULL, NULL, NULL),
(324, 'Electronic Bronze Shoestrailer', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitstrap', 'Nước con mướn biển tủ. Dép gió yêu được. May bè vẽ chỉ. Trời đập nghỉ hai dép hai mượn máy yêu. Bơi xanh tui khoan đâu cửa yêu. Cửa bốn ngọt thuê bè gì hai.', 23166, '2023-06-17 10:19:35.601000', '2023-06-17 10:19:35.601000', NULL, NULL, NULL),
(325, 'Fantastic Cotton Bacondeck', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsexperience', 'Ừ đập thôi đỏ. Năm giày chết chỉ phá nón á thuyền hết ờ. Ghế cái hết may yêu ghế lỗi. Chết ờ việc đỏ khâu.', 29052, '2023-06-17 10:19:35.608000', '2023-06-17 10:19:35.608000', NULL, NULL, NULL),
(326, 'Oriental Fresh Towelslumber', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsact', 'Đã chết thôi mua bơi chìm mười. Độc vẽ khâu biết con khâu. Thương lỗi biết bạn thuyền trăng bơi chìm bốn. Nước mướn thôi hương phá ruộng lầu. Thương đã hết trăng ba quê gì tàu đang.', 63572, '2023-06-17 10:19:35.614000', '2023-06-17 10:19:35.614000', NULL, NULL, NULL),
(327, 'Intelligent Steel Keyboardvegetarianism', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsincense', 'Viết phá chết mượn tô con. Nhà giết đá xuồng. Đã được biển chết tím thế khoan. Một giày bảy chín vá tủ đang em.', 76028, '2023-06-17 10:19:35.621000', '2023-06-17 10:19:35.621000', NULL, NULL, NULL),
(328, 'Licensed Concrete Chairwell-being', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclestrack', 'Bàn ghét tô. Thôi làm nghỉ trăng cái chết đồng viết. Leo kim mây. Mượn tủ nón áo may mua may ừ ác tám. Nón áo yêu vá một ghét. Leo quê trăng chín đạp đạp may cái khoảng.', 70441, '2023-06-17 10:19:35.628000', '2023-06-17 10:19:35.628000', NULL, NULL, NULL),
(329, 'Handmade Concrete Chickenturtle', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsbump', 'Việc trời núi bơi xuồng kim đâu vẽ là. Ác núi ngọt thích trăng tàu thuyền. Á vá nha xuồng hương.', 72614, '2023-06-17 10:19:35.636000', '2023-06-17 10:19:35.636000', NULL, NULL, NULL),
(330, 'Licensed Bronze Mouseashram', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitconsideration', 'Hóa xanh ờ chết mướn đá. Bạn vá ngọt. Lỗi khoan hương đã đang.', 94314, '2023-06-17 10:19:35.642000', '2023-06-17 10:19:35.642000', NULL, NULL, NULL),
(331, 'Ergonomic Metal Pantseyelid', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportmolding', 'Bè quần một cái hương thương đã xuồng. Thích bạn thuyền nhà quê bạn dép biết cửa. Tô con không yêu tui nón hương. Bơi cái nước con thích lỗi hai ờ nước biển. Tàu giết bơi.', 72156, '2023-06-17 10:19:35.649000', '2023-06-17 10:19:35.649000', NULL, NULL, NULL),
(332, 'Oriental Metal Saladpollution', 'The Football Is Good For Training And Recreational Purposescloud', 'Máy mua dép hương chết bàn. Tám ngọt ờ cái thuyền thích anh giết lỗi tôi. Giày á xanh bè thì mây biển tô ghét ừ.', 29029, '2023-06-24 07:55:03.677000', '2023-06-24 07:55:03.677000', NULL, NULL, NULL),
(333, 'Licensed Rubber Pizzaapology', 'The Football Is Good For Training And Recreational Purposesstorage', 'Đạp lỗi giết là ác. Ghế tám bè leo mua. Hai kim lỗi cái tôi chín. Quê nghỉ nón thuyền đỏ lỗi một viết vá bốn. May nha vá bảy một ác nón mướn bạn.', 77090, '2023-06-24 07:55:03.689000', '2023-06-24 07:55:03.689000', NULL, NULL, NULL),
(334, 'Sleek Wooden Cheeseradar', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitneologism', 'Phá anh bè phá nhà tám. Đạp không đã dép. Sáu tím nhà trời bốn đâu chỉ gì hàng chỉ. Máy quần ác đỏ tám thích áo.', 43950, '2023-06-24 07:55:03.696000', '2023-06-24 07:55:03.696000', NULL, NULL, NULL),
(335, 'Licensed Granite Carbeverage', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitproof-reader', 'Hàng máy ruộng hai thế. Thuyền đỏ trời nón đánh anh bàn thương thuê. Bạn việc trời đang yêu mười hóa. Tô ờ năm nước tô.', 20617, '2023-06-24 07:55:03.702000', '2023-06-24 07:55:03.702000', NULL, NULL, NULL),
(336, 'Rustic Rubber Hatchow', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitbonus', 'Đã thương leo phá mười. Anh thuê mượn gió thuyền ừ. Hết vẽ thương cửa. Khoảng biển ờ. Vẽ nghỉ sáu thế.', 77195, '2023-06-24 07:55:03.708000', '2023-06-24 07:55:03.708000', NULL, NULL, NULL),
(337, 'Sleek Rubber Towelsvacuum', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fittable', 'Nha đập khoảng làm năm may. Lỗi chín thế gió. Áo ngọt tủ bàn đã chỉ vàng ờ máy đã. Ruộng biết mượn ruộng quần áo yêu hóa ghét. Đỏ tô giết.', 32801, '2023-06-24 07:55:03.715000', '2023-06-24 07:55:03.715000', NULL, NULL, NULL),
(338, 'Unbranded Fresh Chipsseeker', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientscabana', 'Thì trời anh biển mây độc làm. Núi xanh thích độc trời thôi thương đạp em. Á khoan tàu ờ sáu.', 98176, '2023-06-24 07:55:03.721000', '2023-06-24 07:55:03.721000', NULL, NULL, NULL),
(339, 'Incredible Wooden Chipsapplewood', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsprotection', 'Làm ác chỉ giết hai. Nước khâu núi. Thế ngọt anh cái việc kim khoảng. Đồng khâu nhà mượn yêu thế em một.', 45559, '2023-06-24 07:55:03.728000', '2023-06-24 07:55:03.728000', NULL, NULL, NULL),
(340, 'Handmade Steel Hattimpani', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientswitness', 'Bè giết được đồng lầu. Mướn bạn mây trời khâu nước. Giày gió vàng. Tím nước vẽ tôi con khoan vàng là.', 81762, '2023-06-24 07:55:03.736000', '2023-06-24 07:55:03.736000', NULL, NULL, NULL),
(341, 'Luxurious Cotton Cheeseexamination', 'The Football Is Good For Training And Recreational Purposesinteger', 'Một ác mượn bốn may. Trời leo núi lầu nha. Mua bảy cái đã bè hết thương mười ác mượn. Không thuyền làm kim mười khâu thôi con không hết.', 83817, '2023-06-24 07:55:03.743000', '2023-06-24 07:55:03.743000', NULL, NULL, NULL),
(342, 'Intelligent Fresh Soapjerk', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportnonsense', 'Tím hết thì leo hương dép bảy mười. Bạn anh nước đá chín. Viết leo đánh đập máy. Thích hai anh trời. Tàu giày đạp đá.', 96021, '2023-06-24 07:55:03.749000', '2023-06-24 07:55:03.749000', NULL, NULL, NULL),
(343, 'Unbranded Soft Shoesdiscussion', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jsuccotash', 'Ngọt núi lỗi. Máy hàng cái tôi mướn vẽ. Nghỉ vẽ ghế hương hết. Ghế xe bảy hóa tím. Gì vàng biết. Ghét gì núi tím thuê trăng đã cửa ba lỗi.', 31255, '2023-06-24 07:55:03.755000', '2023-06-24 07:55:03.755000', NULL, NULL, NULL),
(344, 'Awesome Rubber Computersandpaper', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsstopsign', 'Kim viết hết mười thuê được hai may đâu ác. Tím xe quê em biển là ác kim quần. Độc tủ bảy dép đánh hết cửa. Biết tủ máy ba phá.', 69592, '2023-06-24 07:55:03.761000', '2023-06-24 07:55:03.761000', NULL, NULL, NULL),
(345, 'Intelligent Soft Chipstrailer', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jaquarium', 'Con con hương xanh bàn thế vẽ. Trăng nha đâu bàn vàng gì áo thuyền thích. Tủ hương ờ áo quần đá.', 89624, '2023-06-24 07:55:03.767000', '2023-06-24 07:55:03.767000', NULL, NULL, NULL),
(346, 'Handcrafted Metal Sausagesgloom', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportviolin', 'Nhà vàng áo năm hết mượn đánh ba khâu nha. Hết hết là. Đỏ bạn anh gió phá nước. Áo đỏ được.', 99310, '2023-06-24 07:55:03.774000', '2023-06-24 07:55:03.774000', NULL, NULL, NULL),
(347, 'Electronic Soft Shirtcomportment', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesairbag', 'Chết không ghế xuồng hai quần chín đá. Ghế xanh được xe dép áo mướn xuồng đỏ đâu. Lầu ghế việc áo tàu hai nón tủ hết. Biết thôi kim lầu ba nghỉ. Làm đạp làm tô việc nhà.', 69388, '2023-06-24 07:55:03.780000', '2023-06-24 07:55:03.780000', NULL, NULL, NULL),
(348, 'Ergonomic Wooden Sausageskilt', 'The Football Is Good For Training And Recreational Purposesprosperity', 'Giết đánh đâu. Chìm cửa con. Thế lỗi sáu may viết hàng vẽ. Ba tô cái tui vá thuyền ờ cửa bạn. Tám ác mua đã. Mua giết trời khâu.', 73448, '2023-06-24 07:55:03.786000', '2023-06-24 07:55:03.786000', NULL, NULL, NULL),
(349, 'Oriental Steel Saladdungarees', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jriot', 'Ghét mười viết mướn không ba áo. Anh bè lầu đồng hương trời bè thuyền một. Ghế trời bè việc đã vàng leo. Hóa đồng quần.', 52392, '2023-06-24 07:55:03.793000', '2023-06-24 07:55:03.793000', NULL, NULL, NULL),
(350, 'Tasty Bronze Tablepurchase', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016brownie', 'Tám leo tủ kim. Hết thì khoảng. Kim thuê mây mây khoan. Thương bè tôi núi là ừ xuồng. Ruộng vàng hóa thì đỏ.', 64696, '2023-06-24 07:55:03.799000', '2023-06-24 07:55:03.799000', NULL, NULL, NULL),
(351, 'Oriental Soft Keyboardlight', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivespecies', 'Hương biết mướn. Ba tô không bàn đập xanh hết tím kim hai. Cái nghỉ xe cái bơi.', 20704, '2023-06-24 07:55:03.805000', '2023-06-24 07:55:03.805000', NULL, NULL, NULL),
(352, 'Luxurious Granite Sausagestask', 'The Football Is Good For Training And Recreational Purposese-reader', 'Hóa chết đạp làm tui thương hàng đập quần. Mây áo ba em thuyền thuê quê khoan thuyền anh. Biết là xe kim chết đồng biết. Viết ngọt đỏ chín. Năm yêu thế hết thôi núi quần. Vẽ vẽ đá ừ đâu ba khoảng.', 43558, '2023-06-24 07:55:03.811000', '2023-06-24 07:55:03.811000', NULL, NULL, NULL),
(353, 'Luxurious Steel Hatmortise', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivewallet', 'Quê máy chết được. Việc không kim khoan vẽ. Máy gió núi. Phá biết anh giày ác nước mượn đã. Leo trời bốn thuyền.', 25308, '2023-06-24 07:55:03.818000', '2023-06-24 07:55:03.818000', NULL, NULL, NULL),
(354, 'Modern Steel Chaircrewmate', 'The Football Is Good For Training And Recreational Purposescayenne', 'Bơi chín anh ác đồng vẽ biết. Đạp bạn bốn trăng tủ được năm thế tô. Ác xanh cái trời đá. Vá khoảng giết một đánh hàng lỗi hóa mua.', 70129, '2023-06-24 07:55:03.824000', '2023-06-24 07:55:03.824000', NULL, NULL, NULL),
(355, 'Recycled Metal Carseaside', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designcircadian', 'Bốn thích vàng thương thương tàu. Đang ruộng ờ mây bảy tô thuê. Kim tô xe cái chỉ đồng lỗi ác. Leo vàng tui mượn. Đánh thôi đánh thế ừ tủ nước được.', 30336, '2023-06-24 07:55:03.830000', '2023-06-24 07:55:03.830000', NULL, NULL, NULL),
(356, 'Rustic Metal Bikelikeness', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsinfarction', 'Hết khoảng đỏ bảy thuyền. Ba thương ba ngọt chìm vẽ may. May trăng ngọt xanh được được anh. Khoan xuồng chết biển bốn vàng. Xe mây gì núi kim làm nhà mười xanh. Đạp em đỏ ngọt bơi tủ.', 92294, '2023-06-24 07:55:03.836000', '2023-06-24 07:55:03.836000', NULL, NULL, NULL),
(357, 'Gorgeous Soft Bacontabletop', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalscontention', 'Mười trăng mười mây lầu nha. Bạn cửa mượn anh. Đỏ ba độc áo làm ruộng nón nha. Ngọt con á đập sáu khâu con viết việc đã. Khâu cửa hóa lầu thuê xuồng bốn xe.', 41180, '2023-06-24 07:55:03.841000', '2023-06-24 07:55:03.841000', NULL, NULL, NULL),
(358, 'Generic Frozen Tunatouch', 'The Football Is Good For Training And Recreational Purposeshaversack', 'Đồng một tàu giày á. Áo làm áo hàng. Biết nón bốn phá làm. Viết nghỉ bốn nha.', 60855, '2023-06-24 07:55:03.847000', '2023-06-24 07:55:03.847000', NULL, NULL, NULL),
(359, 'Unbranded Metal Sausageshousehold', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitbutcher', 'Sáu thuyền yêu bạn. Khoan đỏ đồng bảy giết thương nước năm gì. Bè khoan bè thuê lầu á. Mua lỗi nghỉ quần vàng giày bạn xuồng trời. Tô lầu năm chín giết con giày hương.', 70544, '2023-06-24 07:55:03.853000', '2023-06-24 07:55:03.853000', NULL, NULL, NULL),
(360, 'Generic Soft Pantspolyester', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016cliff', 'Mua chìm áo đánh trời độc anh núi. Hai phá là đâu hết leo thì bơi thôi tám. Viết mướn lầu quê khâu. Ờ vá bảy. Đã trăng đánh ba xuồng chìm tui vàng hương nha. Đang ác ghét cửa mười.', 55799, '2023-06-24 07:55:03.860000', '2023-06-24 07:55:03.860000', NULL, NULL, NULL),
(361, 'Luxurious Concrete Bacononion', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jcylinder', 'Tám đang đạp. Thế xanh thuê không. Bạn bảy thì bạn mua ghế độc làm ruộng.', 83424, '2023-06-24 07:55:03.866000', '2023-06-24 07:55:03.866000', NULL, NULL, NULL),
(362, 'Electronic Rubber Towelsnotation', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jprocedure', 'Cửa đánh tám nghỉ giết bàn. Mượn cửa hương việc á bơi yêu tàu bạn bốn. Xuồng hương quê thuyền hết tôi.', 71453, '2023-06-24 07:55:28.924000', '2023-06-24 07:55:28.924000', NULL, NULL, NULL),
(363, 'Bespoke Soft Soapmortal', 'The Football Is Good For Training And Recreational Purposesham', 'Biết đồng đạp dép mây em khoảng xanh giết. Đã thuê thương chết con nón tô. Hết là ừ trăng biết hai làm nón. Yêu tím chỉ. Thương yêu con mười thương giết.', 22324, '2023-06-24 07:55:28.932000', '2023-06-24 07:55:28.932000', NULL, NULL, NULL),
(364, 'Gorgeous Steel Cargreat-grandfather', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jmark', 'Con yêu chết mướn. Mười sáu nghỉ xanh núi viết ba xanh. Giết đỏ lỗi. Chết thế áo ác không vàng bạn hàng đâu anh. Đỏ bạn độc lầu. Ghét máy vá.', 80898, '2023-06-24 07:55:28.939000', '2023-06-24 07:55:28.939000', NULL, NULL, NULL),
(365, 'Tasty Concrete Chipsremnant', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsdisconnection', 'Anh ờ tủ. Bơi vàng được chỉ bốn làm ác áo sáu. Đập dép đã núi ruộng đỏ tui.', 32165, '2023-06-24 07:55:28.945000', '2023-06-24 07:55:28.945000', NULL, NULL, NULL),
(366, 'Modern Bronze Keyboardhousehold', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016land', 'Độc vá sáu ác nghỉ thương một tím quê giày. Chỉ sáu mây bảy tám. Lầu xe nhà đập biết. Mướn chín thì á ruộng đá nha là gió quê.', 60256, '2023-06-24 07:55:28.950000', '2023-06-24 07:55:28.950000', NULL, NULL, NULL),
(367, 'Handmade Steel Towelslitter', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclessubcomponent', 'Bơi leo dép thích áo biết đập trời đâu. Làm con thôi thuê viết ừ. Vàng bè giày thuyền là ghét tô ừ. Đỏ khâu áo. Mười giết đồng ruộng khoảng. Tủ mua đạp thích.', 56935, '2023-06-24 07:55:28.957000', '2023-06-24 07:55:28.957000', NULL, NULL, NULL),
(368, 'Ergonomic Granite Shoesbiscuit', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitgobbler', 'Không bơi tủ. Gió đang vàng lầu hai dép trăng giết mây máy. Tàu leo con trời lỗi chín em biển hóa.', 35999, '2023-06-24 07:55:28.963000', '2023-06-24 07:55:28.963000', NULL, NULL, NULL),
(369, 'Intelligent Frozen Computergravity', 'The Football Is Good For Training And Recreational Purposessalary', 'Khoan áo thôi trời. Biết hóa ghế quần bạn nhà trăng đồng thích. Làm hai đâu máy. Con gió bảy ừ mướn tôi leo cái. Khâu quần không đã phá độc leo đồng bạn.', 89804, '2023-06-24 07:55:28.969000', '2023-06-24 07:55:28.969000', NULL, NULL, NULL),
(370, 'Modern Bronze Sausagesclassic', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designsafe', 'Quần ghế anh đồng dép quần tủ ác áo. Nón tui đang. Không thích quê đỏ. Vàng ác hóa tím độc thế bảy bè. Bàn đập ghế bảy xe chín ừ tàu năm đá.', 25375, '2023-06-24 07:55:28.975000', '2023-06-24 07:55:28.975000', NULL, NULL, NULL),
(371, 'Handmade Cotton Soapcontrol', 'The Football Is Good For Training And Recreational Purposesrevenant', 'Viết ghét đã á chỉ ghét trời cửa đá. Đập chìm làm vá nhà hàng. Viết con năm đang tám đập giết tủ núi quần. Đạp trăng mượn.', 37441, '2023-06-24 07:55:28.982000', '2023-06-24 07:55:28.982000', NULL, NULL, NULL),
(372, 'Refined Concrete Saladglen', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016executive', 'Thôi ờ không. Thì bè khâu. Phá máy việc đập ruộng. Xanh may tàu kim bè. Biển ngọt tủ thế khâu.', 42353, '2023-06-24 07:55:28.989000', '2023-06-24 07:55:28.989000', NULL, NULL, NULL),
(373, 'Luxurious Concrete Carbunch', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supporttough-guy', 'Tám đâu tô mượn chỉ xanh khoan đã độc vẽ. Khoảng yêu đồng tủ nón vẽ tím. Chìm khâu gió biết dép. Đỏ quê làm vá em xuồng cái.', 53026, '2023-06-24 07:55:28.994000', '2023-06-24 07:55:28.994000', NULL, NULL, NULL),
(374, 'Intelligent Frozen Tunahighway', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitfirewall', 'Xanh đang bè xuồng là. Ba yêu thuyền hai mây mười đá tui thương. Bè mua tô vẽ một nón quê ừ được. Đồng bảy biển việc tám anh đỏ giày chỉ. Thích biển kim ngọt.', 49756, '2023-06-24 07:55:29.000000', '2023-06-24 07:55:29.000000', NULL, NULL, NULL),
(375, 'Luxurious Cotton Bikeevening', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designtimer', 'Thôi phá là khoảng đỏ thương anh năm tôi. Quần nghỉ đạp. Anh ruộng cửa á đập mây tôi tui đánh. Hết áo năm việc cửa hàng nhà quê. Khoan tím thế vá khoảng việc.', 48438, '2023-06-24 07:55:29.006000', '2023-06-24 07:55:29.006000', NULL, NULL, NULL);
INSERT INTO `products` (`id`, `product_name`, `description`, `detail`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(376, 'Luxurious Concrete Chairmelon', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsprayer', 'Độc tím một nước hóa nhà yêu ờ em. Bạn sáu hết chết là may gió. Ba đang vàng chỉ chỉ em thôi giày tui. Đâu nước quần chìm tàu giày chỉ. Hai ác làm đá ruộng cửa việc đập.', 35011, '2023-06-24 07:55:29.011000', '2023-06-24 07:55:29.011000', NULL, NULL, NULL),
(377, 'Rustic Metal Sausageslot', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitdoorknob', 'Một chết bảy đánh năm dép đang chín. Xuồng hết xuồng quần phá bơi. Đã giết làm mười con thế bè hóa quê nước.', 96008, '2023-06-24 07:55:29.017000', '2023-06-24 07:55:29.017000', NULL, NULL, NULL),
(378, 'Handmade Rubber Ballgasket', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivealmanac', 'Ghét hương khâu thì nước chín nước. Tím bè phá xuồng đánh ác cái. Thuê đánh nón giết máy thì. Tủ vàng là giết đánh. Bơi phá đã vàng đập em đỏ yêu tàu. Xanh cái làm thương ác máy đang.', 93419, '2023-06-24 07:55:29.023000', '2023-06-24 07:55:29.023000', NULL, NULL, NULL),
(379, 'Oriental Frozen Fishproportion', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartyurt', 'May biển cái quê giày mượn nón thuyền bàn. Em giày á tô ruộng ruộng. Đang xanh thích. Xanh núi đánh mười yêu đỏ áo. Anh phá áo gì đang áo.', 58352, '2023-06-24 07:55:29.030000', '2023-06-24 07:55:29.030000', NULL, NULL, NULL),
(380, 'Incredible Metal Keyboardpickup', 'The Football Is Good For Training And Recreational Purposesliability', 'Tui yêu mướn bè. Bơi anh hai lầu gió bạn. Thế phá giày chín. Tím làm hóa thương. Khoan được vẽ. Leo quần ba thế trời dép nón độc chết.', 71492, '2023-06-24 07:55:29.036000', '2023-06-24 07:55:29.036000', NULL, NULL, NULL),
(381, 'Licensed Soft Sausagesattention', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jscholar', 'Anh đá việc năm khoan làm bè mướn cửa yêu. Đá sáu ba. Dép đã đánh. Được tui lầu ngọt. Xe vẽ thuê. Ghét thế khoan bè chín hóa thích năm mua máy.', 31958, '2023-06-24 07:55:29.042000', '2023-06-24 07:55:29.042000', NULL, NULL, NULL),
(382, 'Gorgeous Plastic Towelsperson', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016supplement', 'Cái mua ờ hết kim. Cửa đạp thế bảy hết. Phá hóa hàng kim thế bơi ghế không chìm mướn.', 70834, '2023-06-24 07:55:29.047000', '2023-06-24 07:55:29.047000', NULL, NULL, NULL),
(383, 'Practical Cotton Soaplending', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesthrush', 'Ác mượn giết ác hai tàu. Gì hết thương núi xuồng. Đỏ phá hương đang vẽ. Độc ghế biết nghỉ giày bảy biển. Đá làm không giày.', 47370, '2023-06-24 07:55:29.053000', '2023-06-24 07:55:29.053000', NULL, NULL, NULL),
(384, 'Small Frozen Cheeseexam', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jcurrency', 'Áo viết thích núi núi đang. Đá thế đánh trời ghét xanh xanh xe đỏ. Ờ thương là áo thương anh. Tám bảy thích hóa thuê làm tám núi quần.', 36013, '2023-06-24 07:55:29.059000', '2023-06-24 07:55:29.059000', NULL, NULL, NULL),
(385, 'Recycled Fresh Shirtview', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitysoftdrink', 'Gió yêu cửa bạn ghét đập mây mướn ghét tô. Đá thôi xanh khoảng dép kim quê đâu may. Bàn ba vá vàng á hết độc. Xanh quê xuồng thế chìm. Hàng giày biết chỉ bạn hóa.', 90010, '2023-06-24 07:55:29.065000', '2023-06-24 07:55:29.065000', NULL, NULL, NULL),
(386, 'Luxurious Wooden Chipseyelashes', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivesunflower', 'Một nước nghỉ tám sáu giày bảy. Bè đã đập xuồng bàn biển trời. Xe việc thuê tôi. Thế mười bạn cái tô.', 28940, '2023-06-24 07:55:29.071000', '2023-06-24 07:55:29.071000', NULL, NULL, NULL),
(387, 'Awesome Cotton Mousegraduate', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportoutline', 'Nghỉ khoảng đạp được đập một mây ờ mượn. Giết việc nha anh trăng chìm làm. Biển khoan tím ờ đã leo độc nước. Dép thôi mượn lầu là yêu biết làm tím biết.', 93514, '2023-06-24 07:55:29.077000', '2023-06-24 07:55:29.077000', NULL, NULL, NULL),
(388, 'Elegant Rubber Chipsveneer', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclessneakers', 'Thương tô vàng trăng khâu vàng. Bốn yêu giày tôi giết bè thì việc nha hai. Bảy quần chín á bảy. Nha sáu bè. Đã tím không. Lầu chìm ừ thuyền.', 70333, '2023-06-24 07:55:29.083000', '2023-06-24 07:55:29.083000', NULL, NULL, NULL),
(389, 'Tasty Cotton Sausagessimvastatin', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesjunket', 'Đá hàng giết đang. Cái tám chìm ruộng bảy đã thì xanh giết bốn. Trời bạn nha việc đỏ quần đá khâu tui lầu. Bơi đã xuồng khoan đạp mướn áo. Ghế quần tím gì yêu giày em kim. Thì xe bốn mười.', 83888, '2023-06-24 07:55:29.089000', '2023-06-24 07:55:29.089000', NULL, NULL, NULL),
(390, 'Small Wooden Pantscourtroom', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartevidence', 'Vàng ba đang chỉ kim bạn mua tàu đập thì. Mười hai hai. Tô dép hương tô đỏ lầu vẽ bàn tím. Được ác xanh hai năm mượn.', 38208, '2023-06-24 07:55:29.096000', '2023-06-24 07:55:29.096000', NULL, NULL, NULL),
(391, 'Incredible Metal Keyboardcart', 'The Football Is Good For Training And Recreational Purposessurge', 'Năm xanh áo lầu ghét chìm. Viết tám ờ là chìm núi. Không chỉ ừ núi hết là thế xanh vá đỏ. Sáu đập năm mướn.', 25101, '2023-06-24 07:55:29.101000', '2023-06-24 07:55:29.101000', NULL, NULL, NULL),
(392, 'Modern Metal Bikeclassmate', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesdress', 'Nón lỗi mười viết biển giết thế thuê khoan tui. Giết núi đạp đang xe mượn ruộng hết. Ghét xe thuyền nha ghét thương đập tui ghét bơi.', 59830, '2023-06-24 10:36:40.446000', '2023-06-24 10:36:40.446000', NULL, NULL, NULL),
(393, 'Handmade Bronze Baconprovince', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designyarn', 'Đồng không là thích ruộng. Quê cái không sáu mướn phá. Núi thì là tàu.', 47463, '2023-06-24 10:36:40.455000', '2023-06-24 10:36:40.455000', NULL, NULL, NULL),
(394, 'Rustic Rubber Chipssilver', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitgreens', 'Chìm xuồng gió khâu tui tím quê đã mượn hai. Dép thuyền tô khoan anh hết. Một dép ờ may thuyền á. Gió thuyền là hóa tím đang cái năm. Thương vàng khoảng vàng.', 65863, '2023-06-24 10:36:40.463000', '2023-06-24 10:36:40.463000', NULL, NULL, NULL),
(395, 'Fantastic Metal Shoesbandana', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsthickness', 'May mượn cửa vàng bơi khoảng vàng đã mượn một. Nhà may sáu. Hết tím đã một mướn nón viết.', 88738, '2023-06-24 10:36:40.470000', '2023-06-24 10:36:40.470000', NULL, NULL, NULL),
(396, 'Incredible Fresh Carpastor', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitfertilizer', 'Yêu biết đã ừ chín. Thế chỉ đỏ. Xe nghỉ thương đạp chìm cửa xuồng. Bảy leo trăng đập mười. Tàu tím nhà bạn làm độc em khâu. Gió việc đạp hương.', 77933, '2023-06-24 10:36:40.479000', '2023-06-24 10:36:40.479000', NULL, NULL, NULL),
(397, 'Luxurious Metal Towelsmillion', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesalibi', 'Dép gì hương tui đập tô. Hàng hương giết mướn quê lỗi. Là ghét gì hương xe em đã. Mười chỉ chỉ. Quê mây hương bàn anh. Đã con yêu quê sáu.', 60012, '2023-06-24 10:36:40.486000', '2023-06-24 10:36:40.486000', NULL, NULL, NULL),
(398, 'Awesome Plastic Pantsukulele', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016dust', 'Ờ hóa tô ghét biển. Hai hóa yêu giết khâu tám. Núi anh yêu hóa thích ghét. Núi đánh yêu bạn. Ghét nước tô được sáu ác xuồng. Giết vá thương cái.', 20774, '2023-06-24 10:36:40.494000', '2023-06-24 10:36:40.494000', NULL, NULL, NULL),
(399, 'Unbranded Bronze Hatcontest', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsicon', 'Quần á mướn vàng bơi trăng độc dép. Mướn ruộng nón ngọt tủ không. Tô ghế việc quê thì đâu yêu dép khâu tủ.', 32300, '2023-06-24 10:36:40.501000', '2023-06-24 10:36:40.501000', NULL, NULL, NULL),
(400, 'Intelligent Plastic Tableordination', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitbatting', 'May hàng lỗi biết máy trăng vàng. Hương thuyền thì thuyền đồng tui tủ hóa. Thôi đâu khoan thuyền yêu ừ bạn đạp tủ xe. Nước xe tím đá độc khoảng nước thì gì.', 44030, '2023-06-24 10:36:40.509000', '2023-06-24 10:36:40.509000', NULL, NULL, NULL),
(401, 'Electronic Plastic Pizzareciprocity', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivebeer', 'Mười bảy chết khâu việc. Mười hai tủ không nhà. Làm bơi ác độc khoảng cửa sáu vẽ tủ yêu. Tủ khâu khoảng vá.', 37193, '2023-06-24 10:36:40.516000', '2023-06-24 10:36:40.516000', NULL, NULL, NULL),
(402, 'Rustic Rubber Keyboardsectional', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designhigh', 'Đồng mượn năm. Giết phá không biết núi giày con trăng không. Ruộng năm núi thôi trời đánh bốn ờ thế đánh. Gì quê cửa hương tủ tàu phá tô.', 66452, '2023-06-24 10:36:40.523000', '2023-06-24 10:36:40.523000', NULL, NULL, NULL),
(403, 'Gorgeous Frozen Pizzaarm-rest', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitdeveloping', 'Đập vẽ đồng hàng phá độc. Thôi giết chìm chìm tui mây cái đạp. Xanh em dép gió đánh. Hết tui á. Thích yêu bạn chết may hết.', 96982, '2023-06-24 10:36:40.531000', '2023-06-24 10:36:40.531000', NULL, NULL, NULL),
(404, 'Refined Concrete Ballsardine', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel driveestate', 'Đá đâu năm đỏ ờ. Việc được kim chỉ yêu bạn mười viết hai anh. Năm xuồng biết không ghế may.', 73321, '2023-06-24 10:36:40.538000', '2023-06-24 10:36:40.538000', NULL, NULL, NULL),
(405, 'Generic Cotton Carprisoner', 'The Football Is Good For Training And Recreational Purposesattitude', 'Ờ thế máy ruộng mua cái kim dép ghế. Đồng cửa hóa. Mượn thì chìm. Nón khâu đỏ cửa nha bơi leo con con.', 70275, '2023-06-24 10:36:40.545000', '2023-06-24 10:36:40.545000', NULL, NULL, NULL),
(406, 'Bespoke Metal Tablesting', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitycrib', 'Mướn được đang tui bè. Tô hết thôi đập. Quê bàn áo ghế vàng đang ờ. Là bốn dép ờ máy mua nghỉ ghét khoảng biết. Bè một nước nón. Hàng chín gió quần khoảng sáu gió bàn.', 49979, '2023-06-24 10:36:40.553000', '2023-06-24 10:36:40.553000', NULL, NULL, NULL),
(407, 'Incredible Wooden Shirtbouquet', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016environment', 'Năm giày trời quê mướn chìm. Giết mua xuồng. Đâu ba phá máy ác biết đồng bạn thôi ghế. Xe tủ bảy khoan phá ghế ác xanh leo. Trời ruộng ờ bảy nghỉ bè ác biển bốn.', 65603, '2023-06-24 10:36:40.560000', '2023-06-24 10:36:40.560000', NULL, NULL, NULL),
(408, 'Unbranded Rubber Carbroiler', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalspremium', 'Sáu vàng con nón nghỉ em đỏ núi. Hết tủ quần hương vàng tôi. Á đỏ mua ghét. Viết việc tám tủ là hai hết là.', 79258, '2023-06-24 10:36:40.566000', '2023-06-24 10:36:40.566000', NULL, NULL, NULL),
(409, 'Bespoke Fresh Pantsdrainage', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportsand', 'Ác hương thế. Hóa thế kim biển đỏ. Đánh đánh thì. Núi vàng thuê thế. Trời thế leo trăng phá bàn hương nhà kim vàng.', 52154, '2023-06-24 10:36:40.572000', '2023-06-24 10:36:40.572000', NULL, NULL, NULL),
(410, 'Unbranded Granite Pantstooth', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartgasoline', 'Con cái hàng biển ờ. Giày trăng ác tím tím khoảng. Nước quần quê mây giết bốn cái. Chín khoan mười ruộng em. Bơi mượn thích yêu hai tui.', 44277, '2023-06-24 10:36:40.579000', '2023-06-24 10:36:40.579000', NULL, NULL, NULL),
(411, 'Awesome Bronze Mousecircuit', 'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandalsinfarction', 'Ờ yêu mua chỉ. Giày bốn nhà được ghế ngọt. Ghét thế con.', 45953, '2023-06-24 10:36:40.586000', '2023-06-24 10:36:40.586000', NULL, NULL, NULL),
(412, 'Recycled Steel Towelself', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartsled', 'Cửa độc mua. Nước bạn độc đá mây mây được. Khoan là đồng bốn nghỉ dép.', 84697, '2023-06-24 10:36:40.594000', '2023-06-24 10:36:40.594000', NULL, NULL, NULL),
(413, 'Recycled Soft Computerwaiter', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsbuy', 'Tui nước việc đâu thế khoảng. Đâu đập trăng giết được viết khoan tô may khâu. Mười mướn thuyền sáu. Biển dép tôi. Việc mướn ghế bốn bè chìm làm.', 62397, '2023-06-24 10:36:40.601000', '2023-06-24 10:36:40.601000', NULL, NULL, NULL),
(414, 'Handcrafted Wooden Tunahay', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jfailure', 'Việc nha độc quần nhà máy đâu. Vàng anh năm tàu thì lầu yêu làm. Vàng chết thích gì quần tám mua chìm quần. Biển dép tô áo đỏ đá bảy một vẽ. Mướn đồng chết không trời độc.', 37064, '2023-06-24 10:36:40.607000', '2023-06-24 10:36:40.607000', NULL, NULL, NULL),
(415, 'Bespoke Metal Tablewing', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016adviser', 'Chết độc là thích ác chỉ. Dép khoan nha mướn. Một sáu bảy đồng chín. Đã á đồng khoan đang ác đang. Bảy bè phá bơi xuồng không đồng. Quê nhà làm vá ba.', 51597, '2023-06-24 10:36:40.613000', '2023-06-24 10:36:40.613000', NULL, NULL, NULL),
(416, 'Unbranded Soft Cheeseoats', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesblackbird', 'Leo ba núi đập ba tô. Không tàu khoan viết. Khâu tui ba bơi tàu bàn. Chỉ leo khoảng xuồng may gió núi. Áo xe chết con á. Trời đâu xe may ghét.', 55667, '2023-06-24 10:36:40.621000', '2023-06-24 10:36:40.621000', NULL, NULL, NULL),
(417, 'Unbranded Fresh Shirtstage', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Joleo', 'Con thuyền hương ghế viết quê một. Đỏ quê tui leo là mượn. Tôi giết chết gì ờ.', 49827, '2023-06-24 10:36:40.630000', '2023-06-24 10:36:40.630000', NULL, NULL, NULL),
(418, 'Elegant Plastic Hatability', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016step-son', 'Con yêu tôi khoảng nước mây hai giày. Á đạp hết phá. Sáu lỗi đã đánh năm thương phá tủ. Mười biết đồng bốn cái. Bơi nghỉ độc thế giày việc chỉ. Giết xuồng mướn.', 73956, '2023-06-24 10:36:40.635000', '2023-06-24 10:36:40.635000', NULL, NULL, NULL),
(419, 'Intelligent Cotton Baconheterosexual', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitdisruption', 'Cửa hóa sáu trăng. Ba xe cửa hết được tui nha dép hương. Quê không thuyền. Chết giết năm bơi hai hai biển đỏ viết. Đá giày lầu thương mướn trăng. Phá chìm núi nón hai trăng cửa.', 21884, '2023-06-24 10:36:40.644000', '2023-06-24 10:36:40.644000', NULL, NULL, NULL),
(420, 'Electronic Bronze Chickenbombing', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportpharmacopoeia', 'Khoảng bơi máy bốn thôi tủ ờ mướn. Bơi viết việc may lỗi chìm khoảng lỗi. Thuê tàu đồng em vàng là may được tui. Được mướn đập núi đập gì áo. Thế nón xanh phá. Ác nón nhà mười nhà kim thôi bè.', 51187, '2023-06-24 10:36:40.653000', '2023-06-24 10:36:40.653000', NULL, NULL, NULL),
(421, 'Generic Soft Chickendoctor', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016vice', 'Nghỉ chết giày lầu dép bè vẽ ghét gì ngọt. May yêu đồng độc việc gì bảy hai. Đánh quê núi. Thích thì bốn tàu gió mướn chết. Kim đã thuê.', 40664, '2023-06-24 10:36:40.659000', '2023-06-24 10:36:40.659000', NULL, NULL, NULL),
(422, 'Rustic Wooden Mouseroll', 'The Football Is Good For Training And Recreational Purposesfuel', 'Bàn vẽ xe chết gió đá đá cái. Á hương trăng đập ghế giết em đâu giết tủ. Phá bơi một hàng leo.', 46123, '2023-06-26 14:37:51.320000', '2023-06-26 14:37:51.320000', NULL, NULL, NULL),
(423, 'Modern Concrete Fishdegradation', 'The Football Is Good For Training And Recreational Purposespiglet', 'Nghỉ ghét năm ngọt bảy trời tàu. Giết ác tủ cửa ruộng nón vàng thế yêu chết. Vá gì tím. Thôi trời lầu một máy. Tám nghỉ mướn làm thương tám. Quần việc đạp đập lầu trời đá máy nghỉ.', 73625, '2023-06-26 14:37:51.328000', '2023-06-26 14:37:51.328000', NULL, NULL, NULL),
(424, 'Intelligent Wooden Shirtgenerator', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesfishmonger', 'Lầu bốn hết chỉ chìm gió thuyền hết. Mười xe quần. Dép bốn đánh. Xanh tôi bảy gì.', 74086, '2023-06-26 14:37:51.335000', '2023-06-26 14:37:51.335000', NULL, NULL, NULL),
(425, 'Unbranded Metal Baconswim', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016prince', 'Ba ngọt đỏ sáu. Tím nghỉ năm thuyền đạp khoảng may nước quần xanh. Đập nón hương đang máy mười giày kim tôi. Bàn khoảng khoảng ừ anh may ừ đá dép thuyền. Đá làm nha vẽ nhà đá.', 50386, '2023-06-26 14:37:51.341000', '2023-06-26 14:37:51.341000', NULL, NULL, NULL),
(426, 'Licensed Soft Soapmacrofauna', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportillness', 'Ờ con dép cửa ờ khâu biển. Chín vẽ ruộng mây ghế đâu. Chết bạn gì chín gió làm vẽ độc đạp được. Nghỉ em việc gì ghế mướn. Tủ chìm núi. Hết leo tám nước gì bạn.', 58612, '2023-06-26 14:37:51.347000', '2023-06-26 14:37:51.347000', NULL, NULL, NULL),
(427, 'Elegant Steel Towelsterminal', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartburden', 'Nhà phá tô giết. Tui làm yêu. May mua mây trăng. Thuyền ác đồng độc. Bốn đỏ ba đỏ hết một tôi chín khoan.', 44891, '2023-06-26 14:37:51.353000', '2023-06-26 14:37:51.353000', NULL, NULL, NULL),
(428, 'Fantastic Steel Keyboardriding', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsscale', 'Đánh nghỉ tui đã chìm vá được mướn đỏ. Viết tui hóa khoan vá biển là. Vàng tui thôi tím bè thuyền khoảng đá. Chìm xe làm độc mười á độc đồng thì độc. Thôi ruộng tám một thế. Thích đang gió bàn nhà hai gì được.', 96505, '2023-06-26 14:37:51.359000', '2023-06-26 14:37:51.359000', NULL, NULL, NULL),
(429, 'Tasty Bronze Shirtyoung', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientseyelashes', 'Vẽ phá hai mây trăng. Ruộng nón đã hàng tủ xuồng vàng. Nha anh ba. Trăng giết đỏ ba thích. Hai bốn chìm được độc tôi biết vẽ. Thế đánh mượn.', 96324, '2023-06-26 14:37:51.366000', '2023-06-26 14:37:51.366000', NULL, NULL, NULL),
(430, 'Luxurious Cotton Shirttarragon', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitself-control', 'Khoảng mượn chìm thuyền đạp bảy không thì. Máy tám bạn vẽ hương thì vá vá. Tám bàn nghỉ một tui ba ghế được.', 20306, '2023-06-26 14:37:51.373000', '2023-06-26 14:37:51.373000', NULL, NULL, NULL),
(431, 'Bespoke Concrete Fishopening', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitwoodland', 'Tím á á ruộng. Thương nha biển mua viết tím độc thuyền. Giày cái may đang năm năm. Đỏ ác tám.', 88063, '2023-06-26 14:37:51.380000', '2023-06-26 14:37:51.380000', NULL, NULL, NULL),
(432, 'Electronic Concrete Pizzafinal', 'New range of formal shirts are designed keeping you in mind. With fits and styling that will make you stand apartbarbecue', 'Hết kim quần thuyền vàng bạn ngọt một khoan nghỉ. Áo ừ ba cửa. Lỗi may thích ác không lầu được bàn khoan bàn. Bốn vá cửa tôi xe hàng không xuồng đang anh.', 24532, '2023-06-26 14:37:51.386000', '2023-06-26 14:37:51.386000', NULL, NULL, NULL),
(433, 'Generic Wooden Sausageslipid', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitysprag', 'Trời tô thuê. Giày hóa hàng ghế máy gió mướn bàn. Vá vẽ biết.', 25925, '2023-06-26 14:37:51.392000', '2023-06-26 14:37:51.392000', NULL, NULL, NULL),
(434, 'Fantastic Metal Hatviscose', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesstandard', 'Đập vẽ bơi phá không thuê. Ác thuyền việc bảy thích đỏ may đâu độc. Yêu việc không đánh anh bàn. Quê tui giết đã trời đập ghét khoảng.', 31563, '2023-06-26 14:37:51.398000', '2023-06-26 14:37:51.398000', NULL, NULL, NULL),
(435, 'Small Concrete Soapsystem', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitysock', 'Hàng thương bốn áo bàn chỉ mây trăng vàng đạp. Xe bơi khoan nước mười máy kim con con. Hai chín mười đã thôi gió xe chỉ không thế. Viết may thuê khâu hương đỏ ruộng quê biết.', 31836, '2023-06-26 14:37:51.404000', '2023-06-26 14:37:51.404000', NULL, NULL, NULL),
(436, 'Rustic Rubber Chairpleasure', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesdome', 'Em trời tô chỉ đập hương tôi bơi mua. Đá tô là thì. Xe giày cửa vẽ chết giết đang mây biết em. Giết nước thế xuồng đang quần bạn. Tui được ác việc leo á làm năm. Quê thôi làm dép xe hết làm dép.', 33178, '2023-06-26 14:37:51.410000', '2023-06-26 14:37:51.410000', NULL, NULL, NULL),
(437, 'Fantastic Soft Ballarmy', 'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800Jatrium', 'Áo kim trời mua đánh đỏ nhà. Núi phá máy lỗi. Bơi hết là cửa bảy khoan. Bơi ác máy trời làm.', 34368, '2023-06-26 14:37:51.417000', '2023-06-26 14:37:51.417000', NULL, NULL, NULL),
(438, 'Rustic Wooden Tablevacation', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsdrill', 'Đỏ bảy quần kim mướn con hàng con. Thế gió thích đỏ độc tôi bàn thế tô ba. May bè đâu giày hàng thương xuồng ừ đỏ. Máy tủ đánh. Ghét tám thế chín gì yêu chìm bè chín giày. Vá năm máy chìm tôi năm tám mượn viết.', 67301, '2023-06-26 14:37:51.424000', '2023-06-26 14:37:51.424000', NULL, NULL, NULL),
(439, 'Bespoke Metal Cheeseheadquarters', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016glass', 'Giết hương ác bè độc anh yêu thương thích. Cửa chìm chín bơi yêu. Thế khoan ác thương ba hai tím không phá cửa. Bảy gió ác mười. Chìm sáu ác là may chết leo đang hai chín. Xanh yêu gì bàn mười thuyền trăng vá viết.', 40883, '2023-06-26 14:37:51.431000', '2023-06-26 14:37:51.431000', NULL, NULL, NULL),
(440, 'Licensed Plastic Chairshipping', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportparadise', 'Á tô mây lầu việc mượn nước mượn máy may. Ngọt mướn xuồng tủ mướn gió được ruộng. Bè khâu hàng được khoan thì em đập. Tám đang ba bốn việc á chỉ tím. Gió nước vàng độc thuê.', 42957, '2023-06-26 14:37:51.438000', '2023-06-26 14:37:51.438000', NULL, NULL, NULL),
(441, 'Licensed Frozen Chickendensity', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientssalesman', 'May mười biết con tàu. Quần năm đồng nha hai. Được mượn đồng bốn. Yêu đỏ thương hết lỗi may.', 93509, '2023-06-26 14:37:51.444000', '2023-06-26 14:37:51.444000', NULL, NULL, NULL),
(442, 'Awesome Steel Mouserebellion', 'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active musclesear', 'Ừ phá hương biển quê xanh. Lỗi chết nha lầu thôi leo yêu. Đang đâu nón lỗi mây.', 95083, '2023-06-26 14:37:51.450000', '2023-06-26 14:37:51.450000', NULL, NULL, NULL),
(443, 'Practical Cotton Ballembryo', 'The Football Is Good For Training And Recreational Purposesafternoon', 'Tôi con làm. Trăng hương em. Chỉ tám được không xuồng. Năm bè thì chìm bốn tôi một tím tám biển. Dép ba bạn mười đánh vẽ chìm được đập. Đang thế xanh bạn nón á bạn.', 28561, '2023-06-26 14:37:51.457000', '2023-06-26 14:37:51.457000', NULL, NULL, NULL),
(444, 'Sleek Soft Baconpoultry', 'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern designpoll', 'Xe thích hương đạp mượn đỏ thôi biển. Nghỉ yêu giày nghỉ một tím hóa ngọt dép. Một cửa hai quần mười. Thuê xuồng gì yêu vẽ tô. Thế vá chết cửa tím chìm làm chết.', 75328, '2023-06-26 14:37:51.463000', '2023-06-26 14:37:51.463000', NULL, NULL, NULL),
(445, 'Awesome Cotton Cheeseproductivity', 'Ergonomic executive chair upholstered in bonded black leather and PVC padded seat and back for all-day comfort and supportglass', 'Viết hương vẽ quần nhà ghế thuê sáu tàu là. Kim thuê chín lầu ác dép vẽ gió. Thuyền chỉ thuyền hết tím chín hóa. Biết may giết trời đỏ.', 78020, '2023-06-26 14:37:51.469000', '2023-06-26 14:37:51.469000', NULL, NULL, NULL),
(446, 'Bespoke Wooden Glovescasserole', 'Carbonite web goalkeeper gloves are ergonomically designed to give easy fitfratricide', 'Thì em tím mướn á gì quần chết. Tủ ngọt phá đá đập nhà giết yêu ừ. Đánh nghỉ vàng thích mướn chìm mua ba anh. Chỉ may bốn hết độc ác. Vẽ nha được chín.', 84930, '2023-06-26 14:37:51.475000', '2023-06-26 14:37:51.475000', NULL, NULL, NULL),
(447, 'Generic Bronze Pizzafootprint', 'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drivekeeper', 'Á á thuê hai. Thương bơi tím lầu ngọt núi xanh. Khâu ừ á ba đánh hương thôi đập con lầu. Thuê thế không tôi khoảng ghế ác tủ. Ừ tàu khâu mướn khâu tô vá viết chỉ.', 81990, '2023-06-26 14:37:51.482000', '2023-06-26 14:37:51.482000', NULL, NULL, NULL),
(448, 'Small Rubber Tunatour', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitythrone', 'Hương ghế biển yêu nước núi bàn. Tui phá đồng biết xanh chín hương lỗi chỉ giết. Độc núi đồng đã lầu ruộng nhà em chín. Chín ruộng cái thích vàng mây ruộng tôi bè. Leo ghế ờ vá thích. Đang đánh yêu tui nghỉ khoan cái độc xanh tám.', 64245, '2023-06-26 14:37:51.488000', '2023-06-26 14:37:51.488000', NULL, NULL, NULL),
(449, 'Tasty Concrete Saladpudding', 'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016eponym', 'Xe bạn đỏ làm. Đỏ viết cửa. Độc nón hóa máy trời.', 28709, '2023-06-26 14:37:51.494000', '2023-06-26 14:37:51.494000', NULL, NULL, NULL),
(450, 'Fantastic Cotton Ballpledge', 'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredientsgather', 'Thế yêu tủ. Lỗi thuyền hai mượn độc mười độc thế bè. Thương viết năm máy gì một viết đá hóa mua. Mười nghỉ thuyền gì em đã bạn. Trăng nghỉ đỏ lầu tủ nón khâu hàng đồng thương. Ruộng anh bốn đang được con một đá dép lầu.', 52252, '2023-06-26 14:37:51.500000', '2023-06-26 14:37:51.500000', NULL, NULL, NULL),
(451, 'Practical Granite Chairdegradation', 'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionalitystatin', 'Gió ba cửa biết nước không. Xe con nghỉ quê đập. Xanh năm hết tô mướn ác bốn ừ. Được nha ruộng khoan việc.', 80476, '2023-06-26 14:37:51.505000', '2023-06-26 14:37:51.505000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_category_links`
--

CREATE TABLE `products_category_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `products_category_links`
--

INSERT INTO `products_category_links` (`id`, `product_id`, `category_id`) VALUES
(1, 1, 1),
(2, 1, 16),
(53, 1, 18),
(54, 2, 12),
(3, 2, 23),
(55, 3, 4),
(4, 3, 16),
(5, 4, 17),
(56, 4, 18),
(57, 5, 7),
(6, 5, 17),
(7, 6, 24),
(58, 6, 25),
(8, 7, 3),
(59, 7, 20),
(9, 8, 6),
(60, 8, 16),
(61, 9, 8),
(10, 9, 10),
(62, 10, 11),
(11, 10, 22),
(63, 11, 13),
(12, 11, 21),
(13, 12, 16),
(64, 12, 24),
(14, 13, 16),
(65, 13, 20),
(66, 14, 3),
(15, 14, 20),
(67, 15, 9),
(16, 15, 16),
(68, 16, 10),
(17, 16, 21),
(69, 17, 4),
(18, 17, 23),
(70, 18, 1),
(19, 18, 21),
(20, 19, 3),
(71, 19, 22),
(21, 20, 1),
(72, 20, 7),
(73, 21, 15),
(22, 21, 16),
(74, 22, 10),
(23, 22, 11),
(75, 23, 2),
(24, 23, 25),
(76, 24, 11),
(25, 24, 19),
(26, 25, 11),
(77, 25, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'tokenA', 'CHI DUOC XEM CATEGORY', 'custom', 'a9ac69db39fa0580594dbbccee8c518c35f2a4465279dde1a1354f374b179f72567f20a088797f0c96cd78562701b760e243d5fd4f4413df2e984c4494016fb3', '2023-06-26 16:31:32.498000', NULL, NULL, '2023-06-07 10:33:59.633000', '2023-06-26 16:31:32.498000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `strapi_api_token_permissions`
--

INSERT INTO `strapi_api_token_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'api::category.category.find', '2023-06-07 10:33:59.640000', '2023-06-07 10:33:59.640000', NULL, NULL),
(2, 'api::category.category.findOne', '2023-06-07 10:33:59.640000', '2023-06-07 10:33:59.640000', NULL, NULL),
(3, 'api::product.product.find', '2023-06-07 10:33:59.641000', '2023-06-07 10:33:59.641000', NULL, NULL),
(4, 'api::product.product.findOne', '2023-06-07 10:33:59.641000', '2023-06-07 10:33:59.641000', NULL, NULL),
(5, 'api::product.product.create', '2023-06-07 10:33:59.641000', '2023-06-07 10:33:59.641000', NULL, NULL),
(6, 'api::product.product.update', '2023-06-07 10:33:59.641000', '2023-06-07 10:33:59.641000', NULL, NULL),
(7, 'api::product.product.delete', '2023-06-07 10:33:59.641000', '2023-06-07 10:33:59.641000', NULL, NULL),
(8, 'api::category.category.create', '2023-06-07 14:26:49.613000', '2023-06-07 14:26:49.613000', NULL, NULL),
(9, 'api::category.category.update', '2023-06-07 14:30:58.461000', '2023-06-07 14:30:58.461000', NULL, NULL),
(10, 'api::category.category.delete', '2023-06-07 14:32:10.352000', '2023-06-07 14:32:10.352000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `strapi_api_token_permissions_token_links`
--

INSERT INTO `strapi_api_token_permissions_token_links` (`id`, `api_token_permission_id`, `api_token_id`, `api_token_permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 1),
(7, 7, 1, 1),
(8, 8, 1, 2),
(9, 9, 1, 3),
(10, 10, 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":150},\"description\":{\"type\":\"text\",\"default\":\"Mô tả category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":150},\"description\":{\"type\":\"text\",\"default\":\"Mô tả category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":150},\"description\":{\"type\":\"string\",\"required\":true},\"detail\":{\"type\":\"richtext\",\"required\":true},\"price\":{\"type\":\"integer\",\"required\":true,\"max\":100000,\"min\":20000},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":150},\"description\":{\"type\":\"string\",\"required\":true},\"detail\":{\"type\":\"richtext\",\"required\":true},\"price\":{\"type\":\"integer\",\"required\":true,\"max\":100000,\"min\":20000},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"28 0 8 * * 6\",\"lastWeeklyUpdate\":1687568403062}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"categoryName\",\"defaultSortBy\":\"categoryName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"categoryName\":{\"edit\":{\"label\":\"categoryName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"categoryName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"categoryName\",\"description\",\"createdAt\"],\"edit\":[[{\"name\":\"categoryName\",\"size\":6},{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"uid\":\"api::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"productName\",\"defaultSortBy\":\"productName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"productName\":{\"edit\":{\"label\":\"productName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"detail\":{\"edit\":{\"label\":\"detail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"detail\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"categoryName\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"productName\",\"description\",\"price\"],\"edit\":[[{\"name\":\"productName\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"detail\",\"size\":12}],[{\"name\":\"price\",\"size\":4},{\"name\":\"image\",\"size\":6}],[{\"name\":\"category\",\"size\":6}]]}}', 'object', NULL, NULL),
(25, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(6, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"category_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"detail\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_category_links\",\"indexes\":[{\"name\":\"products_category_links_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_category_links_inv_fk\",\"columns\":[\"category_id\"]},{\"name\":\"products_category_links_unique\",\"columns\":[\"product_id\",\"category_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"products_category_links_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_category_links_inv_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"],\"type\":null},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"],\"type\":null}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-06-07 18:53:37', '53b4fb7ea9bde23a1eccab371c447ce3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'product', 1, '/1', '2023-06-07 09:05:40.719000', '2023-06-07 09:05:40.719000', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-06-07 08:55:32.901000', '2023-06-07 08:55:32.901000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-06-07 08:55:32.901000', '2023-06-07 08:55:32.901000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-06-07 08:55:32.908000', '2023-06-07 08:55:32.908000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-06-07 08:55:32.908000', '2023-06-07 08:55:32.908000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-06-07 08:55:32.908000', '2023-06-07 08:55:32.908000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-06-07 08:55:32.908000', '2023-06-07 08:55:32.908000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-06-07 08:55:32.908000', '2023-06-07 08:55:32.908000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-06-07 08:55:32.908000', '2023-06-07 08:55:32.908000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-06-07 08:55:32.908000', '2023-06-07 08:55:32.908000', NULL, NULL),
(10, 'api::product.product.find', '2023-06-07 14:36:49.836000', '2023-06-07 14:36:49.836000', NULL, NULL),
(11, 'api::product.product.findOne', '2023-06-07 14:36:49.836000', '2023-06-07 14:36:49.836000', NULL, NULL),
(12, 'api::category.category.find', '2023-06-07 14:37:50.293000', '2023-06-07 14:37:50.293000', NULL, NULL),
(13, 'api::category.category.findOne', '2023-06-07 14:37:50.293000', '2023-06-07 14:37:50.293000', NULL, NULL),
(14, 'api::product.product.find', '2023-06-07 14:37:50.293000', '2023-06-07 14:37:50.293000', NULL, NULL),
(15, 'api::product.product.findOne', '2023-06-07 14:37:50.293000', '2023-06-07 14:37:50.293000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 4, 2, 1),
(5, 7, 2, 1),
(6, 6, 2, 1),
(7, 8, 2, 1),
(8, 5, 2, 1),
(9, 9, 2, 2),
(10, 11, 2, 3),
(11, 10, 2, 3),
(12, 12, 1, 2),
(13, 13, 1, 3),
(14, 14, 1, 3),
(15, 15, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-06-07 08:55:32.890000', '2023-06-07 14:37:50.288000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-06-07 08:55:32.894000', '2023-06-07 14:36:49.831000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'foobar', 'foo.bar@strapi.io', 'local', '$2a$10$ojdQaa.62nnUldQqWi/obOJjbGZHy50edD9G11Z1VtkWEW9bPq/TW', NULL, NULL, 1, 0, '2023-06-07 14:48:51.885000', '2023-06-07 14:48:51.885000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Đang đổ dữ liệu cho bảng `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Chỉ mục cho bảng `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Chỉ mục cho bảng `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_category_links_unique` (`product_id`,`category_id`),
  ADD KEY `products_category_links_fk` (`product_id`),
  ADD KEY `products_category_links_inv_fk` (`category_id`);

--
-- Chỉ mục cho bảng `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Chỉ mục cho bảng `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Chỉ mục cho bảng `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Chỉ mục cho bảng `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Chỉ mục cho bảng `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Chỉ mục cho bảng `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT cho bảng `products_category_links`
--
ALTER TABLE `products_category_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD CONSTRAINT `products_category_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
