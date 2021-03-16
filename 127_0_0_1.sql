-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 15 2021 г., 12:20
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `alif_task`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`) VALUES
(1, 'Golib Emomov'),
(32, 'Фирдавс 1'),
(36, 'Бахтиер'),
(37, 'Джахонгир'),
(38, 'Ali'),
(39, 'Muhammad'),
(40, 'Ёкуб'),
(41, 'Голиб'),
(42, 'Petr'),
(43, 'GES'),
(44, 'Sanya');

-- --------------------------------------------------------

--
-- Структура таблицы `email_address`
--

CREATE TABLE `email_address` (
  `id` int NOT NULL,
  `ContactId` int DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `email_address`
--

INSERT INTO `email_address` (`id`, `ContactId`, `email`) VALUES
(12, 1, 'golya-1@mail.ru'),
(15, 1, '12@mail.ru'),
(18, 36, 'bakha@gmail.com'),
(19, 37, 'jaga@mail.com'),
(20, 38, 'ali@mail.ru'),
(21, 39, 'maga@bk.com'),
(22, 40, 'ekub@mail.ru'),
(23, 42, 'petya@mail.ru'),
(24, 43, 'ges@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `phone_number`
--

CREATE TABLE `phone_number` (
  `id` int NOT NULL,
  `ContactId` int DEFAULT NULL,
  `PhoneNumber` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `phone_number`
--

INSERT INTO `phone_number` (`id`, `ContactId`, `PhoneNumber`) VALUES
(14, 1, '22222222222222'),
(17, 32, '231545021121'),
(18, 1, '22222222222'),
(20, 32, '2315450'),
(21, 36, '988988964'),
(22, 36, '2313131'),
(23, 36, '904041616'),
(24, 37, '933031221'),
(25, 38, '2311616'),
(26, 39, '918181818'),
(27, 40, '+7 952 279 65 74 '),
(28, 41, '908777271'),
(29, 41, '900827359'),
(30, 41, '2314444'),
(31, 41, '919403228'),
(32, 41, '22222222222123'),
(33, 41, '12321'),
(34, 41, '9990009991'),
(35, 42, '+7 999221121'),
(36, 43, '1112211231223'),
(37, 44, '1111111111111111111111111');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `email_address`
--
ALTER TABLE `email_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisers_ibfk_2` (`ContactId`);

--
-- Индексы таблицы `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisers_ibfk_1` (`ContactId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `email_address`
--
ALTER TABLE `email_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `phone_number`
--
ALTER TABLE `phone_number`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `email_address`
--
ALTER TABLE `email_address`
  ADD CONSTRAINT `advertisers_ibfk_2` FOREIGN KEY (`ContactId`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `phone_number`
--
ALTER TABLE `phone_number`
  ADD CONSTRAINT `advertisers_ibfk_1` FOREIGN KEY (`ContactId`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;
--
-- База данных: `boboi_barfi`
--
CREATE DATABASE IF NOT EXISTS `boboi_barfi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `boboi_barfi`;
--
-- База данных: `dbtesting`
--
CREATE DATABASE IF NOT EXISTS `dbtesting` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dbtesting`;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_08_044518_create_test_table', 1);

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
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `testing`
--

CREATE TABLE `testing` (
  `id` int NOT NULL,
  `name` int NOT NULL,
  `surname` int NOT NULL,
  `age` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `testing`
--

INSERT INTO `testing` (`id`, `name`, `surname`, `age`) VALUES
(1, 11111, 222222, 55357676);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
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
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `db_shop`
--
CREATE DATABASE IF NOT EXISTS `db_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_shop`;

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `basket_item`
--

CREATE TABLE `basket_item` (
  `id` int NOT NULL,
  `basket_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `basket_item`
--

