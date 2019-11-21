-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 21 2019 г., 10:08
-- Версия сервера: 5.7.24
-- Версия PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fbp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(10) UNSIGNED NOT NULL,
  `article` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `redarea` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `greenarea` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `article`, `name`, `description`, `category`, `subcategory`, `price`, `picture`, `redarea`, `greenarea`) VALUES
(1, '460153', '1С:Розница 8. Базовая версия', 'Коробка 1С:Розница 8. Базовая версия', 2, 4, 3300, 'roznitsa.png', 'Хит продаж', ''),
(2, '460154', '1С:Бухгалтерия 8. Базовая версия', 'Коробка 1С:Бухгалтерия 8. Базовая версия', 2, 4, 4800, 'buhgalteriya.png', '', ''),
(3, '4601531', '1С Розница:8 ПРОФ', 'Коробка 1С Розница:8 ПРОФ', 2, 4, 13000, 'roznitsa.png', '', 'Акция'),
(4, '460154', '1С:Бухгалтерия 8. ПРОФ', 'Коробка 1С:Бухгалтерия 8. ПРОФ', 2, 4, 13000, 'buhgalteriya.png', 'Хит продаж', ''),
(5, '460157', '1С:Зарплата и управление персоналом 8', 'Коробка 1С:Зарплата и управление персоналом 8', 2, 4, 7400, 'zarplata.png', '', 'Акция'),
(6, '460159', '1С:Управление торговлей 8', 'Коробка 1С:Управление торговлей 8', 2, 4, 6700, 'torgovlya.png', '', ''),
(7, '460164', 'Атол 90', 'Касса Атол 90', 2, 3, 7190, 'atol90.png', 'Хит продаж', ''),
(8, '460166', 'Атол 22ф', 'Касса Атол 22ф', 2, 3, 8700, 'atol22.png', '', ''),
(9, '460169', 'Атол 25ф', 'Касса Атол 25ф', 2, 3, 19600, 'atol25.png', '', 'Акция'),
(10, '460174', 'Атол 11ф', 'Касса Атол 11ф', 2, 3, 5000, 'atol11.png', 'Хит продаж', ''),
(11, '460172', 'Атол 42фc', 'Касса Атол 11ф', 2, 3, 25000, 'atol42.png', '', ''),
(12, '460172', 'Атол сигма 10', 'Касса Атол сигма 10', 2, 3, 17000, 'atol42.png', 'Хит продаж', ''),
(13, '460185', 'Установка программного продукта 1С', 'Услуга по установке программного продукта 1С', 1, 1, 1700, 'tij1.png', 'Хит продаж', ''),
(14, '46019491', 'Перенос данных из программ сторонних разработчиков и ранних версий', 'Услуга по переносу данных из программ сторонних разработчиков и ранних версий', 1, 1, 1700, 'tij2.png', '', ''),
(15, '46019491421', '1С:Управление торговлей. Основные принципы работы с программой', 'Услуга по обучению 1С:Управление торговлей', 1, 1, 10000, 'tij3.png', '', 'Акция'),
(16, '460194', 'Профессиональная работа в программе 1С:Документооборот', 'Услуга по обучению профессиональной работы в программе 1С:Документооборот', 1, 1, 9000, 'tij.png', '', ''),
(17, '4601942', 'Автоматизация 1С-АНАЛИТ:Медицинское учреждение\r\n\r\n', 'Услуга по автоматизации 1С-АНАЛИТ:Медицинское учреждение\r\n', 1, 2, 12000, 'auto1.png', '', 'Акция'),
(18, '46019424', 'Автоматизация 1С-БИТ.Расчеты со студентами\r\n\r\n', 'Услуга по автоматизации 1С-БИТ.Расчеты со студентами', 1, 2, 40000, 'auto3.png', '', ''),
(19, '460194242', 'Автоматизация 1С-БИТ.Расчёт стипендий 8\r\n\r\n', 'Услуга по автоматизации БИТ.Расчёт стипендий 8', 1, 2, 38000, 'auto.png', 'Хит продаж', ''),
(20, '460194242', 'Автоматизация 1С-БИТ.ЖКХ 8\r\n\r\n', 'Услуга по автоматизации БИТ.ЖКХ 8', 1, 2, 9000, 'auto2.png', '', ''),
(21, '460149', '1С:Управление небольшой фирмой 8. Базовая', 'Коробка 1С:Управление небольшой фирмой 8. Базовая', 2, 4, 5400, 'UNF-Bazovaya1511204859-e1540408186685.png', '', 'Акция');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `text`) VALUES
(1, 'Услуги'),
(2, 'Товары');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `logo`, `name`, `url`) VALUES
(1, 'logo.jpg', 'Интернет-магазин автозапчастей', 'https://www.vapart.ru/'),
(2, '5027e65cd737fafbf6280f3a08347328.jpg', 'Хоббирум', 'https://hobbyrum.ru/'),
(4, 'hr2.jpg', 'Хрустайм', ''),
(5, 'sva.jpg', 'Сварожич', ''),
(6, 'tekstil.jpg', 'Текстиль', ''),
(7, 'arenaavto.jpg', 'Арена авто', ''),
(8, 'saphire.jpg', 'Сапфир', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_31_042319_create_programs_table', 1),
(4, '2018_05_31_091548_create_mobile_table', 1),
(5, '2018_05_31_091620_create_catalog_table', 1),
(6, '2018_05_31_091651_create_orders_table', 1),
(7, '2018_05_31_091706_create_programmers_table', 1),
(8, '2018_06_05_060718_create_applications_table', 1),
(9, '2018_06_05_081151_create_services_table', 1),
(10, '2018_06_06_084536_create_slider_table', 1),
(11, '2018_06_13_043234_create_clients_table', 1),
(12, '2018_06_18_093202_create_detail_table', 1),
(13, '2018_06_20_095951_create_category_table', 1),
(14, '2018_06_21_070822_create_subcategory_table', 1),
(15, '2018_06_21_093221_create_promo_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `versionid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `userid`, `versionid`, `qty`, `status`, `order`, `created_at`, `updated_at`) VALUES
(8, 205, 60, 8, 'Принят', 'Новый заказ', '2019-07-25 03:53:24', '2019-06-10 11:53:51'),
(9, 48, 9, 5, 'Принят', 'Новый заказ', '2019-08-21 05:20:09', '2019-03-29 06:01:03'),
(10, 628, 82, 10, 'Принят', 'Новый заказ', '2019-10-07 21:54:56', '2019-10-16 02:20:13'),
(11, 297, 67, 5, 'Принят', 'Новый заказ', '2019-06-15 13:12:11', '2019-12-06 09:06:15'),
(12, 35, 12, 9, 'Принят', 'Новый заказ', '2019-12-21 23:47:32', '2019-05-06 06:47:39'),
(13, 422, 3, 3, 'Принят', 'Новый заказ', '2019-03-29 23:45:19', '2019-10-11 18:06:12'),
(14, 577, 94, 2, 'Принят', 'Новый заказ', '2019-09-14 19:13:45', '2019-11-21 20:22:58'),
(15, 414, 89, 6, 'Принят', 'Новый заказ', '2019-10-13 21:47:06', '2020-01-13 14:19:12'),
(16, 142, 8, 3, 'Принят', 'Новый заказ', '2019-12-01 01:15:56', '2019-08-25 18:50:00'),
(17, 352, 21, 1, 'Принят', 'Новый заказ', '2019-08-06 19:20:25', '2019-07-22 11:35:52'),
(18, 571, 95, 1, 'Принят', 'Новый заказ', '2020-01-07 01:27:27', '2020-01-04 07:21:26'),
(19, 661, 38, 5, 'Принят', 'Новый заказ', '2019-06-28 23:20:39', '2020-01-08 01:23:17'),
(20, 933, 77, 7, 'Принят', 'Новый заказ', '2019-05-01 05:44:31', '2019-03-03 00:45:36'),
(21, 364, 54, 8, 'Принят', 'Новый заказ', '2019-11-11 20:23:29', '2019-10-13 15:14:18'),
(22, 765, 88, 1, 'Принят', 'Новый заказ', '2019-06-19 11:20:13', '2019-11-10 23:41:00'),
(23, 322, 79, 6, 'Принят', 'Новый заказ', '2019-08-29 00:17:05', '2019-03-12 07:51:06'),
(24, 320, 96, 2, 'Принят', 'Новый заказ', '2019-10-28 21:09:41', '2019-10-12 01:44:17'),
(25, 492, 44, 5, 'Принят', 'Новый заказ', '2019-04-01 19:03:04', '2019-11-23 07:27:21'),
(26, 817, 28, 2, 'Принят', 'Новый заказ', '2019-07-20 17:50:06', '2019-08-21 02:17:37'),
(27, 177, 27, 10, 'Принят', 'Новый заказ', '2019-12-09 09:11:14', '2019-09-04 15:10:12'),
(28, 702, 94, 5, 'Принят', 'Новый заказ', '2020-01-02 17:26:29', '2019-09-08 07:32:36'),
(29, 267, 80, 1, 'Принят', 'Новый заказ', '2019-04-23 19:08:58', '2019-11-14 20:24:26'),
(30, 883, 16, 7, 'Принят', 'Новый заказ', '2020-01-08 00:41:25', '2019-04-05 17:55:54'),
(31, 503, 49, 3, 'Принят', 'Новый заказ', '2019-12-17 11:13:44', '2019-08-08 19:36:00'),
(32, 989, 49, 8, 'Принят', 'Новый заказ', '2019-08-17 16:11:18', '2019-02-25 05:53:41'),
(33, 718, 3, 10, 'Принят', 'Новый заказ', '2019-08-31 19:04:29', '2019-10-09 17:15:42'),
(34, 620, 7, 5, 'Принят', 'Новый заказ', '2019-10-20 15:15:40', '2019-02-25 10:41:32'),
(35, 89, 59, 5, 'Принят', 'Новый заказ', '2019-04-23 05:25:21', '2019-11-23 09:08:21'),
(36, 589, 89, 7, 'Принят', 'Новый заказ', '2019-10-25 18:06:39', '2019-09-27 05:44:04'),
(37, 380, 5, 7, 'Принят', 'Новый заказ', '2019-06-10 15:50:05', '2019-11-16 00:09:28'),
(38, 184, 3, 1, 'Принят', 'Новый заказ', '2019-08-18 04:48:15', '2019-08-08 09:12:28'),
(39, 210, 24, 10, 'Принят', 'Новый заказ', '2019-08-12 00:26:30', '2019-07-28 23:37:59'),
(40, 404, 92, 3, 'Принят', 'Новый заказ', '2019-06-30 18:33:23', '2019-05-28 04:24:23'),
(41, 282, 25, 7, 'Принят', 'Новый заказ', '2019-12-18 19:11:09', '2019-12-29 09:54:05'),
(42, 228, 58, 4, 'Принят', 'Новый заказ', '2019-06-08 01:59:02', '2019-12-28 02:44:49'),
(43, 648, 59, 10, 'Принят', 'Новый заказ', '2019-12-08 18:34:21', '2019-10-09 12:03:04'),
(44, 841, 86, 4, 'Принят', 'Новый заказ', '2019-12-19 00:49:27', '2019-06-20 19:38:19'),
(45, 953, 54, 6, 'Принят', 'Новый заказ', '2019-08-28 05:25:27', '2019-09-16 22:03:00'),
(46, 908, 73, 7, 'Принят', 'Новый заказ', '2019-09-13 01:43:51', '2019-09-15 06:36:17'),
(47, 687, 30, 9, 'Принят', 'Новый заказ', '2019-03-14 12:32:03', '2019-06-26 20:34:49'),
(48, 808, 50, 10, 'Принят', 'Новый заказ', '2019-02-21 10:34:34', '2019-10-05 07:34:52'),
(49, 430, 33, 9, 'Принят', 'Новый заказ', '2019-10-08 14:55:22', '2019-03-06 07:35:31'),
(50, 887, 4, 9, 'Принят', 'Новый заказ', '2019-04-19 20:39:58', '2019-12-13 06:49:04'),
(51, 109, 53, 8, 'Принят', 'Новый заказ', '2019-04-25 18:29:11', '2019-11-26 05:54:40'),
(52, 712, 11, 9, 'Принят', 'Новый заказ', '2019-07-30 01:05:16', '2019-07-23 22:16:34'),
(53, 241, 52, 2, 'Принят', 'Новый заказ', '2019-10-19 02:46:52', '2019-04-19 15:53:24'),
(54, 318, 52, 6, 'Принят', 'Новый заказ', '2019-12-27 06:57:15', '2019-08-07 10:36:56'),
(55, 191, 92, 3, 'Принят', 'Новый заказ', '2019-08-12 11:38:20', '2019-12-28 03:07:16'),
(56, 457, 47, 2, 'Принят', 'Новый заказ', '2019-07-28 10:12:59', '2020-01-10 10:40:45'),
(57, 415, 53, 9, 'Принят', 'Новый заказ', '2019-11-08 00:37:24', '2019-11-16 21:34:05'),
(58, 853, 72, 5, 'Принят', 'Новый заказ', '2019-12-20 00:14:11', '2019-11-26 00:35:02'),
(59, 714, 64, 3, 'Принят', 'Новый заказ', '2019-03-26 18:46:00', '2019-07-06 19:24:35'),
(60, 450, 87, 5, 'Принят', 'Новый заказ', '2019-07-24 09:22:15', '2019-10-30 09:19:59'),
(61, 486, 25, 7, 'Принят', 'Новый заказ', '2019-10-29 05:23:13', '2019-07-30 07:22:02'),
(62, 654, 65, 1, 'Принят', 'Новый заказ', '2019-05-23 21:52:34', '2019-11-25 16:05:32'),
(63, 964, 34, 3, 'Принят', 'Новый заказ', '2019-07-02 11:58:38', '2019-06-17 16:23:25'),
(64, 597, 9, 10, 'Принят', 'Новый заказ', '2019-10-27 11:42:55', '2019-02-22 11:30:46'),
(65, 485, 9, 9, 'Принят', 'Новый заказ', '2019-05-11 18:13:04', '2019-06-23 08:21:51'),
(66, 376, 85, 3, 'Принят', 'Новый заказ', '2019-06-09 19:04:58', '2019-11-13 23:22:12'),
(67, 720, 18, 5, 'Принят', 'Новый заказ', '2019-11-05 13:18:56', '2019-03-12 13:40:39'),
(68, 306, 41, 3, 'Принят', 'Новый заказ', '2019-10-22 06:00:53', '2019-09-19 12:17:20'),
(69, 942, 97, 4, 'Принят', 'Новый заказ', '2019-04-11 11:30:46', '2019-07-30 04:03:05'),
(70, 173, 36, 5, 'Принят', 'Новый заказ', '2019-06-07 08:42:23', '2019-03-23 20:22:02'),
(71, 265, 81, 4, 'Принят', 'Новый заказ', '2019-10-24 23:14:43', '2019-12-18 03:51:32'),
(72, 479, 62, 7, 'Принят', 'Новый заказ', '2019-06-18 15:33:27', '2019-03-11 07:40:11'),
(73, 890, 28, 3, 'Принят', 'Новый заказ', '2019-03-12 23:04:57', '2019-12-26 08:39:27'),
(74, 700, 70, 6, 'Принят', 'Новый заказ', '2019-05-12 19:48:34', '2019-08-18 03:36:53'),
(75, 376, 40, 9, 'Принят', 'Новый заказ', '2019-02-21 14:02:42', '2019-09-30 15:28:39'),
(76, 527, 98, 8, 'Принят', 'Новый заказ', '2019-03-25 18:19:46', '2019-10-17 21:06:49'),
(77, 860, 93, 4, 'Принят', 'Новый заказ', '2019-07-06 11:08:57', '2019-08-09 06:23:22'),
(78, 120, 91, 10, 'Принят', 'Новый заказ', '2019-09-06 19:47:08', '2019-02-20 19:59:20'),
(79, 338, 59, 6, 'Принят', 'Новый заказ', '2019-05-14 15:08:56', '2019-04-26 04:47:57'),
(80, 354, 29, 6, 'Принят', 'Новый заказ', '2019-07-25 22:43:33', '2019-04-02 02:38:35'),
(81, 883, 33, 1, 'Принят', 'Новый заказ', '2019-11-29 16:20:45', '2019-12-10 04:19:54'),
(82, 82, 51, 6, 'Принят', 'Новый заказ', '2019-12-08 11:33:45', '2019-07-23 18:38:57'),
(83, 927, 55, 6, 'Принят', 'Новый заказ', '2019-10-09 18:41:00', '2019-05-23 15:53:07'),
(84, 366, 82, 10, 'Принят', 'Новый заказ', '2019-05-03 00:29:20', '2019-08-27 01:20:25'),
(85, 491, 38, 1, 'Принят', 'Новый заказ', '2019-03-31 21:33:42', '2020-01-16 02:10:37'),
(86, 743, 54, 9, 'Принят', 'Новый заказ', '2019-08-09 19:41:20', '2019-09-28 04:17:12'),
(87, 433, 92, 3, 'Принят', 'Новый заказ', '2019-11-21 10:47:58', '2019-08-10 06:28:06'),
(88, 470, 35, 10, 'Принят', 'Новый заказ', '2020-01-17 02:31:28', '2019-10-10 01:09:03'),
(89, 712, 49, 7, 'Принят', 'Новый заказ', '2019-02-23 00:49:47', '2019-04-09 22:26:14'),
(90, 764, 53, 7, 'Принят', 'Новый заказ', '2020-01-13 14:35:48', '2019-05-25 19:43:10'),
(91, 630, 88, 8, 'Принят', 'Новый заказ', '2019-04-27 10:10:05', '2019-07-25 06:21:49'),
(92, 74, 18, 3, 'Принят', 'Новый заказ', '2019-03-04 04:12:39', '2019-10-03 22:42:17'),
(93, 82, 57, 7, 'Принят', 'Новый заказ', '2019-03-20 07:49:24', '2019-10-15 19:03:46'),
(94, 301, 51, 4, 'Принят', 'Новый заказ', '2019-09-23 22:04:18', '2019-04-19 04:38:00'),
(95, 801, 6, 7, 'Принят', 'Новый заказ', '2019-11-19 09:21:31', '2019-12-04 05:59:48'),
(96, 80, 7, 10, 'Принят', 'Новый заказ', '2019-09-26 09:12:43', '2019-12-22 06:24:22'),
(97, 626, 3, 3, 'Принят', 'Новый заказ', '2019-03-17 07:07:29', '2019-12-09 20:02:00'),
(98, 7, 1, 9, 'Принят', 'Новый заказ', '2019-04-05 06:32:57', '2019-05-21 08:01:25'),
(99, 729, 63, 9, 'Принят', 'Новый заказ', '2019-08-03 14:45:14', '2019-12-16 01:56:08'),
(100, 894, 31, 9, 'Принят', 'Новый заказ', '2019-03-24 13:50:23', '2019-07-30 02:44:13'),
(101, 880, 76, 4, 'Принят', 'Новый заказ', '2019-11-18 18:50:27', '2019-08-16 02:28:17'),
(102, 38, 6, 7, 'Принят', 'Новый заказ', '2019-10-14 21:50:44', '2019-03-25 22:35:20'),
(103, 694, 25, 1, 'Принят', 'Новый заказ', '2019-07-14 15:05:32', '2019-12-13 14:02:19'),
(104, 430, 69, 10, 'Принят', 'Новый заказ', '2019-09-28 05:14:49', '2019-09-20 18:23:48'),
(105, 876, 18, 2, 'Принят', 'Новый заказ', '2019-07-08 03:50:53', '2019-06-03 11:29:25'),
(106, 51, 20, 7, 'Принят', 'Новый заказ', '2019-05-29 09:22:53', '2020-01-01 07:20:38'),
(107, 479, 7, 1, 'Принят', 'Новый заказ', '2019-06-09 00:04:08', '2019-07-11 15:21:18'),
(108, 88, 47, 10, 'Принят', 'Новый заказ', '2020-01-06 12:32:29', '2019-05-17 15:18:10'),
(109, 145, 19, 5, 'Принят', 'Новый заказ', '2019-03-20 16:00:15', '2019-11-02 05:58:47'),
(110, 202, 46, 2, 'Принят', 'Новый заказ', '2019-02-19 05:44:32', '2019-11-18 04:39:14'),
(111, 362, 75, 7, 'Принят', 'Новый заказ', '2019-02-19 23:41:42', '2019-03-01 17:15:03'),
(112, 771, 45, 1, 'Принят', 'Новый заказ', '2019-12-05 13:47:59', '2019-10-23 19:42:34'),
(113, 712, 20, 6, 'Принят', 'Новый заказ', '2019-07-14 11:09:06', '2019-07-18 07:44:20'),
(114, 149, 35, 2, 'Принят', 'Новый заказ', '2019-04-21 09:52:03', '2019-06-21 14:35:32'),
(115, 127, 44, 7, 'Принят', 'Новый заказ', '2019-03-16 07:53:35', '2019-12-06 10:55:10'),
(116, 893, 90, 10, 'Принят', 'Новый заказ', '2019-03-15 06:53:38', '2019-04-10 14:36:47'),
(117, 118, 11, 3, 'Принят', 'Новый заказ', '2019-05-20 03:18:55', '2019-12-07 09:14:32'),
(118, 48, 93, 1, 'Принят', 'Новый заказ', '2019-07-04 05:50:51', '2019-06-29 06:21:31'),
(119, 53, 80, 7, 'Принят', 'Новый заказ', '2019-05-05 04:34:56', '2019-07-25 04:35:53'),
(120, 358, 61, 7, 'Принят', 'Новый заказ', '2020-01-08 17:20:50', '2019-11-30 00:02:24'),
(121, 386, 33, 8, 'Принят', 'Новый заказ', '2019-05-05 16:57:13', '2019-10-21 15:47:58'),
(122, 551, 72, 7, 'Принят', 'Новый заказ', '2019-06-15 08:40:32', '2019-04-13 10:35:54'),
(123, 919, 99, 8, 'Принят', 'Новый заказ', '2019-06-06 02:01:51', '2019-02-20 19:55:10'),
(124, 569, 86, 10, 'Принят', 'Новый заказ', '2019-11-06 23:49:12', '2019-04-05 10:45:34'),
(125, 52, 77, 10, 'Принят', 'Новый заказ', '2019-09-02 00:14:36', '2019-06-09 13:46:35'),
(126, 819, 74, 5, 'Принят', 'Новый заказ', '2019-08-31 03:30:09', '2019-06-21 02:38:16'),
(127, 16, 66, 5, 'Принят', 'Новый заказ', '2019-03-25 08:28:13', '2019-10-11 09:34:41'),
(128, 435, 42, 9, 'Принят', 'Новый заказ', '2019-05-10 17:44:28', '2019-06-08 03:29:32'),
(129, 145, 84, 1, 'Принят', 'Новый заказ', '2019-08-21 03:23:05', '2019-12-19 16:00:27'),
(130, 510, 54, 5, 'Принят', 'Новый заказ', '2019-08-06 10:22:54', '2019-05-31 17:51:58'),
(131, 116, 97, 7, 'Принят', 'Новый заказ', '2019-10-27 03:33:03', '2019-11-18 08:31:53'),
(132, 362, 59, 3, 'Принят', 'Новый заказ', '2019-12-19 00:30:53', '2019-10-20 20:27:44'),
(133, 197, 43, 8, 'Принят', 'Новый заказ', '2019-10-02 03:55:03', '2019-05-21 08:43:36'),
(134, 774, 14, 9, 'Принят', 'Новый заказ', '2019-04-10 00:06:59', '2019-04-10 12:11:01'),
(135, 501, 57, 2, 'Принят', 'Новый заказ', '2019-03-04 14:17:50', '2019-03-20 03:30:47'),
(136, 256, 13, 1, 'Принят', 'Новый заказ', '2019-04-07 20:35:04', '2019-10-26 00:41:31'),
(137, 238, 96, 5, 'Принят', 'Новый заказ', '2019-11-22 22:53:40', '2019-10-10 23:33:19'),
(138, 274, 8, 7, 'Принят', 'Новый заказ', '2019-11-03 23:35:53', '2019-10-20 19:13:14'),
(139, 954, 62, 8, 'Принят', 'Новый заказ', '2019-03-20 18:19:14', '2020-01-04 10:32:28'),
(140, 521, 34, 1, 'Принят', 'Новый заказ', '2019-04-08 23:16:23', '2019-10-07 04:39:18'),
(141, 800, 33, 10, 'Принят', 'Новый заказ', '2019-02-20 00:56:30', '2019-05-14 08:34:08'),
(142, 161, 38, 3, 'Принят', 'Новый заказ', '2019-08-11 16:33:44', '2020-01-11 10:49:07'),
(143, 760, 79, 1, 'Принят', 'Новый заказ', '2019-02-18 10:16:45', '2019-10-26 06:10:28'),
(144, 68, 99, 5, 'Принят', 'Новый заказ', '2020-01-07 16:41:11', '2020-01-13 19:33:11'),
(145, 916, 94, 6, 'Принят', 'Новый заказ', '2019-12-24 13:29:13', '2019-08-30 04:00:57'),
(146, 92, 57, 7, 'Принят', 'Новый заказ', '2019-08-31 12:55:49', '2019-11-25 23:54:10'),
(147, 696, 21, 2, 'Принят', 'Новый заказ', '2019-08-03 17:50:48', '2019-06-09 05:34:09'),
(148, 298, 37, 8, 'Принят', 'Новый заказ', '2019-07-05 18:31:02', '2019-03-14 23:14:50'),
(149, 119, 72, 9, 'Принят', 'Новый заказ', '2019-06-10 09:52:01', '2019-05-05 14:58:13'),
(150, 224, 70, 1, 'Принят', 'Новый заказ', '2019-04-02 22:17:08', '2019-09-18 01:19:36'),
(151, 46, 56, 5, 'Принят', 'Новый заказ', '2019-06-15 20:37:16', '2019-08-16 11:13:03'),
(152, 122, 25, 3, 'Принят', 'Новый заказ', '2019-04-12 06:35:26', '2020-01-02 07:50:58'),
(153, 434, 5, 4, 'Принят', 'Новый заказ', '2019-12-19 15:40:38', '2019-09-10 11:40:07'),
(154, 214, 28, 6, 'Принят', 'Новый заказ', '2019-04-18 00:19:03', '2019-05-13 11:28:46'),
(155, 585, 98, 1, 'Принят', 'Новый заказ', '2019-08-10 11:33:49', '2019-04-25 20:21:48'),
(156, 940, 92, 5, 'Принят', 'Новый заказ', '2020-01-07 22:30:47', '2019-09-23 18:44:49'),
(157, 396, 85, 7, 'Принят', 'Новый заказ', '2019-12-04 15:50:17', '2019-11-16 05:48:02'),
(158, 159, 32, 9, 'Принят', 'Новый заказ', '2019-09-17 17:31:52', '2019-02-23 00:24:02'),
(159, 686, 5, 8, 'Принят', 'Новый заказ', '2019-03-02 03:53:46', '2019-12-08 02:39:52'),
(160, 325, 64, 7, 'Принят', 'Новый заказ', '2019-03-10 13:41:24', '2019-10-05 22:01:19'),
(161, 684, 36, 10, 'Принят', 'Новый заказ', '2019-08-30 18:33:16', '2019-10-26 06:25:55'),
(162, 536, 27, 2, 'Принят', 'Новый заказ', '2019-03-27 00:54:33', '2020-01-21 04:44:40'),
(163, 577, 58, 1, 'Принят', 'Новый заказ', '2019-10-31 06:50:05', '2019-07-18 08:50:44'),
(164, 425, 75, 3, 'Принят', 'Новый заказ', '2019-10-23 12:44:47', '2019-12-12 11:06:48'),
(165, 200, 40, 4, 'Принят', 'Новый заказ', '2019-06-09 11:09:51', '2019-06-19 14:59:06'),
(166, 585, 24, 8, 'Принят', 'Новый заказ', '2019-11-23 16:52:55', '2019-07-13 05:34:09'),
(167, 723, 100, 3, 'Принят', 'Новый заказ', '2019-02-24 22:43:13', '2019-04-03 20:26:01'),
(168, 834, 71, 5, 'Принят', 'Новый заказ', '2019-06-18 16:08:18', '2019-07-04 04:19:11'),
(169, 921, 23, 7, 'Принят', 'Новый заказ', '2019-07-18 03:06:30', '2020-01-30 16:50:12'),
(170, 460, 26, 2, 'Принят', 'Новый заказ', '2019-04-13 16:09:43', '2019-11-29 10:24:33'),
(171, 408, 96, 9, 'Принят', 'Новый заказ', '2020-02-05 08:22:03', '2020-01-31 12:56:38'),
(172, 463, 31, 5, 'Принят', 'Новый заказ', '2019-03-11 06:19:20', '2019-10-18 07:53:38'),
(173, 885, 24, 2, 'Принят', 'Новый заказ', '2019-12-18 02:43:41', '2019-11-04 21:21:39'),
(174, 815, 87, 3, 'Принят', 'Новый заказ', '2019-12-24 19:17:58', '2019-07-24 10:31:26'),
(175, 410, 62, 10, 'Принят', 'Новый заказ', '2019-10-16 16:22:33', '2019-10-04 11:37:20'),
(176, 712, 81, 8, 'Принят', 'Новый заказ', '2019-12-15 15:26:03', '2019-06-28 14:52:39'),
(177, 622, 35, 8, 'Принят', 'Новый заказ', '2019-06-26 13:44:57', '2019-09-27 07:24:42'),
(178, 811, 9, 4, 'Принят', 'Новый заказ', '2019-11-12 08:39:22', '2019-12-16 23:05:18'),
(179, 14, 64, 9, 'Принят', 'Новый заказ', '2019-11-26 12:21:03', '2019-11-15 12:21:13'),
(180, 493, 1, 8, 'Принят', 'Новый заказ', '2019-12-20 04:06:37', '2019-06-16 00:39:30'),
(181, 162, 95, 6, 'Принят', 'Новый заказ', '2019-04-05 15:59:14', '2019-05-20 21:11:07'),
(182, 105, 46, 5, 'Принят', 'Новый заказ', '2019-02-19 16:03:54', '2019-10-16 06:48:26'),
(183, 992, 18, 9, 'Принят', 'Новый заказ', '2019-05-15 21:26:48', '2020-02-07 18:16:36'),
(184, 210, 18, 10, 'Принят', 'Новый заказ', '2019-10-25 09:58:36', '2019-06-11 03:23:26'),
(185, 35, 96, 5, 'Принят', 'Новый заказ', '2019-10-25 05:55:08', '2019-06-30 15:19:09'),
(186, 844, 100, 9, 'Принят', 'Новый заказ', '2019-03-06 22:09:55', '2019-06-15 15:53:02'),
(187, 638, 88, 4, 'Принят', 'Новый заказ', '2019-12-19 16:24:05', '2019-03-19 02:37:44'),
(188, 14, 64, 9, 'Принят', 'Новый заказ', '2019-12-20 12:21:03', '2019-11-15 12:21:13'),
(189, 493, 1, 8, 'Принят', 'Новый заказ', '2019-12-20 04:06:37', '2019-06-16 00:39:30'),
(190, 162, 95, 6, 'Принят', 'Новый заказ', '2019-12-26 15:59:14', '2019-05-20 21:11:07'),
(191, 105, 46, 5, 'Принят', 'Новый заказ', '2019-12-20 16:03:54', '2019-10-16 06:48:26'),
(192, 992, 18, 9, 'Принят', 'Новый заказ', '2019-12-20 16:03:54', '2020-02-07 18:16:36'),
(193, 210, 18, 10, 'Принят', 'Новый заказ', '2019-12-20 16:03:54', '2019-06-11 03:23:26'),
(194, 35, 96, 5, 'Принят', 'Новый заказ', '2019-12-20 16:03:54', '2019-06-30 15:19:09'),
(195, 844, 100, 9, 'Принят', 'Новый заказ', '2019-12-20 16:03:54', '2019-06-15 15:53:02'),
(196, 638, 88, 4, 'Принят', 'Новый заказ', '2019-12-20 16:03:54', '2019-03-19 02:37:44'),
(197, 208, 21, 1, 'Принят', 'Заказ товара', '2019-02-18 10:20:17', '2019-02-18 10:20:17'),
(198, 208, 17, 5, 'Принят', 'Заказ товара', '2019-03-02 09:45:19', '2019-03-02 09:45:19'),
(199, 208, 19, 5, 'Принят', 'Заказ товара', '2019-03-02 09:45:19', '2019-03-02 09:45:19');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `article` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `programs`
--

INSERT INTO `programs` (`id`, `article`, `name`) VALUES
(79, '4601546073402', '1С:Розница 8. Магазин автозапчастей'),
(80, '4601546128386', '1С:Предпр.8. Управление ветеринарными сертификатами'),
(78, '4601546119056', '1С:Общепит, Клиентская лицензия на 10 р.м.'),
(58, '4601546077189', '1С:Розница 8. Базовая версия'),
(71, '4601546087744', '1С:Предприятие 8. Учет в управляющих компаниях ЖКХ, ТСЖ и ЖСК. Основная поставка'),
(10, '4601546080875', '1С:Предприятие 8. Клиентская лицензия на 1 рабочее место'),
(11, '4601546092540', '1C:Бухгалтерия 8 ПРОФ'),
(12, '4601546080899', '1С:Предприятие 8. Клиентская лицензия на 10 рабочих мест'),
(13, '4601546080905', '1С:Предприятие 8. Клиентская лицензия на 20 рабочих мест'),
(4, '4601546041661', '1С:Бухгалтерия 8. Базовая версия');

-- --------------------------------------------------------

--
-- Структура таблицы `promo`
--

CREATE TABLE `promo` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `promo`
--

INSERT INTO `promo` (`id`, `title`, `text`, `url`) VALUES
(1, 'Скидка до 50% на программы 1С:Предприятие 8', 'В Акции принимают участие следующие программные продукты:\r\n\r\n1С:Бухгалтерия 8. Базовая версия. Электронная поставка \r\n1С:Зарплата и Управление Персоналом 8. Базовая версия. Электронная поставка\r\n1С:Управление торговлей 8. Базовая версия. Электронная поставка', 'https://www.youtube.com/embed/98ktoEBWni8'),
(2, 'Скидка до 50% на кассы атол', 'В Акции принимают участие кассы атол 22ф, атол 42ф и атол 11ф ', 'https://www.youtube.com/embed/pSJPpuIE5NI');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `fullName`, `icon`, `picture`, `description`) VALUES
(1, 'Автоматизация розничной торговли', 'Автоматизация розничной торговли', 'automationretail.jpg', 'automationretail.jpg', 'Автоматизация розничной торговли — это комплекс мероприятий, включающий внедрение специализированного оборудования и программных продуктов для значительного повышения эффективности деятельности торгового предприятия. Наиболее популярными проблемами в розничных магазинах являются медленное и некачественное обслуживание покупателей, отсутствие достоверного учета товародвижения, неграмотное управление ассортиментом и ценообразованием, оседание товара на складе, злоупотребления и ошибки персонала, хищения товара. Это далеко не весь список рисков, с которыми приходится сталкиваться магазину. И самое верное решение в данной ситуации — комплексная автоматизация торговли.'),
(2, 'Автоматизация общепита', 'Автоматизация общепита', 'automationrestourant.jpg', 'automationrestourant.jpg', 'Для современного ресторатора очевидна необходимость автоматизации кафе, бара или ресторана. В автоматизированном заведении работа зала, кассы, бара, кухни, склада и бухгалтерии берется под полный контроль. Сокращаются издержки и поднимается конкурентоспособность бизнеса.\r\nМы поможем выполнить комплексную автоматизацию ресторана, бара, кафе, фаст-фуда и даже столовой! Есть у нас решения и для сети ресторанов. Наши специалисты подберут необходимое POS оборудование, ПО, выполнят монтаж, настройку и проведут обучение ваших сотрудников. После интеграции мы возьмём АСУ в заведении общепита на абонентское обслуживание.'),
(3, 'Автоматизация бухгалтерского учета', 'Автоматизация бухгалтерского учета', 'autoshop.jpg', 'autoshop.jpg', 'Наиболее эффективным путем ведения бухгалтерской и налоговой отчетности является автоматизация бухгалтерии. Предприятия любого размера могут внедрить такую систему как с привлечением сторонних организаций, так и самостоятельно.\r\nАвтоматизация бухгалтерского учета — это ведение учета на предприятии с применением информационных технологий.'),
(4, 'Автоматизация гостиничных комплексов', 'Автоматизация гостиничных комплексов', 'automationhotel.jpg', 'automationhotel.jpg', 'Для каждого объекта сферы гостеприимства мы подбираем уникальное решение максимально подходящие для решения ваших задач. У нас есть специализированные решения для автоматизации хостелов и мини-отелей с оптимальным соотношением цена-качество. Для крупных отелей мы предлагаем комплексное решение, включающее систему автоматизации ресторана, складской учет, управление ресурсами с богатыми возможностями настройки, кастомизации, доработок и самое главное – гарантию бесперебойной работы благодаря нашему круглосуточному сервису по удаленным каналам связи и наземному сервису в любом регионе РФ, Белоруссии, Украины и Казахстана.\r\n'),
(5, 'Автоматизация бизнес процессов', 'Автоматизация бизнес процессов', 'automationbisprocess.jpg', 'automationbisprocess.jpg', 'Автоматизация бизнеса — это частичный или полный перевод стереотипных операций и бизнес-задач под контроль специализированной информационной системы, или программно-аппаратного комплекса. Как результат — высвобождение человеческих и финансовых ресурсов для повышения производительности труда и эффективности стратегического управления.\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `title`, `text`, `image`, `active`) VALUES
(1, 'Предоставление услуг по обсуживанию ПО \"1С\"', 'Сопровождение производственных предприятий,гостиничных комплексов,розничных магазинов', 'slider001-min.jpg', 'item active'),
(2, 'Автоматизация бизнеса', '<Автоматизация бизнеса>\r\n<Услуги по автоматизации бизнеса>', 'slider002-min.jpg', 'item'),
(3, 'Продажа торгового оборудования', 'Кассовые аппараты,сканеры штрих-кода', 'slider003-min.jpg', 'item');

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcategory` int(11) NOT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`id`, `idcategory`, `text`) VALUES
(1, 1, 'Услуги программиста'),
(2, 1, 'Услуги по автоматизации'),
(3, 2, 'Кассы'),
(4, 2, 'Коробки с программой');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IDversion` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regnumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `patronymic`, `email`, `phone`, `IDversion`, `regnumber`, `organisation`, `password`, `isAdmin`, `remember_token`) VALUES
(206, 'Владимир', 'Рогов', 'Львович', 'kopyta@gmail.com', '+7 (424) 124-21-42', 'a:1:{s:2:\"id\";a:1:{i:0;s:2:\"79\";}}', 'a:1:{s:4:\"regs\";a:1:{i:0;s:7:\"4214214\";}}', 'ЗАО \"Рога и копыта\"', '$2y$10$HpcgnBQupsCezO0yqSkJZeTuP3b6fYnGDh97WTo0yaHxOoFucF.qu', 0, 'AsygaLbTLoS87de5uivJfVO1NkImPMr3wyC29DVywKDvp4g4bBVCCjIxEviF'),
(207, 'Nigel', 'Dawes', 'Victorovich', 'dawes@barys.com', '+7 (412) 013-41-78', 'a:1:{s:2:\"id\";a:1:{i:0;s:2:\"79\";}}', 'a:1:{s:4:\"regs\";a:1:{i:0;s:13:\"4601546073402\";}}', 'HC Barys', '$2y$10$nyhl3RfCuqVNKFFcHc2.bef7hyAV1gg6Ks85jJhAdS8zrNDceWAAG', 1, 'YDakLsI6wEjaOlazeP5P0Ksg7U5tGZ7O62Grc7WKmjRhihIDU2xLJ7ITUpHd'),
(208, 'Админ', 'Админов', 'Админович', 'admin@admin.ru', '+7 (421) 421-41-24', 'a:1:{s:2:\"id\";a:1:{i:0;s:2:\"79\";}}', 'a:1:{s:4:\"regs\";a:1:{i:0;s:4:\"1234\";}}', 'ООО Админочка', '$2y$10$3NKPt4W4aQ05yREvaUjGseSsUpQCITF/fCqbY3NYZ2R3pW3gNVCEC', 1, 'LZrTvWNIj1ndPTk1ngcF0BKl5HtWKGxqOApzf80oI7UpU86LiOUlUl2nL2WV'),
(209, 'Иван', 'Мамыкин', 'Анатольевич', 'mamykin@mail.ru', '+7 (421) 236-55-47', 'a:1:{s:2:\'id\';a:1:{i:0;s:2:\'79\';}', 'a:1:{s:4:\'regs\';a:1:{i:0;s:7:\'4214214\';}}', 'ООО \"Менеджеры России\"', '$2y$10$A.qZ6NdZV31yPUgXYdsU/e7wCqt.s8UJHur.3Y79Wa2Z3nlngB6Xe', 0, NULL),
(210, 'Юрий', 'Николаев', 'Юрьевич', 'love@mail.ru', '+7 (912) 465-74-65', 'a:1:{s:2:\'id\';a:1:{i:0;s:2:\'79\';}', 'a:1:{s:4:\'regs\';a:1:{i:0;s:7:\'4214214\';}}', 'ПАО \"Выпьем за любовь\"', '$2y$10$kr8d8bj8NbAANjkjR6nRG.QADfSiRQB8/xN4hwpv7g0jNXvq/hSmC', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Индексы таблицы `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT для таблицы `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;