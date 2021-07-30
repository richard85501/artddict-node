-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2021 年 07 月 20 日 15:33
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ARTDDICT`
--

-- --------------------------------------------------------

--
-- 資料表結構 `museum`
--

CREATE TABLE `museum` (
  `id` int(10) NOT NULL COMMENT '流水號',
  `musId` int(10) DEFAULT NULL COMMENT '博物館編號',
  `musName` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '博物館名稱',
  `musCity` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '縣市編號',
  `musImg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '圖片路徑',
  `Px` double DEFAULT NULL COMMENT '經度',
  `Py` double DEFAULT NULL COMMENT '緯度',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '新增時間',
  `update_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更改時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `museum`
--

INSERT INTO `museum` (`id`, `musId`, `musName`, `musCity`, `musImg`, `Px`, `Py`, `created_at`, `update_at`) VALUES
(1, 1, '臺北市立美術館', 'TPE', '001.jpg', 25.072615859459205, 121.52481019741808, '2021-05-10 09:21:10', '2021-07-06 23:39:07'),
(2, 2, '臺北市立忠泰美術館', 'TPE', '003.jpg', 25.0458544232279, 121.53737516751512, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(3, 3, '順益台灣美術館', 'TPE', '004.jpg', 25.046671942330583, 121.51092876818518, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(4, 4, '楊英風美術館', 'TPE', '006.jpg', 25.032399974008143, 121.5144721970202, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(5, 5, '北師美術館', 'TPE', '007.jpg', 25.02487207743551, 121.54456405469068, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(6, 6, '國立臺灣師範大學美術館', 'TPE', '008.jpg', 25.027971612384086, 121.53009879702014, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(7, 7, '長流美術館', 'TPE', '009.jpg', 25.03915276316819, 121.53037077480313, '2021-05-10 09:21:10', '2021-07-07 09:44:54'),
(8, 8, '國際藝術村', 'TPE', '010.jpg', 25.048784415371607, 121.52240970476439, '2021-05-10 09:21:10', '2021-07-07 09:46:12'),
(9, 9, '天使美術館', 'TPE', '011.jpg', 25.03397159338461, 121.53498149702023, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(10, 10, '巫登益美術館', 'TPE', '012.jpg', 25.0337041662231, 121.56487683934938, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(11, 11, '鳳甲美術館', 'TPE', '013.jpg', 25.125276889370223, 121.49905466449204, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(12, 12, '蘇荷兒童美術館', 'TPE', '014.jpg', 25.117946126685933, 121.52465799702215, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(13, 13, '關渡美術館', 'TPE', '015.jpg', 25.133570809935, 121.47155972585794, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(14, 14, '花博公園美術', 'TPE', '016.jpg', 25.07075213472045, 121.52486821051494, '2021-05-10 09:21:10', '2021-07-06 23:43:53'),
(15, 15, '國立臺灣美術館', 'TXG', '002.jpg', 24.142425526816282, 120.66327197390653, '2021-07-06 23:51:21', '2021-07-06 23:51:21'),
(16, 16, '晶美術館', 'TXG', '017.jpg', 24.16292823325435, 120.64573264182737, '2021-07-06 23:51:21', '2021-07-06 23:51:21'),
(17, 17, '亞洲大學現代美術館', 'TXG', '018.jpg', 24.048828481572784, 120.68847639336789, '2021-07-06 23:54:24', '2021-07-06 23:54:24'),
(18, 18, '朱魯青美術館', 'TXG', '019.jpg', 24.154181875491535, 120.66284617723205, '2021-07-06 23:54:24', '2021-07-06 23:54:24'),
(31, 20, '新竹市立美術館', 'HSC', '020.jpg\r\n', 24.80650638130134, 120.97015866815406, '2021-07-14 00:37:20', '2021-07-14 00:38:28'),
(32, 21, '嘉義市立美術館', 'CYI', '021.jpg', 23.477107883778718, 120.44083245239118, '2021-07-14 00:40:49', '2021-07-14 00:43:35'),
(33, 22, '高雄市立兒童美術館', 'KHH', '022.jpg', 22.65789444977578, 120.28279055684595, '2021-07-14 00:43:08', '2021-07-14 00:43:08'),
(34, 23, '高雄市立美術館', 'KHH', '023.jpg', 22.65678838316576, 120.28650818461898, '2021-07-14 00:43:08', '2021-07-14 00:43:08'),
(35, 24, '桃園市立兒童美術館', 'TAO', '024.jpg', 24.9796958187199, 121.2998769518514, '2021-07-14 00:47:48', '2021-07-14 00:47:48'),
(36, 25, '長流當代美術館 ', 'TAO', '025', 25.063138757715382, 121.30288997290282, '2021-07-14 00:47:48', '2021-07-14 00:47:48');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `museum`
--
ALTER TABLE `museum`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `museum`
--
ALTER TABLE `museum`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