INSERT INTO `basket_item` (`id`, `basket_id`, `product_id`, `quantity`) VALUES
(52, 1, 29, 1),
(59, 2, 28, 6),
(60, 2, 27, 1),
(61, 2, 29, 1),
(63, 3, 2, 1),
(64, 3, 27, 1),
(65, 3, 30, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `group_id`, `parent_id`) VALUES
(1, 'Голиб', 4, 2),
(2, 'Генри Форд', 222, 1),
(5, 'Генри Форд', 0, 0),
(8, 'Генри Форд', 0, 2),
(9, 'Генри Форд', 0, 0),
(10, 'Генри Форд', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `delivery`
--

CREATE TABLE `delivery` (
  `id` int NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `priority` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `content` text,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `created`) VALUES
(1, 'Генри Форд', 'Строительство ', '2021-02-10 23:23:44'),
(3, 'Генри Форд', '654665', '2021-02-11 00:05:55');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `total` int NOT NULL,
  `payment_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `status` smallint DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `payment_id`, `delivery_id`, `comment`, `name`, `phone`, `email`, `status`, `created`, `updated`) VALUES
(1, 1, 0, 3, 3, 'golya-1996@mail.ru', 'GOLIBGOLIB', 'zarikkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', '123', 0, '2021-03-02 23:55:00', '2021-03-06 21:47:16'),
(2, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голdfsdfsggfhfdhjjhkhgjk', '+7 952 279 65 74', 0, '2021-03-02 23:56:40', '2021-03-03 18:09:29'),
(3, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-02 23:58:41', '2021-03-03 18:10:21'),
(4, 1, 0, 0, 0, 'golya-1996@mail.ru', 'GOLIBGOLIBGOLIBGOLIB', '999999999999999', '11111golib@com', 0, '2021-03-03 00:00:06', '2021-03-03 18:06:06'),
(5, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:01:00', '2021-03-03 00:01:00'),
(6, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:01:26', '2021-03-03 00:01:26'),
(7, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:06:01', '2021-03-03 00:06:01'),
(8, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:14:21', '2021-03-03 00:14:21'),
(9, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:14:51', '2021-03-03 00:14:51'),
(10, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:15:10', '2021-03-03 00:15:10'),
(11, 1, 0, 2, 2, 'golya-1996@mail.ru', 'Some comment', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:15:55', '2021-03-03 00:15:55'),
(12, 1, 0, 2, 2, 'golya-1996@mail.ru', '123124', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:19:41', '2021-03-03 00:19:41'),
(13, 1, 0, 2, 2, 'golya-1996@mail.ru', '123124', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:21:03', '2021-03-03 00:21:03'),
(14, 1, 0, 2, 2, 'golya-1996@mail.ru', '123124', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:21:09', '2021-03-03 00:21:09'),
(15, 1, 0, 2, 2, 'golya-1996@mail.ru', '123124', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:21:12', '2021-03-03 00:21:12'),
(16, 1, 0, 2, 2, 'golya-1996@mail.ru', '123124', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:25:34', '2021-03-03 00:25:34'),
(17, 1, 0, 2, 2, 'golya-1996@mail.ru', '123124', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 00:27:26', '2021-03-03 00:27:26'),
(18, 1, 0, 2, 3, 'golya-1996@mail.ru', 'aaa', 'Эмомов Голибджон Саидович ', '992908777271', 0, '2021-03-03 00:38:26', '2021-03-03 00:38:26'),
(19, 1, 0, 2, 1, 'golya-1996@mail.ru', '2243', 'Фирдавс ', '992908777', 0, '2021-03-03 00:56:52', '2021-03-03 00:56:52'),
(20, 1, 0, 2, 1, 'golya-1996@mail.ru', '2243', 'Фирдавс ', '992908777', 0, '2021-03-03 00:57:38', '2021-03-03 00:57:38'),
(21, 1, 0, 2, 3, 'Azim-kurbonov@mail.ru', '123', 'Голиб', '+7(952)279-65-74', 0, '2021-03-03 11:05:16', '2021-03-03 11:05:16'),
(22, 1, 0, 2, 3, 'Azim-kurbonov@mail.ru', '123', 'Голиб', '+7(952)279-65-74', 0, '2021-03-03 11:13:27', '2021-03-03 11:13:27'),
(23, 1, 0, 2, 3, 'golya-1996@mail.ru', '123321', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 13:48:23', '2021-03-03 13:48:23'),
(24, 1, 0, 2, 3, 'golya-1996@mail.ru', '123321', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 13:49:50', '2021-03-03 13:49:50'),
(25, 1, 0, 2, 3, 'golya-1996@mail.ru', '123321', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 13:51:13', '2021-03-03 13:51:13'),
(26, 1, 0, 2, 3, 'golya-1996@mail.ru', '123321', 'Голиб', '+7 952 279 65 74', 0, '2021-03-03 13:58:08', '2021-03-03 13:58:08'),
(27, 1, 0, 1, 1, 'golya-1996@mail.ru', '1234', 'GOLIB', '+7 952 279 65 74', 0, '2021-03-03 16:16:52', '2021-03-03 16:16:52'),
(28, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:32:29', '2021-03-03 16:32:29'),
(29, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:34:08', '2021-03-03 16:34:08'),
(30, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:35:56', '2021-03-03 16:35:56'),
(31, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:36:15', '2021-03-03 16:36:15'),
(32, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:36:50', '2021-03-03 16:36:50'),
(33, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:37:02', '2021-03-03 16:37:02'),
(34, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:37:26', '2021-03-03 16:37:26'),
(35, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:38:39', '2021-03-03 16:38:39'),
(36, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:38:41', '2021-03-03 16:38:41'),
(37, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:38:54', '2021-03-03 16:38:54'),
(38, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:39:23', '2021-03-03 16:39:23'),
(39, 1, 0, 3, 2, 'golib is very good job', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-03 16:41:07', '2021-03-03 16:41:07'),
(40, 1, 0, 1, 1, '1234', 'GOLIB', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 01:57:54', '2021-03-04 01:57:54'),
(41, 1, 0, 2, 2, '123', 'Эмомов Голибджон Саидович ', 'GOLIB', 'golya-1996@mail.ru', 0, '2021-03-04 01:58:43', '2021-03-04 01:58:43'),
(42, 1, 0, 2, 3, '11213', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:00:27', '2021-03-04 02:00:27'),
(43, 1, 0, 2, 3, '11213', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:01:02', '2021-03-04 02:01:02'),
(44, 1, 0, 2, 1, '11', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:01:22', '2021-03-04 02:01:22'),
(45, 1, 0, 1, 1, '11', 'Голиб', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:04:19', '2021-03-04 02:04:19'),
(46, 1, 0, 1, 1, '', 'Голиб', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:09:57', '2021-03-04 02:09:57'),
(47, 1, 0, 1, 1, '123', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:10:53', '2021-03-04 02:10:53'),
(48, 1, 0, 1, 1, '123', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:13:59', '2021-03-04 02:13:59'),
(49, 1, 0, 1, 1, '', '123', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:16:18', '2021-03-04 02:16:18'),
(50, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:17:28', '2021-03-04 02:17:28'),
(51, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:17:49', '2021-03-04 02:17:49'),
(52, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:17:53', '2021-03-04 02:17:52'),
(53, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:18:11', '2021-03-04 02:18:11'),
(54, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:18:32', '2021-03-04 02:18:32'),
(55, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:18:39', '2021-03-04 02:18:39'),
(56, 1, 0, 1, 1, '', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:18:55', '2021-03-04 02:18:55'),
(57, 1, 0, 1, 1, '', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:21:07', '2021-03-04 02:21:07'),
(58, 1, 0, 1, 1, '', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:21:35', '2021-03-04 02:21:35'),
(59, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:31:24', '2021-03-04 02:31:24'),
(60, 1, 0, 1, 1, '12', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:32:51', '2021-03-04 02:32:51'),
(61, 1, 0, 1, 1, '', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:33:04', '2021-03-04 02:33:04'),
(62, 1, 0, 1, 1, '123', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:36:12', '2021-03-04 02:36:12'),
(63, 1, 0, 1, 1, '', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:38:54', '2021-03-04 02:38:54'),
(64, 1, 0, 1, 1, '', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 02:46:45', '2021-03-04 02:46:44'),
(65, 1, 0, 1, 1, '123', 'Голиб', '+7 952 279 65 74', 'Azim-kurbonov@mail.ru', 0, '2021-03-04 02:52:10', '2021-03-04 02:52:10'),
(66, 1, 0, 1, 1, '123', 'Голиб', '+7 952 279 65 74', 'Azim-kurbonov@mail.ru', 0, '2021-03-04 02:59:44', '2021-03-04 02:59:44'),
(67, 1, 0, 1, 1, '123', 'Голиб', '+7 952 279 65 74', 'Azim-kurbonov@mail.ru', 0, '2021-03-04 03:01:32', '2021-03-04 03:01:32'),
(68, 1, 0, 1, 1, '123', 'Голиб', '+7 952 279 65 74', 'Azim-kurbonov@mail.ru', 0, '2021-03-04 03:03:12', '2021-03-04 03:03:12'),
(69, 1, 0, 1, 1, '', 'Эмомов Голибджон Саидович ', '992908777', 'golya-1996@mail.ru', 0, '2021-03-04 03:03:41', '2021-03-04 03:03:41'),
(70, 1, 0, 1, 1, '123', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'Azim-kurbonov@mail.ru', 0, '2021-03-04 03:05:23', '2021-03-04 03:05:23'),
(71, 1, 0, 1, 2, '123', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-04 18:54:03', '2021-03-04 18:54:03'),
(72, 1, 0, 2, 2, '123', 'Эмомов Голибджон Саидович ', 'GOLIB', 'golya-1996@mail.ru', 0, '2021-03-04 18:54:37', '2021-03-04 18:54:37'),
(73, 1, 0, 2, 2, '123', 'Эмомов Голибджон Саидович ', 'GOLIB', 'golya-1996@mail.ru', 0, '2021-03-04 18:56:37', '2021-03-04 18:56:37'),
(74, 2, 0, 1, 1, '123321', 'Эмомов Голибджон Саидович ', '1233', 'golya-1996@mail.ru', 0, '2021-03-06 20:42:49', '2021-03-06 20:42:49'),
(75, 3, 0, 3, 3, '123321', 'Голиб', '+7 952 279 65 74', 'golya-19@mail.ru', 0, '2021-03-06 20:59:33', '2021-03-06 21:59:33'),
(76, 3, 0, 3, 3, '122221', 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', 0, '2021-03-07 11:41:07', '2021-03-07 11:41:07');

-- --------------------------------------------------------

--
-- Структура таблицы `order_item`
--

CREATE TABLE `order_item` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 16, 1, 1),
(2, 16, 1, 1),
(3, 17, 27, 4),
(4, 17, 28, 20),
(5, 18, 27, 4),
(6, 18, 28, 21),
(7, 19, 27, 4),
(8, 19, 28, 21),
(9, 20, 27, 4),
(10, 20, 28, 21),
(11, 26, 29, 12),
(12, 26, 27, 1),
(13, 27, 27, 21),
(14, 39, 29, 21),
(15, 39, 27, 1),
(16, 44, 27, 2),
(17, 45, 28, 1),
(18, 46, 27, 13),
(19, 62, 29, 1),
(20, 68, 27, 2),
(21, 68, 28, 3),
(22, 68, 30, 1),
(23, 69, 27, 2),
(24, 69, 28, 3),
(25, 69, 30, 1),
(26, 69, 29, 1),
(27, 70, 27, 2),
(28, 70, 28, 3),
(29, 70, 30, 1),
(30, 70, 29, 1),
(31, 73, 28, 2),
(32, 73, 29, 1),
(33, 73, 27, 1),
(34, 74, 28, 21),
(35, 75, 24, 2),
(36, 75, 22, 1),
(37, 76, 28, 3),
(38, 76, 29, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `priority` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `payment`
--

INSERT INTO `payment` (`id`, `title`, `code`, `priority`) VALUES
(1, 'Title', '123', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `picture` varchar(127) DEFAULT NULL,
  `preview` varchar(511) DEFAULT NULL,
  `content` text,
  `price` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `picture`, `preview`, `content`, `price`, `status`, `created`, `updated`) VALUES
(1, 'Генри Форд1', '01.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(2, 'Генри Форд2', '02.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(3, 'Генри Форд3', '03.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(4, 'Генри Форд4', '04.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(5, 'Генри Форд5', '05.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(6, 'Генри Форд1', '01.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(7, 'Генри Форд2', '02.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(8, 'Генри Форд3', '03.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(9, 'Генри Форд4', '04.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(10, 'Генри Форд5', '05.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(11, 'Генри Форд1', '01.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(12, 'Генри Форд2', '02.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(13, 'Генри Форд3', '03.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(14, 'Генри Форд4', '04.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(15, 'Генри Форд5', '05.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(16, 'Генри Форд1', '01.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(17, 'Генри Форд2', '02.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(18, 'Генри Форд3', '03.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(19, 'Генри Форд4', '04.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(20, 'Генри Форд5', '05.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(21, 'Г', '01.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-03-06 21:46:03'),
(22, 'Генри Форд2', '02.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(23, 'Генри Форд3', '03.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(24, 'Генри Форд4', '04.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(25, 'Генри Форд5', '05.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(26, 'Генри Форд1', '01.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(27, 'Генри Форд2', '02.jpg', '1', 'gol', 11111, 23, '2021-02-03 12:27:04', '2021-03-06 21:45:47'),
(28, 'Генри Форд3', '03.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55'),
(29, 'Генри Форд4', '04.jpg', '1', 'golib', 11111, 23, '2021-02-03 12:27:04', '2021-02-04 14:15:55');

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_access`
--

CREATE TABLE `rbac_access` (
  `role` varchar(128) NOT NULL,
  `permission` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rbac_access`
--

INSERT INTO `rbac_access` (`role`, `permission`) VALUES
('ROLE_ADMIN', 'SHOP_READ'),
('ROLE_ADMIN', 'SHOP_CREATE'),
('ROLE_ADMIN', 'SHOP_UPDATE'),
('ROLE_ADMIN', 'SHOP_DELETE'),
('ROLE_ADMIN', 'PRODUCT_READ'),
('ROLE_ADMIN', 'PRODUCT_CREATE'),
('ROLE_ADMIN', 'PRODUCT_UPDATE'),
('ROLE_ADMIN', 'PRODUCT_DELETE'),
('ROLE_ADMIN', 'DELIVERY_READ'),
('ROLE_ADMIN', 'DELIVERY_CREATE'),
('ROLE_ADMIN', 'DELIVERY_UPDATE'),
('ROLE_ADMIN', 'DELIVERY_DELETE'),
('ROLE_ADMIN', 'PAYMENT_READ'),
('ROLE_ADMIN', 'PAYMENT_CREATE'),
('ROLE_ADMIN', 'PAYMENT_UPDATE'),
('ROLE_ADMIN', 'PAYMENT_DELETE'),
('ROLE_MANAGER', 'SHOP_READ'),
('ROLE_MANAGER', 'PRODUCT_READ'),
('ROLE_MANAGER', 'DELIVERY_READ'),
('ROLE_MANAGER', 'PAYMENT_READ');

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_permission`
--

CREATE TABLE `rbac_permission` (
  `permission` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rbac_permission`
--

INSERT INTO `rbac_permission` (`permission`) VALUES
('DELIVERY_CREATE'),
('DELIVERY_DELETE'),
('DELIVERY_READ'),
('DELIVERY_UPDATE'),
('PAYMENT_CREATE'),
('PAYMENT_DELETE'),
('PAYMENT_READ'),
('PAYMENT_UPDATE'),
('PRODUCT_CREATE'),
('PRODUCT_DELETE'),
('PRODUCT_READ'),
('PRODUCT_UPDATE'),
('SHOP_CREATE'),
('SHOP_DELETE'),
('SHOP_READ'),
('SHOP_UPDATE');

-- --------------------------------------------------------

--
-- Структура таблицы `rbac_role`
--

CREATE TABLE `rbac_role` (
  `role` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rbac_role`
--

INSERT INTO `rbac_role` (`role`) VALUES
('ROLE_ADMIN'),
('ROLE_MANAGER'),
('ROLE_PRODUCT_MANAGER'),
('ROLE_SHOP_ADMIN'),
('ROLE_SHOP_MANAGER');

-- --------------------------------------------------------

--
-- Структура таблицы `shops`
--

CREATE TABLE `shops` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shops`
--

INSERT INTO `shops` (`id`, `title`, `address`) VALUES
(1, 'Генри Форд', 'Фирдавc');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `roles` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `password`, `roles`) VALUES
(1, 'superadmin', '11111', 'admin@mail.ru', 'c4ca4238a0b923820dcc509a6f75849b', '[\"ROLE_SUPER_ADMIN\"]'),
(2, 'Голиб', '123321', 'aaa@mail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '[\"ROLE_USER\"]'),
(3, 'Эмомов Голибджон Саидович ', '+7 952 279 65 74', 'golya-1996@mail.ru', '00a1f187721c63501356bf791e69382c', '[\"ROLE_USER\"]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `basket_item`
--
ALTER TABLE `basket_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rbac_permission`
--
ALTER TABLE `rbac_permission`
  ADD UNIQUE KEY `permission` (`permission`);

--
-- Индексы таблицы `rbac_role`
--
ALTER TABLE `rbac_role`
  ADD UNIQUE KEY `role` (`role`);

--
-- Индексы таблицы `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `basket_item`
--
ALTER TABLE `basket_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- База данных: `dz7_lesson7`
--
CREATE DATABASE IF NOT EXISTS `dz7_lesson7` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dz7_lesson7`;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `title` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `about` varchar(1023) NOT NULL,
  `price` int NOT NULL,
  `sale_price` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
--
-- База данных: `filemaker`
--
CREATE DATABASE IF NOT EXISTS `filemaker` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `filemaker`;

-- --------------------------------------------------------

--
-- Структура таблицы `card_priority`
--

CREATE TABLE `card_priority` (
  `id` int NOT NULL,
  `card_no` int NOT NULL,
  `priority` int NOT NULL,
  `cust_no` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `card_priority`
--

INSERT INTO `card_priority` (`id`, `card_no`, `priority`, `cust_no`) VALUES
(1, 24, 654, 5678),
(2, 24, 5456, 5678),
(5000, 23, 5456, 6578);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `card_priority`
--
ALTER TABLE `card_priority`
  ADD PRIMARY KEY (`id`);
--
-- База данных: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `CCY1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CCY2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BUY_RATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SALE_RATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MID_RATE` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`CCY1`, `CCY2`, `BUY_RATE`, `SALE_RATE`, `MID_RATE`, `DateTime`) VALUES
('USD', 'TJK', '11.6872', '11.45443', '11.54', '12.01.2020'),
('USD', 'TJK', '11.6872', '11.45443', '11.54', '12.01.2020');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `general_news_table`
--

CREATE TABLE `general_news_table` (
  `id` bigint UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Priority` int NOT NULL,
  `ImageName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `general_news_table`
--

INSERT INTO `general_news_table` (`id`, `Title`, `DateTime`, `Location`, `Priority`, `ImageName`) VALUES
(1, 'Khabar', '2021-01-13 11:38:32', 'http://127.0.0.1:8000/api/createInfo', 1, 'jpg'),
(2, 'Khabar', '2021-01-13 13:05:55', 'http://127.0.0.1:8000/api/createInfo', 10, '124.jpg'),
(3, 'Khabar', '2021-01-13 13:06:18', 'http://127.0.0.1:8000/api/createInfo', 10, '124.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2020_11_03_123657_create_news_table', 1),
(3, '2020_11_05_061508_create_general_news_table_table', 1),
(4, '2020_11_05_063335_create_news_in_ru_table', 1),
(5, '2020_11_05_064007_create_news_in_en_table', 1),
(6, '2020_11_05_064641_create_news_in_tj_table', 1),
(7, '2020_11_10_065815_create_currencies_table', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `general_news_table`
--
ALTER TABLE `general_news_table`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `general_news_table`
--
ALTER TABLE `general_news_table`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- База данных: `lesson6`
--
CREATE DATABASE IF NOT EXISTS `lesson6` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `lesson6`;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `title` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `city_name` varchar(127) NOT NULL,
  `country_name` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `country_name`) VALUES
(1, 'NewYork', 'USA'),
(2, 'LA', 'GS'),
(3, 'London', 'GB'),
(4, 'Warshava', 'Poland');

-- --------------------------------------------------------

--
-- Структура таблицы `order_products`
--

CREATE TABLE `order_products` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product` varchar(127) NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `order_products`
--

INSERT INTO `order_products` (`id`, `user_id`, `product`, `quantity`) VALUES
(1, 1, 'apple', 22),
(2, 2, 'phone', 10),
(3, 1, 'short', 1),
(4, 3, 'joice', 2),
(5, 3, 'joice', 1),
(6, 3, 'apple', 10),
(7, 3, 'short', 1),
(8, 4, 'phone', 1),
(9, 1, 'short', 1),
(10, 6, 'joice', 1),
(11, 2, 'phone', 1),
(12, 6, 'phone', 10),
(13, 6, 'short', 1),
(14, 6, 'apple', 1),
(15, 7, 'joice', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(127) NOT NULL,
  `age` int NOT NULL,
  `city_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `age`, `city_id`) VALUES
(1, 'Alex', 25, 1),
(2, 'Bob', 57, 2),
(3, 'Jany', 52, 1),
(4, 'Anna', 60, 3),
(5, 'Andrey', 32, 2),
(6, 'Katy', 55, 4),
(7, 'Yulia', 20, 1),
(8, 'golib', 12, 3),
(9, 'akmal', 12, 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- База данных: `mainsite`
--
CREATE DATABASE IF NOT EXISTS `mainsite` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mainsite`;

-- --------------------------------------------------------

--
-- Структура таблицы `attendance_statistics`
--

CREATE TABLE `attendance_statistics` (
  `id` int NOT NULL,
  `today_count` int DEFAULT NULL,
  `yesterday_count` int DEFAULT NULL,
  `total_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `attendance_statistics`
--

INSERT INTO `attendance_statistics` (`id`, `today_count`, `yesterday_count`, `total_count`) VALUES
(1, 0, 4, 306702);

-- --------------------------------------------------------

--
-- Структура таблицы `deposit`
--

CREATE TABLE `deposit` (
  `id` int NOT NULL,
  `DepositName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DepositType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TelNo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BranckCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `deposit`
--

INSERT INTO `deposit` (`id`, `DepositName`, `DepositType`, `TelNo`, `Fullname`, `BranckCode`) VALUES
(1, 'Частным лицам', 'Срочный', '918888888', 'Эмомов Голиб', '123'),
(2, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(3, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(4, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(5, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(6, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(7, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(8, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(9, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(10, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(11, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(12, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(13, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(15, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(16, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(17, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(18, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(19, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(20, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(21, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(22, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(23, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(24, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(25, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(26, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(27, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(28, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(29, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(30, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(31, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(32, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(33, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(34, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(35, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(37, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(38, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(41, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(42, 'af', 'da', 'Clearing', 'Clearing', 'Clearing'),
(43, 'af', 'da', 'Clearing', 'Clearing', 'Clearing');

-- --------------------------------------------------------

--
-- Структура таблицы `en_news_text`
--

CREATE TABLE `en_news_text` (
  `id` int NOT NULL,
  `enTitleId` int NOT NULL,
  `text` varchar(511) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `en_news_text`
--

INSERT INTO `en_news_text` (`id`, `enTitleId`, `text`, `type`) VALUES
(4, 4, 'Навруз Муборак хамдиерони АЗИЗИ АРЧУМАНД', 'празник'),
(5, 5, 'Навруз Муборак хамдиерони АЗИЗИ АРЧУМАНД', 'празник'),
(6, 6, 'Навруз Муборак хамдиерони АЗИЗИ АРЧУМАНД', 'празник');

-- --------------------------------------------------------

--
-- Структура таблицы `general_news_table`
--

CREATE TABLE `general_news_table` (
  `id` int NOT NULL,
  `title` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateTime` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `imageName` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `general_news_table`
--

INSERT INTO `general_news_table` (`id`, `title`, `dateTime`, `location`, `priority`, `imageName`) VALUES
(4, 'Хабархои хуш', '12.01.2021', 'www.orienbank.tj', 1, 'ORIEN'),
(5, 'Хабархои хуш', '12.01.2021', 'www.orienbank.tj', 1, 'ORIEN'),
(6, 'Хабархои хуш', '12.01.2021', 'www.orienbank.tj', 1, 'ORIEN');

-- --------------------------------------------------------

--
-- Структура таблицы `news_in_en`
--

CREATE TABLE `news_in_en` (
  `id` int NOT NULL,
  `titleId` int NOT NULL,
  `title` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `news_in_en`
--

INSERT INTO `news_in_en` (`id`, `titleId`, `title`) VALUES
(4, 4, 'Хабархои хуш'),
(5, 5, 'Хабархои хуш'),
(6, 6, 'Хабархои хуш');

-- --------------------------------------------------------

--
-- Структура таблицы `test1`
--

CREATE TABLE `test1` (
  `id` int NOT NULL,
  `title` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `test1`
--

INSERT INTO `test1` (`id`, `title`) VALUES
(2, 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `test2`
--

CREATE TABLE `test2` (
  `id` int NOT NULL,
  `testId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `test2`
--

INSERT INTO `test2` (`id`, `testId`) VALUES
(2, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attendance_statistics`
--
ALTER TABLE `attendance_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `en_news_text`
--
ALTER TABLE `en_news_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enTitleId` (`enTitleId`);

--
-- Индексы таблицы `general_news_table`
--
ALTER TABLE `general_news_table`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_in_en`
--
ALTER TABLE `news_in_en`
  ADD PRIMARY KEY (`id`),
  ADD KEY `titleId` (`titleId`);

--
-- Индексы таблицы `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test2`
--
ALTER TABLE `test2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testId` (`testId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `attendance_statistics`
--
ALTER TABLE `attendance_statistics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `en_news_text`
--
ALTER TABLE `en_news_text`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `general_news_table`
--
ALTER TABLE `general_news_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `news_in_en`
--
ALTER TABLE `news_in_en`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `test1`
--
ALTER TABLE `test1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `test2`
--
ALTER TABLE `test2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `en_news_text`
--
ALTER TABLE `en_news_text`
  ADD CONSTRAINT `en_news_text_ibfk_1` FOREIGN KEY (`enTitleId`) REFERENCES `news_in_en` (`id`),
  ADD CONSTRAINT `en_news_text_ibfk_2` FOREIGN KEY (`enTitleId`) REFERENCES `news_in_en` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news_in_en`
--
ALTER TABLE `news_in_en`
  ADD CONSTRAINT `news_in_en_ibfk_1` FOREIGN KEY (`titleId`) REFERENCES `general_news_table` (`id`),
  ADD CONSTRAINT `news_in_en_ibfk_2` FOREIGN KEY (`titleId`) REFERENCES `general_news_table` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `test2`
--
ALTER TABLE `test2`
  ADD CONSTRAINT `test2_ibfk_1` FOREIGN KEY (`testId`) REFERENCES `test1` (`id`) ON DELETE CASCADE;
--
-- База данных: `new_schema`
--
CREATE DATABASE IF NOT EXISTS `new_schema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `new_schema`;
--
-- База данных: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `picture` varchar(127) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `picture`, `preview`, `body`, `created`, `updated`) VALUES
(26, 'Генри Форд', '5a202cccf04c12e0b8b038bd6038523bnews1.jpg', 'fhdfhф', 'dfgfh', '2021-01-19 06:38:54', '2021-01-25 12:45:25'),
(35, '1', '95d4c42909c1c74321a60f692b18cf55news2.jpg', '5425234', '3424534', '2021-01-25 12:45:37', '2021-01-25 12:45:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- База данных: `some_db`
--
CREATE DATABASE IF NOT EXISTS `some_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `some_db`;

-- --------------------------------------------------------

--
-- Структура таблицы `myschedule`
--

CREATE TABLE `myschedule` (
  `ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- База данных: `task_bd`
--
CREATE DATABASE IF NOT EXISTS `task_bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `task_bd`;
--
-- База данных: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Структура таблицы `testing`
--

CREATE TABLE `testing` (
  `id` int NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `testing`
--

INSERT INTO `testing` (`id`, `name`, `age`) VALUES
(1, 'Golib', 24),
(2, 'Aleksey', 41),
(3, 'Tommy', 109);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
