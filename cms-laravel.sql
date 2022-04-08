-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 07:25 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'aut', '2022-04-08 10:57:53', '2022-04-08 10:57:53'),
(2, 'et', '2022-04-08 10:57:53', '2022-04-08 10:57:53'),
(3, 'labore', '2022-04-08 10:57:53', '2022-04-08 10:57:53'),
(4, 'adipisci', '2022-04-08 10:57:53', '2022-04-08 10:57:53'),
(5, 'vel', '2022-04-08 10:57:54', '2022-04-08 10:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `is_active`, `author`, `email`, `body`, `created_at`, `updated_at`) VALUES
(1, 6, 0, 'Joe Cormier', 'johann06@example.net', 'Magni sed quidem sint molestias qui corporis dolores et. Est enim autem voluptatibus hic.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(2, 16, 0, 'Julie Harber III', 'kelvin.barton@example.net', 'Et vitae corrupti nam voluptate enim pariatur qui.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(3, 1, 0, 'Julie Harber III', 'cartwright.lolita@example.net', 'Molestiae quibusdam atque minus omnis velit. Occaecati ducimus et ipsum eaque.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(4, 10, 1, 'Joe Cormier', 'wilhelm78@example.net', 'Occaecati est tempore velit velit nihil.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(5, 6, 1, 'Clara Reichel', 'wilhelm78@example.net', 'Similique facere temporibus ut. Explicabo vel voluptate ullam fugit voluptas odit.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(6, 5, 0, 'Julie Harber III', 'johann06@example.net', 'Ex vero est animi ullam est.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(7, 10, 1, 'Clara Reichel', 'cartwright.lolita@example.net', 'Ut deserunt tempore ea labore voluptatem ea.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(8, 4, 0, 'Miss Elody Olson DVM', 'tfarrell@example.com', 'Sed consectetur odio maiores ad sed animi ea. Et rerum est explicabo aspernatur dignissimos architecto.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(9, 2, 0, 'Joe Cormier', 'johann06@example.net', 'Officiis quis dignissimos autem corrupti necessitatibus possimus. Numquam architecto repellat quia.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(10, 16, 0, 'Clara Reichel', 'cartwright.lolita@example.net', 'Vel temporibus sunt sit deleniti vero quia eligendi.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(11, 12, 0, 'Prof. Lazaro Williamson', 'johann06@example.net', 'Ut magnam voluptas nesciunt et aperiam omnis.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(12, 12, 0, 'Clara Reichel', 'wilhelm78@example.net', 'Vel voluptas quo quibusdam. Odit sapiente repudiandae nisi.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(13, 18, 0, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Odit alias illo dolore fugit dolor esse placeat.', '2022-04-08 10:57:56', '2022-04-08 10:57:56'),
(14, 19, 0, 'Clara Reichel', 'johann06@example.net', 'Sed doloribus et eveniet nihil. Corporis nihil et animi fugit.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(15, 11, 1, 'Miss Elody Olson DVM', 'johann06@example.net', 'Suscipit vel saepe adipisci unde harum.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(16, 10, 0, 'Clara Reichel', 'kelvin.barton@example.net', 'Sed architecto incidunt quis expedita quasi velit repellat.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(17, 4, 1, 'Miss Elody Olson DVM', 'cartwright.lolita@example.net', 'Aliquam rerum molestiae aut distinctio maiores.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(18, 13, 0, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Et repellat enim minus nesciunt aperiam et.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(19, 11, 0, 'Joe Cormier', 'tfarrell@example.com', 'In qui iusto aut officia autem beatae nam fugit.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(20, 2, 0, 'Prof. Lazaro Williamson', 'cartwright.lolita@example.net', 'Magnam soluta maxime amet.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(21, 3, 1, 'Joe Cormier', 'wilhelm78@example.net', 'Architecto cum autem accusantium odio. Quidem voluptatem cumque est sequi.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(22, 1, 1, 'Miss Elody Olson DVM', 'johann06@example.net', 'Assumenda repellat at veritatis recusandae.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(23, 9, 1, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Est et nesciunt qui sit. Velit nobis nemo dolores tenetur.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(24, 8, 0, 'Prof. Lazaro Williamson', 'cartwright.lolita@example.net', 'Omnis sunt ut architecto omnis explicabo. Sit et suscipit eveniet autem voluptas saepe.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(25, 8, 1, 'Clara Reichel', 'tfarrell@example.com', 'Esse et laborum unde maiores quasi voluptates et et.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(26, 11, 1, 'Clara Reichel', 'wilhelm78@example.net', 'Deserunt tenetur rerum tempore maiores qui quia non fugit. Earum in ullam voluptatem voluptatibus.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(27, 17, 1, 'Miss Elody Olson DVM', 'cartwright.lolita@example.net', 'Suscipit aspernatur ut voluptatum assumenda corrupti unde beatae.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(28, 4, 0, 'Joe Cormier', 'wilhelm78@example.net', 'Enim sequi quo voluptas id sapiente sit vitae molestias. Doloremque consectetur nobis rerum cupiditate harum veritatis.', '2022-04-08 10:57:57', '2022-04-08 10:57:57'),
(29, 7, 0, 'Joe Cormier', 'wilhelm78@example.net', 'Tenetur consequatur veniam voluptates repellat labore sint est. Ea ratione ea quisquam qui architecto et.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(30, 4, 1, 'Joe Cormier', 'wilhelm78@example.net', 'Est vel reprehenderit voluptatem repudiandae et ullam. Nostrum error dicta id.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(31, 11, 1, 'Julie Harber III', 'wilhelm78@example.net', 'Labore animi sit facere est sint atque doloremque et. Laudantium ea at et eius.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(32, 10, 1, 'Joe Cormier', 'johann06@example.net', 'Non voluptatem et suscipit id aut est. Labore consequatur consectetur eligendi ratione laudantium hic minima enim.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(33, 15, 1, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Rerum iure quae suscipit enim labore aut neque. Eaque placeat distinctio eveniet illum.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(34, 17, 1, 'Miss Elody Olson DVM', 'tfarrell@example.com', 'Ad occaecati excepturi voluptatem velit saepe. Facere quaerat sunt quas adipisci autem.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(35, 15, 0, 'Joe Cormier', 'wilhelm78@example.net', 'Laboriosam qui rerum neque occaecati et. Magnam enim velit quia.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(36, 16, 0, 'Julie Harber III', 'wilhelm78@example.net', 'Est sed enim esse non quidem magni a. Sit nihil sapiente et perspiciatis consequatur quis et.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(37, 12, 1, 'Clara Reichel', 'cartwright.lolita@example.net', 'Enim deleniti quaerat alias corporis ab mollitia. Officiis corrupti quos omnis est.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(38, 17, 1, 'Joe Cormier', 'tfarrell@example.com', 'Enim assumenda autem optio distinctio. Autem sint ab deleniti vero voluptas.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(39, 5, 1, 'Julie Harber III', 'johann06@example.net', 'Facere et odit molestiae exercitationem sint unde.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(40, 7, 0, 'Julie Harber III', 'kelvin.barton@example.net', 'Velit occaecati reprehenderit aspernatur aut.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(41, 16, 0, 'Prof. Lazaro Williamson', 'tfarrell@example.com', 'Est voluptatem et debitis animi in quaerat. Nihil molestiae quibusdam iste rerum dolor.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(42, 4, 1, 'Julie Harber III', 'cartwright.lolita@example.net', 'Nam rerum ut ut magni enim sit occaecati adipisci. Magni vel impedit ea nisi ipsa quae quod.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(43, 15, 1, 'Prof. Lazaro Williamson', 'kelvin.barton@example.net', 'Distinctio et sed ipsum rem error. Perferendis temporibus hic harum excepturi quaerat eum.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(44, 2, 0, 'Clara Reichel', 'johann06@example.net', 'Culpa dolorem qui doloremque at.', '2022-04-08 10:57:58', '2022-04-08 10:57:58'),
(45, 2, 0, 'Prof. Lazaro Williamson', 'johann06@example.net', 'Iste quo optio aperiam est ducimus qui. Ratione ullam dignissimos eaque rerum repellat molestiae.', '2022-04-08 10:57:59', '2022-04-08 10:57:59'),
(46, 5, 0, 'Prof. Lazaro Williamson', 'kelvin.barton@example.net', 'Porro omnis laboriosam non perferendis. Autem quibusdam et atque facere.', '2022-04-08 10:57:59', '2022-04-08 10:57:59'),
(47, 13, 0, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Culpa laudantium possimus enim optio.', '2022-04-08 10:57:59', '2022-04-08 10:57:59'),
(48, 15, 1, 'Miss Elody Olson DVM', 'johann06@example.net', 'Quo eos iusto est nemo.', '2022-04-08 10:57:59', '2022-04-08 10:57:59'),
(49, 4, 0, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Et cumque exercitationem aut accusantium voluptatibus quia neque quam.', '2022-04-08 10:57:59', '2022-04-08 10:57:59'),
(50, 19, 0, 'Julie Harber III', 'johann06@example.net', 'Error autem maxime illo dolorem. Vero totam vel corporis fugiat velit.', '2022-04-08 10:57:59', '2022-04-08 10:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `comment_id`, `is_active`, `author`, `email`, `body`, `created_at`, `updated_at`) VALUES
(1, 42, 0, 'Julie Harber III', 'johann06@example.net', 'Doloremque eaque officiis quia quia.', '2022-04-08 10:57:59', '2022-04-08 10:57:59'),
(2, 42, 0, 'Miss Elody Olson DVM', 'cartwright.lolita@example.net', 'Quibusdam sequi numquam et odio. Cum ut et eaque fuga est.', '2022-04-08 10:57:59', '2022-04-08 10:57:59'),
(3, 6, 1, 'Joe Cormier', 'kelvin.barton@example.net', 'Quo quia fugiat illum nisi accusantium dolor est ut. Quia dolor delectus blanditiis.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(4, 15, 0, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Quis qui architecto voluptas. Est autem consequuntur reprehenderit officiis quia.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(5, 34, 1, 'Clara Reichel', 'wilhelm78@example.net', 'Qui sint quia ipsa rerum est voluptatem blanditiis. Deserunt harum animi minus voluptatum.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(6, 3, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Neque illo quae sit quibusdam ab adipisci laudantium voluptates.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(7, 27, 1, 'Prof. Lazaro Williamson', 'wilhelm78@example.net', 'Consequatur omnis odit quisquam iure asperiores.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(8, 46, 1, 'Julie Harber III', 'kelvin.barton@example.net', 'Autem voluptatum ad placeat quod. Tempora incidunt sapiente et modi ex quam voluptatem.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(9, 31, 1, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Accusantium id ut rem adipisci.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(10, 37, 0, 'Clara Reichel', 'cartwright.lolita@example.net', 'Aut amet deleniti quo maxime qui unde. Ut et ducimus doloribus necessitatibus reprehenderit accusamus repellat.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(11, 29, 1, 'Julie Harber III', 'kelvin.barton@example.net', 'Ea commodi qui aut consequatur vitae sint ullam.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(12, 22, 1, 'Julie Harber III', 'johann06@example.net', 'Sed aliquam magnam quod enim et earum. Sunt ut illo sequi facere.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(13, 8, 1, 'Prof. Lazaro Williamson', 'tfarrell@example.com', 'Vero id culpa distinctio rerum impedit. Aliquid error alias velit sed alias voluptas.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(14, 42, 1, 'Julie Harber III', 'tfarrell@example.com', 'Atque esse quo qui est et soluta.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(15, 9, 1, 'Clara Reichel', 'johann06@example.net', 'Veritatis et ratione mollitia optio sed autem voluptatem.', '2022-04-08 10:58:00', '2022-04-08 10:58:00'),
(16, 44, 0, 'Prof. Lazaro Williamson', 'cartwright.lolita@example.net', 'Rerum et repellendus adipisci aut adipisci voluptas ipsa. Eveniet saepe quis non qui nobis dignissimos nihil.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(17, 7, 1, 'Clara Reichel', 'johann06@example.net', 'Ipsam recusandae voluptatibus quis eius. Architecto nobis nisi et corrupti voluptatem.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(18, 19, 0, 'Clara Reichel', 'kelvin.barton@example.net', 'In similique quia ex sit consectetur laboriosam aut.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(19, 11, 0, 'Clara Reichel', 'wilhelm78@example.net', 'Assumenda illo eaque accusantium inventore at.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(20, 48, 1, 'Julie Harber III', 'wilhelm78@example.net', 'Quas rerum aut quis at.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(21, 15, 1, 'Joe Cormier', 'tfarrell@example.com', 'Odit deleniti esse tenetur. In eaque velit deserunt laborum maiores excepturi placeat.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(22, 42, 1, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Veritatis non qui inventore totam corporis velit vero. Commodi blanditiis eaque enim nisi omnis quis error.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(23, 10, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Recusandae libero aut sed molestias ex. Quam voluptatibus ea quis fuga blanditiis.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(24, 36, 1, 'Prof. Lazaro Williamson', 'johann06@example.net', 'Et quis quibusdam voluptas et culpa in ex.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(25, 19, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Minus laboriosam inventore nemo nesciunt qui et consequatur rerum.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(26, 12, 1, 'Clara Reichel', 'wilhelm78@example.net', 'Et quam nostrum rem maiores. Perferendis consequatur inventore ipsam vitae.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(27, 15, 0, 'Miss Elody Olson DVM', 'tfarrell@example.com', 'Nihil velit autem quia sapiente distinctio non.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(28, 32, 0, 'Joe Cormier', 'johann06@example.net', 'Corporis quas ratione beatae sed.', '2022-04-08 10:58:01', '2022-04-08 10:58:01'),
(29, 9, 1, 'Julie Harber III', 'johann06@example.net', 'Nisi aut et quos nostrum.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(30, 22, 0, 'Julie Harber III', 'kelvin.barton@example.net', 'Accusamus voluptatem fugit nesciunt. Possimus culpa distinctio laudantium esse autem qui quidem.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(31, 21, 1, 'Miss Elody Olson DVM', 'cartwright.lolita@example.net', 'Omnis excepturi animi voluptas aut. Quaerat quia recusandae reiciendis non.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(32, 25, 1, 'Prof. Lazaro Williamson', 'kelvin.barton@example.net', 'Ullam sed quia nobis reiciendis repellat et voluptatem provident.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(33, 24, 0, 'Joe Cormier', 'kelvin.barton@example.net', 'Occaecati odit beatae eaque reiciendis odio sed.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(34, 40, 1, 'Clara Reichel', 'cartwright.lolita@example.net', 'At qui et dicta ut sit eligendi vitae.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(35, 21, 1, 'Prof. Lazaro Williamson', 'johann06@example.net', 'Error voluptatum et eum voluptatibus ex. Ipsam est sequi eaque harum.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(36, 49, 1, 'Joe Cormier', 'kelvin.barton@example.net', 'Consequuntur dolor nihil omnis aperiam. Explicabo qui sunt dolor.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(37, 37, 1, 'Clara Reichel', 'johann06@example.net', 'Nisi repellendus ipsa adipisci.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(38, 43, 1, 'Miss Elody Olson DVM', 'johann06@example.net', 'Doloremque iste maiores debitis et velit voluptas. Sint deleniti et fuga cumque repellat.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(39, 20, 0, 'Miss Elody Olson DVM', 'tfarrell@example.com', 'Ad qui ut libero est. Consequatur quod et qui dolore.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(40, 20, 0, 'Julie Harber III', 'tfarrell@example.com', 'Fugit dolores voluptas est incidunt est.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(41, 1, 0, 'Julie Harber III', 'johann06@example.net', 'Libero quod mollitia quidem voluptas ratione impedit excepturi. Odit tenetur et sed qui commodi.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(42, 42, 1, 'Clara Reichel', 'tfarrell@example.com', 'Maiores quibusdam deserunt occaecati qui officiis tempora. Nihil doloremque accusamus eum non minus.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(43, 42, 0, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Voluptas accusamus ducimus eligendi sit repudiandae. Dolore perspiciatis assumenda non omnis unde.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(44, 35, 0, 'Miss Elody Olson DVM', 'cartwright.lolita@example.net', 'Libero numquam ut itaque tempore et earum fuga.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(45, 14, 0, 'Prof. Lazaro Williamson', 'tfarrell@example.com', 'In enim ad sit aut.', '2022-04-08 10:58:02', '2022-04-08 10:58:02'),
(46, 10, 1, 'Miss Elody Olson DVM', 'johann06@example.net', 'Eveniet accusamus totam enim velit et.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(47, 3, 0, 'Julie Harber III', 'tfarrell@example.com', 'Explicabo aut aliquid vel et nam.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(48, 43, 1, 'Julie Harber III', 'cartwright.lolita@example.net', 'Est quia animi in et. Facere ut magni unde.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(49, 25, 0, 'Julie Harber III', 'johann06@example.net', 'Vel quaerat voluptatem atque magnam culpa omnis.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(50, 12, 0, 'Clara Reichel', 'tfarrell@example.com', 'Temporibus velit dolorem fugiat et sed. Temporibus accusamus nesciunt provident eum praesentium.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(51, 31, 0, 'Clara Reichel', 'cartwright.lolita@example.net', 'In iusto perferendis ut. Corporis sunt voluptas ut maiores qui cumque.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(52, 23, 1, 'Prof. Lazaro Williamson', 'johann06@example.net', 'Aut suscipit quibusdam blanditiis in libero praesentium. Voluptas quos a voluptatem.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(53, 22, 0, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Eum optio saepe nesciunt voluptatem. Mollitia sit unde ea officiis veniam.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(54, 3, 1, 'Julie Harber III', 'wilhelm78@example.net', 'Adipisci sequi est quia et. Sed earum hic voluptatum et iste.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(55, 35, 1, 'Clara Reichel', 'tfarrell@example.com', 'Laborum numquam sapiente voluptatem mollitia.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(56, 41, 1, 'Julie Harber III', 'johann06@example.net', 'Consequuntur voluptatem odio eaque odio nemo et voluptatem dicta. Ratione exercitationem est quod amet praesentium quibusdam sint.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(57, 34, 1, 'Clara Reichel', 'johann06@example.net', 'Facilis id illo consequatur eos. Nulla sunt nulla laudantium cum id dicta error voluptatum.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(58, 43, 1, 'Miss Elody Olson DVM', 'johann06@example.net', 'Vitae quod dolores molestiae earum aut exercitationem. Non consequatur quidem et.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(59, 29, 0, 'Miss Elody Olson DVM', 'tfarrell@example.com', 'Qui ipsam ut provident ipsam eligendi. Tempora magni eos modi possimus voluptas quia.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(60, 37, 1, 'Prof. Lazaro Williamson', 'kelvin.barton@example.net', 'Sapiente expedita expedita laborum voluptas aut. Debitis aperiam magni quia neque.', '2022-04-08 10:58:03', '2022-04-08 10:58:03'),
(61, 42, 0, 'Prof. Lazaro Williamson', 'wilhelm78@example.net', 'Veritatis quo et corrupti.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(62, 4, 1, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Mollitia ea aut quia eos temporibus et deserunt.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(63, 11, 1, 'Julie Harber III', 'tfarrell@example.com', 'Quia modi error ducimus fuga enim nobis quibusdam. Deleniti quam sit ea omnis non.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(64, 1, 1, 'Clara Reichel', 'johann06@example.net', 'Molestiae enim necessitatibus velit sunt iste.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(65, 43, 1, 'Clara Reichel', 'kelvin.barton@example.net', 'Eveniet non error aperiam ad neque quo.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(66, 13, 1, 'Prof. Lazaro Williamson', 'tfarrell@example.com', 'Ea voluptas eligendi optio quibusdam quia.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(67, 42, 0, 'Joe Cormier', 'tfarrell@example.com', 'Tempore qui quas et culpa voluptatibus et.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(68, 15, 1, 'Miss Elody Olson DVM', 'johann06@example.net', 'Omnis animi molestiae quibusdam veniam.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(69, 42, 1, 'Prof. Lazaro Williamson', 'johann06@example.net', 'Dolor soluta excepturi inventore consequuntur.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(70, 9, 0, 'Julie Harber III', 'kelvin.barton@example.net', 'Qui cum harum accusantium vel ut est quo. Ea fuga voluptatem cumque qui.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(71, 40, 1, 'Clara Reichel', 'kelvin.barton@example.net', 'Hic blanditiis enim tenetur est aut qui totam.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(72, 40, 0, 'Miss Elody Olson DVM', 'kelvin.barton@example.net', 'Nostrum consequuntur ut placeat dolorem quis voluptatem. Corrupti consequatur dicta porro est voluptates tempore numquam quia.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(73, 18, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'A maiores quis et soluta officiis magni. Ut illum adipisci voluptatem.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(74, 7, 1, 'Clara Reichel', 'wilhelm78@example.net', 'Voluptatem consectetur laboriosam est nostrum ea est neque omnis.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(75, 43, 0, 'Julie Harber III', 'kelvin.barton@example.net', 'Consequatur rerum natus provident inventore quia. Necessitatibus repudiandae commodi sed qui.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(76, 42, 1, 'Julie Harber III', 'wilhelm78@example.net', 'Quam dolor accusantium voluptas animi libero aspernatur.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(77, 27, 1, 'Joe Cormier', 'wilhelm78@example.net', 'Quia dolores dolor velit aut illum rerum.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(78, 22, 0, 'Prof. Lazaro Williamson', 'kelvin.barton@example.net', 'Aliquam ipsa harum iusto. Soluta in soluta laudantium molestiae qui explicabo aperiam.', '2022-04-08 10:58:04', '2022-04-08 10:58:04'),
(79, 16, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Dolorum illo natus adipisci in. Sapiente dignissimos minima dolorem.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(80, 23, 1, 'Joe Cormier', 'kelvin.barton@example.net', 'Aut sed voluptatem omnis tenetur eos. Et et corrupti in rem delectus quae.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(81, 13, 0, 'Joe Cormier', 'cartwright.lolita@example.net', 'Odio qui voluptas dignissimos sint eum error officiis sit. Dicta dolores rerum autem in.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(82, 24, 1, 'Julie Harber III', 'cartwright.lolita@example.net', 'Sit sed repellat similique.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(83, 47, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Quia eos voluptatibus modi est unde magni. Dolores deserunt quos consequatur velit in et.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(84, 40, 1, 'Joe Cormier', 'johann06@example.net', 'Voluptatum laborum sed optio commodi voluptatum voluptatem. Rerum ut optio nobis non soluta amet natus.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(85, 2, 1, 'Clara Reichel', 'wilhelm78@example.net', 'Reprehenderit quis cum enim a laudantium. Quaerat qui nemo quis doloremque ex praesentium non.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(86, 49, 1, 'Julie Harber III', 'tfarrell@example.com', 'Sed adipisci voluptas ullam non.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(87, 35, 0, 'Clara Reichel', 'kelvin.barton@example.net', 'Consequatur aperiam et sunt.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(88, 2, 0, 'Prof. Lazaro Williamson', 'wilhelm78@example.net', 'Ut eaque ut nesciunt minus ut. Officia quia voluptas asperiores.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(89, 23, 1, 'Julie Harber III', 'johann06@example.net', 'Distinctio minus deleniti et quia delectus qui dignissimos.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(90, 44, 1, 'Joe Cormier', 'johann06@example.net', 'Distinctio est fuga id ab.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(91, 46, 0, 'Julie Harber III', 'johann06@example.net', 'Reprehenderit deleniti et aut voluptatum unde quis pariatur.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(92, 43, 0, 'Clara Reichel', 'wilhelm78@example.net', 'Tenetur sunt et accusantium rerum repellendus. Et saepe modi exercitationem aut non.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(93, 8, 1, 'Julie Harber III', 'tfarrell@example.com', 'Excepturi provident laudantium facere maxime quis et. Aut et et maiores inventore et excepturi vel.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(94, 15, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Accusamus ut dolore id voluptatem aut odit.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(95, 1, 0, 'Joe Cormier', 'kelvin.barton@example.net', 'Est quis maiores ut dolores sit animi.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(96, 34, 1, 'Joe Cormier', 'kelvin.barton@example.net', 'Eos a iure eaque mollitia molestias.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(97, 22, 1, 'Joe Cormier', 'cartwright.lolita@example.net', 'Harum odio minima voluptate nostrum enim.', '2022-04-08 10:58:05', '2022-04-08 10:58:05'),
(98, 41, 1, 'Miss Elody Olson DVM', 'tfarrell@example.com', 'Fugit omnis error officiis est. Quasi dolor veniam et maiores repellat.', '2022-04-08 10:58:06', '2022-04-08 10:58:06'),
(99, 42, 1, 'Miss Elody Olson DVM', 'wilhelm78@example.net', 'Blanditiis ad et quos hic quod.', '2022-04-08 10:58:06', '2022-04-08 10:58:06'),
(100, 3, 0, 'Julie Harber III', 'tfarrell@example.com', 'Itaque est magni quia ut eligendi doloribus ut.', '2022-04-08 10:58:06', '2022-04-08 10:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(106, '2014_10_12_000000_create_users_table', 1),
(107, '2014_10_12_100000_create_password_resets_table', 1),
(108, '2019_08_19_000000_create_failed_jobs_table', 1),
(109, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(110, '2022_03_13_084323_create_roles_table', 1),
(111, '2022_03_16_164720_add_photo_id_to_users_table', 1),
(112, '2022_03_17_045340_create_photos_table', 1),
(113, '2022_03_21_045153_create_posts_table', 1),
(114, '2022_03_26_044545_create_categories_table', 1),
(115, '2022_04_08_164229_create_comments_table', 1),
(116, '2022_04_08_164249_create_comment_replies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 5, 5, NULL, 'Eos saepe neque excepturi et nobis nihil. Sed nam vero molestiae qui nesciunt cumque harum provident.', 'Illum esse facilis nisi saepe. Molestiae distinctio esse dolorum ea asperiores et enim provident. Similique architecto a autem totam quia voluptas. Nisi eum accusantium optio assumenda eligendi.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(2, 4, 1, NULL, 'Nisi odit ex qui sed temporibus quam.', 'Aut accusamus dicta iure in magni quo. Et accusantium voluptatum eaque asperiores. Sunt enim tempore non nam sunt et eius. Non fugit at repellendus qui veritatis. Dolore quas quas corrupti ut maxime reprehenderit.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(3, 5, 1, NULL, 'Eius enim omnis est natus. Aut enim ut consequatur qui rem.', 'Minus delectus et at qui in. Repellendus voluptatem ut modi est voluptas sed eaque nihil. Autem qui quasi est labore quis ipsam. Commodi fugiat optio tempora inventore. Voluptate delectus aut mollitia consequuntur.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(4, 3, 5, NULL, 'Dolor ut praesentium dolorum delectus id possimus. Ut cumque dolorem sunt placeat libero accusantium.', 'Accusamus occaecati eum in et sunt adipisci. Voluptates temporibus nesciunt velit exercitationem quisquam magni. Repudiandae id delectus non non nulla non. Facere eveniet aut voluptate facilis.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(5, 4, 5, NULL, 'Ut delectus ipsum temporibus dolorum tempora harum ipsum. Quasi praesentium non ut qui omnis qui dolorem quam.', 'Quia tempore saepe fugiat magni. Eos vel repudiandae vero. Non voluptate voluptatem quia numquam ut sequi magni.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(6, 1, 1, NULL, 'Quo voluptas non deserunt saepe laborum. Vero sed amet error velit pariatur voluptatem.', 'Autem molestias veniam a deleniti dolorem aut quibusdam expedita. Ullam est facere asperiores architecto quaerat eius. Quia voluptatem omnis non deserunt ut iure assumenda. Consequuntur corrupti consequatur nisi et totam voluptate ea.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(7, 3, 3, NULL, 'Culpa similique dolores porro. Et eligendi dolor ad odio.', 'Vero voluptatem amet consequatur quam fuga sit et. Iste corrupti quisquam et sint qui qui cum. Numquam molestiae a cupiditate eveniet assumenda qui iure dolor. Modi explicabo quaerat nihil velit quisquam dolores eos.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(8, 4, 3, NULL, 'Amet velit quas officia molestiae magnam.', 'Quaerat voluptates neque nisi. Veritatis id non quia ex iure. Numquam natus odio quidem.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(9, 3, 3, NULL, 'Quia tempore excepturi odio reprehenderit. Odio deleniti nesciunt blanditiis ad.', 'Aut eum explicabo doloribus quasi cupiditate eum occaecati ducimus. Rerum illo sit inventore eius dolores voluptas dolor.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(10, 2, 1, NULL, 'Minus fugit ratione quas eligendi pariatur.', 'Ut aut molestiae id est. Nihil architecto sint inventore doloremque. Fugit atque sed at non sint nemo dicta.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(11, 1, 5, NULL, 'Omnis eum eius asperiores vitae.', 'Et in architecto et non sed quibusdam. Soluta eum vel dolorum quos nostrum. Odio rerum commodi in sunt voluptatibus reprehenderit placeat.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(12, 2, 3, NULL, 'Officiis eligendi quia et ea.', 'Quis enim ut facilis. Reprehenderit maiores ullam omnis doloremque. Sed nisi est fuga at omnis architecto qui.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(13, 1, 5, NULL, 'Voluptatem rerum totam omnis minima autem aut aut.', 'Voluptatem itaque accusantium pariatur error corrupti. Tempore dolorem enim assumenda et dignissimos voluptatum. Unde illum quis quia sunt ducimus. Eius laudantium quisquam quo sed voluptatibus ullam tenetur.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(14, 4, 5, NULL, 'Magnam porro praesentium molestiae doloremque et fugiat iure. Quos officia et provident vero aut molestiae.', 'Non totam cupiditate iste eum. Placeat nulla unde omnis ea in molestias minus. Sint eveniet quisquam optio molestiae velit.', '2022-04-08 10:57:54', '2022-04-08 10:57:54'),
(15, 4, 3, NULL, 'Dolores molestias fuga eveniet alias illum sit.', 'Quia molestiae quae dolor sunt rerum. Facilis rerum voluptas velit sunt et ullam quae cum. Praesentium eius at illo nisi dolor. At perspiciatis adipisci in quae ut id.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(16, 2, 5, NULL, 'Vitae non culpa est et at qui.', 'Ea omnis autem id tempore excepturi. Sapiente non beatae minima sed. Quisquam quo officia in maxime quos commodi omnis.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(17, 5, 1, NULL, 'Aperiam sequi ipsam porro qui assumenda sapiente. Quos quo aut dignissimos consectetur.', 'Porro dolor voluptatibus dolor. Quia et tempora sunt ducimus. Sunt voluptatem voluptatum quisquam nihil modi. Sint aliquid corrupti molestiae consequuntur eos eos.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(18, 5, 4, NULL, 'Laborum qui ut dignissimos.', 'Id sint sint voluptas soluta. Aperiam ut atque aliquid mollitia qui aut exercitationem voluptate. Eveniet facere dicta quasi nesciunt.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(19, 5, 1, NULL, 'Maxime nam qui mollitia. Nostrum sunt quia officiis libero ea.', 'Asperiores atque dignissimos neque omnis ipsam iure quibusdam. Quibusdam fugiat eos provident perspiciatis molestias molestiae a quos. Doloremque sint non facere ea expedita est. Occaecati natus architecto cumque quae qui esse architecto.', '2022-04-08 10:57:55', '2022-04-08 10:57:55'),
(20, 2, 1, NULL, 'Cumque pariatur ut molestiae aut.', 'Sint atque odio qui possimus enim hic delectus eum. Aut quidem delectus quisquam velit vero quam similique. Esse ad est eum consequatur earum consequatur.', '2022-04-08 10:57:55', '2022-04-08 10:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2022-04-08 11:07:25', '2022-04-08 11:07:25'),
(2, 'Author', '2022-04-08 11:07:31', '2022-04-08 11:07:31'),
(3, 'Subscriber', '2022-04-08 11:07:42', '2022-04-08 11:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `is_active`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(1, 'Joe Cormier', 'tfarrell@example.com', NULL, 0, '2022-04-08 10:57:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '64HDhAqh9E', '2022-04-08 10:57:53', '2022-04-08 10:57:53', NULL),
(2, 'Miss Elody Olson DVM', 'cartwright.lolita@example.net', NULL, 0, '2022-04-08 10:57:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gubQvrDZ19', '2022-04-08 10:57:53', '2022-04-08 10:57:53', NULL),
(3, 'Julie Harber III', 'kelvin.barton@example.net', NULL, 0, '2022-04-08 10:57:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GJdtYDN35p', '2022-04-08 10:57:53', '2022-04-08 10:57:53', NULL),
(4, 'Prof. Lazaro Williamson', 'wilhelm78@example.net', NULL, 0, '2022-04-08 10:57:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1DHrYLVleD', '2022-04-08 10:57:53', '2022-04-08 10:57:53', NULL),
(5, 'Clara Reichel', 'johann06@example.net', NULL, 0, '2022-04-08 10:57:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xAq6V77Gsf', '2022-04-08 10:57:53', '2022-04-08 10:57:53', NULL),
(6, 'Mridul Islam', 'md.mridulislam12345@gmail.com', 1, 0, NULL, '$2y$10$3Xw.MA6WVwH1ASGEQerkVOUz1oQzf2jQub0D22pLt/r7XvmTZ2mr6', NULL, '2022-04-08 11:08:14', '2022-04-08 11:08:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_replies_comment_id_index` (`comment_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
