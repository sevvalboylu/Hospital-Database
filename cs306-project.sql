-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 May 2017, 18:22:43
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cs306-project`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `departments`
--

CREATE TABLE `departments` (
  `Department_id` int(11) NOT NULL,
  `Department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `departments`
--

INSERT INTO `departments` (`Department_id`, `Department_name`) VALUES
(1, 'Kardiyoloji'),
(2, 'Uroloji'),
(3, 'Goz Hastaliklari'),
(4, 'Kulak Burun Bogaz'),
(5, 'Psikiyatri'),
(6, 'Beyin ve Sinir Cerrahi'),
(7, 'Gastroenteroloji'),
(8, 'Dahiliye'),
(9, 'Romatoloji');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_id` int(11) NOT NULL,
  `Doctor_Name` varchar(100) NOT NULL,
  `Doctor_Eid` int(11) NOT NULL,
  `Doctor_Did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `doctor`
--

INSERT INTO `doctor` (`Doctor_id`, `Doctor_Name`, `Doctor_Eid`, `Doctor_Did`) VALUES
(1, 'Tansu Celik', 11, 1),
(2, 'Barkin Erdogan', 12, 2),
(3, 'Simge Uzun', 13, 3),
(4, 'Yusuf Ozdemir', 14, 4),
(5, 'Tuba Altun', 15, 5),
(6, 'Sena Cetin', 16, 6),
(7, 'Selin Mumtaz', 17, 7);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `doctorv`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `doctorv` (
`Employee_id` int(11)
,`Employee_Name` varchar(100)
,`Employee_Did` int(11)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `employees`
--

CREATE TABLE `employees` (
  `Employee_id` int(11) NOT NULL,
  `Employee_Name` varchar(100) NOT NULL,
  `Employee_TcNo` bigint(11) NOT NULL,
  `Employee_Did` int(11) NOT NULL,
  `Employee_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `employees`
--

INSERT INTO `employees` (`Employee_id`, `Employee_Name`, `Employee_TcNo`, `Employee_Did`, `Employee_Type`) VALUES
(1, 'Ahmet Dogru', 53097064821, 1, 'Janitor'),
(2, 'Leman Kiran', 56713541009, 2, 'Janitor'),
(3, 'Kemal Pamukcu', 11685308746, 3, 'Janitor'),
(4, 'Veysel Aktas', 46254796557, 4, 'Janitor'),
(5, 'Yilmaz Demir', 36198547628, 5, 'Janitor'),
(6, 'Ayse Akar', 46521956682, 1, 'Nurse'),
(7, 'Lale Kaya', 34295741654, 2, 'Nurse'),
(8, 'Bade Toker', 35997564125, 3, 'Nurse'),
(9, 'Hande Kaplan', 45097648513, 4, 'Nurse'),
(10, 'Yaren Bozok', 24685739645, 5, 'Nurse'),
(11, 'Tansu Celik', 54632100785, 1, 'Doctor'),
(12, 'Barkin Erdogan', 43240957064, 2, 'Doctor'),
(13, 'Simge Uzun', 38462750146, 3, 'Doctor'),
(14, 'Yusuf Ozdemir', 59523204789, 4, 'Doctor'),
(15, 'Tuba Altun', 19538544602, 5, 'Doctor'),
(16, 'Hakan Vardan', 46090365420, 4, 'Doctor'),
(17, 'Hazal Sengul', 25970560047, 2, 'Nurse'),
(18, 'Sema Guzel', 39800476652, 4, 'Nurse'),
(19, 'Sena Kaya', 46895615485, 6, 'Doctor'),
(21, 'Derya Koru', 46895615487, 9, 'Doctor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `janitor`
--

CREATE TABLE `janitor` (
  `janitor_id` int(11) NOT NULL,
  `janitor_Name` varchar(100) NOT NULL,
  `janitor_Eid` int(11) NOT NULL,
  `janitor_Did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `janitor`
--

INSERT INTO `janitor` (`janitor_id`, `janitor_Name`, `janitor_Eid`, `janitor_Did`) VALUES
(1, 'Ahmet Dogru', 1, 1),
(2, 'Leman Kiran', 2, 2),
(3, 'Kemal Pamukcu', 3, 3),
(4, 'Veysel Aktas', 4, 4),
(5, 'Yilmaz Demir', 5, 5);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `janitorv`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `janitorv` (
`Employee_id` int(11)
,`Employee_Name` varchar(100)
,`Employee_Did` int(11)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `nurse`
--

CREATE TABLE `nurse` (
  `Nurse_id` int(11) NOT NULL,
  `Nurse_Name` varchar(100) NOT NULL,
  `Nurse_Eid` int(11) NOT NULL,
  `Nurse_Did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `nurse`
--

INSERT INTO `nurse` (`Nurse_id`, `Nurse_Name`, `Nurse_Eid`, `Nurse_Did`) VALUES
(1, 'Ayse Akar', 6, 1),
(2, 'Lale Kaya', 7, 2),
(3, 'Bade Toker', 8, 3),
(4, 'Hande Kaplan', 9, 4),
(5, 'Yaren Bozok', 10, 5);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `nursev`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `nursev` (
`Employee_id` int(11)
,`Employee_Name` varchar(100)
,`Employee_Did` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `nurse_roomv`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `nurse_roomv` (
`Employee_Name` varchar(100)
,`Room_id` int(11)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `patients`
--

CREATE TABLE `patients` (
  `Patient_id` int(11) NOT NULL,
  `Patient_Name` varchar(100) NOT NULL,
  `Patient_TcNo` bigint(20) NOT NULL,
  `Patient_Doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `patients`
--

INSERT INTO `patients` (`Patient_id`, `Patient_Name`, `Patient_TcNo`, `Patient_Doctor_id`) VALUES
(1, 'Gorkem Ozturk', 48569712547, 4),
(2, 'Seda Yilmaz', 35408951743, 3),
(3, 'Melis Tevetoglu', 27861054340, 5),
(4, 'Lale Torun', 15370983845, 1),
(5, 'Suna Koc', 56408852467, 2),
(6, 'Yusuf Kilic', 52973846684, 2),
(8, 'Sevval Boylu', 45634523465, 12),
(9, 'Oya Siivri', 54795748014, 11);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `responsible_from`
--

CREATE TABLE `responsible_from` (
  `Nurse_id` int(11) NOT NULL,
  `Room_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `responsible_from`
--

INSERT INTO `responsible_from` (`Nurse_id`, `Room_id`) VALUES
(6, 101),
(7, 102),
(9, 103),
(18, 104),
(17, 105);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rooms`
--

CREATE TABLE `rooms` (
  `Room_id` int(11) NOT NULL,
  `Patient_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `rooms`
--

INSERT INTO `rooms` (`Room_id`, `Patient_id`) VALUES
(101, 1),
(102, 2),
(103, 3),
(104, 4),
(105, 5),
(106, 6),
(107, 9);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `stays_in`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `stays_in` (
`Room_id` int(11)
,`Patient_id` int(11)
,`Patient_Name` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `treats`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `treats` (
`Doctor_id` int(11)
,`Doctor_Name` varchar(100)
,`Patient_Name` varchar(100)
,`Patient_id` int(11)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `visitors`
--

CREATE TABLE `visitors` (
  `Visitor_Name` varchar(100) NOT NULL,
  `Visitor_TcNo` bigint(20) NOT NULL,
  `Visitor_Pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `visitors`
--

INSERT INTO `visitors` (`Visitor_Name`, `Visitor_TcNo`, `Visitor_Pid`) VALUES
('Yaren Koc', 10573266584, 5),
('Filiz Torun', 25408957157, 4),
('Burak Tevetoglu', 35421802214, 2),
('Ali Ozturk', 38499510785, 1),
('Hakan Yilmaz', 40982674804, 2),
('Kerim Ozturk', 48642398847, 8),
('Gulgaz Aymanova', 52655496597, 2),
('Sena Kaya', 486423988547, 3);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `visits`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `visits` (
`Visitor_Name` varchar(100)
,`Visitor_Pid` int(11)
,`Visitor_TcNo` bigint(20)
,`Patient_Name` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `vorks_in`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `vorks_in` (
`Employee_id` int(11)
,`Employee_Name` varchar(100)
,`Department_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `works_in`
--

CREATE TABLE `works_in` (
  `Employee_id` int(11) NOT NULL,
  `Employee_Name` varchar(100) NOT NULL,
  `Department_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `works_in`
--

INSERT INTO `works_in` (`Employee_id`, `Employee_Name`, `Department_name`) VALUES
(1, 'Ahmet Dogru', 'Kalp'),
(2, 'Leman Kiran', 'Üroloji'),
(3, 'Kemal Pamukcu', 'Göz'),
(4, 'Veysel Aktas', 'Kulak'),
(5, 'Yilmaz Demir', 'Psikiyatri'),
(6, 'Ayse Akar', 'Kalp'),
(7, 'Lale Kaya', 'Üroloji'),
(8, 'Bade Toker', 'Göz'),
(9, 'Hande Kaplan', 'Kulak'),
(10, 'Yaren Bozok', 'Psikiyatri'),
(11, 'Tansu Celik', 'Kalp'),
(12, 'Barkin Erdogan', 'Üroloji'),
(13, 'Simge Uzun', 'Göz'),
(14, 'Yusuf Ozdemir', 'Kulak'),
(15, 'Tuba Altun', 'Psikiyatri');

-- --------------------------------------------------------

--
-- Görünüm yapısı `doctorv`
--
DROP TABLE IF EXISTS `doctorv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `doctorv`  AS  select `employees`.`Employee_id` AS `Employee_id`,`employees`.`Employee_Name` AS `Employee_Name`,`employees`.`Employee_Did` AS `Employee_Did` from `employees` where (`employees`.`Employee_Type` = 'Doctor') ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `janitorv`
--
DROP TABLE IF EXISTS `janitorv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `janitorv`  AS  select `employees`.`Employee_id` AS `Employee_id`,`employees`.`Employee_Name` AS `Employee_Name`,`employees`.`Employee_Did` AS `Employee_Did` from `employees` where (`employees`.`Employee_Type` = 'janitor') ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `nursev`
--
DROP TABLE IF EXISTS `nursev`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nursev`  AS  select `employees`.`Employee_id` AS `Employee_id`,`employees`.`Employee_Name` AS `Employee_Name`,`employees`.`Employee_Did` AS `Employee_Did` from `employees` where (`employees`.`Employee_Type` = 'Nurse') ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `nurse_roomv`
--
DROP TABLE IF EXISTS `nurse_roomv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nurse_roomv`  AS  select `n`.`Employee_Name` AS `Employee_Name`,`r`.`Room_id` AS `Room_id` from (`nursev` `n` join `responsible_from` `r`) where (`n`.`Employee_id` = `r`.`Nurse_id`) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `stays_in`
--
DROP TABLE IF EXISTS `stays_in`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stays_in`  AS  select `r`.`Room_id` AS `Room_id`,`r`.`Patient_id` AS `Patient_id`,`p`.`Patient_Name` AS `Patient_Name` from (`rooms` `r` join `patients` `p`) where (`r`.`Patient_id` = `p`.`Patient_id`) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `treats`
--
DROP TABLE IF EXISTS `treats`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `treats`  AS  select `dv`.`Employee_id` AS `Doctor_id`,`dv`.`Employee_Name` AS `Doctor_Name`,`p`.`Patient_Name` AS `Patient_Name`,`p`.`Patient_id` AS `Patient_id` from (`doctorv` `dv` join `patients` `p`) where (`p`.`Patient_Doctor_id` = `dv`.`Employee_id`) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `visits`
--
DROP TABLE IF EXISTS `visits`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `visits`  AS  select `v`.`Visitor_Name` AS `Visitor_Name`,`v`.`Visitor_Pid` AS `Visitor_Pid`,`v`.`Visitor_TcNo` AS `Visitor_TcNo`,`p`.`Patient_Name` AS `Patient_Name` from (`visitors` `v` join `patients` `p`) where (`v`.`Visitor_Pid` = `p`.`Patient_id`) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `vorks_in`
--
DROP TABLE IF EXISTS `vorks_in`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vorks_in`  AS  select `e`.`Employee_id` AS `Employee_id`,`e`.`Employee_Name` AS `Employee_Name`,`d`.`Department_name` AS `Department_name` from (`departments` `d` join `employees` `e`) where (`e`.`Employee_Did` = `d`.`Department_id`) ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`Department_id`);

--
-- Tablo için indeksler `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_id`);

--
-- Tablo için indeksler `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employee_id`),
  ADD UNIQUE KEY `Employee_TcNo` (`Employee_TcNo`);

--
-- Tablo için indeksler `janitor`
--
ALTER TABLE `janitor`
  ADD PRIMARY KEY (`janitor_id`);

--
-- Tablo için indeksler `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`Nurse_id`);

--
-- Tablo için indeksler `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`Patient_id`),
  ADD UNIQUE KEY `Patient_TcNo` (`Patient_TcNo`);

--
-- Tablo için indeksler `responsible_from`
--
ALTER TABLE `responsible_from`
  ADD UNIQUE KEY `Nurse_id` (`Nurse_id`);

--
-- Tablo için indeksler `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_id`),
  ADD UNIQUE KEY `Patient_id` (`Patient_id`);

--
-- Tablo için indeksler `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`Visitor_TcNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `departments`
--
ALTER TABLE `departments`
  MODIFY `Department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `employees`
--
ALTER TABLE `employees`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Tablo için AUTO_INCREMENT değeri `patients`
--
ALTER TABLE `patients`
  MODIFY `Patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
