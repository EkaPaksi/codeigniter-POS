-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 13, 2023 at 12:36 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_cipos2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kind_products`
--

CREATE TABLE `kind_products` (
  `kind_id` int NOT NULL,
  `kind_name` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `kind_products`
--

INSERT INTO `kind_products` (`kind_id`, `kind_name`, `created_at`, `updated_at`) VALUES
(1, 'bahan sembako', '2023-04-12 15:53:05', '2023-04-12 15:53:05'),
(2, 'makanan ringan', '2023-04-12 15:53:05', '2023-04-12 15:53:05'),
(3, 'minuman', '2023-04-12 15:53:05', '2023-04-12 15:53:05'),
(4, 'rokok', '2023-04-12 15:53:05', '2023-04-12 15:53:05'),
(5, 'obat-obatan', '2023-04-12 15:53:05', '2023-04-12 15:53:05'),
(6, 'alat tulis', '2023-04-12 15:53:05', '2023-04-12 15:53:05'),
(7, 'lain-lain', '2023-04-12 15:53:05', '2023-04-12 15:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int NOT NULL,
  `member_name` varchar(225) NOT NULL,
  `member_email` varchar(225) NOT NULL,
  `member_telephone` varchar(225) NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `member_email`, `member_telephone`, `discount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Devi Yuliarti', 'wastuti.johan@gmail.com', '+3538660899383', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(2, 'Faizah Nurdiyanti S.Pt', 'gpurwanti@yahoo.co.id', '+9778715355121', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(3, 'Salman Prayoga', 'calista21@yahoo.co.id', '+613777376616', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(4, 'Artanto Mansur', 'gunarto.upik@gmail.com', '+359257267829', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(5, 'Rangga Malik Wacana S.Farm', 'rajata.calista@gmail.co.id', '+26669338667', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(6, 'Elisa Maryati', 'rafi.nainggolan@yahoo.co.id', '+2209606259', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(7, 'Tira Yunita Hartati S.Kom', 'tpudjiastuti@gmail.com', '+5074473248539', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(8, 'Dewi Mardhiyah', 'zelaya43@gmail.co.id', '+596715424279', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(9, 'Darimin Prasetya', 'daliono.palastri@yahoo.com', '+16682106095', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(10, 'Viktor Setiawan S.E.I', 'sinaga.setya@yahoo.com', '+689113682432', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(11, 'Rika Usamah M.Ak', 'bhastuti@yahoo.com', '+651942783275', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(12, 'Praba Widodo M.TI.', 'agustina.cawuk@gmail.co.id', '+32754975093', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(13, 'Dewi Astuti M.Kom.', 'ismail.hardiansyah@gmail.com', '+3584607507541', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(14, 'Kiandra Oktaviani', 'warsita.nainggolan@yahoo.com', '+883984813313', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(15, 'Darimin Uwais', 'cager29@gmail.co.id', '+958341313856', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(16, 'Tugiman Putra', 'indra.uyainah@gmail.com', '+992069392203', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(17, 'Vinsen Saputra', 'mandala.jati@gmail.com', '+35637144834', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(18, 'Michelle Syahrini Mardhiyah S.Farm', 'dhutagalung@gmail.com', '+487272485361', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(19, 'Rika Nadia Purnawati', 'irwan45@gmail.co.id', '+983703142201', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(20, 'Nasab Marwata Habibi', 'umi.situmorang@gmail.co.id', '+2544554655730', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(21, 'Mariadi Kusuma Pradana', 'teddy15@yahoo.com', '+97579509157', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(22, 'Johan Jailani', 'sirait.imam@yahoo.com', '+355833528626', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(23, 'Nabila Hassanah', 'flaksita@yahoo.com', '+2346178700665', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(24, 'Siti Shania Permata S.Sos', 'apratiwi@yahoo.com', '+955036596741', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(25, 'Harjo Maheswara', 'adriansyah.drajat@yahoo.co.id', '+298060849', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(26, 'Qori Suartini', 'kayla08@yahoo.co.id', '+979850671660', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(27, 'Titi Hassanah', 'vnurdiyanti@yahoo.co.id', '+883095901445', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(28, 'Dewi Namaga', 'astuti.galak@yahoo.co.id', '+994384972930', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(29, 'Darmanto Ibrani Samosir', 'jfirmansyah@yahoo.com', '+212872518775', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(30, 'Ganjaran Santoso', 'mkusmawati@yahoo.co.id', '+883336614310', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(31, 'Raditya Nababan S.I.Kom', 'wahyudin.melinda@yahoo.co.id', '+50365095845', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(32, 'Michelle Laksmiwati', 'haryanti.puput@yahoo.com', '+441082430851', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(33, 'Cemani Mujur Sinaga M.Ak', 'rwahyuni@gmail.co.id', '+21648996677', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(34, 'Galuh Jamal Pranowo M.Kom.', 'jastuti@gmail.com', '+50045270', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(35, 'Lasmanto Irawan', 'jumari.hariyah@gmail.co.id', '+661641298718', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(36, 'Cengkal Waluyo', 'nurdiyanti.panji@gmail.com', '+351419460298', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(37, 'Makara Mahmud Putra M.Farm', 'nasyiah.chandra@yahoo.com', '+998881556692', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(38, 'Kariman Gangsar Simanjuntak', 'koko46@yahoo.co.id', '+591275144049', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(39, 'Kamaria Lestari', 'muhammad10@gmail.co.id', '+240297675356', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(40, 'Julia Farida', 'zulfa64@yahoo.com', '+979836444081', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(41, 'Tiara Irma Novitasari M.Pd', 'humaira64@yahoo.com', '+26696687035', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(42, 'Capa Maryadi', 'dinda74@gmail.co.id', '+359464205390', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(43, 'Dina Maryati S.Kom', 'xrahayu@yahoo.co.id', '+67572027538', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(44, 'Kala Ajiman Adriansyah', 'pkusmawati@gmail.co.id', '+36750209506', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(45, 'Patricia Farida S.Sos', 'xadriansyah@yahoo.co.id', '+2690955264', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(46, 'Simon Napitupulu', 'mandala.puput@yahoo.com', '+240629058878', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(47, 'Rafi Jarwa Pradana', 'usada.mujur@gmail.com', '+96162718649', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(48, 'Pangeran Saputra', 'alika25@gmail.com', '+6902805509', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(49, 'Syahrini Widiastuti', 'hartaka33@yahoo.com', '+439832943650', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(50, 'Elma Sudiati', 'hana60@yahoo.com', '+995305294037', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(51, 'Lintang Rahimah', 'puput39@yahoo.com', '+15507837465', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(52, 'Wardi Waluyo', 'jabal.usada@yahoo.co.id', '+8554853057720', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(53, 'Padma Purwanti', 'mahfud.suartini@yahoo.com', '+2200580974', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(54, 'Tira Latika Rahmawati S.H.', 'rangga31@gmail.co.id', '+2545694045509', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(55, 'Dartono Saragih', 'opuspita@gmail.com', '+299455376', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(56, 'Wawan Lazuardi', 'maulana.julia@yahoo.com', '+50407677287', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(57, 'Tirtayasa Adiarja Nugroho', 'nugraha50@gmail.com', '+3727175493870', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(58, 'Raihan Legawa Wasita', 'drahmawati@gmail.com', '+37048184193', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(59, 'Ivan Tampubolon', 'jais.haryanti@gmail.com', '+549248166456', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(60, 'Cagak Kunthara Haryanto', 'vhidayat@yahoo.co.id', '+261486946947', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(61, 'Hilda Nasyiah', 'daliman.wulandari@gmail.com', '+580149660528', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(62, 'Teddy Ajimin Januar M.Pd', 'trajata@yahoo.co.id', '+24140221942', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(63, 'Dasa Prayoga S.Sos', 'ulva00@yahoo.co.id', '+662924728925', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(64, 'Kala Umay Marpaung S.Pt', 'icha.adriansyah@gmail.com', '+435810607393', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(65, 'Winda Astuti S.H.', 'maryati.paulin@yahoo.co.id', '+640722953674', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(66, 'Zamira Hastuti', 'agnes89@gmail.com', '+617433966129', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(67, 'Yulia Yolanda S.Kom', 'queen.utama@gmail.com', '+258210210587', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(68, 'Zelda Syahrini Wijayanti S.Sos', 'bajragin92@gmail.com', '+921628783871', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(69, 'Sakura Pudjiastuti', 'zulfa16@gmail.com', '+3806614753476', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(70, 'Dipa Yusuf Suryono', 'znurdiyanti@gmail.com', '+968888807365', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(71, 'Prabowo Langgeng Wahyudin S.H.', 'irsad49@yahoo.com', '+6802478553', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(72, 'Luwes Lega Nugroho S.Ked', 'jwinarsih@gmail.com', '+9714393895185', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(73, 'Nasab Budiyanto', 'pudjiastuti.cinthia@yahoo.com', '+32949501028', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(74, 'Kardi Mangunsong', 'ghani90@yahoo.com', '+51487033683', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(75, 'Gada Winarno S.Ked', 'harja.aryani@gmail.co.id', '+23569280878', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(76, 'Uchita Purnawati S.Pt', 'rahayu.lanjar@yahoo.co.id', '+231401030751', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(77, 'Bahuraksa Narpati S.Farm', 'lanjar66@yahoo.com', '+298854284', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(78, 'Ibrahim Jatmiko Najmudin', 'umi16@gmail.co.id', '+22272927567', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(79, 'Kamila Ella Padmasari S.T.', 'vanesa.namaga@yahoo.com', '+242270612408', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(80, 'Yance Utami', 'samiah.mahendra@gmail.co.id', '+6927413645', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(81, 'Hamzah Narpati', 'banara.nasyiah@yahoo.com', '+4503503030', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(82, 'Eka Mutia Rahayu', 'pradana.vivi@yahoo.co.id', '+261609780836', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(83, 'Sabri Lazuardi S.E.', 'harjaya.pradana@gmail.com', '+9766632030122', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(84, 'Nadia Maryati', 'maulana.reza@yahoo.co.id', '+387727514178', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(85, 'Kezia Lailasari M.Pd', 'hpratama@gmail.co.id', '+243586999680', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(86, 'Gilang Prabowo', 'aisyah00@yahoo.com', '+8864798155892', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(87, 'Lintang Mandasari', 'edward.haryanto@yahoo.co.id', '+40363919636', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(88, 'Heryanto Winarno', 'tari.zulkarnain@yahoo.co.id', '+998411507679', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(89, 'Putu Kemal Nababan S.Ked', 'kusmawati.belinda@gmail.co.id', '+689585346842', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(90, 'Ulva Hartati', 'rafi54@gmail.co.id', '+2384842644', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(91, 'Nadine Alika Mandasari', 'zaenab.waskita@gmail.com', '+420895645724', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(92, 'Cengkal Wibisono M.Farm', 'snamaga@gmail.com', '+3536156895238', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(93, 'Betania Putri Mardhiyah', 'lrahayu@gmail.co.id', '+586994647883', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(94, 'Yessi Suartini S.Pd', 'hamima85@gmail.co.id', '+992782488094', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(95, 'Ikin Napitupulu M.TI.', 'olga.setiawan@yahoo.com', '+247722502', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(96, 'Ismail Ramadan S.Psi', 'padmi.sihotang@yahoo.com', '+9708298437415', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(97, 'Febi Halima Wastuti S.T.', 'msitompul@gmail.co.id', '+68681967736', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(98, 'Karen Haryanti M.Pd', 'zulaika.umi@yahoo.co.id', '+963980763526', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(99, 'Putri Padmasari S.E.', 'oliva.anggraini@yahoo.co.id', '+6929506293', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(100, 'Prabowo Artanto Uwais', 'jarwadi.haryanto@yahoo.co.id', '+299175564', 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `merchants`
