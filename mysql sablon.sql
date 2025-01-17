-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Oca 2025, 20:18:06
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gameplus`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`, `created_at`) VALUES
(1, 'afasffs', 'afasfasf', '2025-01-10 11:47:03'),
(2, 'berkay', 'asfsaf', '2025-01-10 11:53:15'),
(3, 'berkay', 'afasffas', '2025-01-10 11:53:34'),
(4, 'berkay', 'afsfasasfsasagdsaagds', '2025-01-10 11:56:09'),
(5, 'berkay', 'asffsagSGSAAASSGAASGasassag', '2025-01-10 12:02:11'),
(6, 'berkay', 'aaaaaaaaaaaaa', '2025-01-10 17:17:02'),
(7, 'berkay', 'deneme deneme', '2025-01-16 19:21:14'),
(8, 'berkay', 'asfdfasdgsdag', '2025-01-16 19:32:21'),
(9, 'berkay', 'yorumum !!!\r\n', '2025-01-16 19:38:56'),
(10, 'berkay', 'işte yorumum budur', '2025-01-16 19:43:42'),
(11, 'berkay', 'asfsdaadsgas', '2025-01-17 19:15:55');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
