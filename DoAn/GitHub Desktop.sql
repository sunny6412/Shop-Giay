-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 02, 2021 lúc 05:51 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopping3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trực đẹp trai', 0, 'Trực đẹp trai', '2021-07-18 07:28:13', '2021-07-28 00:23:53', '2021-07-28 00:23:53'),
(2, 'NIKE', 0, 'NIKE', '2021-07-23 00:04:04', '2021-07-23 00:04:04', NULL),
(3, 'Nike Air Max', 2, 'Nike Air Max', '2021-07-23 00:05:22', '2021-07-23 00:05:22', NULL),
(4, 'Nike Cortez', 2, 'Nike Cortez', '2021-07-28 00:24:26', '2021-07-28 00:24:26', NULL),
(5, 'Nike Jordan', 2, 'Nike Jordan', '2021-07-28 01:42:35', '2021-07-28 01:42:35', NULL),
(6, 'Nike Uptempo', 2, 'Nike Uptempo', '2021-07-28 01:42:51', '2021-07-28 01:42:51', NULL),
(7, 'ADIDAS', 0, 'ADIDAS', '2021-07-28 01:43:13', '2021-07-28 01:43:13', NULL),
(8, 'Adidas Alphabounce', 7, 'Adidas Alphabounce', '2021-07-28 01:43:33', '2021-07-28 01:43:33', NULL),
(9, 'Adidas Stan Smith', 7, 'Adidas Stan Smith', '2021-07-28 01:43:48', '2021-07-28 01:43:48', NULL),
(10, 'Adidas SuperStar', 7, 'Adidas SuperStar', '2021-07-28 01:44:01', '2021-07-28 01:44:01', NULL),
(11, 'Adidas Ultra Boost', 7, 'Adidas Ultra Boost', '2021-07-28 01:44:16', '2021-07-28 01:44:16', NULL),
(12, 'Balenciaga', 0, 'Balenciaga', '2021-07-29 10:22:57', '2021-07-29 10:22:57', NULL),
(13, 'Converse', 0, 'Converse', '2021-07-29 10:23:13', '2021-07-29 10:23:13', NULL),
(14, 'MLB', 0, 'MLB', '2021-07-29 10:25:13', '2021-07-29 10:25:13', NULL),
(15, 'Puma', 0, 'Puma', '2021-07-29 10:25:24', '2021-07-29 10:25:24', NULL),
(16, 'Vans', 0, 'Vans', '2021-07-29 10:25:34', '2021-08-02 08:41:47', '2021-08-02 08:41:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_18_093209_create_categories_table', 1),
(5, '2021_06_23_070346_add_column_deleted_at_table_categories', 1),
(6, '2021_06_23_072539_create_menus_table', 1),
(7, '2021_06_25_065215_add_column_slug_to_menus_table', 1),
(8, '2021_06_25_101509_add_column_soft_delete_to_menus_table', 1),
(9, '2021_07_08_141334_create_products_table', 1),
(10, '2021_07_08_141525_create_product_images_table', 1),
(11, '2021_07_08_141555_create_product_tags_table', 1),
(12, '2021_07_08_141627_create_tags_table', 1),
(13, '2021_07_08_144222_add_column_feature_image_name', 1),
(14, '2021_07_08_153322_add_column_image_name_to_table-product_image', 1),
(15, '2021_07_08_155105_add_column_deletet_at_to_product_table', 1),
(16, '2021_07_12_084520_create_sliders_table', 1),
(17, '2021_07_12_150739_add_column_deleted_at_to_sliders', 1),
(18, '2021_07_13_061403_create_settings_table', 1),
(19, '2021_07_13_081141_add_column_type_settings_table', 1),
(20, '2021_07_14_083831_create_roles_table', 1),
(21, '2021_07_14_083908_create_permissions_table', 1),
(22, '2021_07_14_084055_create_table_user_role', 1),
(23, '2021_07_14_084225_create_table_permission_role', 1),
(24, '2021_07_14_150821_add_column_deleted_at_table_users', 1),
(25, '2021_07_15_085849_add_column_parent_id_permission', 1),
(26, '2021_07_15_141756_add_column_key_permission_table', 2),
(27, '2021_07_19_101241_add_column_view_products', 2),
(28, '2021_07_19_151158_add_column_description', 3),
(29, '2021_07_24_140733_create_thanhtoans_table', 4),
(30, '2021_07_30_073143_add_column_table', 5),
(31, '2021_07_30_152718_create_users_cus_table', 5),
(32, '2021_07_31_150916_feedback', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'đang chờ xử lý',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `phone`, `address`, `email`, `total`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hau nguyen', '0788881924', '793 tran xuan soan tan hung quan 7', 'leconghau912@gmail.com', 1850000, '123132123', 'Hoàn tất', '2021-08-01 09:00:51', '2021-08-01 09:01:59'),
(2, 'conheo', '0788881924', '793 tran xuan soan tan hung quan 7', 'leconghau912@gmail.com', 3200000, '2', 'Đã hủy', '2021-08-01 11:11:10', '2021-08-02 01:18:39'),
(3, 'hau nguyen', '0788881924', '793 tran xuan soan tan hung quan 7', 'leconghau912@gmail.com', 2479000, '2', 'Hoàn tất', '2021-08-02 01:18:13', '2021-08-02 01:18:35'),
(4, 'trucmegai', '0788881924', '793 tran xuan soan tan hung quan 7', 'leconghau912@gmail.com', 1500000, '44', 'Đang xử lý', '2021-08-02 01:19:26', '2021-08-02 01:19:26'),
(5, 'duyphuong', '0909090909', 'quận 7', 'duyphuong@gmail.com', 10110000, 'ab', 'Đang xử lý', '2021-08-02 02:14:00', '2021-08-02 02:14:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 73, 1850000, 1, 1850000, '2021-08-01 09:00:51', '2021-08-01 09:00:51'),
(2, 2, 72, 1450000, 1, 1450000, '2021-08-01 11:11:10', '2021-08-01 11:11:10'),
(3, 2, 71, 1750000, 1, 1750000, '2021-08-01 11:11:10', '2021-08-01 11:11:10'),
(4, 3, 63, 2479000, 1, 2479000, '2021-08-02 01:18:13', '2021-08-02 01:18:13'),
(5, 4, 67, 1500000, 1, 1500000, '2021-08-02 01:19:26', '2021-08-02 01:19:26'),
(6, 5, 69, 2870000, 3, 8610000, '2021-08-02 02:14:00', '2021-08-02 02:14:00'),
(7, 5, 67, 1500000, 1, 1500000, '2021-08-02 02:14:00', '2021-08-02 02:14:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `views_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `views_count`) VALUES
(1, 'Nike Air Max 96 II', '4699000', '/storage/product/2/hQR0sMFMWC8GWMvYoq49.jpg', 'Thiết kế Swoosh thêu\r\nĐế giày cao su\r\nKhông nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nMàu sắc hiển thị: Trắng / Hải quân nửa đêm / Vàng đại học / Đen\r\nPhong cách: CZ1921-100\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 3, '2021-07-28 07:32:45', '2021-07-28 07:32:45', 'air-max-96-ii-shoe-m3NXTH.jpg', NULL, 0),
(2, 'Nike Air Max 2090', '2878000', '/storage/product/2/MkULZYoLp1t4quIOAcYF.jpg', 'Kéo mấu ở gót chân và lưỡi\r\nMàu sắc hiển thị: Sail / Aurora Green / Summit White / White\r\nPhong cách: BV9977-102\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 3, '2021-07-28 07:53:20', '2021-07-28 07:53:20', 'air-max-2090-shoe-cJ657M.jpg', NULL, 0),
(4, 'Nike Air Max Genome', '4999000', '/storage/product/2/jzc096WukjkH5ykcHYJi.jpg', 'Kéo tab trên gót chân\r\nMàu sắc hiển thị: Xám khói nhạt / Mango sáng / Trắng thượng đỉnh / Xám sắt\r\nPhong cách: CW1648-004\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 3, '2021-07-28 08:04:20', '2021-07-28 08:04:20', 'air-max-genome-shoes-lQ1nNw.jpg', NULL, 0),
(5, 'Nike Air Max Impact 2', '2649000', '/storage/product/2/uUGUkrkAuHKmqtbaBYC4.jpg', 'Chất liệu lưới nhẹ ở phía trên với ngón chân được gia cố\r\nĐế ngoài cao su với lực kéo xương cá\r\nCao su bao bọc bàn chân trước để tăng độ bền\r\nĐế giữa bằng bọt\r\nMàu sắc hiển thị: Trắng / Indigo Burst / Volt / Đen\r\nPhong cách: CQ9382-102\r\nQuốc gia / Khu vực xuất xứ: Ấn Độ', 2, 3, '2021-07-28 08:05:49', '2021-07-28 08:05:49', 'air-max-impact-2-basketball-shoe-WVvckk.jpg', NULL, 0),
(6, 'Nike Air Max Pre-Day', '2678000', '/storage/product/2/A5gzPLY8bWJiAp982UpO.jpg', 'Đế cao su\r\nViền truyền thống\r\nĐế giữa bằng bọt\r\nMàu sắc hiển thị: Vôi lỏng nhẹ / Vân sam mờ / Đá chanh / Đen\r\nPhong cách: DD0338-300\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 3, '2021-07-28 08:07:06', '2021-07-28 08:07:06', 'air-max-pre-day-shoes-hlv9tD.jpg', NULL, 0),
(7, 'NikeCourt Air Max Volley', '2649000', '/storage/product/2/P056XtYMP4cKTta1lVmN.jpg', 'Các lớp bọt ở gót chân tạo cảm giác thoải mái, vừa vặn.\r\nThiết kế sáng tạo sử dụng dữ liệu để đặt thêm lực kéo dọc theo chu vi của đế ngoài để bám vào chính xác nơi bạn cần nhất.\r\nThiết kế gót công thái học hỗ trợ tính chất rung chuyển của cú giao bóng và đánh tennis.\r\nĐược thiết kế để đeo trên bề mặt sân cứng.\r\nMàu sắc hiển thị: Trắng / Nhôm / Bạch kim tinh khiết / Trắng\r\nPhong cách: CU4275-199\r\nQuốc gia / Khu vực xuất xứ: Indonesia', 2, 3, '2021-07-28 08:08:19', '2021-07-28 08:08:19', 'nikecourt-air-max-volley-hard-court-tennis-shoe-5fTjQM.jpg', NULL, 0),
(8, 'Nike Cortez Basic', '2349000', '/storage/product/2/105uHG7FpjPbCncu4GZM.jpg', 'Da thật và da tổng hợp ở phía trên mang lại độ bền và cảm giác cao cấp.\r\nCổ áo được cắt thấp tạo cảm giác vừa vặn tự nhiên quanh mắt cá chân.\r\nĐế ngoài bằng cao su có họa tiết xương cá cho lực kéo và độ bền.\r\nMàu sắc hiển thị: Trắng / Bạc kim loại / Đen\r\nPhong cách: 819719-100\r\nQuốc gia / Khu vực xuất xứ: Indonesia', 2, 4, '2021-07-28 08:11:55', '2021-07-28 08:11:55', 'cortez-basic-older-shoe-8kwrrB.jpg', NULL, 0),
(9, 'Nike Cortez Basic SL', '1429000', '/storage/product/2/amDepEi5bxDPRAhmOln7.jpg', 'Đệm thoải mái\r\nMút dài toàn phần cung cấp đệm cho mỗi bước đi, cùng với đế có họa tiết xương cá mang tính biểu tượng cho lực kéo.\r\nHỗ trợ Strappy\r\n2 dây đai móc và vòng giúp đá lên và xuống dễ dàng.', 2, 4, '2021-07-28 08:13:32', '2021-07-28 08:13:32', 'cortez-basic-sl-younger-shoe-5hqMdP.jpg', NULL, 0),
(14, 'Air Jordan 1 Mid SE', '3519000', '/storage/product/2/ASUJOUNQmdx1tm4Yl9LQ.jpg', 'Lực kéo cao su\r\nThiết kế Swoosh được khâu\r\nNhãn lưỡi Jumpman Air\r\nBiểu tượng đôi cánh trên cổ áo\r\nNgón chân đục lỗ\r\nĐế giữa bằng bọt\r\nMàu sắc hiển thị: Điện cam / trắng / đen\r\nPhong cách: DM3531-800\r\nQuốc gia / Khu vực xuất xứ: Trung Quốc', 2, 5, '2021-07-28 08:26:28', '2021-07-28 08:26:28', 'air-jordan-1-mid-se-shoe-XPnQh3.jpg', NULL, 0),
(15, 'Air Jordan 12 Retro', '5589000', '/storage/product/2/8jOSaCxN5OAAxWEENQCo.jpg', 'Cùm sợi carbon\r\nĐế giày cao su\r\nMàu sắc hiển thị: Trắng / Đỏ đại học / Đen\r\nPhong cách: CT8013-106\r\nQuốc gia / Khu vực xuất xứ: Trung Quốc', 2, 5, '2021-07-28 08:27:45', '2021-07-28 08:27:45', 'air-jordan-12-retro-shoe-WwCSBH.jpg', NULL, 0),
(16, 'Jordan 1 Mid', '1659000', '/storage/product/2/FJGgFUtM77iek1ftjKFF.jpg', 'Không nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nMàu sắc hiển thị: Trắng / Đen / Xanh da trời\r\nPhong cách: AR6351-140\r\nQuốc gia / Khu vực xuất xứ: Indonesia', 2, 5, '2021-07-28 08:29:12', '2021-07-28 08:29:12', 'jordan-1-mid-younger-shoes-FKKgKz.jpg', NULL, 0),
(17, 'Jordan Air NFH', '3239000', '/storage/product/2/b3FBnvbS58QSqI7ro2a9.jpg', 'Nhãn lưỡi không đối xứng\r\nGót chân\r\nChi tiết thiết kế phản quang\r\nKhông nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nMàu sắc hiển thị: Trắng / Bạch kim tinh khiết / Đỏ phòng tập / Đen\r\nPhong cách: CZ3984-101\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 5, '2021-07-28 08:30:27', '2021-07-28 08:30:27', 'jordan-air-nfh-shoes-1msFvZ.jpg', NULL, 0),
(19, 'Jordan Delta 2', '2299000', '/storage/product/2/l6dOcBEKolZfccvKxJho.jpg', 'Nhãn lưỡi dệt với đồ họa vi mô\r\nVòng kéo gót\r\nMàu sắc hiển thị: Trắng / Bạc kim loại / Mè / Đỏ thẫm\r\nPhong cách: CZ0834-100\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 5, '2021-07-28 08:32:59', '2021-07-28 08:32:59', 'jordan-delta-2-older-shoe-7FNpBn.jpg', NULL, 0),
(20, 'Jordan \'Why Not\' Zer0.4 PF', '3829000', '/storage/product/2/Nd3Rfp365TSbIy9qfZoX.jpg', 'Tấn công kép\r\n2 bộ phận Zoom khí xếp chồng lên nhau ở bàn chân trước mang lại khả năng phản hồi và đệm tối ưu. Chúng giúp tối ưu hóa việc trả lại năng lượng mà bạn nhận được sau mỗi bước.\r\nKhóa trong viền\r\nCác dây buộc kết hợp với các dải vải ở gót chân và bàn chân trước. Khi bạn thắt chặt các dây buộc, vật liệu sẽ tham gia để giúp bạn giữ chặt trên đệm.\r\nLực kéo hành động nhanh ngoài trời\r\nĐế ngoài bằng cao su bền có mẫu gai mới, có thông tin dữ liệu. Nó giúp giữ cho bạn thấp xuống đất và sẵn sàng phản ứng với nhịp độ thay đổi của trò chơi. Cao su được thiết kế để sử dụng trên các sân ngoài trời.', 2, 5, '2021-07-28 08:34:39', '2021-07-28 08:34:39', 'jordan-why-not-zer04-pf-basketball-shoe-P3c3Rp (1).jpg', NULL, 0),
(21, 'Nike Air More Uptempo \'96 Premium', '5290000', '/storage/product/2/VkuzKXVgUIu2uSMLY7GO.jpg', 'Kết cấu da thật và da tổng hợp mang lại sự hỗ trợ bền bỉ\r\nĐế giữa bằng bọt với đệm Max Air có thể nhìn thấy để tạo sự thoải mái nhẹ\r\nĐế ngoài cao su bền cho lực kéo\r\nMàu sắc hiển thị: Lanh / Bóng ma / Nâu nhạt kẹo cao su / Lanh\r\nPhong cách: AA4060-200\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 6, '2021-07-28 08:36:19', '2021-07-28 08:36:19', 'air-more-uptempo-96-shoe-RMpGRj.jpg', NULL, 0),
(22, 'Nike Air More Uptempo \'96 trắng', '3668000', '/storage/product/2/TsrD4blgJb7WRcHwsjmB.jpg', 'Thêu Swoosh trên ngón chân và lưỡi\r\nDấu Swoosh trên gót chân\r\nMặt bên đục lỗ\r\nMở trên đế cho thấy nhiều không khí hơn\r\nKhông nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nMàu sắc hiển thị: Trắng / Cam đồng đội / Xanh dương đậm\r\nPhong cách: 921948-101\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 6, '2021-07-28 08:37:36', '2021-07-28 08:37:36', 'air-more-uptempo-96-shoes-KwM99n.jpg', NULL, 0),
(23, 'Nike Air More Uptempo \'96 đỏ', '3668000', '/storage/product/2/iF5AleTe55g2Z3RjT59z.jpg', 'Thêu Swoosh trên ngón chân và lưỡi\r\nDấu Swoosh trên gót chân\r\nMặt bên đục lỗ\r\nMở trên đế cho thấy nhiều không khí hơn\r\nKhông nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nMàu sắc hiển thị: Trắng / Cam đồng đội / Xanh dương đậm\r\nPhong cách: 921948-101\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 6, '2021-07-28 08:39:14', '2021-07-28 08:39:14', 'air-more-uptempo-96-shoes-KwM99n.jpg', NULL, 0),
(24, 'Nike Air More Uptempo \'96 trắng xanh', '3668000', '/storage/product/2/xVFVbDi5GV7ysr9hjALa.png', 'Thêu Swoosh trên ngón chân và lưỡi\r\nDấu Swoosh trên gót chân\r\nMặt bên đục lỗ\r\nMở trên đế cho thấy nhiều không khí hơn\r\nKhông nhằm mục đích sử dụng làm Thiết bị Bảo vệ Cá nhân (PPE)\r\nMàu sắc hiển thị: Trắng / Cam đồng đội / Xanh dương đậm\r\nPhong cách: 921948-101\r\nQuốc gia / Khu vực xuất xứ: Việt Nam', 2, 6, '2021-07-28 08:40:49', '2021-07-28 08:40:49', 'air-more-uptempo-96-shoes-KwM99n.png', NULL, 0),
(25, 'Adidas AlphaBounce+', '1400000', '/storage/product/2/JH4Q4uhT5fyl1l6bU4bz.jpg', 'Ôm vừa\r\nCó dây buộc\r\nThân giày có kết cấu nâng đỡ bàn chân Forgedmesh\r\nKiểu dáng ôm chân như một đôi tất\r\nGiày tập đa năng\r\nĐế giữa có lớp đệm trợ lực Bounce+\r\nĐế ngoài bằng cao su\r\nMàu sản phẩm: Grey Two / Signal Green / Grey One\r\nMã sản phẩm: EG1450', 2, 8, '2021-07-28 08:46:05', '2021-07-28 08:46:05', 'Giay_Alphabounce+_Xam_EG1450_06_standard.jpg', NULL, 0),
(26, 'Adidas AlphaBounce+ Black', '1400000', '/storage/product/2/6Tt8c3kWBzefwmX1Zcf0.jpg', 'Ôm vừa\r\nCó dây buộc\r\nThân giày có kết cấu nâng đỡ bàn chân Forgedmesh\r\nKiểu dáng ôm chân như một đôi tất\r\nGiày tập đa năng\r\nĐế giữa có lớp đệm trợ lực Bounce+\r\nĐế ngoài bằng cao su\r\nMàu sản phẩm: Core Black / Silver Metallic / Core Black\r\nMã sản phẩm: EG1452', 2, 8, '2021-07-28 08:47:53', '2021-07-28 08:47:53', 'Giay_Alphabounce+_DJen_EG1452_06_standard.jpg', NULL, 0),
(27, 'Adidas AlphaComfy', '1800000', '/storage/product/2/uJfil2J5dVfas2IhSaPx.jpg', 'Có dây giày\r\nThân giày bằng vải dệt\r\nCảm giác êm ái\r\nLớp lót bằng vải dệt\r\nĐế giữa Bounce\r\nĐế ngoài bằng cao su\r\nMàu sản phẩm: Cloud White / Core Black / Cloud White\r\nMã sản phẩm: GZ3461', 2, 8, '2021-07-28 08:49:23', '2021-07-28 08:49:23', 'Giay_AlphaComfy_trang_GZ3461_06_standard.jpg', NULL, 0),
(29, 'Mule Stan Smith', '2200000', '/storage/product/2/Fdduzd475wZhHIOyPlT4.jpg', 'Dáng regular fit\r\nSlip on\r\nThân giày bằng chất liệu tổng hợp\r\nĐế ngoài bằng cao su\r\nPrimegreen\r\nMàu sản phẩm: Core Black / Green / Off White\r\nMã sản phẩm: FX5858', 2, 9, '2021-07-28 08:51:42', '2021-07-28 08:54:35', 'Giay_Mule_Stan_Smith_DJen_FX5858_06_standard.jpg', NULL, 0),
(30, 'Stan Smith Collegiate Green', '2400000', '/storage/product/2/wyrPuMqF1PX5NU8kjI9R.jpg', 'Dáng regular fit\r\nCó dây buộc\r\nThân giày bằng da tổng hợp\r\nLớp lót bằng vải dệt\r\nĐế ngoài bằng cao su\r\nPrimegreen\r\nMàu sản phẩm: Cloud White / Collegiate Green / Off White\r\nMã sản phẩm: FX5522', 2, 9, '2021-07-28 08:53:33', '2021-07-28 08:53:33', 'Giay_Stan_Smith_trang_FX5522_06_standard.jpg', NULL, 0),
(31, 'Stan Smith Green', '2400000', '/storage/product/2/5u17CcMIpLU9hrRgcxLL.jpg', 'Dáng regular fit\r\nCó dây buộc\r\nThân giày bằng chất liệu tổng hợp\r\nLớp lót bằng chất liệu tổng hợp\r\nĐế ngoài bằng cao su\r\nPrimegreen\r\nMàu sản phẩm: Cloud White / Cloud White / Green\r\nMã sản phẩm: FX5502', 2, 9, '2021-07-28 08:56:46', '2021-07-28 08:56:46', 'Giay_Stan_Smith_trang_FX5502_06_standard.jpg', NULL, 0),
(32, 'Stan Smith Nữ Originals', '2500000', '/storage/product/2/IsxjhY1YRinE1ow2KsFK.jpg', 'Có dây buộc\r\nThân giày bằng chất liệu tổng hợp\r\nĐế cupsole bằng cao su\r\nPrimegreen\r\nMàu sản phẩm: Cloud White / Green / Chalk White\r\nMã sản phẩm: FX5653', 2, 9, '2021-07-28 08:58:27', '2021-07-28 08:58:27', 'Giay_Stan_Smith_trang_FX5653_06_standard.jpg', NULL, 0),
(33, 'Stan Smith Purple Tint', '2600000', '/storage/product/2/jbZ6ByBHISaHJUaB2CuC.jpg', 'Có dây giày\r\nThân giày bằng chất liệu tổng hợp\r\nĐế ngoài bằng cao su\r\nPrimegreen\r\nMàu sản phẩm: Cloud White / Purple Tint / Matte Gold\r\nMã sản phẩm: GZ8142', 2, 9, '2021-07-28 08:59:52', '2021-07-28 08:59:52', 'Giay_Stan_Smith_trang_GZ8142_06_standard.jpg', NULL, 0),
(35, 'Vulc Stan Smith', '1800000', '/storage/product/2/jjJx09mZzKK5EGDlB7Kj.jpg', 'Có dây buộc\r\nThân giày bằng chất liệu tổng hợp\r\nĐế ngoài vulcanized bằng cao su\r\nPrimegreen\r\nMàu sản phẩm: Cloud White / Cloud White / Glow Pink\r\nMã sản phẩm: FX8684', 2, 9, '2021-07-28 09:09:51', '2021-07-28 09:09:51', 'Giay_Vulc_Stan_Smith_trang_FX8684_06_standard.jpg', NULL, 0),
(36, 'Super Star 50 Run DMC', '3200000', '/storage/product/2/8gLqpUCbVqNH4hr7GCJ8.jpg', 'Đặc biệt vừa vặn với bàn chân phái nữ\r\nCó dây buộc\r\nThân giày bằng da\r\nLớp lót bằng chất liệu tổng hợp\r\nGót giày cao 6 cm\r\nĐế ngoài dáng xuồng bằng cao su\r\nMàu sản phẩm: Cloud White / Core Black / Hi-Res Red\r\nMã sản phẩm: FW3199', 2, 10, '2021-07-28 09:11:11', '2021-07-28 09:11:11', 'SUPERSTAR_50_RUN_DMC_trang_FX7616_06_standard.jpg', NULL, 0),
(37, 'Super Star Black', '2240000', '/storage/product/2/mKvitD4MUrHQDYCsaNJx.jpg', 'Có dây buộc\r\nThân giày bằng da\r\nLót giày đúc\r\nGiày mũi vỏ sò sặc sỡ\r\nĐế cupsole bằng cao su\r\nMàu sản phẩm: Core Black / Green / Cloud White\r\nMã sản phẩm: FW5387', 2, 10, '2021-07-28 09:12:22', '2021-07-28 09:12:22', 'Giay_Superstar_DJen_FW5387_06_standard.jpg', NULL, 0),
(38, 'Super Star FR', '1600000', '/storage/product/2/GVQVGNt9PwPOzXzW5q8I.jpg', 'Ôm vừa\r\nCó dây buộc\r\nThân giày bằng da\r\nGiày đường phố đậm phong cách\r\nTua rua trang trí trên dây giày\r\nĐế ngoài bằng cao su\r\nMàu sản phẩm: Cloud White / Off White / Gold Metallic\r\nMã sản phẩm: FV3421', 2, 10, '2021-07-28 09:13:33', '2021-07-28 09:13:33', 'Giay_Superstar_FR_trang_FV3421_06_standard.jpg', NULL, 0),
(39, 'Super Star J', '1445000', '/storage/product/2/Onb14xEUntABbZEsMks3.jpg', 'Có dây buộc\r\nThân giày bằng da\r\nLót giày đúc\r\nGiày mũi vỏ sò sặc sỡ\r\nĐế cupsole bằng cao su\r\nMàu sản phẩm: Core Black / Core Black / Red\r\nMã sản phẩm: FW5379', 2, 10, '2021-07-28 09:14:40', '2021-07-28 09:14:40', 'SUPERSTAR_J_DJen_GV7129_06_standard.jpg', NULL, 0),
(40, 'Super Star Orange', '1200000', '/storage/product/2/XAnYukQZeZS0RsKqE0U3.jpg', 'Có dây buộc\r\nThân giày bằng da\r\nLót giày đúc\r\nĐôi giày biểu tượng với màu sắc cổ điển\r\nĐế ngoài bằng cao su\r\nMàu sản phẩm: Dgh Solid Grey / Orange / Blue\r\nMã sản phẩm: FV3034', 2, 10, '2021-07-28 09:16:07', '2021-07-28 09:16:07', 'Giay_Superstar_Xam_FV3034_06_standard.jpg', NULL, 0),
(41, 'Super Star W', '1680000', '/storage/product/2/itdXz8nCaOiUT5hQZrpd.jpg', 'Đặc biệt vừa vặn với bàn chân phái nữ\r\nCó dây buộc\r\nThân giày bằng da\r\nLớp lót bằng chất liệu tổng hợp\r\nGót giày cao 6 cm\r\nĐế ngoài dáng xuồng bằng cao su\r\nMàu sản phẩm: Off White / Silver Metallic / Copper Metallic\r\nMã sản phẩm: FW3199', 2, 10, '2021-07-28 09:18:15', '2021-07-28 09:18:15', 'SUPERSTAR_W_trang_FY6926_06_standard.jpg', NULL, 0),
(42, 'Adidas UltraBoost X Lego® Colors', '5000000', '/storage/product/2/51rXu2iFJGBiYwOuyPZE.jpg', 'Vừa vặn như đi tất\r\nCó dây giày\r\nThân giày bằng vải dệt adidas Primeknit\r\nĐế giữa Boost\r\nLớp lót bằng vải dệt\r\nTrọng lượng: 312 g (size UK 8.5)\r\nChênh lệch độ cao đế giữa: 10 mm (gót giày: 29 mm, mũi giày: 19 mm)\r\nĐế ngoài bằng cao su Continental™ Better Rubber\r\nPrimegreen\r\nMàu sản phẩm: Cloud White / Red / Shock Blue\r\nMã sản phẩm: FZ3983', 2, 11, '2021-07-28 09:19:50', '2021-07-28 09:19:50', 'Giay_adidas_Ultraboost_x_LEGO(r)_Colors_trang_FZ3983_06_standard.jpg', NULL, 0),
(43, 'Slip-On UltraBoost DNA', '5000000', '/storage/product/2/Sw9Bh0yFmdzAffw6kOZx.jpg', 'Vừa vặn như đi tất\r\nDáng slip-on\r\nThân giày bằng vải dệt adidas Primeknit\r\nĐế giữa Boost\r\nTorsion System\r\nTrọng lượng: 312 g (size UK: 8.5)\r\nChênh lệch độ cao đế giữa: 10 mm (gót giày: 22 mm / mũi giày: 12 mm)\r\nĐế ngoài bằng cao su Continental™ Better Rubber\r\nPrimeblue\r\nMàu sản phẩm: Core Black / Core Black / Acid Orange\r\nMã sản phẩm: GX5084', 2, 11, '2021-07-28 09:21:17', '2021-07-28 09:21:17', 'Giay_Slip-On_Ultraboost_DNA_DJen_GX5084_06_standard.jpg', NULL, 0),
(44, 'UltraBoost 5.0 Uncaged DNA', '5000000', '/storage/product/2/0bCtMiCp1tubYwFLPUfg.jpg', 'Vừa vặn như đi tất\r\nCó dây buộc\r\nThân giày adidas Primeknit\r\nCảm giác siêu nhẹ\r\nĐế giữa Boost\r\nTrọng lượng: 276 g (size UK 8.5)\r\nChênh lệch độ cao đế giữa: 10 mm (gót giày 22 mm / mũi giày 12 mm)\r\nĐế ngoài Stretchweb làm từ cao su Continental\r\nPrimeblue\r\nMàu sản phẩm: Halo Ivory / Cream White / Cloud White\r\nMã sản phẩm: G55370', 2, 11, '2021-07-28 09:23:19', '2021-07-28 09:23:19', 'Giay_Ultraboost_5.0_Uncaged_DNA_Be_G55370_06_standard.jpg', NULL, 0),
(45, 'UltraBoost 6.0 DNA', '4200000', '/storage/product/2/ldhHM5hFApL4rBJ5J1NF.jpg', 'Vừa vặn như đi tất\r\nCó dây giày\r\nThân giày adidas Primeknit\r\nĐế giữa Boost\r\nĐệm gót giày nâng đỡ\r\nTrọng lượng: 328 g\r\nChênh lệch độ cao đế giữa: 10 mm (gót giày 22 mm / mũi giày 12 mm)\r\nĐế ngoài bằng cao su Continental™\r\nPrimeblue\r\nMàu sản phẩm: Non Dyed / Non Dyed / Halo Ivory\r\nMã sản phẩm: FZ0247', 2, 11, '2021-07-28 09:29:56', '2021-07-28 09:29:56', 'Giay_Ultraboost_6.0_DNA_trang_FZ0247_06_standard.jpg', NULL, 0),
(46, 'UltraBoost 21 Primeblue', '5000000', '/storage/product/2/G1z9Fi7JUvHP2rDBee93.jpg', 'Có dây giày\r\nThân giày bằng vải dệt adidas Primeknit\r\nCông nghệ Torsion System tạo độ ổn định\r\nĐế giữa Boost\r\nĐế ngoài Stretchweb làm từ cao su Continental™\r\nPrimeblue\r\nMàu sản phẩm: Non Dyed / Core Black / Night Flash\r\nMã sản phẩm: FY0838', 2, 11, '2021-07-28 09:31:15', '2021-07-28 09:31:15', 'Giay_Ultraboost_21_Primeblue_trang_FY0838_06_standard.jpg', NULL, 0),
(47, 'UltraBoost 21 Tokyo', '5000000', '/storage/product/2/EQHQnPj5uiL8pdIgRzzA.jpg', 'Có dây giày\r\nThân giày bằng vải dệt adidas Primeknit\r\nCông nghệ Torsion System tạo độ ổn định\r\nĐế giữa Boost\r\nĐế ngoài Stretchweb làm từ cao su Continental™\r\nPrimeblue\r\nMàu sản phẩm: Non Dyed / Core Black / Night Flash\r\nMã sản phẩm: FY0877', 2, 11, '2021-07-28 09:33:14', '2021-07-28 09:33:14', 'Giay_Chay_Bo_UltraBoost_21_Tokyo_trang_S23863_06_standard.jpg', NULL, 0),
(48, 'BALENCIAGA TRIPLE S CLEAR SOLE ORANGE GREY BLACK', '26416000', '/storage/product/2/iBWWBTZkuKZmGU95i0Pc.jpg', 'Giày Balenciaga Triple S Clear Sole “Orange/White/Grey” – Màn khai pháo đã mang Balenciaga – một thương hiệu thời trang cao cấp lần đầu tiên đặt chân lên vùng đất Sneaker màu mỡ, cũng là một trong số những phát hành khơi mào cho trào lưu Chunky Sneaker (giày “đồ sộ”) lên ngôi. Nếu muốn đem vào tủ giày thêm những sự lựa chọn phá cách và đầy táo bạo thì Triple S hẳn sẽ là cái tên mà bạn khó lòng có thể bỏ qua.', 2, 12, '2021-07-29 10:27:41', '2021-07-29 10:27:41', 'IMG_1029-1 (1).jpg', NULL, 0),
(49, 'BALENCIAGA TRIPLE S CLEAR SOLE PINK', '26416000', '/storage/product/2/sgopIqaayAxadvIrsIVo.jpg', '• Giày sneaker 100% không da\r\n• Đế ngoài phức hợp 3 lớp, công nghệ Clear Sole\r\n• TPU được bơm vào bên trong đế tạo ra bong bóng khí để tạo sự thoải mái hơn, giày nhẹ hơn và có tác dụng giảm sốc\r\n• Kích thước thêu ở mép ngón chân\r\n• Logo thêu bên hông\r\n• Logo in nổi ở phía sau\r\n• Thương hiệu cao su Triple S trên lưỡi\r\n• 2 vòng dây buộc bao gồm 1 chức năng\r\n• Hệ thống viền thể thao gồm 12 khoen vải\r\n• Dây buộc hai màu\r\n• 1 đôi dây buộc bổ sung bao gồm\r\n• Tab kéo về phía sau và tab kéo lưỡi\r\n• Sản xuất tại Trung Quốc\r\n• Lau bằng vải mềm và khô\r\nChất liệu: 52% polyester, 48% polyurethane\r\nID hình ảnh: 544351W2GA15760', 2, 12, '2021-07-29 10:28:55', '2021-07-29 10:28:55', 'IMG_1031-1 (1).jpg', NULL, 0),
(50, 'BALENCIAGA TRIPLE S CLEAR SOLE WHITE', '27920000', '/storage/product/2/9VXgBoxmb8Sdm3jm7QVs.jpg', '• Giày sneaker 100% không da\r\n• Đế ngoài phức hợp 3 lớp, công nghệ Clear Sole\r\n• TPU được bơm vào bên trong đế tạo ra bong bóng khí để tạo sự thoải mái hơn, giày nhẹ hơn và có tác dụng giảm sốc\r\n• Kích thước thêu ở mép ngón chân\r\n• Logo thêu bên hông\r\n• Logo in nổi ở phía sau\r\n• Thương hiệu cao su Triple S trên lưỡi\r\n• 2 vòng dây buộc bao gồm 1 chức năng\r\n• Hệ thống viền thể thao gồm 12 khoen vải\r\n• Dây buộc hai màu\r\n• 1 đôi dây buộc bổ sung bao gồm\r\n• Tab kéo về phía sau và tab kéo lưỡi\r\n• Hiệu ứng rửa sạch để có vẻ ngoài mặc đẹp\r\n• Sản xuất tại Trung Quốc\r\n• Lau bằng vải mềm và khô\r\nChất liệu: 60% Polyurethane, 28% Polyester, 12% Nylon\r\nID hình ảnh: 541624W2FB19000', 2, 12, '2021-07-29 10:30:45', '2021-07-29 10:30:45', 'IMG_1032-1 (1).jpg', NULL, 0),
(51, 'BALENCIAGA TRIPLE S TRAINER BLACK RED 2018', '23554000', '/storage/product/2/BOtwFKWhKduWvz47xbwl.jpg', '• Giày thể thao sưu tập đậm của Balenciaga\r\n• Đế 3 lớp phức hợp được thiết kế sau khi chạy, điền kinh và giày thể thao bóng rổ\r\n• Kích thước thêu ở mép ngón chân\r\n• Logo thêu bên hông\r\n• Logo in nổi ở phía sau\r\n• Thương hiệu cao su Triple S trên lưỡi\r\n• 2 vòng dây buộc bao gồm 1 chức năng\r\n• Hệ thống viền thể thao gồm 12 khoen vải\r\n• Dây buộc hai màu gợi nhớ đến dây buộc của giày đi bộ đường dài\r\n• Tab kéo về phía sau và tab kéo lưỡi\r\n• Hiệu ứng rửa sạch để có vẻ ngoài mặc đẹp\r\n• Sản xuất tại Trung Quốc\r\n• Lau sạch bằng vải mềm sạch\r\nChất liệu: 60% Polyester, 25% Da bê, 15% Da cừu\r\nID hình ảnh: 533882W09O11000', 2, 12, '2021-07-29 10:31:46', '2021-07-29 10:31:46', 'Triple-S-Trainer-Black-Red-2018 (1).jpg', NULL, 0),
(52, 'BALENCIAGA TRIPLE S TRAINER BLUE RED VERSION 2018', '38240000', '/storage/product/2/CshZOBkfu4zDLC5I29lc.jpg', 'Giày thể thao phối ren Triple S\r\nĐược gọi như vậy vì đế cao su xếp chồng ba lớp đặc trưng của nó, đôi giày thể thao phối ren Triple S bằng da màu đen này của Balenciaga chỉ là đôi để nâng tầm vẻ ngoài lấy cảm hứng từ thời trang dạo phố của bạn ... theo đúng nghĩa đen. Có mấu kéo ở phía sau, dây buộc phía trước bằng ren, mũi giày tròn, logo thêu ở bên cạnh và đế cao su xếp chồng ba lớp.\r\nThành phần\r\nLớp lót: Da 100%, Polyamide 100%\r\nBên ngoài: Polyamide 100%, Da 100%\r\nĐế: Cao su 100%\r\nID phong cách thiết kế: 524037W09OM\r\nMặc\r\nNgười mẫu cao 1,75 m mặc size 39 (FR)', 2, 12, '2021-07-29 10:32:45', '2021-07-29 10:32:45', 'Triple-S-Trainer-Blue-Red-2018 (1).jpg', NULL, 0),
(53, 'BALENCIAGA TRIPLE S TRAINER SLIVER VERSION 2018', '23542000', '/storage/product/2/NWQn6XWrr6j52tB2ar1D.jpg', '• Giày thể thao sưu tập đậm của Balenciaga\r\n• Đế 3 lớp phức hợp được thiết kế sau khi chạy, điền kinh và giày thể thao bóng rổ\r\n• Kích thước thêu ở mép ngón chân\r\n• Logo thêu bên hông\r\n• Logo in nổi ở phía sau\r\n• Thương hiệu cao su Triple S trên lưỡi\r\n• 2 vòng dây buộc bao gồm 1 chức năng\r\n• Hệ thống viền thể thao gồm 12 khoen vải\r\n• Dây buộc hai màu gợi nhớ đến dây buộc của giày đi bộ đường dài\r\n• Tab kéo về phía sau và tab kéo lưỡi\r\n• Hiệu ứng rửa sạch để có vẻ ngoài mặc đẹp\r\n• Sản xuất tại Trung Quốc\r\n• Lau sạch bằng vải mềm sạch\r\nChất liệu: 60% Polyester, 25% Da bê, 15% Da cừu\r\nID hình ảnh: 533882W09O11000', 2, 12, '2021-07-29 10:33:41', '2021-07-29 10:33:41', 'balenciaga-silver-triple-s-sneakers (1).jpg', NULL, 0),
(54, 'CONVERSE CHUCK 70 HIGH TOP BLACK (1970S)', '2000000', '/storage/product/2/GI1LQlPaAHHufkmfFUOD.jpg', 'Mã hàng: 162050C\r\nChất liệu: Canvas\r\nGiới tính: Nam, Nữ', 2, 13, '2021-07-29 10:35:03', '2021-07-29 10:35:03', '162050shot1.jpg', NULL, 0),
(55, 'CONVERSE CHUCK 70 HIGH TOP SUNFLOWER (1970S)', '2000000', '/storage/product/2/B54EqU4nZylWBrzLHbpe.jpg', 'Mã hàng: 162054C\r\nGiới tính: Phụ nữ, Nam giới', 2, 13, '2021-07-29 10:36:02', '2021-07-29 10:36:02', 'SU18CHUCK70CHUCK70SUNFLOWER162054CMEDIAL.jpg', NULL, 0),
(56, 'CONVERSE CHUCK 70 HIGH TOP WHITE (1970S)', '2000000', '/storage/product/2/915f9jkmr4QQR4AbxiSl.jpg', 'SKU: 162056C\r\nChất liệu: Canvas\r\nGiới tính: Women, Men', 2, 13, '2021-07-29 10:37:01', '2021-07-29 10:37:01', '162056standard (1).jpg', NULL, 0),
(57, 'CONVERSE CHUCK 70 LOW TOP BLACK (1970S)', '1900000', '/storage/product/2/ubY7ke31wmsqvScGrCU1.jpg', 'Mã hàng: 162058C\r\nChất liệu: Canvas\r\nGiới tính: Phụ nữ, Nam giới', 2, 13, '2021-07-29 10:38:02', '2021-07-29 10:38:02', '162058shot1.jpg', NULL, 0),
(58, 'CONVERSE CHUCK 70 LOW TOP SUNFLOWER (1970S)', '1900000', '/storage/product/2/0V9TYwxUrcsKghnmzsRF.jpg', 'Mã hàng: 162063C\r\nGiới tính: Nam, Nữ', 2, 13, '2021-07-29 10:38:58', '2021-07-29 10:38:58', 'SU18CHUCK70CHUCK70SUNFLOWER162063CMEDIAL.jpg', NULL, 0),
(59, 'CONVERSE CHUCK 70 LOW TOP WHITE (1970S)', '1900000', '/storage/product/2/diGtuN8OkgbtrHIT6Iil.jpg', 'Mã hàng: 162065C\r\nChất liệu: Canvas\r\nGiới tính: Nam, Nữ', 2, 13, '2021-07-29 10:39:50', '2021-07-29 10:39:50', '162065shot1.jpg', NULL, 0),
(60, 'MLB BIG BALL CHUNKY A LA DODGERS', '1960000', '/storage/product/2/VjOYCiWp4tqyrfYmpzm2.jpg', 'Kiểu dáng: Sneakers\r\nGiới tính: Unisex\r\nMàu sắc: Trắng', 2, 14, '2021-07-29 10:42:42', '2021-07-29 10:42:42', 'mlb-la-dodgers-sneaker-big-ball-chunky-a-5d68edd37b177-30082019163515.jpg', NULL, 0),
(61, 'MLB BIG BALL CHUNKY A NEW YORK YANKEES', '1845000', '/storage/product/2/5nJAVGLwnItJIhACVDJn.jpg', 'Kiểu dáng:\r\nSneakers\r\nGiới tính:\r\nUnisex\r\nMàu sắc:\r\nTrắng', 2, 14, '2021-07-29 10:43:34', '2021-07-29 10:43:34', 'giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-den-5e44abbe2673f-13022020085158.jpg', NULL, 0),
(62, 'MLB BIG BALL CHUNKY EMBO NEW YORK YANKEES', '1850000', '/storage/product/2/WQOQNv4m2rpREdMfAYI1.jpg', 'MÃ: 32SHC6941-50I\r\nDANH MỤC: GIÀY MLB, SNEAKERS CHÍNH HÃNG', 2, 14, '2021-07-29 10:44:36', '2021-07-29 10:44:36', 'new-york-yankees-sneakers-big-ball-chunky-a-1-300x300-e1573358812257 (1).jpg', NULL, 0),
(63, 'MLB BIG BALL CHUNKY MONOGRAM LT NEW YORK YANKEES', '2479000', '/storage/product/2/4GNLC4hjy22mgSYhgdgs.jpg', 'Chất liệu: Artificial Leather\r\nKiểu dáng giày sneaker đế cao thời trang\r\nCổ thấp cổ điển\r\nThiết kế lấy cảm hứng từ hiệp hội bóng chày MLB\r\nCộng hưởng cùng chi tiết chữ sắc nét\r\nHọa tiết monogram độc đáo\r\nLớp lót êm ái, nâng dáng bước chân\r\nGam màu hiện đại dễ dàng phối với nhiều trang phục và phụ kiện\r\nXuất xứ thương hiệu: Hàn Quốc', 2, 14, '2021-07-29 10:46:44', '2021-07-29 10:46:44', '50w_32shcm011_1_5031d65ffcd848de99aeab2d148e6d8e_1024x1024.jpg', NULL, 0),
(64, 'MLB BIG BALL CHUNKY P BOSTON RED SOX', '2490000', '/storage/product/2/lrS7KD1v7gUUB0wTv2n8.jpg', 'Chất liệu: Artificial Leather\r\nKiểu dáng giày sneaker đế cao thời trang\r\nCổ thấp cổ điển\r\nThiết kế lấy cảm hứng từ hiệp hội bóng chày MLB\r\nCộng hưởng cùng chi tiết chữ sắc nét\r\nHọa tiết monogram độc đáo\r\nLớp lót êm ái, nâng dáng bước chân\r\nGam màu hiện đại dễ dàng phối với nhiều trang phục và phụ kiện\r\nXuất xứ thương hiệu: Hàn Quốc', 2, 14, '2021-07-29 10:48:34', '2021-07-29 10:48:34', 'giay-mlb-big-ball-chunky-p-boston-red-sox-1.jpg', NULL, 0),
(65, 'MLB BIG BALL CHUNKY SHINY HOLOGRAM NEW YORK YANKEES', '2500000', '/storage/product/2/nCEM1cpaeKp77UPTnwmy.png', 'Mã: 32SHCH011-50W\r\nDanh mục: Giày, Women', 2, 14, '2021-07-29 10:49:51', '2021-07-29 10:49:51', 'rsz_1screen_shot_2020-08-15_at_55522_pm-1.png', NULL, 0),
(66, 'PUMA BTS COURT STAR BLACK WHITE', '1837000', '/storage/product/2/DxRlKcXpSnEzthAnq1mO.jpg', 'Thương hiệu Puma\r\nNgày phát hành Ngày 15 tháng 4 năm 2021\r\nMã hàng 366574-01\r\nBáo cáo kích thước\r\nĐúng với kích thước: 72,2%\r\nChạy lớn: 27,8%\r\nChạy nhỏ: 0,0%\r\nSố lượt đánh giá: 18\r\nPhong cách Các môn thể thao\r\nMùa áp dụng Tất cả các mùa\r\nKhép kín Viền\r\nChức năng Chống trơn trượt, nhẹ\r\nChất liệu duy nhất Đế cao su\r\nPhía trên Cắt thấp\r\nLoại ngón chân Ngón chân tròn\r\nLoại gót chân Gót phẳng\r\nĐường màu Đen trắng', 2, 15, '2021-07-29 10:51:01', '2021-07-29 10:52:20', '49989_142278.jpg', NULL, 0),
(67, 'PUMA BTS COURT STAR WHITE GREEN', '1500000', '/storage/product/2/g3OYVtBOG6YCOWvGh3M7.jpg', 'Dịp: Thể thao\r\nChiều cao cổ giày: Cổ thấp', 2, 15, '2021-07-29 10:52:08', '2021-07-29 10:52:08', 'court-star-bts-sọc-xanh-chụp-bên.jpg', NULL, 0),
(68, 'VANS CLASSIC SLIP-ON ‘BLACK WHITE’', '1450000', '/storage/product/2/brfhWo60DWidHyK1DmKr.png', 'Thương hiệu	Vans\r\nXuất xứ thương hiệu	Mỹ\r\nSản xuất tại	Việt Nam/ Ấn Độ/ Trung Quốc\r\nSKU	VN000EYEBLK \r\nModel	Slip On Classic\r\nChất liệu	\r\nVải canvas', 2, 16, '2021-07-29 10:53:30', '2021-08-02 08:41:47', 'vn000eyeblk-5 (1).png', '2021-08-02 08:41:47', 0),
(69, 'VANS CLASSIC SLIP-ON WHITE CANVAS', '2870000', '/storage/product/2/HGYDkPd7aiK2IAT46QCg.png', 'Thương hiệu Vans\r\nDòng trắng\r\nNgày phát hành 27 tháng 8, 2020\r\nMã hàng VN000EYEW00\r\nMàu trắng\r\nBáo cáo kích thước\r\nĐúng với kích thước: 74,1%\r\nChạy lớn: 11,1%\r\nChạy nhỏ: 14,8%\r\nSố lượt đánh giá: 27\r\nPhong cách hợp thời trang\r\nMùa áp dụng Tất cả các mùa\r\nViền đóng cửa\r\nChức năng Chống trơn trượt, Trọng lượng nhẹ\r\nChất liệu duy nhất Đế cao su\r\nCắt trên thấp\r\nNgón chân loại ngón chân tròn\r\nLoại gót chân Gót phẳng\r\nĐường màu trắng', 2, 16, '2021-07-29 10:54:27', '2021-08-02 08:41:47', 'tải xuống (4).png', '2021-08-02 08:41:47', 0),
(70, 'VANS OLD SKOOL CLASSIC BLACK', '1399000', '/storage/product/2/lzmLPxRPQ5fKEK7C7xZn.jpg', 'VANS OFF THE WALL là thương hiệu sản xuất giày và phụ kiện cho các môn thể thao mạo hiểm như trượt ván, xe đạp BMX, lướt sóng, trượt tuyết và mô tô đua v.v... đồng thời là nhà hoạt động mạnh mẽ trong lĩnh vực tổ chức các cuộc thi cho thể thao mạo hiểm và lĩnh vực Custom sáng tạo.', 2, 16, '2021-07-29 10:55:26', '2021-08-02 08:41:47', 'vans-old-skool-black-white-vn000d3hy28-1 (1).jpg', '2021-08-02 08:41:47', 0),
(71, 'VANS OLD SKOOL TRUE WHITE', '1750000', '/storage/product/2/uzxiLODNGNSL4NhXxJDy.jpg', 'Lại là một phiên bản Best Seller của VANS mọi thời đại, đôi giày chỉ với một màu trắng tinh này đã mang đến cho thương hiệu khá nhiều lợi nhuận dù khá kén người chọn. Là phiên bản được VANS sử dụng chủ yếu trong các sự kiện Custom giày, được các fan hâm mộ của VANS vẽ ra rất nhiều kiểu dáng khác nhau và luôn được hãng VANS ủng hộ và thậm chí là tài trợ để có những phiên bản Custom đặc sắc.', 2, 16, '2021-07-29 10:56:25', '2021-08-02 08:41:47', 'vans-old-skool-classic-true-white-vn000d3hw00-1 (1).jpg', '2021-08-02 08:41:47', 0),
(72, 'VANS SLIP-ON CHECKERBOARD', '1450000', '/storage/product/2/QWaVUbtCitiMNj1HnRBc.png', 'Bắt đầu trở nên nổi tiếng khi được Sean Penn sử dụng trong bộ phim Fast Times vào năm 1982 và từ phong trào trở thành một phong cách huyền thoại không hề lỗi thời và luôn nằm trong mục \"Best Seller\" của VANS cho tới thời điểm hiện tại.', 2, 16, '2021-07-29 10:57:27', '2021-08-02 08:41:47', 'vans-slip-on-checkerboard-black-off-white-vn000eyebww-1 (1).png', '2021-08-02 08:41:47', 0),
(73, 'VANS STYLE 36 “MARSHMALLOW” DRESS BLUE', '1850000', '/storage/product/2/KWYf527AqCp0gd1F1now.png', 'Vans Style 36 \"Marshmallow\" Dress Blue\r\nMàu sắc: Trắng ngà\r\nGiới tính: Men/Women\r\nChất liệu: Da lộn mix vải canvas\r\nPhụ kiện đi kèm: Box, túi vải', 2, 16, '2021-07-29 10:58:18', '2021-08-02 08:41:47', 'vn0a3dz3ke6-4 (1).png', '2021-08-02 08:41:47', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/HZjkaqt2YsNQfKtYZ6M9.png', 1, '2021-07-18 07:32:41', '2021-07-18 07:32:41', 'org__2__4f15cea9ac904d90ac23890eff6ab8a6_1024x1024.png'),
(2, '/storage/product/1/LBh7asRaEMaM2X1kbeWM.png', 1, '2021-07-18 07:32:41', '2021-07-18 07:32:41', 'org__3__d6be42a6f2494938b6c11c270f1b8db0_1024x1024.png'),
(3, '/storage/product/1/CF4DHZjO4OPghQHyFxOW.png', 1, '2021-07-18 07:32:41', '2021-07-18 07:32:41', 'org__5__8c6bb5b88d1345609fd5781e8490d314_1024x1024.png'),
(4, '/storage/product/2/s82GHmoDMRmRVj1qrlTo.png', 5, '2021-07-23 01:31:58', '2021-07-23 01:31:58', 'evdmpquu8aagono_6a8383e033614f0b9b3281b39748e554_1024x1024.png'),
(5, '/storage/product/2/q34SQMfL7ByB6I5Rpupi.gif', 6, '2021-07-23 01:39:16', '2021-07-23 01:39:16', 'Giày-Nike-Air-Max-97-All-White-510x510.gif'),
(6, '/storage/product/2/uxZCbqfZWq1KaWnyLbb6.jpg', 7, '2021-07-28 01:52:23', '2021-07-28 01:52:23', 'air-max-96-ii-shoe-m3NXTH (1).jpg'),
(7, '/storage/product/2/c8dVdvxHchOXKWLjB0TX.jpg', 7, '2021-07-28 01:52:23', '2021-07-28 01:52:23', 'air-max-96-ii-shoe-m3NXTH (2).jpg'),
(8, '/storage/product/2/6JE0HkmbVt1BGmYSRgls.jpg', 7, '2021-07-28 01:52:23', '2021-07-28 01:52:23', 'air-max-96-ii-shoe-m3NXTH (3).jpg'),
(9, '/storage/product/2/FGPdLFVN6zJZsGrtKqHV.jpg', 7, '2021-07-28 01:52:23', '2021-07-28 01:52:23', 'air-max-96-ii-shoe-m3NXTH (4).jpg'),
(10, '/storage/product/2/R7K8KtSZOyDiBEgvXd6l.jpg', 7, '2021-07-28 01:52:23', '2021-07-28 01:52:23', 'air-max-96-ii-shoe-m3NXTH (5).jpg'),
(11, '/storage/product/2/4GxbCKrLUuuQ5c770cmI.jpg', 1, '2021-07-28 07:32:45', '2021-07-28 07:32:45', 'air-max-96-ii-shoe-m3NXTH (1).jpg'),
(12, '/storage/product/2/XoEQDVbhVyAsK2P8wOnv.jpg', 1, '2021-07-28 07:32:45', '2021-07-28 07:32:45', 'air-max-96-ii-shoe-m3NXTH (2).jpg'),
(13, '/storage/product/2/bwZz51G4pGEXN6cH33oV.jpg', 1, '2021-07-28 07:32:45', '2021-07-28 07:32:45', 'air-max-96-ii-shoe-m3NXTH (3).jpg'),
(14, '/storage/product/2/cPWkWEWCztf6hjqgwxKo.jpg', 1, '2021-07-28 07:32:45', '2021-07-28 07:32:45', 'air-max-96-ii-shoe-m3NXTH (4).jpg'),
(15, '/storage/product/2/KMyDSQXpZnvG0xnPD8Ww.jpg', 1, '2021-07-28 07:32:45', '2021-07-28 07:32:45', 'air-max-96-ii-shoe-m3NXTH (5).jpg'),
(16, '/storage/product/2/2TpavLQHHEK05QVovpGt.jpg', 2, '2021-07-28 07:53:20', '2021-07-28 07:53:20', 'air-max-2090-shoe-cJ657M (1).jpg'),
(17, '/storage/product/2/VNgAa3gxNu0t0pmZfwKc.jpg', 2, '2021-07-28 07:53:20', '2021-07-28 07:53:20', 'air-max-2090-shoe-cJ657M (2).jpg'),
(18, '/storage/product/2/GOuw89gCbAnPFQK2jbnM.jpg', 2, '2021-07-28 07:53:20', '2021-07-28 07:53:20', 'air-max-2090-shoe-cJ657M (3).jpg'),
(19, '/storage/product/2/PaxSIfdUCyK6LhkGCuAi.jpg', 2, '2021-07-28 07:53:20', '2021-07-28 07:53:20', 'air-max-2090-shoe-cJ657M (4).jpg'),
(20, '/storage/product/2/Akcd736gwOg050uNOwm9.jpg', 2, '2021-07-28 07:53:20', '2021-07-28 07:53:20', 'air-max-2090-shoe-cJ657M (5).jpg'),
(21, '/storage/product/2/BE157VMWRASqKH6m4MfV.jpg', 3, '2021-07-28 07:54:52', '2021-07-28 07:54:52', 'air-max-genome-shoes-lQ1nNw (1).jpg'),
(22, '/storage/product/2/5xe9jTJ6u2VEuXohNahd.jpg', 3, '2021-07-28 07:54:52', '2021-07-28 07:54:52', 'air-max-genome-shoes-lQ1nNw (2).jpg'),
(23, '/storage/product/2/Dw2dDMzNZNCRaayGbtXv.jpg', 3, '2021-07-28 07:54:52', '2021-07-28 07:54:52', 'air-max-genome-shoes-lQ1nNw (3).jpg'),
(24, '/storage/product/2/WMzMDDtN5lE1b8OIWQON.jpg', 3, '2021-07-28 07:54:52', '2021-07-28 07:54:52', 'air-max-genome-shoes-lQ1nNw (4).jpg'),
(25, '/storage/product/2/gHUVzNjxqPlSfGn1V8fg.jpg', 3, '2021-07-28 07:54:52', '2021-07-28 07:54:52', 'air-max-genome-shoes-lQ1nNw (5).jpg'),
(26, '/storage/product/2/hWqq9eKzgfjU12wPAGoO.jpg', 4, '2021-07-28 08:04:20', '2021-07-28 08:04:20', 'air-max-genome-shoes-lQ1nNw (1).jpg'),
(27, '/storage/product/2/yHS8SdO2ZIIaYqG2uP35.jpg', 4, '2021-07-28 08:04:20', '2021-07-28 08:04:20', 'air-max-genome-shoes-lQ1nNw (2).jpg'),
(28, '/storage/product/2/AY311GEuLpobzb2Bxc8c.jpg', 4, '2021-07-28 08:04:20', '2021-07-28 08:04:20', 'air-max-genome-shoes-lQ1nNw (3).jpg'),
(29, '/storage/product/2/wvAj62u0YGxtZ7sIc5Tu.jpg', 4, '2021-07-28 08:04:20', '2021-07-28 08:04:20', 'air-max-genome-shoes-lQ1nNw (4).jpg'),
(30, '/storage/product/2/E7C7KFsF9xvSsZ5Z3Pfu.jpg', 4, '2021-07-28 08:04:20', '2021-07-28 08:04:20', 'air-max-genome-shoes-lQ1nNw (5).jpg'),
(31, '/storage/product/2/zzuawuggua07YMQjlRkS.jpg', 5, '2021-07-28 08:05:49', '2021-07-28 08:05:49', 'air-max-impact-2-basketball-shoe-WVvckk (1).jpg'),
(32, '/storage/product/2/yBS3kbfugAw7oAjEnlfj.jpg', 5, '2021-07-28 08:05:49', '2021-07-28 08:05:49', 'air-max-impact-2-basketball-shoe-WVvckk (2).jpg'),
(33, '/storage/product/2/ZsYTZ0edxdIbnPkNFXBn.jpg', 5, '2021-07-28 08:05:49', '2021-07-28 08:05:49', 'air-max-impact-2-basketball-shoe-WVvckk (3).jpg'),
(34, '/storage/product/2/Vhsv0bq2O5PAv4v1WUvs.jpg', 5, '2021-07-28 08:05:49', '2021-07-28 08:05:49', 'air-max-impact-2-basketball-shoe-WVvckk (4).jpg'),
(35, '/storage/product/2/OCWbxIxoDcb4y2O8w5bt.jpg', 5, '2021-07-28 08:05:49', '2021-07-28 08:05:49', 'air-max-impact-2-basketball-shoe-WVvckk (5).jpg'),
(36, '/storage/product/2/ljW27fy4XWtU43qKeKWz.jpg', 6, '2021-07-28 08:07:06', '2021-07-28 08:07:06', 'air-max-pre-day-shoes-hlv9tD (1).jpg'),
(37, '/storage/product/2/5RoM6EfecBRTtjM3A8ga.jpg', 6, '2021-07-28 08:07:06', '2021-07-28 08:07:06', 'air-max-pre-day-shoes-hlv9tD (2).jpg'),
(38, '/storage/product/2/lddeC7ULNIjkChe9Ja6g.jpg', 6, '2021-07-28 08:07:06', '2021-07-28 08:07:06', 'air-max-pre-day-shoes-hlv9tD (3).jpg'),
(39, '/storage/product/2/iwAtXrP6KLgv53OIK9xI.jpg', 6, '2021-07-28 08:07:06', '2021-07-28 08:07:06', 'air-max-pre-day-shoes-hlv9tD (4).jpg'),
(40, '/storage/product/2/4XNwhiOkL2Ly9oMXad2D.jpg', 6, '2021-07-28 08:07:06', '2021-07-28 08:07:06', 'air-max-pre-day-shoes-hlv9tD (5).jpg'),
(41, '/storage/product/2/Rw7epS81TcLanfjlJHpo.jpg', 7, '2021-07-28 08:08:19', '2021-07-28 08:08:19', 'nikecourt-air-max-volley-hard-court-tennis-shoe-5fTjQM (1).jpg'),
(42, '/storage/product/2/wLMI7lRSMeDzmiIQEr4i.jpg', 7, '2021-07-28 08:08:19', '2021-07-28 08:08:19', 'nikecourt-air-max-volley-hard-court-tennis-shoe-5fTjQM (2).jpg'),
(43, '/storage/product/2/FReu4HpwTMT6NkY5bn40.jpg', 7, '2021-07-28 08:08:19', '2021-07-28 08:08:19', 'nikecourt-air-max-volley-hard-court-tennis-shoe-5fTjQM (3).jpg'),
(44, '/storage/product/2/m65aFyvp3OazOXFHXDI4.jpg', 7, '2021-07-28 08:08:19', '2021-07-28 08:08:19', 'nikecourt-air-max-volley-hard-court-tennis-shoe-5fTjQM (4).jpg'),
(45, '/storage/product/2/ZrmBXnJrIyUT0HsIBXGM.jpg', 7, '2021-07-28 08:08:19', '2021-07-28 08:08:19', 'nikecourt-air-max-volley-hard-court-tennis-shoe-5fTjQM (5).jpg'),
(46, '/storage/product/2/6BQAaaQckSujhyVZd0wD.jpg', 8, '2021-07-28 08:11:55', '2021-07-28 08:11:55', 'cortez-basic-older-shoe-8kwrrB (1).jpg'),
(47, '/storage/product/2/7kTw35sIP1s4eFIIGtMN.jpg', 8, '2021-07-28 08:11:55', '2021-07-28 08:11:55', 'cortez-basic-older-shoe-8kwrrB (2).jpg'),
(48, '/storage/product/2/GRIMiRMyarbQjRpTAhIU.jpg', 8, '2021-07-28 08:11:55', '2021-07-28 08:11:55', 'cortez-basic-older-shoe-8kwrrB (3).jpg'),
(49, '/storage/product/2/1MC0KDPC75MnlmGe8Frv.jpg', 8, '2021-07-28 08:11:55', '2021-07-28 08:11:55', 'cortez-basic-older-shoe-8kwrrB (4).jpg'),
(50, '/storage/product/2/uS4XVT31L8cCbI2vkNRs.jpg', 8, '2021-07-28 08:11:55', '2021-07-28 08:11:55', 'cortez-basic-older-shoe-8kwrrB (5).jpg'),
(51, '/storage/product/2/Xl2tVVbD0ewktrHGih9V.jpg', 9, '2021-07-28 08:13:32', '2021-07-28 08:13:32', 'cortez-basic-sl-younger-shoe-5hqMdP (1).jpg'),
(52, '/storage/product/2/B1VLqAz1cNDm3uyEkVis.jpg', 9, '2021-07-28 08:13:32', '2021-07-28 08:13:32', 'cortez-basic-sl-younger-shoe-5hqMdP (2).jpg'),
(53, '/storage/product/2/GdkqnXkowxXPj2eZWOZ3.jpg', 9, '2021-07-28 08:13:32', '2021-07-28 08:13:32', 'cortez-basic-sl-younger-shoe-5hqMdP (3).jpg'),
(54, '/storage/product/2/L20Yx7uW5l4pqdpLkHKP.jpg', 9, '2021-07-28 08:13:32', '2021-07-28 08:13:32', 'cortez-basic-sl-younger-shoe-5hqMdP (4).jpg'),
(55, '/storage/product/2/6t8Lp4mK7MVUJlKmd0pI.jpg', 9, '2021-07-28 08:13:32', '2021-07-28 08:13:32', 'cortez-basic-sl-younger-shoe-5hqMdP (5).jpg'),
(56, '/storage/product/2/08WfJyWAVoUgswtmKpFs.jpg', 10, '2021-07-28 08:14:54', '2021-07-28 08:14:54', 'air-jordan-1-mid-se-shoe-XPnQh3 (1).jpg'),
(57, '/storage/product/2/osb9VGUesRB7eb9jgJqm.jpg', 10, '2021-07-28 08:14:54', '2021-07-28 08:14:54', 'air-jordan-1-mid-se-shoe-XPnQh3 (2).jpg'),
(58, '/storage/product/2/HbPlJVjhu2pw6rzFDsTC.jpg', 10, '2021-07-28 08:14:54', '2021-07-28 08:14:54', 'air-jordan-1-mid-se-shoe-XPnQh3 (3).jpg'),
(59, '/storage/product/2/KTD26p5GPvYAy2rb5JiS.jpg', 10, '2021-07-28 08:14:54', '2021-07-28 08:14:54', 'air-jordan-1-mid-se-shoe-XPnQh3 (4).jpg'),
(60, '/storage/product/2/vOsTwu7tIgCZGRkoenpk.jpg', 10, '2021-07-28 08:14:54', '2021-07-28 08:14:54', 'air-jordan-1-mid-se-shoe-XPnQh3 (5).jpg'),
(61, '/storage/product/2/cqdd0eG1DeVioqy8gNDh.jpg', 11, '2021-07-28 08:20:05', '2021-07-28 08:20:05', 'air-jordan-1-mid-se-shoe-XPnQh3 (1).jpg'),
(62, '/storage/product/2/rDNgTAqxBjP2JnVNuo7Z.jpg', 11, '2021-07-28 08:20:05', '2021-07-28 08:20:05', 'air-jordan-1-mid-se-shoe-XPnQh3 (2).jpg'),
(63, '/storage/product/2/5AXBuhjdEHaV7moumq9F.jpg', 11, '2021-07-28 08:20:05', '2021-07-28 08:20:05', 'air-jordan-1-mid-se-shoe-XPnQh3 (3).jpg'),
(64, '/storage/product/2/YKionveMe26gwGVVijmn.jpg', 11, '2021-07-28 08:20:05', '2021-07-28 08:20:05', 'air-jordan-1-mid-se-shoe-XPnQh3 (4).jpg'),
(65, '/storage/product/2/x7FPigCbtrvbaqrbNtcf.jpg', 11, '2021-07-28 08:20:05', '2021-07-28 08:20:05', 'air-jordan-1-mid-se-shoe-XPnQh3 (5).jpg'),
(66, '/storage/product/2/bfFxHJ4HQo6VXEuuS7ZO.jpg', 12, '2021-07-28 08:20:28', '2021-07-28 08:20:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (1).jpg'),
(67, '/storage/product/2/vWpRlfT6jB1t6IIoyTsf.jpg', 12, '2021-07-28 08:20:28', '2021-07-28 08:20:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (2).jpg'),
(68, '/storage/product/2/ZKXbb1HXGBv7mDduYgkF.jpg', 12, '2021-07-28 08:20:28', '2021-07-28 08:20:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (3).jpg'),
(69, '/storage/product/2/sT4lA74Ijs06PQ3sRb8K.jpg', 12, '2021-07-28 08:20:28', '2021-07-28 08:20:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (4).jpg'),
(70, '/storage/product/2/cNJ89Nsda8jw0Iv2xkU1.jpg', 12, '2021-07-28 08:20:28', '2021-07-28 08:20:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (5).jpg'),
(71, '/storage/product/2/vhfrGAvrFSIuJUd20i0t.jpg', 13, '2021-07-28 08:22:05', '2021-07-28 08:22:05', 'air-jordan-12-retro-shoe-WwCSBH (1).jpg'),
(72, '/storage/product/2/8ACja6vFitjLS1Ai8MBj.jpg', 13, '2021-07-28 08:22:05', '2021-07-28 08:22:05', 'air-jordan-12-retro-shoe-WwCSBH (2).jpg'),
(73, '/storage/product/2/WV5iPuWjX0373NR5uN97.jpg', 13, '2021-07-28 08:22:05', '2021-07-28 08:22:05', 'air-jordan-12-retro-shoe-WwCSBH (3).jpg'),
(74, '/storage/product/2/0NjwKfNDLjxH8g7vgiuH.jpg', 13, '2021-07-28 08:22:05', '2021-07-28 08:22:05', 'air-jordan-12-retro-shoe-WwCSBH (4).jpg'),
(75, '/storage/product/2/ujn9OZoAPuXzrwU22nqP.jpg', 13, '2021-07-28 08:22:05', '2021-07-28 08:22:05', 'air-jordan-12-retro-shoe-WwCSBH (5).jpg'),
(76, '/storage/product/2/d2IZCCwCqluWHQCclBz9.jpg', 14, '2021-07-28 08:26:28', '2021-07-28 08:26:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (1).jpg'),
(77, '/storage/product/2/enEVeOSpimDj8l6roASw.jpg', 14, '2021-07-28 08:26:28', '2021-07-28 08:26:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (2).jpg'),
(78, '/storage/product/2/LOWzVxnWJDZ4irUj4ryI.jpg', 14, '2021-07-28 08:26:28', '2021-07-28 08:26:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (3).jpg'),
(79, '/storage/product/2/asYeYNPUtkyM1vgeeCOC.jpg', 14, '2021-07-28 08:26:28', '2021-07-28 08:26:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (4).jpg'),
(80, '/storage/product/2/oFoHFeEzaUPBtGL81PJi.jpg', 14, '2021-07-28 08:26:28', '2021-07-28 08:26:28', 'air-jordan-1-mid-se-shoe-XPnQh3 (5).jpg'),
(81, '/storage/product/2/mvKwUybKxB8JlFPNZkCz.jpg', 15, '2021-07-28 08:27:45', '2021-07-28 08:27:45', 'air-jordan-12-retro-shoe-WwCSBH (1).jpg'),
(82, '/storage/product/2/GOI3o7LZb3mZC6x3nBlf.jpg', 15, '2021-07-28 08:27:45', '2021-07-28 08:27:45', 'air-jordan-12-retro-shoe-WwCSBH (2).jpg'),
(83, '/storage/product/2/EvhEq5eqqkA8GPOzELfE.jpg', 15, '2021-07-28 08:27:45', '2021-07-28 08:27:45', 'air-jordan-12-retro-shoe-WwCSBH (3).jpg'),
(84, '/storage/product/2/6aKLum3d4WiLv0bbRIUV.jpg', 15, '2021-07-28 08:27:45', '2021-07-28 08:27:45', 'air-jordan-12-retro-shoe-WwCSBH (4).jpg'),
(85, '/storage/product/2/mqNYHGVzsjrd68hbLc8O.jpg', 15, '2021-07-28 08:27:45', '2021-07-28 08:27:45', 'air-jordan-12-retro-shoe-WwCSBH (5).jpg'),
(86, '/storage/product/2/IMM0lsFrFEnsDu1PykLO.jpg', 16, '2021-07-28 08:29:12', '2021-07-28 08:29:12', 'jordan-1-mid-younger-shoes-FKKgKz (1).jpg'),
(87, '/storage/product/2/1Npd82r3CjOOEkYKprdq.jpg', 16, '2021-07-28 08:29:12', '2021-07-28 08:29:12', 'jordan-1-mid-younger-shoes-FKKgKz (2).jpg'),
(88, '/storage/product/2/1y8QCA6kmvHv5nN4n301.jpg', 16, '2021-07-28 08:29:12', '2021-07-28 08:29:12', 'jordan-1-mid-younger-shoes-FKKgKz (3).jpg'),
(89, '/storage/product/2/zMam7qY0QjTCX3CuZxqL.jpg', 16, '2021-07-28 08:29:12', '2021-07-28 08:29:12', 'jordan-1-mid-younger-shoes-FKKgKz (4).jpg'),
(90, '/storage/product/2/1XHuxyYbiNoXkuUX0RhT.jpg', 16, '2021-07-28 08:29:12', '2021-07-28 08:29:12', 'jordan-1-mid-younger-shoes-FKKgKz (5).jpg'),
(91, '/storage/product/2/d5bPgX5uQQf82rxseY9E.jpg', 17, '2021-07-28 08:30:27', '2021-07-28 08:30:27', 'jordan-air-nfh-shoes-1msFvZ (1).jpg'),
(92, '/storage/product/2/VkMUpl4fUFwVH6ZMs3yK.jpg', 17, '2021-07-28 08:30:27', '2021-07-28 08:30:27', 'jordan-air-nfh-shoes-1msFvZ (2).jpg'),
(93, '/storage/product/2/z9QzhPHxdG7YjTdzIo2W.jpg', 17, '2021-07-28 08:30:27', '2021-07-28 08:30:27', 'jordan-air-nfh-shoes-1msFvZ (3).jpg'),
(94, '/storage/product/2/wKQ3GIstgZl9GGcYZXVk.jpg', 17, '2021-07-28 08:30:27', '2021-07-28 08:30:27', 'jordan-air-nfh-shoes-1msFvZ (4).jpg'),
(95, '/storage/product/2/dHxgGQKTvsxp4Nv3tocd.jpg', 17, '2021-07-28 08:30:27', '2021-07-28 08:30:27', 'jordan-air-nfh-shoes-1msFvZ (5).jpg'),
(96, '/storage/product/2/f3vlCO6gdlR3f0jHoRsq.jpg', 18, '2021-07-28 08:31:45', '2021-07-28 08:31:45', 'jordan-delta-2-older-shoe-7FNpBn (1).jpg'),
(97, '/storage/product/2/8e6KwXe5XrE2HLbTtUnb.jpg', 18, '2021-07-28 08:31:45', '2021-07-28 08:31:45', 'jordan-delta-2-older-shoe-7FNpBn (2).jpg'),
(98, '/storage/product/2/TD42HkePqt9ki9VJYctC.jpg', 18, '2021-07-28 08:31:45', '2021-07-28 08:31:45', 'jordan-delta-2-older-shoe-7FNpBn (3).jpg'),
(99, '/storage/product/2/AVDuCcqdAg0pTTnb74Vt.jpg', 18, '2021-07-28 08:31:45', '2021-07-28 08:31:45', 'jordan-delta-2-older-shoe-7FNpBn (4).jpg'),
(100, '/storage/product/2/PUt8JH3Bzm5eQh9F87NU.jpg', 18, '2021-07-28 08:31:45', '2021-07-28 08:31:45', 'jordan-delta-2-older-shoe-7FNpBn (5).jpg'),
(101, '/storage/product/2/LG4pImrglP8xZbhpUm9P.jpg', 19, '2021-07-28 08:32:59', '2021-07-28 08:32:59', 'jordan-delta-2-older-shoe-7FNpBn (1).jpg'),
(102, '/storage/product/2/CD9rxxMbo5vSc5DwC4el.jpg', 19, '2021-07-28 08:32:59', '2021-07-28 08:32:59', 'jordan-delta-2-older-shoe-7FNpBn (2).jpg'),
(103, '/storage/product/2/JX8UjR2p6xjMylhaitnM.jpg', 19, '2021-07-28 08:32:59', '2021-07-28 08:32:59', 'jordan-delta-2-older-shoe-7FNpBn (3).jpg'),
(104, '/storage/product/2/cT1ouIUk6gqBqBe81SHy.jpg', 19, '2021-07-28 08:32:59', '2021-07-28 08:32:59', 'jordan-delta-2-older-shoe-7FNpBn (4).jpg'),
(105, '/storage/product/2/NLt0puDLY8nsAw5tnjqO.jpg', 19, '2021-07-28 08:32:59', '2021-07-28 08:32:59', 'jordan-delta-2-older-shoe-7FNpBn (5).jpg'),
(106, '/storage/product/2/XN15ivBA1wh9T6tM1zd6.jpg', 20, '2021-07-28 08:34:39', '2021-07-28 08:34:39', 'jordan-why-not-zer04-pf-basketball-shoe-P3c3Rp (1).jpg'),
(107, '/storage/product/2/f9MvtIzAF3hx2vz12nkY.jpg', 20, '2021-07-28 08:34:39', '2021-07-28 08:34:39', 'jordan-why-not-zer04-pf-basketball-shoe-P3c3Rp (2).jpg'),
(108, '/storage/product/2/heghamcVCziWNlo6L1ga.jpg', 20, '2021-07-28 08:34:39', '2021-07-28 08:34:39', 'jordan-why-not-zer04-pf-basketball-shoe-P3c3Rp (3).jpg'),
(109, '/storage/product/2/kB332nCLQrc7xjsip6xB.jpg', 20, '2021-07-28 08:34:39', '2021-07-28 08:34:39', 'jordan-why-not-zer04-pf-basketball-shoe-P3c3Rp (4).jpg'),
(110, '/storage/product/2/06AN1iYHqhgFnMsNQw6B.jpg', 20, '2021-07-28 08:34:39', '2021-07-28 08:34:39', 'jordan-why-not-zer04-pf-basketball-shoe-P3c3Rp (5).jpg'),
(111, '/storage/product/2/U1jn40hlFsUkazU5hp4z.jpg', 21, '2021-07-28 08:36:19', '2021-07-28 08:36:19', 'air-more-uptempo-96-shoe-RMpGRj (1).jpg'),
(112, '/storage/product/2/B1RtYBs4oLfgYJpX7Jq7.jpg', 21, '2021-07-28 08:36:19', '2021-07-28 08:36:19', 'air-more-uptempo-96-shoe-RMpGRj (2).jpg'),
(113, '/storage/product/2/tYefFbrYgqQtjmjEXz6f.jpg', 21, '2021-07-28 08:36:19', '2021-07-28 08:36:19', 'air-more-uptempo-96-shoe-RMpGRj (3).jpg'),
(114, '/storage/product/2/0TkNxlBhigT2OOqhuLXG.jpg', 21, '2021-07-28 08:36:19', '2021-07-28 08:36:19', 'air-more-uptempo-96-shoe-RMpGRj (4).jpg'),
(115, '/storage/product/2/VT2OSvNycWi8yEiJzRbT.jpg', 21, '2021-07-28 08:36:19', '2021-07-28 08:36:19', 'air-more-uptempo-96-shoe-RMpGRj (5).jpg'),
(116, '/storage/product/2/8m07RMfvqM6micJEQ2Ng.jpg', 22, '2021-07-28 08:37:36', '2021-07-28 08:37:36', 'air-more-uptempo-96-shoes-KwM99n (1).jpg'),
(117, '/storage/product/2/9rs5evtW0caRoxShhr7O.jpg', 22, '2021-07-28 08:37:36', '2021-07-28 08:37:36', 'air-more-uptempo-96-shoes-KwM99n (2).jpg'),
(118, '/storage/product/2/iKklecDG7bl9tRz5IjuA.jpg', 22, '2021-07-28 08:37:36', '2021-07-28 08:37:36', 'air-more-uptempo-96-shoes-KwM99n (3).jpg'),
(119, '/storage/product/2/il8ukQHZqpU2YaDSr6td.jpg', 22, '2021-07-28 08:37:36', '2021-07-28 08:37:36', 'air-more-uptempo-96-shoes-KwM99n (4).jpg'),
(120, '/storage/product/2/bXsYHqNe2a0L7qMTJneB.jpg', 22, '2021-07-28 08:37:36', '2021-07-28 08:37:36', 'air-more-uptempo-96-shoes-KwM99n (5).jpg'),
(121, '/storage/product/2/9npRGrR1QsSpvCsCR9vN.jpg', 23, '2021-07-28 08:39:14', '2021-07-28 08:39:14', 'air-more-uptempo-96-shoes-KwM99n (1).jpg'),
(122, '/storage/product/2/vtkGQsylSa0NufJPsq4u.jpg', 23, '2021-07-28 08:39:14', '2021-07-28 08:39:14', 'air-more-uptempo-96-shoes-KwM99n (2).jpg'),
(123, '/storage/product/2/OsdXPYcAnqkKCpNFFbNc.jpg', 23, '2021-07-28 08:39:14', '2021-07-28 08:39:14', 'air-more-uptempo-96-shoes-KwM99n (3).jpg'),
(124, '/storage/product/2/oZXcDe5tEUmLKyH1b3dc.jpg', 23, '2021-07-28 08:39:14', '2021-07-28 08:39:14', 'air-more-uptempo-96-shoes-KwM99n (4).jpg'),
(125, '/storage/product/2/PkapqotLdD0xfu1h94vp.jpg', 23, '2021-07-28 08:39:14', '2021-07-28 08:39:14', 'air-more-uptempo-96-shoes-KwM99n (5).jpg'),
(126, '/storage/product/2/ErgIykHYvGDbSgZvUcm9.jpg', 24, '2021-07-28 08:40:49', '2021-07-28 08:40:49', 'air-more-uptempo-96-shoes-KwM99n (1).jpg'),
(127, '/storage/product/2/5fXc0JqZHlxMm0UBUbTR.jpg', 24, '2021-07-28 08:40:49', '2021-07-28 08:40:49', 'air-more-uptempo-96-shoes-KwM99n (2).jpg'),
(128, '/storage/product/2/HluCbSmUNlv2ZGBRyvyQ.jpg', 24, '2021-07-28 08:40:49', '2021-07-28 08:40:49', 'air-more-uptempo-96-shoes-KwM99n (3).jpg'),
(129, '/storage/product/2/1WIai5QDEM1qQnsa2pgg.jpg', 24, '2021-07-28 08:40:49', '2021-07-28 08:40:49', 'air-more-uptempo-96-shoes-KwM99n (4).jpg'),
(130, '/storage/product/2/b1XT9G3mOnJGEI6MyZMj.jpg', 24, '2021-07-28 08:40:49', '2021-07-28 08:40:49', 'air-more-uptempo-96-shoes-KwM99n (5).jpg'),
(131, '/storage/product/2/yEAWQfWHLYRugINnGd4T.jpg', 25, '2021-07-28 08:46:05', '2021-07-28 08:46:05', 'Giay_Alphabounce+_Xam_EG1450_01_standard (1).jpg'),
(132, '/storage/product/2/P95o1GLQuUNaNtHuTl8l.jpg', 25, '2021-07-28 08:46:05', '2021-07-28 08:46:05', 'Giay_Alphabounce+_Xam_EG1450_02_standard (2).jpg'),
(133, '/storage/product/2/Hx6LQDtmXFXWRGqSaYad.jpg', 25, '2021-07-28 08:46:05', '2021-07-28 08:46:05', 'Giay_Alphabounce+_Xam_EG1450_03_standard (3).jpg'),
(134, '/storage/product/2/T5q3LegU7hVI17mDkdu0.jpg', 25, '2021-07-28 08:46:05', '2021-07-28 08:46:05', 'Giay_Alphabounce+_Xam_EG1450_04_standard (4).jpg'),
(135, '/storage/product/2/MtFFZq6fgBR6H1R9KPQn.jpg', 25, '2021-07-28 08:46:05', '2021-07-28 08:46:05', 'Giay_Alphabounce+_Xam_EG1450_010_hover_standard (5).jpg'),
(136, '/storage/product/2/ri7kzdXl2wYhLRWJo1Ez.jpg', 26, '2021-07-28 08:47:53', '2021-07-28 08:47:53', 'Giay_Alphabounce+_DJen_EG1452_01_standard (1).jpg'),
(137, '/storage/product/2/Z1h4b2m4uG6Rml5C7C8d.jpg', 26, '2021-07-28 08:47:53', '2021-07-28 08:47:53', 'Giay_Alphabounce+_DJen_EG1452_02_standard (2).jpg'),
(138, '/storage/product/2/QhbEWjvOmJviAWnvo0jW.jpg', 26, '2021-07-28 08:47:53', '2021-07-28 08:47:53', 'Giay_Alphabounce+_DJen_EG1452_03_standard (3).jpg'),
(139, '/storage/product/2/p98GR6L6xr1KcfxDWpRX.jpg', 26, '2021-07-28 08:47:53', '2021-07-28 08:47:53', 'Giay_Alphabounce+_DJen_EG1452_04_standard (4).jpg'),
(140, '/storage/product/2/gtaym1TN7myK6xMTiKof.jpg', 26, '2021-07-28 08:47:53', '2021-07-28 08:47:53', 'Giay_Alphabounce+_DJen_EG1452_010_hover_standard (5).jpg'),
(141, '/storage/product/2/aJCUVcAizhfqe3g1oPSN.jpg', 27, '2021-07-28 08:49:23', '2021-07-28 08:49:23', 'Giay_AlphaComfy_trang_GZ3461_01_standard (1).jpg'),
(142, '/storage/product/2/ngqYrfWpAQx8loiGdvaH.jpg', 27, '2021-07-28 08:49:23', '2021-07-28 08:49:23', 'Giay_AlphaComfy_trang_GZ3461_02_standard_hover (2).jpg'),
(143, '/storage/product/2/E7o6npqdB6q8l0kZMi5d.jpg', 27, '2021-07-28 08:49:23', '2021-07-28 08:49:23', 'Giay_AlphaComfy_trang_GZ3461_03_standard (3).jpg'),
(144, '/storage/product/2/YOhAkMa8jo8wpNs2U6T5.jpg', 27, '2021-07-28 08:49:23', '2021-07-28 08:49:23', 'Giay_AlphaComfy_trang_GZ3461_04_standard (4).jpg'),
(145, '/storage/product/2/8uA8hqxFy0s9odmG5Epu.jpg', 27, '2021-07-28 08:49:23', '2021-07-28 08:49:23', 'Giay_AlphaComfy_trang_GZ3461_05_standard (5).jpg'),
(146, '/storage/product/2/viXMbFELxRvvsi3L4KNS.jpg', 28, '2021-07-28 08:50:50', '2021-07-28 08:50:50', 'Giay_Mule_Stan_Smith_DJen_FX5858_01_standard (1).jpg'),
(147, '/storage/product/2/ncU96kKzBpqIm51LCvFg.jpg', 28, '2021-07-28 08:50:50', '2021-07-28 08:50:50', 'Giay_Mule_Stan_Smith_DJen_FX5858_02_standard_hover (2).jpg'),
(148, '/storage/product/2/9c7eVTaJdXSTK5uhzfLc.jpg', 28, '2021-07-28 08:50:50', '2021-07-28 08:50:50', 'Giay_Mule_Stan_Smith_DJen_FX5858_03_standard (1).jpg'),
(149, '/storage/product/2/uQAJwllP6BjovUQgoFWM.jpg', 28, '2021-07-28 08:50:50', '2021-07-28 08:50:50', 'Giay_Mule_Stan_Smith_DJen_FX5858_04_standard (1).jpg'),
(150, '/storage/product/2/HitFZrzLZ4CiptQQugxb.jpg', 28, '2021-07-28 08:50:50', '2021-07-28 08:50:50', 'Giay_Mule_Stan_Smith_DJen_FX5858_05_standard (1).jpg'),
(151, '/storage/product/2/0tnlVD64tPlTXLAW4wBF.jpg', 29, '2021-07-28 08:51:42', '2021-07-28 08:51:42', 'Giay_Mule_Stan_Smith_DJen_FX5858_01_standard (1).jpg'),
(152, '/storage/product/2/iLdOyA16blcyeXNIwq0u.jpg', 29, '2021-07-28 08:51:42', '2021-07-28 08:51:42', 'Giay_Mule_Stan_Smith_DJen_FX5858_02_standard_hover (2).jpg'),
(153, '/storage/product/2/3W5AfjzF8ByKXbBmia82.jpg', 29, '2021-07-28 08:51:42', '2021-07-28 08:51:42', 'Giay_Mule_Stan_Smith_DJen_FX5858_03_standard (1).jpg'),
(154, '/storage/product/2/eXV8TPvYAVlfmDtburh1.jpg', 29, '2021-07-28 08:51:42', '2021-07-28 08:51:42', 'Giay_Mule_Stan_Smith_DJen_FX5858_04_standard (1).jpg'),
(155, '/storage/product/2/NKaDXoqXJPgJOlzOfSsa.jpg', 29, '2021-07-28 08:51:42', '2021-07-28 08:51:42', 'Giay_Mule_Stan_Smith_DJen_FX5858_05_standard (1).jpg'),
(156, '/storage/product/2/7c85jeyQk7i9swFClEv1.jpg', 30, '2021-07-28 08:53:33', '2021-07-28 08:53:33', 'Giay_Stan_Smith_trang_FX5522_01_standard (1).jpg'),
(157, '/storage/product/2/runojiANbvKJMZW8dMgs.jpg', 30, '2021-07-28 08:53:33', '2021-07-28 08:53:33', 'Giay_Stan_Smith_trang_FX5522_02_standard (3).jpg'),
(158, '/storage/product/2/0xnX90wBgRKNVXQH30g7.jpg', 30, '2021-07-28 08:53:33', '2021-07-28 08:53:33', 'Giay_Stan_Smith_trang_FX5522_03_standard (4).jpg'),
(159, '/storage/product/2/qyjZKEICw5v0S7ZsPfJs.jpg', 30, '2021-07-28 08:53:33', '2021-07-28 08:53:33', 'Giay_Stan_Smith_trang_FX5522_41_detail (5).jpg'),
(160, '/storage/product/2/4NICfvDKwsbTMvm2Vu62.jpg', 30, '2021-07-28 08:53:33', '2021-07-28 08:53:33', 'Giay_Stan_Smith_trang_FX5522_HM1_hover (2).jpg'),
(161, '/storage/product/2/Joexs8FjQDkGfFXBD3wL.jpg', 31, '2021-07-28 08:56:46', '2021-07-28 08:56:46', 'Giay_Stan_Smith_trang_FX5502_01_standard (1).jpg'),
(162, '/storage/product/2/PirvaPXKNLdqkYdyPJ1J.jpg', 31, '2021-07-28 08:56:46', '2021-07-28 08:56:46', 'Giay_Stan_Smith_trang_FX5502_02_standard (4).jpg'),
(163, '/storage/product/2/UhVdbkHTGSULCxcWAFbo.jpg', 31, '2021-07-28 08:56:46', '2021-07-28 08:56:46', 'Giay_Stan_Smith_trang_FX5502_03_standard (5).jpg'),
(164, '/storage/product/2/YMwsjmCy162WDgZ0K4Gd.jpg', 31, '2021-07-28 08:56:46', '2021-07-28 08:56:46', 'Giay_Stan_Smith_trang_FX5502_HM1_hover (2).jpg'),
(165, '/storage/product/2/3G5b4SFg6JBal62omn5o.jpg', 31, '2021-07-28 08:56:46', '2021-07-28 08:56:46', 'Giay_Stan_Smith_trang_FX5502_HM2 (3).jpg'),
(166, '/storage/product/2/FXV1aSfbtU4NwACFmcSA.jpg', 32, '2021-07-28 08:58:27', '2021-07-28 08:58:27', 'Giay_Stan_Smith_trang_FX5653_01_standard (1).jpg'),
(167, '/storage/product/2/c4jtfL07RpFhuSNVoQrR.jpg', 32, '2021-07-28 08:58:27', '2021-07-28 08:58:27', 'Giay_Stan_Smith_trang_FX5653_02_standard (3).jpg'),
(168, '/storage/product/2/WcKjv5x8JyQhNnb8gS3D.jpg', 32, '2021-07-28 08:58:27', '2021-07-28 08:58:27', 'Giay_Stan_Smith_trang_FX5653_03_standard (4).jpg'),
(169, '/storage/product/2/RdWAnGG5dy9MDiJuMIpY.jpg', 32, '2021-07-28 08:58:27', '2021-07-28 08:58:27', 'Giay_Stan_Smith_trang_FX5653_41_detail (5).jpg'),
(170, '/storage/product/2/ZmlPHIwsX73rWh9Eks2h.jpg', 32, '2021-07-28 08:58:27', '2021-07-28 08:58:27', 'Giay_Stan_Smith_trang_FX5653_HM1_hover (2).jpg'),
(171, '/storage/product/2/NrrdkUc5m2NiaveFsNRT.jpg', 33, '2021-07-28 08:59:52', '2021-07-28 08:59:52', 'Giay_Stan_Smith_trang_GZ8142_01_standard (2).jpg'),
(172, '/storage/product/2/86uAyRn5eB9Uv0EjYvCS.jpg', 33, '2021-07-28 08:59:52', '2021-07-28 08:59:52', 'Giay_Stan_Smith_trang_GZ8142_02_standard_hover (3).jpg'),
(173, '/storage/product/2/e58IWJQGLTLNXxi7V3Wk.jpg', 33, '2021-07-28 08:59:52', '2021-07-28 08:59:52', 'Giay_Stan_Smith_trang_GZ8142_03_standard (1).jpg'),
(174, '/storage/product/2/XeHd3m0eD4sK2M4L0fZW.jpg', 33, '2021-07-28 08:59:52', '2021-07-28 08:59:52', 'Giay_Stan_Smith_trang_GZ8142_04_standard (4).jpg'),
(175, '/storage/product/2/65AUSdJBgCUxlI3WmWRJ.jpg', 33, '2021-07-28 08:59:52', '2021-07-28 08:59:52', 'Giay_Stan_Smith_trang_GZ8142_05_standard (5).jpg'),
(176, '/storage/product/2/UYxtWjLNtnrbbgpLi6zq.jpg', 34, '2021-07-28 09:01:18', '2021-07-28 09:01:18', 'Giay_Vulc_Stan_Smith_trang_FX8684_01_standard (1).jpg'),
(177, '/storage/product/2/C7qz1CtSUVzCHQg0omUK.jpg', 34, '2021-07-28 09:01:18', '2021-07-28 09:01:18', 'Giay_Vulc_Stan_Smith_trang_FX8684_02_standard_hover (2).jpg'),
(178, '/storage/product/2/dyvDqRhhwwGMpeOS6ObO.jpg', 34, '2021-07-28 09:01:18', '2021-07-28 09:01:18', 'Giay_Vulc_Stan_Smith_trang_FX8684_03_standard (3).jpg'),
(179, '/storage/product/2/QaEun3lPbmDeIoB9GtE0.jpg', 34, '2021-07-28 09:01:18', '2021-07-28 09:01:18', 'Giay_Vulc_Stan_Smith_trang_FX8684_04_standard (4).jpg'),
(180, '/storage/product/2/pSOWYHU0UQUwBvBoMsT6.jpg', 34, '2021-07-28 09:01:18', '2021-07-28 09:01:18', 'Giay_Vulc_Stan_Smith_trang_FX8684_05_standard (5).jpg'),
(181, '/storage/product/2/86NzuiW66tSuwPynfjyF.jpg', 35, '2021-07-28 09:09:51', '2021-07-28 09:09:51', 'Giay_Vulc_Stan_Smith_trang_FX8684_01_standard (1).jpg'),
(182, '/storage/product/2/5hLiD4vYt2BF4CdKHF3W.jpg', 35, '2021-07-28 09:09:51', '2021-07-28 09:09:51', 'Giay_Vulc_Stan_Smith_trang_FX8684_02_standard_hover (2).jpg'),
(183, '/storage/product/2/Jrl24mw97XK4Vm4MXqAG.jpg', 35, '2021-07-28 09:09:51', '2021-07-28 09:09:51', 'Giay_Vulc_Stan_Smith_trang_FX8684_03_standard (3).jpg'),
(184, '/storage/product/2/ZwpIgd9kqDG4crxaBbO7.jpg', 35, '2021-07-28 09:09:51', '2021-07-28 09:09:51', 'Giay_Vulc_Stan_Smith_trang_FX8684_04_standard (4).jpg'),
(185, '/storage/product/2/drzch10MKnQREr04KXdG.jpg', 35, '2021-07-28 09:09:51', '2021-07-28 09:09:51', 'Giay_Vulc_Stan_Smith_trang_FX8684_05_standard (5).jpg'),
(186, '/storage/product/2/siMD7XKuTAfpwLQfwsoT.jpg', 36, '2021-07-28 09:11:11', '2021-07-28 09:11:11', 'SUPERSTAR_50_RUN_DMC_trang_FX7616_01_standard (1).jpg'),
(187, '/storage/product/2/CRsgTbPZQenZVSl9TFXp.jpg', 36, '2021-07-28 09:11:11', '2021-07-28 09:11:11', 'SUPERSTAR_50_RUN_DMC_trang_FX7616_02_standard_hover (2).jpg'),
(188, '/storage/product/2/S91kX7di5p5pQU8Hlfiv.jpg', 36, '2021-07-28 09:11:11', '2021-07-28 09:11:11', 'SUPERSTAR_50_RUN_DMC_trang_FX7616_03_standard (3).jpg'),
(189, '/storage/product/2/dSKLDkZbkpCEwJP3xWML.jpg', 36, '2021-07-28 09:11:11', '2021-07-28 09:11:11', 'SUPERSTAR_50_RUN_DMC_trang_FX7616_04_standard (4).jpg'),
(190, '/storage/product/2/6njSJF8rB7ZjbPxjOoGo.jpg', 36, '2021-07-28 09:11:11', '2021-07-28 09:11:11', 'SUPERSTAR_50_RUN_DMC_trang_FX7616_05_standard (5).jpg'),
(191, '/storage/product/2/Rhta874TqGX8HB4iA7wX.jpg', 37, '2021-07-28 09:12:22', '2021-07-28 09:12:22', 'Giay_Superstar_DJen_FW5387_01_standard (1).jpg'),
(192, '/storage/product/2/m1QafeDpVANq6r7fDaTm.jpg', 37, '2021-07-28 09:12:22', '2021-07-28 09:12:22', 'Giay_Superstar_DJen_FW5387_02_standard (2).jpg'),
(193, '/storage/product/2/6xsqMIlVHaUNB5wl8Vna.jpg', 37, '2021-07-28 09:12:22', '2021-07-28 09:12:22', 'Giay_Superstar_DJen_FW5387_03_standard (3).jpg'),
(194, '/storage/product/2/kCRPGEmHeIXNNKaIARLA.jpg', 37, '2021-07-28 09:12:22', '2021-07-28 09:12:22', 'Giay_Superstar_DJen_FW5387_04_standard (4).jpg'),
(195, '/storage/product/2/4Spps8MyS5Bz0tDaIU4p.jpg', 37, '2021-07-28 09:12:22', '2021-07-28 09:12:22', 'Giay_Superstar_DJen_FW5387_41_detail (5).jpg'),
(196, '/storage/product/2/BR9q55g3QZQNSBc7p3mx.jpg', 38, '2021-07-28 09:13:33', '2021-07-28 09:13:33', 'Giay_Superstar_FR_trang_FV3421_01_standard (1).jpg'),
(197, '/storage/product/2/e8hJDk6fmCHvoY1WLsqw.jpg', 38, '2021-07-28 09:13:33', '2021-07-28 09:13:33', 'Giay_Superstar_FR_trang_FV3421_02_standard (2).jpg'),
(198, '/storage/product/2/8KjtaPJSBHcoGY6YYDBw.jpg', 38, '2021-07-28 09:13:33', '2021-07-28 09:13:33', 'Giay_Superstar_FR_trang_FV3421_03_standard (3).jpg'),
(199, '/storage/product/2/0qsl9IhLhud3QsPKRSgw.jpg', 38, '2021-07-28 09:13:33', '2021-07-28 09:13:33', 'Giay_Superstar_FR_trang_FV3421_010_hover_standard (4).jpg'),
(200, '/storage/product/2/oKESu6f4iaU2Msymqqd7.jpg', 38, '2021-07-28 09:13:33', '2021-07-28 09:13:33', 'Giay_Superstar_FR_trang_FV3421_HM1 (5).jpg'),
(201, '/storage/product/2/spONGTULzPcSmV350mlT.jpg', 39, '2021-07-28 09:14:40', '2021-07-28 09:14:40', 'SUPERSTAR_J_DJen_GV7129_01_standard (1).jpg'),
(202, '/storage/product/2/EfailVR2qF8Gxgfg7aCQ.jpg', 39, '2021-07-28 09:14:40', '2021-07-28 09:14:40', 'SUPERSTAR_J_DJen_GV7129_02_standard (2).jpg'),
(203, '/storage/product/2/pJaqPKX0NcqC92wE6l0A.jpg', 39, '2021-07-28 09:14:40', '2021-07-28 09:14:40', 'SUPERSTAR_J_DJen_GV7129_03_standard (3).jpg'),
(204, '/storage/product/2/P4ZR9jDM2Q07ru65z7EK.jpg', 39, '2021-07-28 09:14:40', '2021-07-28 09:14:40', 'SUPERSTAR_J_DJen_GV7129_04_standard (4).jpg'),
(205, '/storage/product/2/nBHggOnAFGpHUxdoBTak.jpg', 39, '2021-07-28 09:14:40', '2021-07-28 09:14:40', 'SUPERSTAR_J_DJen_GV7129_HM1_hover (5).jpg'),
(206, '/storage/product/2/ez4ychbCG7BcoejoxHqD.jpg', 40, '2021-07-28 09:16:07', '2021-07-28 09:16:07', 'Giay_Superstar_Xam_FV3034_01_standard (1).jpg'),
(207, '/storage/product/2/XNQvLvBc6l6mgWdiOcI7.jpg', 40, '2021-07-28 09:16:07', '2021-07-28 09:16:07', 'Giay_Superstar_Xam_FV3034_02_standard (2).jpg'),
(208, '/storage/product/2/Arixe0htcxkwr4bGtehA.jpg', 40, '2021-07-28 09:16:07', '2021-07-28 09:16:07', 'Giay_Superstar_Xam_FV3034_03_standard (3).jpg'),
(209, '/storage/product/2/Ilc5LwISk7Y9CiNUKd9S.jpg', 40, '2021-07-28 09:16:07', '2021-07-28 09:16:07', 'Giay_Superstar_Xam_FV3034_04_standard (4).jpg'),
(210, '/storage/product/2/iC8kXnOn5XILyiWy4I29.jpg', 40, '2021-07-28 09:16:07', '2021-07-28 09:16:07', 'Giay_Superstar_Xam_FV3034_010_hover_standard (5).jpg'),
(211, '/storage/product/2/Q6tyjfxmS3BtPOSZRdlN.jpg', 41, '2021-07-28 09:18:15', '2021-07-28 09:18:15', 'SUPERSTAR_W_trang_FY6926_01_standard (1).jpg'),
(212, '/storage/product/2/kav8AGfGEL2SyuLoZUU6.jpg', 41, '2021-07-28 09:18:15', '2021-07-28 09:18:15', 'SUPERSTAR_W_trang_FY6926_02_standard (2).jpg'),
(213, '/storage/product/2/yhknhMMcgM4eBtAUIyKU.jpg', 41, '2021-07-28 09:18:15', '2021-07-28 09:18:15', 'SUPERSTAR_W_trang_FY6926_03_standard (3).jpg'),
(214, '/storage/product/2/lqhR7DUlimXojzE1ouQU.jpg', 41, '2021-07-28 09:18:15', '2021-07-28 09:18:15', 'SUPERSTAR_W_trang_FY6926_04_standard (4).jpg'),
(215, '/storage/product/2/e7kjgO3cPB70uaQemZCJ.jpg', 41, '2021-07-28 09:18:15', '2021-07-28 09:18:15', 'SUPERSTAR_W_trang_FY6926_010_hover_standard (5).jpg'),
(216, '/storage/product/2/Pm5pCbZeYQgdg6M1AwbW.jpg', 42, '2021-07-28 09:19:50', '2021-07-28 09:19:50', 'Giay_adidas_Ultraboost_x_LEGO(r)_Colors_trang_FZ3983_01_standard (1).jpg'),
(217, '/storage/product/2/IE4VhI3wsCfhY5a7yLDm.jpg', 42, '2021-07-28 09:19:50', '2021-07-28 09:19:50', 'Giay_adidas_Ultraboost_x_LEGO(r)_Colors_trang_FZ3983_010_hover_standard (2).jpg'),
(218, '/storage/product/2/uWBJIEri8ZgPx0RniKjB.jpg', 42, '2021-07-28 09:19:50', '2021-07-28 09:19:50', 'Giay_adidas_Ultraboost_x_LEGO(r)_Colors_trang_FZ3983_HM1 (3).jpg'),
(219, '/storage/product/2/9liFN4BXPrTZMQkuhaEB.jpg', 42, '2021-07-28 09:19:50', '2021-07-28 09:19:50', 'Giay_adidas_Ultraboost_x_LEGO(r)_Colors_trang_FZ3983_HM2 (4).jpg'),
(220, '/storage/product/2/SRM6gdTXbv2mwq6OtNaR.jpg', 42, '2021-07-28 09:19:50', '2021-07-28 09:19:50', 'Giay_adidas_Ultraboost_x_LEGO(r)_Colors_trang_FZ3983_HM3 (5).jpg'),
(221, '/storage/product/2/wSkRvLLYJ9OLHzfFtH2h.jpg', 43, '2021-07-28 09:21:17', '2021-07-28 09:21:17', 'Giay_Slip-On_Ultraboost_DNA_DJen_GX5084_01_standard (1).jpg'),
(222, '/storage/product/2/7Q6n57KZDJEU5w51Ak6E.jpg', 43, '2021-07-28 09:21:17', '2021-07-28 09:21:17', 'Giay_Slip-On_Ultraboost_DNA_DJen_GX5084_02_standard_hover (2).jpg'),
(223, '/storage/product/2/2XzXFdJ82yogzEJXJYwX.jpg', 43, '2021-07-28 09:21:17', '2021-07-28 09:21:17', 'Giay_Slip-On_Ultraboost_DNA_DJen_GX5084_03_standard (3).jpg'),
(224, '/storage/product/2/ocE1Qve4uJTaWptjGWc1.jpg', 43, '2021-07-28 09:21:17', '2021-07-28 09:21:17', 'Giay_Slip-On_Ultraboost_DNA_DJen_GX5084_04_standard (4).jpg'),
(225, '/storage/product/2/pFIOTRUQUzeJfndb0rld.jpg', 43, '2021-07-28 09:21:17', '2021-07-28 09:21:17', 'Giay_Slip-On_Ultraboost_DNA_DJen_GX5084_05_standard (5).jpg'),
(226, '/storage/product/2/70UuSVpAbjsRAeb5hxXz.jpg', 44, '2021-07-28 09:23:19', '2021-07-28 09:23:19', 'Giay_Ultraboost_5.0_Uncaged_DNA_Be_G55370_01_standard (1).jpg'),
(227, '/storage/product/2/hKkYbVBFvoXjoeiD22rm.jpg', 44, '2021-07-28 09:23:19', '2021-07-28 09:23:19', 'Giay_Ultraboost_5.0_Uncaged_DNA_Be_G55370_02_standard (2).jpg'),
(228, '/storage/product/2/tpwR1QfAuvwsHHnjR0sG.jpg', 44, '2021-07-28 09:23:19', '2021-07-28 09:23:19', 'Giay_Ultraboost_5.0_Uncaged_DNA_Be_G55370_03_standard (3).jpg'),
(229, '/storage/product/2/A3KFRNmwYbtmZhOGQcwK.jpg', 44, '2021-07-28 09:23:19', '2021-07-28 09:23:19', 'Giay_Ultraboost_5.0_Uncaged_DNA_Be_G55370_04_standard (4).jpg'),
(230, '/storage/product/2/inWtwNlxaQTFtkfZn8OR.jpg', 44, '2021-07-28 09:23:19', '2021-07-28 09:23:19', 'Giay_Ultraboost_5.0_Uncaged_DNA_Be_G55370_010_hover_standard (5).jpg'),
(231, '/storage/product/2/1xaIYLkdlF1e8moS3sRK.jpg', 45, '2021-07-28 09:29:56', '2021-07-28 09:29:56', 'Giay_Ultraboost_6.0_DNA_trang_FZ0247_01_standard (1).jpg'),
(232, '/storage/product/2/0TJhy6HpikZclI2iFk8R.jpg', 45, '2021-07-28 09:29:56', '2021-07-28 09:29:56', 'Giay_Ultraboost_6.0_DNA_trang_FZ0247_010_hover_standard (2).jpg'),
(233, '/storage/product/2/HCpxQXQSvKkcC7hItgfb.jpg', 45, '2021-07-28 09:29:56', '2021-07-28 09:29:56', 'Giay_Ultraboost_6.0_DNA_trang_FZ0247_HM2 (3).jpg'),
(234, '/storage/product/2/0BC3unyQ3aIx2uCgZQpb.jpg', 45, '2021-07-28 09:29:56', '2021-07-28 09:29:56', 'Giay_Ultraboost_6.0_DNA_trang_FZ0247_HM3 (4).jpg'),
(235, '/storage/product/2/VnCKynz4B70DpsSnIKaW.jpg', 45, '2021-07-28 09:29:56', '2021-07-28 09:29:56', 'Giay_Ultraboost_6.0_DNA_trang_FZ0247_HM4 (5).jpg'),
(236, '/storage/product/2/6cAWOcn0bM9aLsVJ6T7g.jpg', 46, '2021-07-28 09:31:15', '2021-07-28 09:31:15', 'Giay_Ultraboost_21_Primeblue_trang_FY0838_01_standard (1).jpg'),
(237, '/storage/product/2/ZOBpeoSAAEZ0SEChLAD0.jpg', 46, '2021-07-28 09:31:15', '2021-07-28 09:31:15', 'Giay_Ultraboost_21_Primeblue_trang_FY0838_02_standard (2).jpg'),
(238, '/storage/product/2/kG2xWI88yBNoA1tAFcon.jpg', 46, '2021-07-28 09:31:15', '2021-07-28 09:31:15', 'Giay_Ultraboost_21_Primeblue_trang_FY0838_03_standard (3).jpg'),
(239, '/storage/product/2/wzhPSke9Aiab8zFbmNsQ.jpg', 46, '2021-07-28 09:31:15', '2021-07-28 09:31:15', 'Giay_Ultraboost_21_Primeblue_trang_FY0838_04_standard (4).jpg'),
(240, '/storage/product/2/aFtXItl1opsPMBjxfYHo.jpg', 46, '2021-07-28 09:31:15', '2021-07-28 09:31:15', 'Giay_Ultraboost_21_Primeblue_trang_FY0838_010_hover_standard (5).jpg'),
(241, '/storage/product/2/6L3tQhWlBIzu8CWQtAlx.jpg', 47, '2021-07-28 09:33:14', '2021-07-28 09:33:14', 'Giay_Chay_Bo_UltraBoost_21_Tokyo_trang_S23863_01_standard (1).jpg'),
(242, '/storage/product/2/0NZaZu52pYna46BTOtkp.jpg', 47, '2021-07-28 09:33:14', '2021-07-28 09:33:14', 'Giay_Chay_Bo_UltraBoost_21_Tokyo_trang_S23863_02_standard (2).jpg'),
(243, '/storage/product/2/FRufpsQZeynSaeg2UkdL.jpg', 47, '2021-07-28 09:33:14', '2021-07-28 09:33:14', 'Giay_Chay_Bo_UltraBoost_21_Tokyo_trang_S23863_03_standard (3).jpg'),
(244, '/storage/product/2/bW7XmnYlg9DlhL1pH3iz.jpg', 47, '2021-07-28 09:33:14', '2021-07-28 09:33:14', 'Giay_Chay_Bo_UltraBoost_21_Tokyo_trang_S23863_04_standard (4).jpg'),
(245, '/storage/product/2/I9Dh5P4zdI8uprDU4OSr.jpg', 47, '2021-07-28 09:33:14', '2021-07-28 09:33:14', 'Giay_Chay_Bo_UltraBoost_21_Tokyo_trang_S23863_HM1_hover (5).jpg'),
(246, '/storage/product/2/ORrrD5Q5fMDyNADdcOee.jpg', 48, '2021-07-29 10:27:41', '2021-07-29 10:27:41', 'IMG_1029-1 (1).jpg'),
(247, '/storage/product/2/46qXnCdSJcIEYLIUsVnP.jpg', 48, '2021-07-29 10:27:41', '2021-07-29 10:27:41', 'IMG_1029-1.jpg'),
(248, '/storage/product/2/t7NXqjyz1sIoClyXIuRU.jpg', 48, '2021-07-29 10:27:41', '2021-07-29 10:27:41', 'IMG_1057-1.jpg'),
(249, '/storage/product/2/MfGTXc27ar6RMUg6mJHT.jpg', 48, '2021-07-29 10:27:41', '2021-07-29 10:27:41', 'IMG_5039.jpg'),
(250, '/storage/product/2/vGpXMGkMYZfxYD8JQZ1o.jpg', 48, '2021-07-29 10:27:41', '2021-07-29 10:27:41', 'IMG_5041.jpg'),
(251, '/storage/product/2/AcTFl79GoSZvI5OpwNig.jpg', 49, '2021-07-29 10:28:55', '2021-07-29 10:28:55', 'IMG_1031-1.jpg'),
(252, '/storage/product/2/T61TAQlqH5cCKADPa9lu.jpg', 49, '2021-07-29 10:28:55', '2021-07-29 10:28:55', 'IMG_1055-1-150x150.jpg'),
(253, '/storage/product/2/LxvmKVXkEf2qyQBcrLpK.jpg', 49, '2021-07-29 10:28:55', '2021-07-29 10:28:55', 'IMG_5039-150x150.jpg'),
(254, '/storage/product/2/LeTlfJ1fzQ5MCxVBnY8r.jpg', 49, '2021-07-29 10:28:55', '2021-07-29 10:28:55', 'IMG_5041-150x150.jpg'),
(255, '/storage/product/2/vij07eKeKukXxG3Wf5ds.jpg', 50, '2021-07-29 10:30:45', '2021-07-29 10:30:45', 'IMG_1032-1 (1).jpg'),
(256, '/storage/product/2/o2OENdpKTNX6SLkeMnPx.jpg', 50, '2021-07-29 10:30:45', '2021-07-29 10:30:45', 'IMG_1032-1.jpg'),
(257, '/storage/product/2/BDOg9PZtv4ENWrbHPMbQ.jpg', 50, '2021-07-29 10:30:45', '2021-07-29 10:30:45', 'IMG_1054-1-150x150.jpg'),
(258, '/storage/product/2/X3sJSkzf0WjXopxWu8Rw.jpg', 50, '2021-07-29 10:30:45', '2021-07-29 10:30:45', 'IMG_5049-150x150.jpg'),
(259, '/storage/product/2/Hy5uq5wsaqKlFg4Dh92X.jpg', 50, '2021-07-29 10:30:45', '2021-07-29 10:30:45', 'IMG_5064-150x150.jpg'),
(260, '/storage/product/2/KV29RQHtZuJfv2uq9oow.jpg', 51, '2021-07-29 10:31:46', '2021-07-29 10:31:46', 'balemc-6-150x150.jpg'),
(261, '/storage/product/2/RGjSxvkAHeHip9UXfCQ5.jpg', 51, '2021-07-29 10:31:46', '2021-07-29 10:31:46', 'balemc-12.jpg'),
(262, '/storage/product/2/75S5GV2rXcBSHrddsHKj.jpg', 51, '2021-07-29 10:31:46', '2021-07-29 10:31:46', 'balemc-20-150x150.jpg'),
(263, '/storage/product/2/YqbRMtXaPgkIS2XEtWi0.jpg', 51, '2021-07-29 10:31:46', '2021-07-29 10:31:46', 'Triple-S-Trainer-Black-Red-2018 (1).jpg'),
(264, '/storage/product/2/rqkwJwa6ADlczLtNojMt.jpg', 51, '2021-07-29 10:31:46', '2021-07-29 10:31:46', 'Triple-S-Trainer-Black-Red-2018.jpg'),
(265, '/storage/product/2/s1wnuy6cW5xbFBYF9mQK.jpg', 52, '2021-07-29 10:32:45', '2021-07-29 10:32:45', 'balen-nhiều-màu-chụp-bên.jpg'),
(266, '/storage/product/2/5XodyrUxoLDc1M7ZjcRW.jpg', 52, '2021-07-29 10:32:45', '2021-07-29 10:32:45', 'balen-nhiều-màu-chụp-gót.jpg'),
(267, '/storage/product/2/HsUTx2WGUaT5uMeyYfUX.jpg', 52, '2021-07-29 10:32:45', '2021-07-29 10:32:45', 'Triple-S-Trainer-Blue-Red-2018 (1).jpg'),
(268, '/storage/product/2/EgQzXg7b2IXvQQWcH6lb.jpg', 52, '2021-07-29 10:32:45', '2021-07-29 10:32:45', 'Triple-S-Trainer-Blue-Red-2018.jpg'),
(269, '/storage/product/2/LpKIRqevaOhYFHfw6EO7.jpg', 53, '2021-07-29 10:33:41', '2021-07-29 10:33:41', 'balemc-12.jpg'),
(270, '/storage/product/2/xt28amPa8y7l3aGTTo3U.jpg', 53, '2021-07-29 10:33:41', '2021-07-29 10:33:41', 'balenciaga-silver-triple-s-sneakers (1).jpg'),
(271, '/storage/product/2/Wimc40vWJIPlaMjoU9jA.jpg', 53, '2021-07-29 10:33:41', '2021-07-29 10:33:41', 'balenciaga-silver-triple-s-sneakers (2).jpg'),
(272, '/storage/product/2/RZXVbZh98b2eNDG3OiTZ.jpg', 53, '2021-07-29 10:33:41', '2021-07-29 10:33:41', 'balenciaga-silver-triple-s-sneakers (3).jpg'),
(273, '/storage/product/2/KnslZRqITyN6MrN3f8PW.jpg', 53, '2021-07-29 10:33:41', '2021-07-29 10:33:41', 'balenciaga-silver-triple-s-sneakers.jpg'),
(274, '/storage/product/2/F6QgZFwOz0bo1MVx54Bz.jpg', 54, '2021-07-29 10:35:03', '2021-07-29 10:35:03', '162050shot1.jpg'),
(275, '/storage/product/2/DKlSlUJgMEMg8QvuLZLn.jpg', 54, '2021-07-29 10:35:03', '2021-07-29 10:35:03', '162050shot2.jpg'),
(276, '/storage/product/2/kd2NO2VHSBtAwV60wDu4.jpg', 54, '2021-07-29 10:35:03', '2021-07-29 10:35:03', '162050shot3.jpg'),
(277, '/storage/product/2/fiM9OdA3cEDC8qJ8cmWu.jpg', 54, '2021-07-29 10:35:03', '2021-07-29 10:35:03', '162050shot4.jpg'),
(278, '/storage/product/2/wpaLUtPbXT8y0KK5nmP0.jpg', 54, '2021-07-29 10:35:03', '2021-07-29 10:35:03', '162050standard.jpg'),
(279, '/storage/product/2/593D7S2sLyUQTSOo0Ein.jpg', 55, '2021-07-29 10:36:02', '2021-07-29 10:36:02', '162054C4.jpg'),
(280, '/storage/product/2/iVb38dnQ9HMUEvFMYc3j.jpg', 55, '2021-07-29 10:36:02', '2021-07-29 10:36:02', 'SU18CHUCK70CHUCK70SUNFLOWER162054CLATERAL.jpg'),
(281, '/storage/product/2/sk5b0EmgQoWcViOw33Yy.jpg', 55, '2021-07-29 10:36:02', '2021-07-29 10:36:02', 'SU18CHUCK70CHUCK70SUNFLOWER162054CTOE (1).jpg'),
(282, '/storage/product/2/OTeBk0jU7GXzsyuWJnMU.jpg', 55, '2021-07-29 10:36:02', '2021-07-29 10:36:02', 'SU18CHUCK70CHUCK70SUNFLOWER162054CTOE.jpg'),
(283, '/storage/product/2/jv2ouiIqQpLb0eOEYHOa.jpg', 55, '2021-07-29 10:36:02', '2021-07-29 10:36:02', 'SU18CHUCK70CHUCK70SUNFLOWER162054CTOPDOWN.jpg'),
(284, '/storage/product/2/QzRxbUvelel2847NcHgz.jpg', 56, '2021-07-29 10:37:01', '2021-07-29 10:37:01', '162056shot1 (1).jpg'),
(285, '/storage/product/2/9BAK6RVAwqDZGx3PeXPB.jpg', 56, '2021-07-29 10:37:01', '2021-07-29 10:37:01', '162056shot1.jpg'),
(286, '/storage/product/2/TMvCPYaYdYqIN3YQe2F2.jpg', 56, '2021-07-29 10:37:01', '2021-07-29 10:37:01', '162056shot3.jpg'),
(287, '/storage/product/2/rIAEPpbPPSdvRAsyghjd.jpg', 56, '2021-07-29 10:37:01', '2021-07-29 10:37:01', '162056shot4.jpg'),
(288, '/storage/product/2/f12iJie9fykgw6EnyYqs.jpg', 56, '2021-07-29 10:37:01', '2021-07-29 10:37:01', '162056standard.jpg'),
(289, '/storage/product/2/IfXorbntLFZn1kFZyQz0.jpg', 57, '2021-07-29 10:38:02', '2021-07-29 10:38:02', '162058shot1.jpg'),
(290, '/storage/product/2/CRcSfzYjDPMhFuiKntFc.jpg', 57, '2021-07-29 10:38:02', '2021-07-29 10:38:02', '162058shot2.jpg'),
(291, '/storage/product/2/YgAutF1diTxh3YVNtahn.jpg', 57, '2021-07-29 10:38:02', '2021-07-29 10:38:02', '162058shot3.jpg'),
(292, '/storage/product/2/g5a9VdYaDnFzBEffpfCX.jpg', 57, '2021-07-29 10:38:02', '2021-07-29 10:38:02', '162058shot4.jpg'),
(293, '/storage/product/2/VhBdWzRjDd4svtqyPxjg.jpg', 57, '2021-07-29 10:38:02', '2021-07-29 10:38:02', '162058standard.jpg'),
(294, '/storage/product/2/vqCN5cddS8Yg4payrNFJ.jpg', 58, '2021-07-29 10:38:58', '2021-07-29 10:38:58', 'SU18CHUCK70CHUCK70SUNFLOWER162063CHEEL.jpg'),
(295, '/storage/product/2/ympA1vP8fy3kSjnQdf0w.jpg', 58, '2021-07-29 10:38:58', '2021-07-29 10:38:58', 'SU18CHUCK70CHUCK70SUNFLOWER162063CLATERAL.jpg'),
(296, '/storage/product/2/UketiZGixnE8dnWqcWqB.jpg', 58, '2021-07-29 10:38:58', '2021-07-29 10:38:58', 'SU18CHUCK70CHUCK70SUNFLOWER162063CMEDIAL.jpg'),
(297, '/storage/product/2/O38KjGTVVIatLHaD40ie.jpg', 58, '2021-07-29 10:38:58', '2021-07-29 10:38:58', 'SU18CHUCK70CHUCK70SUNFLOWER162063CTOE.jpg'),
(298, '/storage/product/2/urWfL5uYF5PW1BTTtOEt.jpg', 58, '2021-07-29 10:38:58', '2021-07-29 10:38:58', 'SU18CHUCK70CHUCK70SUNFLOWER162063CTOPDOWN.jpg'),
(299, '/storage/product/2/dr5xTk77n2LTepstHweW.jpg', 59, '2021-07-29 10:39:50', '2021-07-29 10:39:50', '162065shot1.jpg'),
(300, '/storage/product/2/GxgUdaV3gbHv0DIdvgbA.jpg', 59, '2021-07-29 10:39:50', '2021-07-29 10:39:50', '162065shot2.jpg'),
(301, '/storage/product/2/RLrN8h5P8Z7celKQwuwM.jpg', 59, '2021-07-29 10:39:50', '2021-07-29 10:39:50', '162065shot4.jpg'),
(302, '/storage/product/2/toKWjtSWsPAdXia0DyMT.jpg', 59, '2021-07-29 10:39:50', '2021-07-29 10:39:50', '162065standard (1).jpg'),
(303, '/storage/product/2/eFJOmVLvSRr1HQTqgFb8.jpg', 59, '2021-07-29 10:39:50', '2021-07-29 10:39:50', '162065standard.jpg'),
(304, '/storage/product/2/MdvhbFMM1otg2uHUVqVe.jpg', 60, '2021-07-29 10:42:42', '2021-07-29 10:42:42', 'mlb-la-dodgers-sneaker-big-ball-chunky-a-5d68edd3bc005-30082019163515.jpg'),
(305, '/storage/product/2/ItFlhKLOvkdCdK5ooSKq.jpg', 60, '2021-07-29 10:42:42', '2021-07-29 10:42:42', 'mlb-la-dodgers-sneaker-big-ball-chunky-a-5d68edd37b177-30082019163515.jpg'),
(306, '/storage/product/2/n8ejPE9r9cjhm8dbCojM.jpg', 60, '2021-07-29 10:42:42', '2021-07-29 10:42:42', 'mlb-la-dodgers-sneaker-big-ball-chunky-a-5d68edd37cf9a-30082019163515.jpg'),
(307, '/storage/product/2/HtIPBBcsHkEPrrqrMEzI.jpg', 60, '2021-07-29 10:42:42', '2021-07-29 10:42:42', 'mlb-la-dodgers-sneaker-big-ball-chunky-a-5d68edd37de6f-30082019163515.jpg'),
(308, '/storage/product/2/D9ysj4cLlgzdby9d6qyw.jpg', 60, '2021-07-29 10:42:42', '2021-07-29 10:42:42', 'mlb-la-dodgers-sneaker-big-ball-chunky-a-5d68edd380b7c-30082019163515.jpg'),
(309, '/storage/product/2/aLclEZI9Duagh7tvL47b.jpg', 61, '2021-07-29 10:43:34', '2021-07-29 10:43:34', 'giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-den-5e44abbde9e12-13022020085157.jpg'),
(310, '/storage/product/2/6S1Fu7RNJ2MmFt7NzVNp.jpg', 61, '2021-07-29 10:43:34', '2021-07-29 10:43:34', 'giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-den-5e44abbe5c05e-13022020085158.jpg'),
(311, '/storage/product/2/pwdLJDJxssjCOGAtVRFk.jpg', 61, '2021-07-29 10:43:34', '2021-07-29 10:43:34', 'giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-den-5e44abbe8b4c4-13022020085158.jpg'),
(312, '/storage/product/2/57S44LTQ6uEnWT6rGf2I.jpg', 61, '2021-07-29 10:43:34', '2021-07-29 10:43:34', 'giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-den-5e44abbe2673f-13022020085158.jpg'),
(313, '/storage/product/2/M7SqFvh3thVe2GpnF5nC.jpg', 61, '2021-07-29 10:43:34', '2021-07-29 10:43:34', 'giay-sneaker-mlb-big-ball-chunky-a-new-york-yankees-mau-trang-logo-den-5e44abbebe5f1-13022020085158.jpg'),
(314, '/storage/product/2/f1BGfW6gZFEvBBMARF50.jpg', 62, '2021-07-29 10:44:36', '2021-07-29 10:44:36', '3434c0cbdd59df7c3995d54317d0662f.jpg'),
(315, '/storage/product/2/VhaJvymfsyl3KTqmoPvL.jpg', 62, '2021-07-29 10:44:36', '2021-07-29 10:44:36', '70011091_772976283132745_492734958637800053_n.jpg'),
(316, '/storage/product/2/reqtiRHWDcqAsX9o5S5c.jpg', 62, '2021-07-29 10:44:36', '2021-07-29 10:44:36', 'new-york-yankees-sneakers-big-ball-chunky-a-1-300x300-e1573358812257 (1).jpg'),
(317, '/storage/product/2/25QnWoZYeWNg9wtsLwlh.jpg', 62, '2021-07-29 10:44:36', '2021-07-29 10:44:36', 'new-york-yankees-sneakers-big-ball-chunky-a-1-300x300-e1573358812257.jpg'),
(318, '/storage/product/2/dqvKMOW4Sf7F6PnMhleS.jpg', 62, '2021-07-29 10:44:36', '2021-07-29 10:44:36', 'new-york-yankees-sneakers-big-ball-chunky-a-13-600x600.jpg'),
(319, '/storage/product/2/RR6MkE5KyQfZf8gprp7J.jpg', 63, '2021-07-29 10:46:44', '2021-07-29 10:46:44', '50w_32shcm011_1_5031d65ffcd848de99aeab2d148e6d8e_1024x1024 (1).jpg'),
(320, '/storage/product/2/tqZJUZS1lZdkIbxMuhg2.jpg', 63, '2021-07-29 10:46:44', '2021-07-29 10:46:44', '50w_32shcm011_1_5031d65ffcd848de99aeab2d148e6d8e_1024x1024.jpg'),
(321, '/storage/product/2/JXP1D3jcfHS5qBkSPdy3.jpg', 63, '2021-07-29 10:46:44', '2021-07-29 10:46:44', '50w_32shcm011_2_5d48c623cbfc481c90e6286c847abd15_1024x1024.jpg'),
(322, '/storage/product/2/v48tmrwlImuRhKP03CQA.jpg', 63, '2021-07-29 10:46:44', '2021-07-29 10:46:44', '50w_32shcm011_3_cd0e9f3553cc4a8599187f40e75504d0_1024x1024.jpg'),
(323, '/storage/product/2/XburSOZ1c1LfLXj64pmJ.jpg', 63, '2021-07-29 10:46:44', '2021-07-29 10:46:44', '50w_32shcm011_4_f80086cc10134653bf5723ee05fa7113_1024x1024.jpg'),
(324, '/storage/product/2/fdbdH8oanS0W1P8iXjl2.jpg', 64, '2021-07-29 10:48:34', '2021-07-29 10:48:34', '428.jpg'),
(325, '/storage/product/2/EUGHZD5ILR3vde5qGGh8.jpg', 64, '2021-07-29 10:48:34', '2021-07-29 10:48:34', '428-1.jpg'),
(326, '/storage/product/2/qQGg7ttMbnnsQPr5BKry.jpg', 64, '2021-07-29 10:48:34', '2021-07-29 10:48:34', '828x828__9__65b8d7ef7a594e7b8435.jpg'),
(327, '/storage/product/2/alU1HQrWcmorjdMqRerL.jpg', 64, '2021-07-29 10:48:34', '2021-07-29 10:48:34', 'giay-mlb-big-ball-chunky-p-boston-red-sox-1.jpg'),
(328, '/storage/product/2/nlQaMOxsvFaJAhBxyLsp.jpg', 64, '2021-07-29 10:48:34', '2021-07-29 10:48:34', 'images.jpg'),
(329, '/storage/product/2/VOCFUf6EWhPenY5jYU1F.png', 65, '2021-07-29 10:49:51', '2021-07-29 10:49:51', 'rsz_1screen_shot_2020-08-15_at_55522_pm-1.png'),
(330, '/storage/product/2/OCSN8zBjIpHK2KGge6jU.png', 65, '2021-07-29 10:49:51', '2021-07-29 10:49:51', 'Screen-Shot-2020-08-15-at-5.55.37-PM-1-911x800.png'),
(331, '/storage/product/2/K3sRKtfwU3SnYVkVH4ak.png', 65, '2021-07-29 10:49:51', '2021-07-29 10:49:51', 'Screen-Shot-2020-08-15-at-5.55.45-PM-1-823x800.png'),
(332, '/storage/product/2/N2fh6hTZCDGJzEQq39vD.jpg', 66, '2021-07-29 10:51:01', '2021-07-29 10:51:01', '49989_142278.jpg'),
(333, '/storage/product/2/w0m054OtcCzfkWV5JkiC.jpg', 66, '2021-07-29 10:51:01', '2021-07-29 10:51:01', '49989_142279.jpg'),
(334, '/storage/product/2/syHR0WJhI7IGwvHliVpq.jpg', 66, '2021-07-29 10:51:01', '2021-07-29 10:51:01', '49989_142280.jpg'),
(335, '/storage/product/2/XdirCMic9pLKdngJk12v.jpg', 66, '2021-07-29 10:51:01', '2021-07-29 10:51:01', '49989_142281.jpg');
INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(336, '/storage/product/2/AtA7R7UEAF4B4QDpfPHy.jpg', 66, '2021-07-29 10:51:01', '2021-07-29 10:51:01', '366574-01a.jpg'),
(337, '/storage/product/2/YdOYQy31pRhmG6Sigapr.jpg', 67, '2021-07-29 10:52:08', '2021-07-29 10:52:08', '0d6539a865370a3232233c8f03a67685_tn.jpg'),
(338, '/storage/product/2/QkCUUEV77nKHBja6O0mL.jpg', 67, '2021-07-29 10:52:08', '2021-07-29 10:52:08', '17a244a19ba58717e1055229fa2add18_tn.jpg'),
(339, '/storage/product/2/2vKrliUdY8ErGtWcujuK.jpg', 67, '2021-07-29 10:52:08', '2021-07-29 10:52:08', '07961f7ba47d83e91c0cf064b3837405_tn.jpg'),
(340, '/storage/product/2/4TFwaf9pCijI4qo88yhW.jpg', 67, '2021-07-29 10:52:08', '2021-07-29 10:52:08', '86610b19085ddf357d4996bef5022066_tn.jpg'),
(341, '/storage/product/2/r5WUxD2xAuJ8KhoJ1SKJ.jpg', 67, '2021-07-29 10:52:08', '2021-07-29 10:52:08', 'court-star-bts-sọc-xanh-chụp-bên.jpg'),
(342, '/storage/product/2/MSNqjpMaoSTvrX3Fpask.png', 68, '2021-07-29 10:53:30', '2021-07-29 10:53:30', 'vn000eyeblk-1.png'),
(343, '/storage/product/2/o0OQFaBoVKAfRKExufeW.png', 68, '2021-07-29 10:53:30', '2021-07-29 10:53:30', 'vn000eyeblk-2.png'),
(344, '/storage/product/2/ILjwUHa8cdCadMTceEf4.png', 68, '2021-07-29 10:53:30', '2021-07-29 10:53:30', 'vn000eyeblk-5 (1).png'),
(345, '/storage/product/2/aahcxV3toMIXRSXZb3EN.png', 68, '2021-07-29 10:53:30', '2021-07-29 10:53:30', 'vn000eyeblk-5.png'),
(346, '/storage/product/2/jX27EI6L9qj1ctGPz7EU.png', 69, '2021-07-29 10:54:27', '2021-07-29 10:54:27', 'tải xuống (1).png'),
(347, '/storage/product/2/vPzSER38CoaenjPSazeq.png', 69, '2021-07-29 10:54:27', '2021-07-29 10:54:27', 'tải xuống (2).png'),
(348, '/storage/product/2/H99Q0nlbd3FFtNdYiQVM.png', 69, '2021-07-29 10:54:27', '2021-07-29 10:54:27', 'tải xuống (3).png'),
(349, '/storage/product/2/weOd6TkfhlctphqifR0e.png', 69, '2021-07-29 10:54:27', '2021-07-29 10:54:27', 'tải xuống (4).png'),
(350, '/storage/product/2/eL8lHXDKmwakdaZ8mLg9.png', 69, '2021-07-29 10:54:27', '2021-07-29 10:54:27', 'tải xuống.png'),
(351, '/storage/product/2/blu1RcsmkCGsE8YbBRYG.jpg', 70, '2021-07-29 10:55:26', '2021-07-29 10:55:26', 'vans-old-skool-black-white-vn000d3hy28-1 (1).jpg'),
(352, '/storage/product/2/hJ44gSycjZF0Za0NbaLJ.jpg', 70, '2021-07-29 10:55:26', '2021-07-29 10:55:26', 'vans-old-skool-black-white-vn000d3hy28-1.jpg'),
(353, '/storage/product/2/OgI17g7cGtKpbwNMcKP8.jpg', 70, '2021-07-29 10:55:26', '2021-07-29 10:55:26', 'vans-old-skool-black-white-vn000d3hy28-2.jpg'),
(354, '/storage/product/2/1LnAKDpzRc8gErPK4ePs.jpg', 70, '2021-07-29 10:55:26', '2021-07-29 10:55:26', 'vans-old-skool-black-white-vn000d3hy28-3.jpg'),
(355, '/storage/product/2/rgJdP0i8rQCdwiHZMwsO.jpg', 70, '2021-07-29 10:55:26', '2021-07-29 10:55:26', 'vans-old-skool-black-white-vn000d3hy28-5.jpg'),
(356, '/storage/product/2/Sgypg0Dy2diSqVaGTcYF.jpg', 71, '2021-07-29 10:56:25', '2021-07-29 10:56:25', 'vans-old-skool-classic-true-white-vn000d3hw00-1 (1).jpg'),
(357, '/storage/product/2/HvQdYmQ5cJxzh4pAcBQY.jpg', 71, '2021-07-29 10:56:25', '2021-07-29 10:56:25', 'vans-old-skool-classic-true-white-vn000d3hw00-1.jpg'),
(358, '/storage/product/2/t2V7FvQEr0W5d3WIjpag.jpg', 71, '2021-07-29 10:56:25', '2021-07-29 10:56:25', 'vans-old-skool-classic-true-white-vn000d3hw00-2.jpg'),
(359, '/storage/product/2/7R8MwOqN2x2pxnpgtqMm.jpg', 71, '2021-07-29 10:56:25', '2021-07-29 10:56:25', 'vans-old-skool-classic-true-white-vn000d3hw00-3.jpg'),
(360, '/storage/product/2/SiOh2ffByP3uZnoHw0KQ.jpg', 71, '2021-07-29 10:56:25', '2021-07-29 10:56:25', 'vans-old-skool-classic-true-white-vn000d3hw00-5.jpg'),
(361, '/storage/product/2/UBcUvdeX50IwfqN03zu2.png', 72, '2021-07-29 10:57:27', '2021-07-29 10:57:27', 'vans-slip-on-checkerboard-black-off-white-vn000eyebww-1 (1).png'),
(362, '/storage/product/2/LQ6r9pxaMu3tjRemIrFd.png', 72, '2021-07-29 10:57:27', '2021-07-29 10:57:27', 'vans-slip-on-checkerboard-black-off-white-vn000eyebww-1.png'),
(363, '/storage/product/2/Wx1pgkzU9jRP1tBKA8Iz.png', 72, '2021-07-29 10:57:27', '2021-07-29 10:57:27', 'vans-slip-on-checkerboard-black-off-white-vn000eyebww-2.png'),
(364, '/storage/product/2/1KW4XIJ1MrjBLadhLROw.png', 72, '2021-07-29 10:57:27', '2021-07-29 10:57:27', 'vans-slip-on-checkerboard-black-off-white-vn000eyebww-3.png'),
(365, '/storage/product/2/XBCKkRAPm82CLWOtt3ya.png', 72, '2021-07-29 10:57:27', '2021-07-29 10:57:27', 'vans-slip-on-checkerboard-black-off-white-vn000eyebww-5.png'),
(366, '/storage/product/2/Cex3TX0A7o07DN2gFzsz.png', 73, '2021-07-29 10:58:18', '2021-07-29 10:58:18', 'vn0a3dz3ke6-1.png'),
(367, '/storage/product/2/U0GCI0duncnOiYqDyGRJ.png', 73, '2021-07-29 10:58:18', '2021-07-29 10:58:18', 'vn0a3dz3ke6-2.png'),
(368, '/storage/product/2/1FK28YsyRFXeLTtXDnjB.png', 73, '2021-07-29 10:58:18', '2021-07-29 10:58:18', 'vn0a3dz3ke6-3.png'),
(369, '/storage/product/2/Q5hMSyl33pJgwu1cCjJf.png', 73, '2021-07-29 10:58:18', '2021-07-29 10:58:18', 'vn0a3dz3ke6-4 (1).png'),
(370, '/storage/product/2/KaL9UYr78tKuF7ESeoTK.png', 73, '2021-07-29 10:58:18', '2021-07-29 10:58:18', 'vn0a3dz3ke6-4.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-07-18 07:32:41', '2021-07-18 07:32:41'),
(2, 2, 1, '2021-07-18 07:39:48', '2021-07-18 07:39:48'),
(3, 3, 2, '2021-07-23 00:08:52', '2021-07-23 00:08:52'),
(4, 3, 3, '2021-07-23 00:08:52', '2021-07-23 00:08:52'),
(5, 4, 2, '2021-07-23 01:59:37', '2021-07-23 01:59:37'),
(6, 4, 3, '2021-07-23 01:59:37', '2021-07-23 01:59:37'),
(7, 6, 2, '2021-07-23 01:59:58', '2021-07-23 01:59:58'),
(8, 6, 3, '2021-07-23 01:59:58', '2021-07-23 01:59:58'),
(9, 1, 3, '2021-07-28 07:32:45', '2021-07-28 07:32:45'),
(10, 2, 3, '2021-07-28 07:53:20', '2021-07-28 07:53:20'),
(11, 3, 3, '2021-07-28 07:54:52', '2021-07-28 07:54:52'),
(12, 4, 3, '2021-07-28 08:04:20', '2021-07-28 08:04:20'),
(13, 5, 3, '2021-07-28 08:05:49', '2021-07-28 08:05:49'),
(14, 6, 3, '2021-07-28 08:07:06', '2021-07-28 08:07:06'),
(15, 7, 3, '2021-07-28 08:08:19', '2021-07-28 08:08:19'),
(16, 8, 3, '2021-07-28 08:11:55', '2021-07-28 08:11:55'),
(17, 9, 3, '2021-07-28 08:13:32', '2021-07-28 08:13:32'),
(18, 10, 3, '2021-07-28 08:14:54', '2021-07-28 08:14:54'),
(19, 10, 4, '2021-07-28 08:14:54', '2021-07-28 08:14:54'),
(20, 11, 3, '2021-07-28 08:20:05', '2021-07-28 08:20:05'),
(21, 13, 3, '2021-07-28 08:22:05', '2021-07-28 08:22:05'),
(22, 14, 3, '2021-07-28 08:26:28', '2021-07-28 08:26:28'),
(23, 15, 3, '2021-07-28 08:27:45', '2021-07-28 08:27:45'),
(24, 16, 3, '2021-07-28 08:29:12', '2021-07-28 08:29:12'),
(25, 17, 3, '2021-07-28 08:30:27', '2021-07-28 08:30:27'),
(26, 18, 3, '2021-07-28 08:31:45', '2021-07-28 08:31:45'),
(27, 18, 4, '2021-07-28 08:31:45', '2021-07-28 08:31:45'),
(28, 19, 3, '2021-07-28 08:32:59', '2021-07-28 08:32:59'),
(29, 19, 4, '2021-07-28 08:32:59', '2021-07-28 08:32:59'),
(30, 20, 3, '2021-07-28 08:34:39', '2021-07-28 08:34:39'),
(31, 20, 4, '2021-07-28 08:34:39', '2021-07-28 08:34:39'),
(32, 21, 3, '2021-07-28 08:36:19', '2021-07-28 08:36:19'),
(33, 21, 5, '2021-07-28 08:36:19', '2021-07-28 08:36:19'),
(34, 22, 3, '2021-07-28 08:37:36', '2021-07-28 08:37:36'),
(35, 22, 5, '2021-07-28 08:37:36', '2021-07-28 08:37:36'),
(36, 23, 3, '2021-07-28 08:39:14', '2021-07-28 08:39:14'),
(37, 23, 5, '2021-07-28 08:39:14', '2021-07-28 08:39:14'),
(38, 24, 3, '2021-07-28 08:40:49', '2021-07-28 08:40:49'),
(39, 24, 5, '2021-07-28 08:40:49', '2021-07-28 08:40:49'),
(40, 25, 6, '2021-07-28 08:46:05', '2021-07-28 08:46:05'),
(41, 25, 7, '2021-07-28 08:46:05', '2021-07-28 08:46:05'),
(42, 26, 6, '2021-07-28 08:47:53', '2021-07-28 08:47:53'),
(43, 26, 7, '2021-07-28 08:47:53', '2021-07-28 08:47:53'),
(44, 27, 6, '2021-07-28 08:49:23', '2021-07-28 08:49:23'),
(45, 27, 7, '2021-07-28 08:49:23', '2021-07-28 08:49:23'),
(46, 28, 6, '2021-07-28 08:50:50', '2021-07-28 08:50:50'),
(47, 28, 7, '2021-07-28 08:50:50', '2021-07-28 08:50:50'),
(48, 29, 6, '2021-07-28 08:51:42', '2021-07-28 08:51:42'),
(50, 30, 6, '2021-07-28 08:53:33', '2021-07-28 08:53:33'),
(51, 30, 8, '2021-07-28 08:53:33', '2021-07-28 08:53:33'),
(52, 31, 6, '2021-07-28 08:56:46', '2021-07-28 08:56:46'),
(53, 31, 8, '2021-07-28 08:56:46', '2021-07-28 08:56:46'),
(54, 32, 6, '2021-07-28 08:58:27', '2021-07-28 08:58:27'),
(55, 32, 8, '2021-07-28 08:58:27', '2021-07-28 08:58:27'),
(56, 33, 6, '2021-07-28 08:59:52', '2021-07-28 08:59:52'),
(57, 33, 8, '2021-07-28 08:59:52', '2021-07-28 08:59:52'),
(58, 34, 6, '2021-07-28 09:01:18', '2021-07-28 09:01:18'),
(59, 34, 8, '2021-07-28 09:01:18', '2021-07-28 09:01:18'),
(60, 35, 6, '2021-07-28 09:09:51', '2021-07-28 09:09:51'),
(61, 35, 8, '2021-07-28 09:09:51', '2021-07-28 09:09:51'),
(62, 36, 6, '2021-07-28 09:11:11', '2021-07-28 09:11:11'),
(63, 36, 9, '2021-07-28 09:11:11', '2021-07-28 09:11:11'),
(64, 37, 6, '2021-07-28 09:12:22', '2021-07-28 09:12:22'),
(65, 37, 9, '2021-07-28 09:12:22', '2021-07-28 09:12:22'),
(66, 38, 6, '2021-07-28 09:13:33', '2021-07-28 09:13:33'),
(67, 38, 9, '2021-07-28 09:13:33', '2021-07-28 09:13:33'),
(68, 39, 6, '2021-07-28 09:14:40', '2021-07-28 09:14:40'),
(69, 39, 9, '2021-07-28 09:14:40', '2021-07-28 09:14:40'),
(70, 40, 6, '2021-07-28 09:16:07', '2021-07-28 09:16:07'),
(71, 40, 9, '2021-07-28 09:16:07', '2021-07-28 09:16:07'),
(72, 41, 6, '2021-07-28 09:18:15', '2021-07-28 09:18:15'),
(73, 41, 9, '2021-07-28 09:18:15', '2021-07-28 09:18:15'),
(74, 42, 6, '2021-07-28 09:19:50', '2021-07-28 09:19:50'),
(75, 42, 10, '2021-07-28 09:19:50', '2021-07-28 09:19:50'),
(76, 43, 6, '2021-07-28 09:21:17', '2021-07-28 09:21:17'),
(77, 43, 10, '2021-07-28 09:21:17', '2021-07-28 09:21:17'),
(78, 44, 6, '2021-07-28 09:23:19', '2021-07-28 09:23:19'),
(79, 44, 10, '2021-07-28 09:23:19', '2021-07-28 09:23:19'),
(80, 45, 6, '2021-07-28 09:29:56', '2021-07-28 09:29:56'),
(81, 45, 10, '2021-07-28 09:29:56', '2021-07-28 09:29:56'),
(82, 46, 6, '2021-07-28 09:31:15', '2021-07-28 09:31:15'),
(83, 46, 10, '2021-07-28 09:31:15', '2021-07-28 09:31:15'),
(84, 47, 6, '2021-07-28 09:33:14', '2021-07-28 09:33:14'),
(85, 47, 10, '2021-07-28 09:33:14', '2021-07-28 09:33:14'),
(86, 48, 11, '2021-07-29 10:27:41', '2021-07-29 10:27:41'),
(87, 49, 11, '2021-07-29 10:28:55', '2021-07-29 10:28:55'),
(88, 50, 11, '2021-07-29 10:30:45', '2021-07-29 10:30:45'),
(89, 51, 11, '2021-07-29 10:31:46', '2021-07-29 10:31:46'),
(90, 52, 11, '2021-07-29 10:32:45', '2021-07-29 10:32:45'),
(91, 53, 11, '2021-07-29 10:33:41', '2021-07-29 10:33:41'),
(92, 54, 12, '2021-07-29 10:35:03', '2021-07-29 10:35:03'),
(93, 55, 12, '2021-07-29 10:36:02', '2021-07-29 10:36:02'),
(94, 56, 12, '2021-07-29 10:37:01', '2021-07-29 10:37:01'),
(95, 57, 12, '2021-07-29 10:38:02', '2021-07-29 10:38:02'),
(96, 58, 12, '2021-07-29 10:38:58', '2021-07-29 10:38:58'),
(97, 59, 12, '2021-07-29 10:39:50', '2021-07-29 10:39:50'),
(98, 60, 13, '2021-07-29 10:42:42', '2021-07-29 10:42:42'),
(99, 61, 13, '2021-07-29 10:43:34', '2021-07-29 10:43:34'),
(100, 62, 13, '2021-07-29 10:44:36', '2021-07-29 10:44:36'),
(101, 63, 13, '2021-07-29 10:46:44', '2021-07-29 10:46:44'),
(102, 64, 13, '2021-07-29 10:48:34', '2021-07-29 10:48:34'),
(103, 65, 13, '2021-07-29 10:49:51', '2021-07-29 10:49:51'),
(104, 66, 13, '2021-07-29 10:51:01', '2021-07-29 10:51:01'),
(105, 67, 14, '2021-07-29 10:52:08', '2021-07-29 10:52:08'),
(106, 68, 15, '2021-07-29 10:53:30', '2021-07-29 10:53:30'),
(107, 69, 15, '2021-07-29 10:54:27', '2021-07-29 10:54:27'),
(108, 70, 15, '2021-07-29 10:55:26', '2021-07-29 10:55:26'),
(109, 71, 15, '2021-07-29 10:56:25', '2021-07-29 10:56:25'),
(110, 72, 15, '2021-07-29 10:57:27', '2021-07-29 10:57:27'),
(111, 73, 15, '2021-07-29 10:58:18', '2021-07-29 10:58:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL),
(4, 'content', 'Chỉnh sửa nội dung', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`, `description`) VALUES
(2, 'Nike Air Max', '/storage/slider/2/yDnF6TzK8cWLRWdshq8a.jpg', 'air-max-96-ii-shoe-m3NXTH.jpg', '2021-07-28 09:43:13', '2021-07-29 07:00:02', NULL, 'Nike Air Max là dòng giày thể thao được nhiều bạn trẻ yêu thích. Đôi giày có thiết kế năng động, form giày khá gọn và ôm chân. Đặc biệt những họa tiết chỉ nổi trên thân của Nike Air Max khiến nhiều người chết mê chết mệt. Hãy cùng chiêm ngưỡng em nó nha:'),
(3, 'Adidas UltraBoost', '/storage/slider/2/33HHqz2p0jag6pykcRiu.jpg', 'Giay_Ultraboost_6.0_DNA_trang_FZ0247_06_standard.jpg', '2021-07-29 06:56:16', '2021-07-29 06:56:54', NULL, 'Hàng loạt bản mẫu. Hàng loạt cải tiến. Hàng loạt thử nghiệm. Đồng hành cùng chúng tôi trên hành trình tìm kiếm sự hòa hợp đỉnh cao giữa trọng lượng, sự êm ái và độ đàn hồi. Ultraboost. Đón chào nguồn năng lượng hoàn trả phi thường.'),
(4, 'Nike Uptempo', '/storage/slider/2/Qa7Np8LDR3JFlAdRTB9V.jpg', 'air-more-uptempo-96-shoes-KwM99n.jpg', '2021-07-29 07:04:41', '2021-07-29 07:04:41', NULL, 'Nike Air More Uptempo \'96 mang bóng rổ cổ điển trở lại đường phố với đồ họa theo phong cách graffiti thập niên 90 cùng với đệm Air có chiều dài đầy đủ có thể nhìn thấy. , thiết kế chunky được kết hợp với thương hiệu vượt thời đại cho một vẻ ngoài không bao giờ phai nhạt.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'aa', '2021-07-18 07:32:41', '2021-07-18 07:32:41'),
(2, 'giày', '2021-07-23 00:08:52', '2021-07-23 00:08:52'),
(3, 'NIKE', '2021-07-23 00:08:52', '2021-07-23 00:08:52'),
(4, 'nike jordan', '2021-07-28 08:14:54', '2021-07-28 08:14:54'),
(5, 'nike uptempo', '2021-07-28 08:36:19', '2021-07-28 08:36:19'),
(6, 'Adidas', '2021-07-28 08:46:05', '2021-07-28 08:46:05'),
(7, 'Adidas Alphabounce', '2021-07-28 08:46:05', '2021-07-28 08:46:05'),
(8, 'Adidas Stan Smith', '2021-07-28 08:53:33', '2021-07-28 08:53:33'),
(9, 'Adidas SuperStar', '2021-07-28 09:11:11', '2021-07-28 09:11:11'),
(10, 'Adidas Ultra Boost', '2021-07-28 09:19:50', '2021-07-28 09:19:50'),
(11, 'Balenciaga', '2021-07-29 10:27:41', '2021-07-29 10:27:41'),
(12, 'Converse', '2021-07-29 10:35:03', '2021-07-29 10:35:03'),
(13, 'MLB', '2021-07-29 10:42:42', '2021-07-29 10:42:42'),
(14, 'Puma', '2021-07-29 10:52:08', '2021-07-29 10:52:08'),
(15, 'Vans', '2021-07-29 10:53:30', '2021-07-29 10:53:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoans`
--

CREATE TABLE `thanhtoans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoans`
--

INSERT INTO `thanhtoans` (`id`, `name`, `email`, `phone`, `address`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`, `size`) VALUES
(1, 'Duy Phương', 'bnduyphuong@gmail.com', '0943551882', 'phan thiet, bình thuận', '1', '4', '4699000', '2021-07-28 07:36:51', '2021-07-28 07:36:51', NULL),
(2, 'hau nguyen', 'leconghau912@gmail.com', '0788881924', '793 tran xuan soan tan hung quan 7', '72', '1', '1450000', '2021-08-01 10:36:36', '2021-08-01 10:36:36', '22'),
(3, 'hau nguyen22', 'leconghau912@gmail.com', '0788881924', '793 tran xuan soan tan hung quan 7', '72', '1', '1450000', '2021-08-01 10:59:46', '2021-08-01 10:59:46', '23'),
(4, 'kaka', 'leconghau912@gmail.com', '0788881924', '793 tran xuan soan tan hung quan 7', '72', '1', '1450000', '2021-08-01 11:05:53', '2021-08-01 11:05:53', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role`, `phone`) VALUES
(2, 'Duy Phương', 'bnduyphuong@gmail.com', NULL, '$2y$10$RerJC3u4DMHnFA/YGtYAw.ZTU7ZGuTd5VEiZrwcIl.ShUE6iIKbxS', NULL, '2021-07-22 23:59:37', '2021-07-22 23:59:37', NULL, NULL, 0),
(3, 'Lê Nguyễn Trung Trực', 'lenguyentrungtruc@gmail.com', NULL, '$2y$10$j8oAkBe/y0GWvG4JdeCwJ.IKBoPgInptTQcbTuk8iVihJRsP5raRK', NULL, '2021-07-23 01:56:35', '2021-07-23 01:56:35', NULL, NULL, 0),
(4, 'Nguyễn Công Hậu', 'nguyenconghau@gmail.com', NULL, '$2y$10$eNPSyYKgvTv9sqwojXufjOWF8mc3IxJjT.4odiVhhZXLXbBH/b2Ry', 'KNPOETdSEj5eFowRj5yV6By5kgIHb9E3vWYul5OZJOPBx2mTxk2UkyvDrGUk', '2021-07-23 01:57:00', '2021-07-23 01:57:00', NULL, 'admin', 0),
(5, 'Lê Đức Tâm', 'leductam@gmail.com', NULL, '$2y$10$6aE5uwdboV4cqlwdO.Kv6.Vai5L2NDKdUcmBwrDtQqqZzZnRbNBg6', NULL, '2021-07-23 01:57:30', '2021-07-23 01:57:30', NULL, NULL, 0),
(6, 'Trần Đặng Ngọc Nguyên', 'ngocnguyen@gmail.com', NULL, '$2y$10$QUCViYU9Im4ES7heb1NqrO/9ofnPzHjmHHNrWEA./sWHcTHfnbaiC', NULL, '2021-07-23 01:58:13', '2021-07-23 01:58:13', NULL, NULL, 0),
(7, 'hauuuuuu', 'haucc@gmail.com', NULL, '$2y$10$eNPSyYKgvTv9sqwojXufjOWF8mc3IxJjT.4odiVhhZXLXbBH/b2Ry', NULL, NULL, NULL, NULL, 'admin', 992345678),
(9, 'anh', 'anhnh@gmail.com', NULL, '$2y$10$Jq.WHQGzep.DaycEMp1b5eVw813j6lOQ0xFfEg0qHmT9gS3nz2kMq', NULL, '2021-08-01 08:23:14', '2021-08-01 08:23:14', NULL, NULL, NULL),
(10, 'trucmegai', 'truc111@gmail.com', NULL, '$2y$10$amwXxja7xzeSWtu.GDYjfu92w2ZQCv22zKyLtPyO6zZzsonSTPLIu', NULL, '2021-08-02 01:00:03', '2021-08-02 01:00:03', NULL, NULL, NULL),
(11, 'hau nguyen2', 'leconghau912@gmail.com', NULL, '$2y$10$24U2D0KJP11ga4uFH5ULnezXQXCMKWT/68DKidRTS0lpaw9Qu1rVG', NULL, '2021-08-02 01:02:08', '2021-08-02 01:02:08', NULL, NULL, NULL),
(12, 'hau nguyen2', 'leconghau9122@gmail.com', NULL, '$2y$10$Iud0mXgaE07APfPuNRqTSeLiwluoUy9D2USn7aroeRQUsscwv9iOO', NULL, '2021-08-02 01:03:30', '2021-08-02 07:25:35', '2021-08-02 07:25:35', NULL, NULL),
(13, 'lelelêle', 'nguyenconghau123123@gmail.com', NULL, '$2y$10$X0ibfCNCbHq64jXuFPig2.Yt2tbljhOSL8bwuorpK1/GUGs9upHQm', NULL, '2021-08-02 01:20:55', '2021-08-02 01:20:55', NULL, NULL, NULL),
(15, 'duyphuong', 'duyphuong@gmail.com', NULL, '$2y$10$gWl.ajhH8hWCJYW1SKmJxudbFbWWTZgTJLb91qwT9oENiI8Nm9C.e', NULL, '2021-08-02 02:12:05', '2021-08-02 02:12:05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_comment`
--

CREATE TABLE `users_comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_users` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_comment`
--

INSERT INTO `users_comment` (`id`, `email_users`, `comment`, `create_at`, `product_id`) VALUES
(6, 'anhnh@gmail.com', 'meo meow', '2021-08-01 16:26:25', 73),
(7, 'anhnh@gmail.com', 'hello', '2021-08-01 16:48:37', 1),
(8, 'nguyenconghau@gmail.com', 'giày tốt xịn xò', '2021-08-01 18:12:57', 72),
(9, 'nguyenconghau@gmail.com', 'giày xịn', '2021-08-01 18:27:43', 67),
(10, 'anhnh@gmail.com', 'giày xịn giày tốt', '2021-08-02 08:05:01', 69),
(11, 'anhnh@gmail.com', 'giày xấu', '2021-08-02 08:05:18', 69),
(12, 'leductam@gmail.com', 'oke', '2021-08-02 08:05:54', 69),
(13, 'nguyenconghau@gmail.com', 'giày tốt', '2021-08-02 09:23:22', 65),
(14, 'anhnh@gmail.com', 'màu xanh', '2021-08-02 10:47:17', 67);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanhtoans`
--
ALTER TABLE `thanhtoans`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `users_comment`
--
ALTER TABLE `users_comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `thanhtoans`
--
ALTER TABLE `thanhtoans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users_comment`
--
ALTER TABLE `users_comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