--

CREATE TABLE `merchants` (
  `merchant_id` int NOT NULL,
  `merchant_name` varchar(225) NOT NULL,
  `merchant_telephone` varchar(225) DEFAULT NULL,
  `merchant_address` varchar(225) DEFAULT NULL,
  `merchant_description` varchar(255) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `merchants`
--

INSERT INTO `merchants` (`merchant_id`, `merchant_name`, `merchant_telephone`, `merchant_address`, `merchant_description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'semoga berkah', '08123123', 'jakarta', 'Velit ullamco occaecat exercitation nisi exercitation do reprehenderit eiusmod dolore ipsum duis exercitation.', 1, '2023-04-12 15:53:07', '2023-04-12 15:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `permisions`
--

CREATE TABLE `permisions` (
  `permision_id` int NOT NULL,
  `user_id` int NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `create` tinyint(1) NOT NULL DEFAULT '0',
  `update` tinyint(1) NOT NULL DEFAULT '0',
  `delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `permisions`
--

INSERT INTO `permisions` (`permision_id`, `user_id`, `read`, `create`, `update`, `delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, '2023-04-12 15:53:07', '2023-04-12 15:53:07'),
(2, 2, 1, 0, 0, 0, '2023-04-12 15:53:07', '2023-04-12 15:53:07'),
(3, 3, 1, 1, 0, 0, '2023-04-12 15:53:07', '2023-04-12 15:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20210107020548, 'KindProduct', '2023-04-12 15:45:12', '2023-04-12 15:45:13', 0),
(20210109004026, 'Unit', '2023-04-12 15:45:13', '2023-04-12 15:45:14', 0),
(20210109004034, 'Role', '2023-04-12 15:45:14', '2023-04-12 15:45:15', 0),
(20210520092510, 'User', '2023-04-12 15:45:16', '2023-04-12 15:45:19', 0),
(20210608173202, 'Permision', '2023-04-12 15:45:19', '2023-04-12 15:45:23', 0),
(20210623035823, 'Product', '2023-04-12 15:45:23', '2023-04-12 15:45:28', 0),
(20220106025158, 'Member', '2023-04-12 15:45:28', '2023-04-12 15:45:30', 0),
(20220107185113, 'Transaction', '2023-04-12 15:45:30', '2023-04-12 15:45:34', 0),
(20220107185446, 'Merchant', '2023-04-12 15:45:34', '2023-04-12 15:45:37', 0),
(20220211151329, 'Token', '2023-04-12 15:45:37', '2023-04-12 15:45:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `kind_id` int NOT NULL,
  `product_name` varchar(225) NOT NULL,
  `purchase_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `unit` varchar(225) NOT NULL,
  `product_qty` int NOT NULL,
  `product_image` varchar(225) DEFAULT NULL,
  `is_promo` tinyint(1) NOT NULL DEFAULT '0',
  `start_promo` timestamp NULL DEFAULT NULL,
  `end_promo` timestamp NULL DEFAULT NULL,
  `promo_type` varchar(255) DEFAULT NULL,
  `piece` int DEFAULT NULL,
  `end_price` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `barcode`, `kind_id`, `product_name`, `purchase_price`, `selling_price`, `unit`, `product_qty`, `product_image`, `is_promo`, `start_promo`, `end_promo`, `promo_type`, `piece`, `end_price`, `is_active`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '8999909096004', 1, 'mild 16', 25000, 27000, 'pcs', 99, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(2, '', 1, 'tisu', 100, 1000, 'pcs', 9, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2023-04-12 16:10:45', '2023-04-12 16:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `role` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(2, 'seller', '2023-04-12 15:53:06', '2023-04-12 15:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `token_id` int NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `expired` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int NOT NULL,
  `transaction_code` varchar(225) NOT NULL,
  `member_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_code`, `member_id`, `product_id`, `product_name`, `price`, `qty`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'TR20231231', NULL, 2, 'tisu', 1000, 1, 1, '2023-04-12 04:11:50', '2023-04-12 04:11:50'),
(2, 'TR20231231', NULL, 1, 'mild 16', 27000, 1, 1, '2023-04-12 04:11:50', '2023-04-12 04:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int NOT NULL,
  `unit` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'pcs', '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(2, 'karton', '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(3, 'liter', '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(4, 'kg', '2023-04-12 15:53:06', '2023-04-12 15:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token_login` text,
  `gender` varchar(225) DEFAULT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `avatar` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`, `token_login`, `gender`, `telephone`, `avatar`, `address`, `is_active`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Kasir', 'admin@email.com', '$2y$10$DA3Qus1juxehGnbs1ogiZ.dLIdsZlFCgnD/268.UW9Vmp1VOEpYna', '40i2ecetd7cw5y2e541c4p9xrtrkzxl6exe3tl98umqeldzv9axqb2yt4jx824d8', NULL, NULL, NULL, 'jakarta', 1, 'admin', '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(2, 'resa23', 'resa23@email.com', '$2y$10$7tfnHkMf2NdjOf3wN3jSJOS.4ynEBt9gHKVfCf38AQM/aAutsA7pq', NULL, NULL, NULL, NULL, 'bandung', 1, 'seller', '2023-04-12 15:53:06', '2023-04-12 15:53:06'),
(3, 'user seller', 'danangkonang21@gmail.com', '$2y$10$CP0nMeoOR9xndp0b4M88AOBfhXEyyCU8LAKLYh5WU0FGsKBmXrveG', NULL, NULL, NULL, NULL, 'surabaya', 1, 'seller', '2023-04-12 15:53:06', '2023-04-12 15:53:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kind_products`
--
ALTER TABLE `kind_products`
  ADD PRIMARY KEY (`kind_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`merchant_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `permisions`
--
ALTER TABLE `permisions`
  ADD PRIMARY KEY (`permision_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `kind_id` (`kind_id`),
  ADD KEY `unit` (`unit`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `member_id` (`member_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`),
  ADD UNIQUE KEY `unit` (`unit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`,`email`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kind_products`
--
ALTER TABLE `kind_products`
  MODIFY `kind_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `merchants`
--
ALTER TABLE `merchants`
  MODIFY `merchant_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permisions`
--
ALTER TABLE `permisions`
  MODIFY `permision_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `merchants`
--
ALTER TABLE `merchants`
  ADD CONSTRAINT `merchants_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `permisions`
--
ALTER TABLE `permisions`
  ADD CONSTRAINT `permisions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`kind_id`) REFERENCES `kind_products` (`kind_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`unit`) REFERENCES `units` (`unit`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
