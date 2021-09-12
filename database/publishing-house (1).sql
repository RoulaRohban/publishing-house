-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 10:40 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publishing-house`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstract` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `address`, `phone`, `abstract`, `created_at`, `updated_at`) VALUES
(1, 'بول كولمان', 'أمريكا', '+1565634527131', 'هو طبيب نفسي ومؤلف لعدة كتب ومدرب لأكثر من ثلاثين عاماً يمتلك خبرة واسعة كمعالج للتوتر والقلق واضطرابات ما بعد الصدمة', '2021-05-25 19:28:57', '2021-06-20 05:45:36'),
(2, 'الدكتور محمد سعيد رمضان البوطي', 'سوريا', '+963998765432', 'عالم سوري متخصص في العلوم الإسلامية من المرجعيات الدينية الهامة على مستوى العالم الأسلامي اختارته جائزة دبي الدولية للقرآن الكريم في دورتها الثامنة عام 2004 ليكون شخصية العالم الأسلامي', '2021-06-20 05:54:48', '2021-06-20 05:54:48'),
(3, 'وليم شكسبير', 'بريطانيا', '+15656345271667', 'شاعر وكاتب مسرحي وممثل انكليزي بارز في الأدب الانكليزي خاصة والأدب العالمي عامة', '2021-06-20 06:05:12', '2021-06-20 06:05:12'),
(4, 'مصطفى صادق الرافعي', 'مصر', '+963998765432', 'كاتب و أديب ينتمي إلى مدرسة المحافظين وهي مدرسة شعرية تابعة للشعر الكلاسيكي لقب بمعجزة الأدب العربي', '2021-06-20 06:14:00', '2021-06-20 06:14:00'),
(5, 'عبد الله بن المقفع', 'العصر العباسي', '........', 'مفكر فارسي ولد مجوسياً لكنه اعتنق الأسلام وعاصر كلاً من الخلافة العباسية والأموية .درس الفارسية وتعلم العربية', '2021-06-20 06:29:42', '2021-06-20 06:29:42'),
(6, 'جيف كيني', 'أمريكا', '+1565634527166', 'هو مصمم ألعاب ورسام كرتون ,ومنتج أفلام وممثل وكاتب أمريكي', '2021-06-20 06:34:40', '2021-06-20 06:34:40'),
(7, 'أحمد خالد توفيق', 'مصر', '+963998765432', 'طبيب وكاتب ومؤلف ومترجم مصري ويعد أول كاتب عربي في مجال أدب الرعب والأشهر في مجال أدب الشباب', '2021-06-20 06:43:05', '2021-06-20 06:43:05'),
(9, 'لويس كارول', 'أمريكا', '+15656345271544', 'هو كاتب وعالم رياضيات ومصور فوتوغرافي', '2021-06-20 06:51:02', '2021-06-20 06:51:02'),
(11, 'ابن الجوزي', 'بغداد', '......', 'فقيه حنبلي محدث ومتكلم ,ولد وتوفي في بغداد حظي بشهرة واسعة,ومكانة كبيرة في الخطابة والوعظ والتصنيف,كما برز في كثير من العلوم والفنون', '2021-07-16 17:02:51', '2021-07-16 17:02:51'),
(12, 'د.أكرم مذكور', 'السويداء', '+963966735234', 'دكتور وأستاذ جامعي في كلية الهندسة الميكانيكية بدمشق', '2021-07-16 17:41:41', '2021-07-16 17:41:41'),
(13, 'أحلام مستغانمي', 'الجزائر', '......', 'أديبة وروائية جزائرية من أوائل الجزائريات اللائي كتبن باللغة العربية .رواياتها هي الأكثر مبيعاً في العالم العربي وهي حاصلة عللى شهادة الدكتوراه في علم الاجتماع من جامعة سوربون.صنفتها مجلة \"اّربيان  بيرنس\"في لائحة أكثر مائة شخصية مؤثرة في العالم العربي', '2021-07-16 17:49:27', '2021-07-16 17:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Enim minima est poss', 'Labore soluta offici', 'blogs\\August2021\\DKVRBijYKys2qTii693u.jpg', '2021-05-26 03:15:46', '2021-08-27 12:14:31'),
(2, 'Enim minima est poss', 'Labore soluta offici', 'blogs\\August2021\\XLy6fauVWWhjPWy5Bb4K.jpg', '2021-05-26 03:15:46', '2021-08-27 12:14:41'),
(3, 'Enim minima est poss', 'Labore soluta offici', 'blogs\\August2021\\pNYCpD04OWqW0sk3fTJf.jpg', '2021-05-26 03:15:46', '2021-08-27 12:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Biographies', 'Biographies', '2021-05-25 19:26:12', '2021-06-14 17:52:48'),
(2, 'Children\'s Books', 'Children\'s Books', '2021-06-14 17:53:08', '2021-06-14 17:53:08'),
(3, 'Comics', 'Comics', '2021-06-14 17:53:20', '2021-06-14 17:53:20'),
(4, 'Cookbooks', 'Cookbooks', '2021-06-14 17:53:32', '2021-06-14 17:53:32'),
(5, 'Religious', 'Religious', '2021-06-14 17:53:44', '2021-06-20 05:26:47'),
(6, 'Business & Money', 'Business & Money', '2021-06-14 17:54:23', '2021-06-14 17:54:23'),
(7, 'scientific', 'scientific', '2021-07-17 11:30:52', '2021-07-17 11:30:52');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'rola', 'rr@gmail.com', 'asdfghtfffffff', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'google', 'text', 'Google', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 4, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 9),
(31, 4, 'sitemap', 'text', 'Sitemap', 0, 1, 1, 1, 1, 1, '{}', 10),
(32, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(33, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(34, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(36, 5, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 3),
(37, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(38, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(39, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(40, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(41, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"available\",\"options\":{\"available\":\"available\",\"coming-soon\":\"coming-soon\",\"reserved\":\"reserved\"}}', 3),
(42, 6, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"book\",\"options\":{\"magazine\":\"magazine\",\"book\":\"book\",\"article\":\"article\",\"poetical-works\":\"poetical-works\"}}', 4),
(43, 6, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(44, 6, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 6),
(45, 6, 'author_id', 'text', 'Author Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(46, 6, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 8),
(47, 6, 'image_url', 'image', 'Image Url', 1, 1, 1, 1, 1, 1, '{}', 9),
(48, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(49, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(50, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(51, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(52, 7, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 3),
(53, 7, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 4),
(54, 7, 'abstract', 'text', 'Abstract', 0, 1, 1, 1, 1, 1, '{}', 5),
(55, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(56, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(57, 6, 'product_belongsto_author_relationship', 'relationship', 'authors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Author\",\"table\":\"authors\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(58, 6, 'product_belongsto_category_relationship', 'relationship', 'category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(59, 8, 'id', 'number', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(60, 8, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"pending\",\"accept\":\"accept\",\"reject\":\"reject\"}}', 2),
(61, 8, 'total_price', 'number', 'Total Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(62, 8, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(63, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(64, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(65, 8, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(66, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 0),
(67, 10, 'order_id', 'text', 'Order Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(68, 10, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(69, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(70, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(71, 10, 'order_detail_belongsto_order_relationship', 'relationship', 'orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":null}', 6),
(72, 10, 'order_detail_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":null}', 7),
(73, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(75, 11, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(76, 11, 'image_url', 'image', 'Image Url', 1, 1, 1, 1, 1, 1, '{}', 4),
(77, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(78, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(79, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(80, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(81, 12, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(82, 12, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(83, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(84, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(85, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 13, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{}', 2),
(87, 13, 'answer', 'text', 'Answer', 0, 1, 1, 1, 1, 1, '{}', 3),
(88, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(89, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(90, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 14, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(92, 14, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(93, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(94, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(95, 14, 'wishlist_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":null}', 6),
(96, 14, 'wishlist_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":null}', 7),
(97, 8, 'order_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"authors\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(98, 8, 'product_id', 'text', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-05-25 18:22:20', '2021-05-25 18:22:20'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-05-25 18:22:20', '2021-05-25 18:22:20'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-05-25 18:22:20', '2021-05-25 18:22:20'),
(4, 'warehouses', 'warehouses', 'Warehouse', 'Warehouse', 'voyager-company', 'App\\Warehouse', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-25 18:27:37', '2021-05-25 18:31:54'),
(5, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-25 18:29:04', '2021-05-25 19:08:48'),
(6, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-25 18:49:21', '2021-05-25 19:49:41'),
(7, 'authors', 'authors', 'Author', 'Authors', NULL, 'App\\Author', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-25 18:57:20', '2021-05-25 18:57:20'),
(8, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-05-25 19:51:11', '2021-08-28 13:19:43'),
(10, 'order_details', 'order-details', 'Order Detail', 'Order Details', NULL, 'App\\OrderDetails', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-25 19:56:35', '2021-05-25 19:56:35'),
(11, 'blogs', 'blogs', 'Blog', 'Blogs', 'voyager-file-text', 'App\\Blog', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-25 20:01:39', '2021-05-25 20:01:39'),
(12, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-mail', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-25 20:03:20', '2021-05-25 20:03:20'),
(13, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-25 20:05:41', '2021-05-25 20:05:41'),
(14, 'wishlists', 'wishlists', 'Wishlist', 'Wishlists', NULL, 'App\\Wishlist', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-25 20:06:32', '2021-05-25 20:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(4, 'هل أنت من محبي الكتب والروايات؟', 'إن دارنا سيقوم بتأمين كوكبة من الكتب التي ستنال إعجابك', '2021-06-14 18:08:02', '2021-06-27 03:59:42'),
(6, 'هل تجد صعوبة في الحصول على كتابك المفضل؟', 'قم بزيارة موقعنا وستجد ما يحقق مطلبك', '2021-06-27 04:02:37', '2021-06-27 04:02:37'),
(7, 'هل استطيع طباعة كتاب ؟', 'كل ما تريده من معلومات حول شروط وأسعار الطباعة سيوافيك بها موقعنا', '2021-07-17 10:49:55', '2021-07-17 10:49:55'),
(8, 'هل أستطيع أن اقرأ بعض الصفحات قبل الشراء؟', 'ولأن دار الفكر تخاطب الفكر فإنها تتيح لك الاطلاع على محتوى الكتاب الذي تريد شرائه', '2021-07-17 10:52:24', '2021-07-17 10:52:24'),
(9, 'هل أستطيع مشاركة معلومات عن كتاب أعجبني على المواقع الاجتماعية', 'لأن المواقع الاجتماعية تسهل نشر الكتب فإن دارنا تتيح لك مشاركتها مع أصدقائك', '2021-07-17 10:56:49', '2021-07-17 10:56:49'),
(10, 'يمككني البحث عن معلومات داخل كتاب ؟أ', 'دارنا توفر لك المعلومة والكتب الذي تساعدك بالوصول وتسهل عليك عملية البحث', '2021-07-17 11:01:26', '2021-07-17 11:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-05-25 18:22:21', '2021-05-25 18:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-05-25 18:22:22', '2021-05-25 18:22:22', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2021-05-25 18:22:22', '2021-05-25 20:24:13', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-05-25 18:22:22', '2021-05-25 18:22:22', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-05-25 18:22:22', '2021-05-25 18:22:22', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-05-25 18:22:22', '2021-05-25 20:24:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-05-25 18:22:22', '2021-05-25 20:23:52', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-05-25 18:22:22', '2021-05-25 20:23:52', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-05-25 18:22:22', '2021-05-25 20:23:53', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-05-25 18:22:22', '2021-05-25 20:24:01', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2021-05-25 18:22:22', '2021-05-25 20:24:13', 'voyager.settings.index', NULL),
(11, 1, 'Warehouses', '', '_self', 'voyager-company', NULL, 21, 4, '2021-05-25 18:27:37', '2021-05-25 20:13:06', 'voyager.warehouses.index', NULL),
(12, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 22, 1, '2021-05-25 18:29:05', '2021-05-25 20:17:58', 'voyager.categories.index', NULL),
(13, 1, 'Products', '', '_self', 'voyager-book', '#000000', 22, 2, '2021-05-25 18:49:22', '2021-05-25 20:18:07', 'voyager.products.index', 'null'),
(14, 1, 'Authors', '', '_self', 'voyager-people', '#000000', 22, 3, '2021-05-25 18:57:21', '2021-05-25 20:18:13', 'voyager.authors.index', 'null'),
(15, 1, 'Orders', '', '_self', 'voyager-truck', '#000000', 23, 1, '2021-05-25 19:51:12', '2021-05-25 20:26:12', 'voyager.orders.index', 'null'),
(17, 1, 'Blogs', '', '_self', 'voyager-file-text', NULL, 21, 1, '2021-05-25 20:01:39', '2021-05-25 20:11:17', 'voyager.blogs.index', NULL),
(18, 1, 'Contacts', '', '_self', 'voyager-mail', NULL, 21, 3, '2021-05-25 20:03:20', '2021-05-25 20:11:43', 'voyager.contacts.index', NULL),
(19, 1, 'Faqs', '', '_self', 'voyager-bubble', '#000000', 21, 2, '2021-05-25 20:05:41', '2021-05-25 20:12:44', 'voyager.faqs.index', 'null'),
(20, 1, 'Wishlists', '', '_self', 'voyager-heart', '#000000', NULL, 7, '2021-05-25 20:06:33', '2021-05-25 20:24:13', 'voyager.wishlists.index', 'null'),
(21, 1, 'Website Managment', '', '_self', 'voyager-settings', '#000000', NULL, 4, '2021-05-25 20:10:34', '2021-05-25 20:27:54', NULL, ''),
(22, 1, 'warehouse managment', '', '_self', 'voyager-receipt', '#000000', NULL, 5, '2021-05-25 20:17:15', '2021-05-25 20:28:07', NULL, ''),
(23, 1, 'Order Mangament', '', '_self', 'voyager-basket', '#000000', NULL, 6, '2021-05-25 20:23:38', '2021-05-25 20:28:32', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_02_15_204651_create_categories_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2021_03_15_120741_create_warehouses_table', 1),
(26, '2021_03_15_120904_create_authors_table', 1),
(27, '2021_05_24_224348_create_products_table', 1),
(28, '2021_05_24_224649_create_blogs_table', 1),
(29, '2021_05_24_230221_create_orders_table', 1),
(30, '2021_05_24_230536_create_order_details_table', 1),
(31, '2021_05_25_205825_create_wishlists_table', 1),
(32, '2021_05_25_210030_create_contacts_table', 1),
(33, '2021_05_25_210146_create_faqs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','accept','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_price` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `total_price`, `user_id`, `created_at`, `updated_at`, `product_id`) VALUES
(1, 'reject', 333, 1, '2021-08-03 21:00:00', '2021-08-28 13:20:01', 2),
(4, 'pending', 10000, 1, '2021-08-28 13:44:12', '2021-08-28 13:44:12', 14),
(5, 'pending', 20, 1, '2021-08-28 13:44:29', '2021-08-28 13:44:29', 17),
(6, 'pending', 911, 1, '2021-08-28 13:48:02', '2021-08-28 13:48:02', 1),
(7, 'pending', 550, 1, '2021-08-28 13:53:40', '2021-08-28 13:53:40', 9),
(8, 'pending', 7000, 1, '2021-08-28 13:53:46', '2021-08-28 13:53:46', 11),
(9, 'pending', 1000, 1, '2021-08-28 13:54:46', '2021-08-28 13:54:46', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-05-25 18:22:22', '2021-05-25 18:22:22'),
(2, 'browse_bread', NULL, '2021-05-25 18:22:22', '2021-05-25 18:22:22'),
(3, 'browse_database', NULL, '2021-05-25 18:22:22', '2021-05-25 18:22:22'),
(4, 'browse_media', NULL, '2021-05-25 18:22:22', '2021-05-25 18:22:22'),
(5, 'browse_compass', NULL, '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(6, 'browse_menus', 'menus', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(7, 'read_menus', 'menus', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(8, 'edit_menus', 'menus', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(9, 'add_menus', 'menus', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(10, 'delete_menus', 'menus', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(11, 'browse_roles', 'roles', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(12, 'read_roles', 'roles', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(13, 'edit_roles', 'roles', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(14, 'add_roles', 'roles', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(15, 'delete_roles', 'roles', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(16, 'browse_users', 'users', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(17, 'read_users', 'users', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(18, 'edit_users', 'users', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(19, 'add_users', 'users', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(20, 'delete_users', 'users', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(21, 'browse_settings', 'settings', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(22, 'read_settings', 'settings', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(23, 'edit_settings', 'settings', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(24, 'add_settings', 'settings', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(25, 'delete_settings', 'settings', '2021-05-25 18:22:23', '2021-05-25 18:22:23'),
(26, 'browse_warehouses', 'warehouses', '2021-05-25 18:27:37', '2021-05-25 18:27:37'),
(27, 'read_warehouses', 'warehouses', '2021-05-25 18:27:37', '2021-05-25 18:27:37'),
(28, 'edit_warehouses', 'warehouses', '2021-05-25 18:27:37', '2021-05-25 18:27:37'),
(29, 'add_warehouses', 'warehouses', '2021-05-25 18:27:37', '2021-05-25 18:27:37'),
(30, 'delete_warehouses', 'warehouses', '2021-05-25 18:27:37', '2021-05-25 18:27:37'),
(31, 'browse_categories', 'categories', '2021-05-25 18:29:05', '2021-05-25 18:29:05'),
(32, 'read_categories', 'categories', '2021-05-25 18:29:05', '2021-05-25 18:29:05'),
(33, 'edit_categories', 'categories', '2021-05-25 18:29:05', '2021-05-25 18:29:05'),
(34, 'add_categories', 'categories', '2021-05-25 18:29:05', '2021-05-25 18:29:05'),
(35, 'delete_categories', 'categories', '2021-05-25 18:29:05', '2021-05-25 18:29:05'),
(36, 'browse_products', 'products', '2021-05-25 18:49:22', '2021-05-25 18:49:22'),
(37, 'read_products', 'products', '2021-05-25 18:49:22', '2021-05-25 18:49:22'),
(38, 'edit_products', 'products', '2021-05-25 18:49:22', '2021-05-25 18:49:22'),
(39, 'add_products', 'products', '2021-05-25 18:49:22', '2021-05-25 18:49:22'),
(40, 'delete_products', 'products', '2021-05-25 18:49:22', '2021-05-25 18:49:22'),
(41, 'browse_authors', 'authors', '2021-05-25 18:57:21', '2021-05-25 18:57:21'),
(42, 'read_authors', 'authors', '2021-05-25 18:57:21', '2021-05-25 18:57:21'),
(43, 'edit_authors', 'authors', '2021-05-25 18:57:21', '2021-05-25 18:57:21'),
(44, 'add_authors', 'authors', '2021-05-25 18:57:21', '2021-05-25 18:57:21'),
(45, 'delete_authors', 'authors', '2021-05-25 18:57:21', '2021-05-25 18:57:21'),
(46, 'browse_orders', 'orders', '2021-05-25 19:51:11', '2021-05-25 19:51:11'),
(47, 'read_orders', 'orders', '2021-05-25 19:51:11', '2021-05-25 19:51:11'),
(48, 'edit_orders', 'orders', '2021-05-25 19:51:11', '2021-05-25 19:51:11'),
(49, 'add_orders', 'orders', '2021-05-25 19:51:12', '2021-05-25 19:51:12'),
(50, 'delete_orders', 'orders', '2021-05-25 19:51:12', '2021-05-25 19:51:12'),
(51, 'browse_order_details', 'order_details', '2021-05-25 19:56:36', '2021-05-25 19:56:36'),
(52, 'read_order_details', 'order_details', '2021-05-25 19:56:36', '2021-05-25 19:56:36'),
(53, 'edit_order_details', 'order_details', '2021-05-25 19:56:36', '2021-05-25 19:56:36'),
(54, 'add_order_details', 'order_details', '2021-05-25 19:56:36', '2021-05-25 19:56:36'),
(55, 'delete_order_details', 'order_details', '2021-05-25 19:56:36', '2021-05-25 19:56:36'),
(56, 'browse_blogs', 'blogs', '2021-05-25 20:01:39', '2021-05-25 20:01:39'),
(57, 'read_blogs', 'blogs', '2021-05-25 20:01:39', '2021-05-25 20:01:39'),
(58, 'edit_blogs', 'blogs', '2021-05-25 20:01:39', '2021-05-25 20:01:39'),
(59, 'add_blogs', 'blogs', '2021-05-25 20:01:39', '2021-05-25 20:01:39'),
(60, 'delete_blogs', 'blogs', '2021-05-25 20:01:39', '2021-05-25 20:01:39'),
(61, 'browse_contacts', 'contacts', '2021-05-25 20:03:20', '2021-05-25 20:03:20'),
(62, 'read_contacts', 'contacts', '2021-05-25 20:03:20', '2021-05-25 20:03:20'),
(63, 'edit_contacts', 'contacts', '2021-05-25 20:03:20', '2021-05-25 20:03:20'),
(64, 'add_contacts', 'contacts', '2021-05-25 20:03:20', '2021-05-25 20:03:20'),
(65, 'delete_contacts', 'contacts', '2021-05-25 20:03:20', '2021-05-25 20:03:20'),
(66, 'browse_faqs', 'faqs', '2021-05-25 20:05:41', '2021-05-25 20:05:41'),
(67, 'read_faqs', 'faqs', '2021-05-25 20:05:41', '2021-05-25 20:05:41'),
(68, 'edit_faqs', 'faqs', '2021-05-25 20:05:41', '2021-05-25 20:05:41'),
(69, 'add_faqs', 'faqs', '2021-05-25 20:05:41', '2021-05-25 20:05:41'),
(70, 'delete_faqs', 'faqs', '2021-05-25 20:05:41', '2021-05-25 20:05:41'),
(71, 'browse_wishlists', 'wishlists', '2021-05-25 20:06:32', '2021-05-25 20:06:32'),
(72, 'read_wishlists', 'wishlists', '2021-05-25 20:06:32', '2021-05-25 20:06:32'),
(73, 'edit_wishlists', 'wishlists', '2021-05-25 20:06:33', '2021-05-25 20:06:33'),
(74, 'add_wishlists', 'wishlists', '2021-05-25 20:06:33', '2021-05-25 20:06:33'),
(75, 'delete_wishlists', 'wishlists', '2021-05-25 20:06:33', '2021-05-25 20:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('available','coming-soon','reserved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `type` enum('magazine','book','article','poetical-works') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'book',
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `status`, `type`, `price`, `quantity`, `author_id`, `category_id`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'وهذه مشكلاتنا', 'coming-soon', 'book', 911, 20, 2, 5, 'products\\August2021\\VQOQHAp8XiO60vQik952.png', '2021-06-13 19:44:40', '2021-08-27 10:32:31'),
(2, 'كيف تقولها لأطفالك', 'available', 'book', 222, 5, 1, 2, 'products\\August2021\\OT6uLU7Yn5gxonXwSzNa.png', '2021-06-16 14:38:02', '2021-08-27 10:32:20'),
(3, 'هذه مشكلاتهم', 'available', 'book', 1000, 60, 2, 5, 'products\\August2021\\jAxn8Jt9U2hwVMp3jPLM.png', '2021-06-20 05:57:45', '2021-08-27 10:32:10'),
(4, 'حلم ليلة في منتصف الصيف', 'reserved', 'poetical-works', 2000, 30, 3, 5, 'products\\August2021\\rToLFYVBlwpgIl7psDKy.png', '2021-06-20 06:02:49', '2021-08-27 10:31:58'),
(6, 'الحب في القرآن ودور الحب في الحياة', 'available', 'book', 3000, 20, 2, 5, 'products\\August2021\\lF2EQ4NCy4Wo6wR4W22F.png', '2021-06-20 06:07:32', '2021-08-27 10:31:48'),
(7, 'ملكة الإنشاء', 'coming-soon', 'poetical-works', 4000, 10, 4, 1, 'products\\August2021\\vCQGmIihKc6tl1ASD9iM.png', '2021-06-20 06:16:29', '2021-08-27 10:31:38'),
(8, 'تاريخ آداب العرب', 'available', 'book', 1000, 6, 4, 1, 'products\\August2021\\YvAPK1gIyAhLTfj7cTdE.png', '2021-06-20 06:17:46', '2021-08-27 10:31:28'),
(9, 'كليلة ودمنة', 'available', 'book', 550, 4, 5, 2, 'products\\August2021\\kFMhRD7zhlrl9b7miLPd.png', '2021-06-20 06:20:15', '2021-08-27 10:31:19'),
(10, 'مذكرات طالب:الحقيقة المرَة', 'available', 'book', 6000, 3, 6, 2, 'products\\August2021\\OkOAeMTIO7KP6PThwzSo.png', '2021-06-20 06:33:00', '2021-08-27 10:31:10'),
(11, 'كوميديا الأخطاء', 'available', 'book', 7000, 3, 3, 3, 'products\\August2021\\4Aw1duLDLxWjBY2rH5fw.png', '2021-06-20 06:39:18', '2021-08-27 10:31:01'),
(12, 'ضحكات كئيبة', 'available', 'article', 800, 7, 7, 3, 'products\\August2021\\FlRtq2S0xtALAjO71NSe.png', '2021-06-20 06:40:50', '2021-08-27 10:30:51'),
(13, 'أخبار الحمقى والمغفلين', 'available', 'book', 800, 9, 3, 3, 'products\\August2021\\XDEswCyRulATows9LyXM.png', '2021-06-20 06:46:45', '2021-08-27 10:30:42'),
(14, 'مغامرات أليس في بلاد العجائب', 'available', 'book', 10000, 12, 5, 2, 'products\\August2021\\M1p6FTLU7PQJktuDb8i8.png', '2021-06-20 06:49:58', '2021-08-27 10:30:13'),
(17, 'test', 'available', 'book', 20, 4, 1, 3, 'products\\August2021\\MCM9zhbIaRzuf81zeYfv.png', '2021-08-14 13:02:31', '2021-08-27 10:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-05-25 18:15:18', '2021-05-25 18:15:18'),
(2, 'user', 'Normal User', '2021-05-25 18:22:22', '2021-05-25 18:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `first_name`, `last_name`, `phone`, `address`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin Updated', 'Zamzam', 'Zamzam2', '+1 (908) 944-6021', 'Qui reprehenderit qyyyy', 'admin@admin.com', 'users\\August2021\\wsmG9fb5o8tgoZ4g0fBY.png', NULL, '$2y$10$mutSsA4UPyFoAc9K5hnu3ONfIawnKK82C3865hekns4G6rh.QSr/e', 'eapEou1L24yRWubx2V7BPFnpmuXbnnQh6I2bs0KfUo8i2WtDnWuaBHwDypWX', '{\"locale\":\"en\"}', '2021-05-25 18:15:18', '2021-08-28 17:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitemap` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `address`, `phone`, `email`, `google`, `youtube`, `twitter`, `facebook`, `sitemap`, `created_at`, `updated_at`) VALUES
(1, 'Dar AlBaath', 'AlMaLKI sYRIA', '0999999999', 'DAR@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 1, 10, '2021-08-28 12:58:36', '2021-08-28 12:58:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`) USING BTREE;

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `data_types_name_unique` (`name`) USING BTREE,
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `menus_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_details_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `order_details_product_id_foreign` (`product_id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permissions_key_index` (`key`) USING BTREE;

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `permission_role_permission_id_index` (`permission_id`) USING BTREE,
  ADD KEY `permission_role_role_id_index` (`role_id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `settings_key_unique` (`key`) USING BTREE;

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `users_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  ADD KEY `user_roles_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `user_roles_role_id_index` (`role_id`) USING BTREE;

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wishlists_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `wishlists_product_id_foreign` (`product_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
