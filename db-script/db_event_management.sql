-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 06 sep. 2023 à 15:33
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_event_management`
--

-- --------------------------------------------------------

--
-- Structure de la table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `faculty`
--

INSERT INTO `faculty` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(1, '789', 'Faculty 1', 'Sample', 123456789);

-- --------------------------------------------------------

--
-- Structure de la table `giaovien`
--

CREATE TABLE `giaovien` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `giaovien`
--

INSERT INTO `giaovien` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(3, '1', 'Giao Vien 1', 'Hà Nộik', 11111);

-- --------------------------------------------------------

--
-- Structure de la table `giaovu`
--

CREATE TABLE `giaovu` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `giaovu`
--

INSERT INTO `giaovu` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(1, '1', 'Giáo Vụ 11', 'Ha Noi', 11111),
(2, '2', 'Giáo Vụ 2', 'Ha Noi', 11112);

-- --------------------------------------------------------

--
-- Structure de la table `hocky`
--

CREATE TABLE `hocky` (
  `id` int(11) NOT NULL,
  `maHocKy` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenHocKy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `hocky`
--

INSERT INTO `hocky` (`id`, `maHocKy`, `tenHocKy`, `dateStart`, `dateEnd`) VALUES
(1, '11', 'Kì I 2022-2023', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `hocphan`
--

CREATE TABLE `hocphan` (
  `id` int(11) NOT NULL,
  `maHocPhan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenHocPhan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `soTinChi` int(11) NOT NULL,
  `tenGiangVien` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `hocphan`
--

INSERT INTO `hocphan` (`id`, `maHocPhan`, `tenHocPhan`, `soTinChi`, `tenGiangVien`) VALUES
(4, 'CP02014', 'Hóa sinh thực phẩm', 2, 'Le Hong Quan');

-- --------------------------------------------------------

--
-- Structure de la table `kehoachgiangday`
--

CREATE TABLE `kehoachgiangday` (
  `ID` int(11) NOT NULL,
  `Khoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `HocKy` text COLLATE utf8_unicode_ci NOT NULL,
  `Lop` text COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `TenGiangVien` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `khoa`
--

CREATE TABLE `khoa` (
  `id` int(11) NOT NULL,
  `maKhoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenKhoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `khoa`
--

INSERT INTO `khoa` (`id`, `maKhoa`, `tenKhoa`) VALUES
(1, 'CNTT', 'Khoa Công Nghệ Thông'),
(2, 'DPT', 'Truyền Thông Đa Phươ');

-- --------------------------------------------------------

--
-- Structure de la table `logs`
--

CREATE TABLE `logs` (
  `id` int(30) NOT NULL,
  `type` varchar(100) NOT NULL,
  `frm_id` int(30) NOT NULL,
  `log_type` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `logs`
--

INSERT INTO `logs` (`id`, `type`, `frm_id`, `log_type`, `date_created`) VALUES
(1, 'students', 1, 1, '2020-10-29 15:50:32'),
(2, 'students', 1, 2, '2020-10-29 15:50:58'),
(5, 'students', 1, 1, '2020-10-29 15:53:15'),
(6, 'students', 1, 2, '2020-10-29 15:53:34'),
(7, 'students', 1, 1, '2020-10-29 15:53:38'),
(8, 'faculty', 1, 1, '2020-10-29 16:12:14'),
(9, 'faculty', 1, 2, '2020-10-29 16:12:31'),
(10, 'visitor', 1, 1, '2020-10-29 16:49:00'),
(14, 'visitor', 1, 2, '2020-10-29 17:01:49');

-- --------------------------------------------------------

--
-- Structure de la table `lop`
--

CREATE TABLE `lop` (
  `id` int(11) NOT NULL,
  `idMaLop` text COLLATE utf8_unicode_ci NOT NULL,
  `tenLop` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `lop`
--

INSERT INTO `lop` (`id`, `idMaLop`, `tenLop`) VALUES
(6, 'K65CNTPD', 'Công nghệ thực phẩm');

-- --------------------------------------------------------

--
-- Structure de la table `nganh`
--

CREATE TABLE `nganh` (
  `id` int(11) NOT NULL,
  `maNganh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenNganh` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'School Log Management System', 'info@sample.comm', '+6948 8542 623', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_frontdesk_users`
--

CREATE TABLE `tbl_frontdesk_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(5, '2023-05-05', 'aaaaaaaaaaaaa', '2023-05-02 22:42:10');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_kehoach`
--

CREATE TABLE `tbl_kehoach` (
  `ID` int(11) NOT NULL,
  `Khoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HocKy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Lop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tbl_kehoach`
--

INSERT INTO `tbl_kehoach` (`ID`, `Khoa`, `HocKy`, `Lop`, `TenMon`) VALUES
(2, '2', '2', '2', '2'),
(3, '1', '2', '2', '2'),
(4, '1', '2', '2', '2'),
(5, 'CNTT', 'Ki 1', '519B', 'Lập trình OPP'),
(6, 'Khoa Công Nghệ Thông', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối'),
(7, 'Khoa Công Nghệ Thông', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối'),
(8, 'Truyền Thông Đa Phươ', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối'),
(9, 'Truyền Thông Đa Phươ', 'Kì 1 2022-2023', '519100B', 'Lập trình hướng đối');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_lichtheotiendo`
--

CREATE TABLE `tbl_lichtheotiendo` (
  `ID` int(11) NOT NULL,
  `maMH` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tenMH` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `soTinChi` int(11) NOT NULL,
  `maLop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soTCHP` int(11) NOT NULL,
  `thu` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tietBD` int(11) NOT NULL,
  `soTiet` int(11) NOT NULL,
  `phong` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CBGD` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tuan` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tbl_lichtheotiendo`
--

INSERT INTO `tbl_lichtheotiendo` (`ID`, `maMH`, `tenMH`, `soTinChi`, `maLop`, `soTCHP`, `thu`, `tietBD`, `soTiet`, `phong`, `CBGD`, `tuan`) VALUES
(217, 'CP02014', 'Hóa sinh thực phẩm', 2, 'K65CNTPD, K65CNTPD', 2, 'Ba', 9, 2, 'E102', 'HSC12', '123456'),
(218, 'SN00011', 'Tiếng Anh 0', 2, 'T.ANH0', 2, 'Tư', 4, 2, 'E405', 'TG208', '123456789--2345678'),
(219, 'CD00006', 'Vẽ kỹ thuật', 2, 'K65CNTPD, K65CNTPD', 2, 'Tư', 6, 3, 'CD-8', 'CHO04', '123456'),
(220, 'CP02015', 'Kỹ thuật thực phẩm 1', 3, 'K65CNTPD, K65CNTPD', 3, 'Tư', 9, 2, 'CD-5', 'CNC10', '123456789'),
(221, 'GT01017', 'Điền kinh', 1, 'DK1', 1, 'Năm', 4, 2, 'SAN15', 'GDT23', '12-456789--2345678'),
(222, 'CP02015', 'Kỹ thuật thực phẩm 1', 3, 'K65CNTPD, K65CNTPD', 3, 'Sáu', 1, 3, 'CD-7', 'CNC10', '12-456789'),
(223, 'CP02014', 'Hóa sinh thực phẩm', 2, 'K65CNTPD, K65CNTPD', 2, 'Sáu', 6, 3, 'C201', 'HSC12', '12-456'),
(224, 'CD00006', 'Vẽ kỹ thuật', 2, 'K65CNTPD, K65CNTPD', 2, 'Sáu', 9, 2, 'C201', 'CHO04', '12-456'),
(225, 'KN01004', 'Kỹ năng tìm kiếm việc làm', 2, 'KN01004, KN01004', 0, 'Ba', 1, 5, 'E202', 'PTN20', '-----678---2'),
(226, 'MT02011', 'Quản lý môi trường', 2, 'K65CNTPD, K65CNTPD', 2, 'Hai', 6, 3, 'A202', 'QMT02', '------789--234'),
(227, 'ML01022', 'Chủ nghĩa xã hội khoa học', 2, 'K65CNTPD, K65CNTPD', 2, 'Hai', 9, 2, 'CD-9', 'NLM10', '------789--234'),
(228, 'ML01022', 'Chủ nghĩa xã hội khoa học', 2, 'K65CNTPD, K65CNTPD', 2, 'Tư', 6, 3, 'E101', 'NLM10', '------789--234'),
(229, 'MT02011', 'Quản lý môi trường', 2, 'K65CNTPD, K65CNTPD', 2, 'Sáu', 4, 2, 'E102', 'QMT02', '------789--234'),
(230, 'CP03007', 'Vi sinh vật thực phẩm', 2, 'K65CNTPD, K65CNTPD, ...', 2, 'Tư', 2, 2, 'B.301', 'QTP02', '-------89--234'),
(231, 'CP03007', 'Vi sinh vật thực phẩm', 2, 'K65CNTPD', 2, 'Năm', 6, 3, 'A205', 'QTP02', '-------89--234'),
(232, 'KN01006', 'Kỹ năng hội nhập', 2, 'KN01006, KN01006', 0, 'Ba', 1, 5, 'E201', 'KNN08', '------------34567'),
(233, 'CD02301', 'Kỹ thuật nhiệt', 2, 'K65CNTPD, K65CNTPD', 2, 'Hai', 6, 3, 'B.301', 'TBI09', '--------------567890'),
(234, 'CP02016', 'Kỹ thuật thực phẩm 2', 2, 'K65CNTPD, K65CNTPD', 2, 'Tư', 6, 3, 'C101', 'CNC14', '--------------567890'),
(235, 'CD02301', 'Kỹ thuật nhiệt', 2, 'K65CNTPD, K65CNTPD', 2, 'Tư', 9, 2, 'B.301', 'TBI09', '--------------567890'),
(236, 'CP02016', 'Kỹ thuật thực phẩm 2', 2, 'K65CNTPD, K65CNTPD', 2, 'Năm', 9, 2, 'A205', 'CNC14', '--------------567890'),
(237, 'CP02017', 'Kỹ thuật thực phẩm 3', 1, 'K65CNTPD', 1, 'Năm', 6, 3, 'B.209', 'CNC14', '---------------67890'),
(238, 'CP03007', 'Vi sinh vật thực phẩm', 2, 'K65CNTPD, K65CNTPD, ...', 2, 'Ba', 6, 5, 'THCNTP06', 'null', '----------------789'),
(239, 'KN01004', 'Kỹ năng tìm kiếm việc làm', 2, 'KN01004, KN01004', 0, 'Tư', 6, 5, 'ND207', 'null', '------------------9'),
(240, 'KN01006', 'Kỹ năng hội nhập', 2, 'KN01006, KN01006', 0, 'Sáu', 1, 5, 'ND207', 'null', '------------------9');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(10, 20, 2, '2023-05-12 22:22', 'APPROVED', '', '2023-05-03 23:49:58'),
(11, 18, 1, '2023-05-06 10:00', 'APPROVED', '', '2023-06-05 21:52:01'),
(12, 19, 2, '2023-06-06 08:00', 'DENIED', '', '2023-06-05 23:25:00'),
(13, 18, 5, '2023-06-06 08:00', 'APPROVED', '', '2023-06-06 23:06:27'),
(14, 20, 5, '2023-06-06 12:00', 'PENDING', '', '2023-06-08 14:12:25'),
(15, 20, 5, '2023-06-14 10:54', 'PENDING', '', '2023-06-14 22:54:18');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_thoikhoabieu`
--

CREATE TABLE `tbl_thoikhoabieu` (
  `ID` int(11) NOT NULL,
  `Subject` varchar(450) COLLATE utf8_unicode_ci NOT NULL,
  `startDate` date NOT NULL,
  `startTime` time NOT NULL,
  `endDate` date NOT NULL,
  `endTime` time NOT NULL,
  `Event` float NOT NULL,
  `Description` varchar(450) COLLATE utf8_unicode_ci NOT NULL,
  `Location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CBGD` text COLLATE utf8_unicode_ci NOT NULL,
  `soTiet` int(11) NOT NULL,
  `soTinChi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tbl_thoikhoabieu`
--

INSERT INTO `tbl_thoikhoabieu` (`ID`, `Subject`, `startDate`, `startTime`, `endDate`, `endTime`, `Event`, `Description`, `Location`, `CBGD`, `soTiet`, `soTinChi`) VALUES
(5884, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-05-17', '15:40:00', '2023-05-17', '17:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: E102', 'E102', 'HSC12', 2, 2),
(5885, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-05-24', '15:40:00', '2023-05-24', '17:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: E102', 'E102', 'HSC12', 2, 2),
(5886, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-05-31', '15:40:00', '2023-05-31', '17:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: E102', 'E102', 'HSC12', 2, 2),
(5887, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-06-07', '15:40:00', '2023-06-07', '17:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: E102', 'E102', 'HSC12', 2, 2),
(5888, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-06-14', '15:40:00', '2023-06-14', '17:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: E102', 'E102', 'HSC12', 2, 2),
(5889, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-06-21', '15:40:00', '2023-06-21', '17:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: E102', 'E102', 'HSC12', 2, 2),
(5890, 'T.ANH0 - Tiếng Anh 0', '2023-05-18', '09:55:00', '2023-05-18', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5891, 'T.ANH0 - Tiếng Anh 0', '2023-05-25', '09:55:00', '2023-05-25', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5892, 'T.ANH0 - Tiếng Anh 0', '2023-06-01', '09:55:00', '2023-06-01', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5893, 'T.ANH0 - Tiếng Anh 0', '2023-06-08', '09:55:00', '2023-06-08', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5894, 'T.ANH0 - Tiếng Anh 0', '2023-06-15', '09:55:00', '2023-06-15', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5895, 'T.ANH0 - Tiếng Anh 0', '2023-06-22', '09:55:00', '2023-06-22', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5896, 'T.ANH0 - Tiếng Anh 0', '2023-06-29', '09:55:00', '2023-06-29', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5897, 'T.ANH0 - Tiếng Anh 0', '2023-07-06', '09:55:00', '2023-07-06', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5898, 'T.ANH0 - Tiếng Anh 0', '2023-07-13', '09:55:00', '2023-07-13', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5899, 'T.ANH0 - Tiếng Anh 0', '2023-08-03', '09:55:00', '2023-08-03', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5900, 'T.ANH0 - Tiếng Anh 0', '2023-08-10', '09:55:00', '2023-08-10', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5901, 'T.ANH0 - Tiếng Anh 0', '2023-08-17', '09:55:00', '2023-08-17', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5902, 'T.ANH0 - Tiếng Anh 0', '2023-08-24', '09:55:00', '2023-08-24', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5903, 'T.ANH0 - Tiếng Anh 0', '2023-08-31', '09:55:00', '2023-08-31', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5904, 'T.ANH0 - Tiếng Anh 0', '2023-09-07', '09:55:00', '2023-09-07', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5905, 'T.ANH0 - Tiếng Anh 0', '2023-09-14', '09:55:00', '2023-09-14', '11:40:00', 0, 'Tiếng Anh 0 - SN00011 - T.ANH0 - Tiet: 4 - 5 - Phong hoc: E405', 'E405', 'TG208', 2, 2),
(5906, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-05-18', '12:45:00', '2023-05-18', '15:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: CD-8', 'CD-8', 'CHO04', 3, 2),
(5907, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-05-25', '12:45:00', '2023-05-25', '15:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: CD-8', 'CD-8', 'CHO04', 3, 2),
(5908, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-06-01', '12:45:00', '2023-06-01', '15:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: CD-8', 'CD-8', 'CHO04', 3, 2),
(5909, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-06-08', '12:45:00', '2023-06-08', '15:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: CD-8', 'CD-8', 'CHO04', 3, 2),
(5910, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-06-15', '12:45:00', '2023-06-15', '15:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: CD-8', 'CD-8', 'CHO04', 3, 2),
(5911, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-06-22', '12:45:00', '2023-06-22', '15:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: CD-8', 'CD-8', 'CHO04', 3, 2),
(5912, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-05-18', '15:40:00', '2023-05-18', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5913, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-05-25', '15:40:00', '2023-05-25', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5914, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-01', '15:40:00', '2023-06-01', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5915, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-08', '15:40:00', '2023-06-08', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5916, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-15', '15:40:00', '2023-06-15', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5917, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-22', '15:40:00', '2023-06-22', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5918, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-29', '15:40:00', '2023-06-29', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5919, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-07-06', '15:40:00', '2023-07-06', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5920, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-07-13', '15:40:00', '2023-07-13', '17:25:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-5', 'CD-5', 'CNC10', 2, 3),
(5921, 'DK1 - Điền kinh', '2023-05-19', '09:55:00', '2023-05-19', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5922, 'DK1 - Điền kinh', '2023-05-26', '09:55:00', '2023-05-26', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5923, 'DK1 - Điền kinh', '2023-06-09', '09:55:00', '2023-06-09', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5924, 'DK1 - Điền kinh', '2023-06-16', '09:55:00', '2023-06-16', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5925, 'DK1 - Điền kinh', '2023-06-23', '09:55:00', '2023-06-23', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5926, 'DK1 - Điền kinh', '2023-06-30', '09:55:00', '2023-06-30', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5927, 'DK1 - Điền kinh', '2023-07-07', '09:55:00', '2023-07-07', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5928, 'DK1 - Điền kinh', '2023-07-14', '09:55:00', '2023-07-14', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5929, 'DK1 - Điền kinh', '2023-08-04', '09:55:00', '2023-08-04', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5930, 'DK1 - Điền kinh', '2023-08-11', '09:55:00', '2023-08-11', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5931, 'DK1 - Điền kinh', '2023-08-18', '09:55:00', '2023-08-18', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5932, 'DK1 - Điền kinh', '2023-08-25', '09:55:00', '2023-08-25', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5933, 'DK1 - Điền kinh', '2023-09-01', '09:55:00', '2023-09-01', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5934, 'DK1 - Điền kinh', '2023-09-08', '09:55:00', '2023-09-08', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5935, 'DK1 - Điền kinh', '2023-09-15', '09:55:00', '2023-09-15', '11:40:00', 0, 'Điền kinh - GT01017 - DK1 - Tiet: 4 - 5 - Phong hoc: SAN15', 'SAN15', 'GDT23', 2, 1),
(5936, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-05-20', '07:00:00', '2023-05-20', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5937, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-05-27', '07:00:00', '2023-05-27', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5938, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-10', '07:00:00', '2023-06-10', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5939, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-17', '07:00:00', '2023-06-17', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5940, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-06-24', '07:00:00', '2023-06-24', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5941, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-07-01', '07:00:00', '2023-07-01', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5942, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-07-08', '07:00:00', '2023-07-08', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5943, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 1', '2023-07-15', '07:00:00', '2023-07-15', '09:40:00', 0, 'Kỹ thuật thực phẩm 1 - CP02015 - K65CNTPD, K65CNTPD - Tiet: 1 - 3 - Phong hoc: CD-7', 'CD-7', 'CNC10', 3, 3),
(5944, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-05-20', '12:45:00', '2023-05-20', '15:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C201', 'C201', 'HSC12', 3, 2),
(5945, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-05-27', '12:45:00', '2023-05-27', '15:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C201', 'C201', 'HSC12', 3, 2),
(5946, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-06-10', '12:45:00', '2023-06-10', '15:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C201', 'C201', 'HSC12', 3, 2),
(5947, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-06-17', '12:45:00', '2023-06-17', '15:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C201', 'C201', 'HSC12', 3, 2),
(5948, 'K65CNTPD, K65CNTPD - Hóa sinh thực phẩm', '2023-06-24', '12:45:00', '2023-06-24', '15:25:00', 0, 'Hóa sinh thực phẩm - CP02014 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C201', 'C201', 'HSC12', 3, 2),
(5949, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-05-20', '15:40:00', '2023-05-20', '17:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: C201', 'C201', 'CHO04', 2, 2),
(5950, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-05-27', '15:40:00', '2023-05-27', '17:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: C201', 'C201', 'CHO04', 2, 2),
(5951, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-06-10', '15:40:00', '2023-06-10', '17:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: C201', 'C201', 'CHO04', 2, 2),
(5952, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-06-17', '15:40:00', '2023-06-17', '17:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: C201', 'C201', 'CHO04', 2, 2),
(5953, 'K65CNTPD, K65CNTPD - Vẽ kỹ thuật', '2023-06-24', '15:40:00', '2023-06-24', '17:25:00', 0, 'Vẽ kỹ thuật - CD00006 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: C201', 'C201', 'CHO04', 2, 2),
(5954, 'KN01004, KN01004 - Kỹ năng tìm kiếm việc làm', '2023-06-21', '07:00:00', '2023-06-21', '11:40:00', 0, 'Kỹ năng tìm kiếm việc làm - KN01004 - KN01004, KN01004 - Tiet: 1 - 5 - Phong hoc: E202', 'E202', 'PTN20', 5, 2),
(5955, 'KN01004, KN01004 - Kỹ năng tìm kiếm việc làm', '2023-06-28', '07:00:00', '2023-06-28', '11:40:00', 0, 'Kỹ năng tìm kiếm việc làm - KN01004 - KN01004, KN01004 - Tiet: 1 - 5 - Phong hoc: E202', 'E202', 'PTN20', 5, 2),
(5956, 'KN01004, KN01004 - Kỹ năng tìm kiếm việc làm', '2023-07-05', '07:00:00', '2023-07-05', '11:40:00', 0, 'Kỹ năng tìm kiếm việc làm - KN01004 - KN01004, KN01004 - Tiet: 1 - 5 - Phong hoc: E202', 'E202', 'PTN20', 5, 2),
(5957, 'KN01004, KN01004 - Kỹ năng tìm kiếm việc làm', '2023-08-02', '07:00:00', '2023-08-02', '11:40:00', 0, 'Kỹ năng tìm kiếm việc làm - KN01004 - KN01004, KN01004 - Tiet: 1 - 5 - Phong hoc: E202', 'E202', 'PTN20', 5, 2),
(5958, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-06-27', '12:45:00', '2023-06-27', '15:25:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: A202', 'A202', 'QMT02', 3, 2),
(5959, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-07-04', '12:45:00', '2023-07-04', '15:25:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: A202', 'A202', 'QMT02', 3, 2),
(5960, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-07-11', '12:45:00', '2023-07-11', '15:25:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: A202', 'A202', 'QMT02', 3, 2),
(5961, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-08-01', '12:45:00', '2023-08-01', '15:25:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: A202', 'A202', 'QMT02', 3, 2),
(5962, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-08-08', '12:45:00', '2023-08-08', '15:25:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: A202', 'A202', 'QMT02', 3, 2),
(5963, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-08-15', '12:45:00', '2023-08-15', '15:25:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: A202', 'A202', 'QMT02', 3, 2),
(5964, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-06-27', '15:40:00', '2023-06-27', '17:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-9', 'CD-9', 'NLM10', 2, 2),
(5965, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-07-04', '15:40:00', '2023-07-04', '17:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-9', 'CD-9', 'NLM10', 2, 2),
(5966, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-07-11', '15:40:00', '2023-07-11', '17:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-9', 'CD-9', 'NLM10', 2, 2),
(5967, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-08-01', '15:40:00', '2023-08-01', '17:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-9', 'CD-9', 'NLM10', 2, 2),
(5968, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-08-08', '15:40:00', '2023-08-08', '17:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-9', 'CD-9', 'NLM10', 2, 2),
(5969, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-08-15', '15:40:00', '2023-08-15', '17:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: CD-9', 'CD-9', 'NLM10', 2, 2),
(5970, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-06-29', '12:45:00', '2023-06-29', '15:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: E101', 'E101', 'NLM10', 3, 2),
(5971, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-07-06', '12:45:00', '2023-07-06', '15:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: E101', 'E101', 'NLM10', 3, 2),
(5972, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-07-13', '12:45:00', '2023-07-13', '15:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: E101', 'E101', 'NLM10', 3, 2),
(5973, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-08-03', '12:45:00', '2023-08-03', '15:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: E101', 'E101', 'NLM10', 3, 2),
(5974, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-08-10', '12:45:00', '2023-08-10', '15:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: E101', 'E101', 'NLM10', 3, 2),
(5975, 'K65CNTPD, K65CNTPD - Chủ nghĩa xã hội khoa học', '2023-08-17', '12:45:00', '2023-08-17', '15:25:00', 0, 'Chủ nghĩa xã hội khoa học - ML01022 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: E101', 'E101', 'NLM10', 3, 2),
(5976, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-07-01', '09:55:00', '2023-07-01', '11:40:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 4 - 5 - Phong hoc: E102', 'E102', 'QMT02', 2, 2),
(5977, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-07-08', '09:55:00', '2023-07-08', '11:40:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 4 - 5 - Phong hoc: E102', 'E102', 'QMT02', 2, 2),
(5978, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-07-15', '09:55:00', '2023-07-15', '11:40:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 4 - 5 - Phong hoc: E102', 'E102', 'QMT02', 2, 2),
(5979, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-08-05', '09:55:00', '2023-08-05', '11:40:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 4 - 5 - Phong hoc: E102', 'E102', 'QMT02', 2, 2),
(5980, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-08-12', '09:55:00', '2023-08-12', '11:40:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 4 - 5 - Phong hoc: E102', 'E102', 'QMT02', 2, 2),
(5981, 'K65CNTPD, K65CNTPD - Quản lý môi trường', '2023-08-19', '09:55:00', '2023-08-19', '11:40:00', 0, 'Quản lý môi trường - MT02011 - K65CNTPD, K65CNTPD - Tiet: 4 - 5 - Phong hoc: E102', 'E102', 'QMT02', 2, 2),
(5982, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-07-06', '07:55:00', '2023-07-06', '09:40:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 2 - 3 - Phong hoc: B.301', 'B.301', 'QTP02', 2, 2),
(5983, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-07-13', '07:55:00', '2023-07-13', '09:40:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 2 - 3 - Phong hoc: B.301', 'B.301', 'QTP02', 2, 2),
(5984, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-08-03', '07:55:00', '2023-08-03', '09:40:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 2 - 3 - Phong hoc: B.301', 'B.301', 'QTP02', 2, 2),
(5985, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-08-10', '07:55:00', '2023-08-10', '09:40:00', 1, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 2 - 3 - Phong hoc: B.301', 'B.301', 'QTP02', 2, 2),
(5986, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-08-17', '07:55:00', '2023-08-17', '09:40:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 2 - 3 - Phong hoc: B.301', 'B.301', 'QTP02', 2, 2),
(5987, 'K65CNTPD - Vi sinh vật thực phẩm', '2023-07-07', '12:45:00', '2023-07-07', '15:25:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: A205', 'A205', 'QTP02', 3, 2),
(5988, 'K65CNTPD - Vi sinh vật thực phẩm', '2023-07-14', '12:45:00', '2023-07-14', '15:25:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: A205', 'A205', 'QTP02', 3, 2),
(5989, 'K65CNTPD - Vi sinh vật thực phẩm', '2023-08-04', '12:45:00', '2023-08-04', '15:25:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: A205', 'A205', 'QTP02', 3, 2),
(5990, 'K65CNTPD - Vi sinh vật thực phẩm', '2023-08-11', '12:45:00', '2023-08-11', '15:25:00', 1, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: A205', 'A205', 'QTP02', 3, 2),
(5991, 'K65CNTPD - Vi sinh vật thực phẩm', '2023-08-18', '12:45:00', '2023-08-18', '15:25:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: A205', 'A205', 'QTP02', 3, 2),
(5992, 'KN01006, KN01006 - Kỹ năng hội nhập', '2023-08-09', '07:00:00', '2023-08-09', '11:40:00', 0, 'Kỹ năng hội nhập - KN01006 - KN01006, KN01006 - Tiet: 1 - 5 - Phong hoc: E201', 'E201', 'KNN08', 5, 2),
(5993, 'KN01006, KN01006 - Kỹ năng hội nhập', '2023-08-16', '07:00:00', '2023-08-16', '11:40:00', 0, 'Kỹ năng hội nhập - KN01006 - KN01006, KN01006 - Tiet: 1 - 5 - Phong hoc: E201', 'E201', 'KNN08', 5, 2),
(5994, 'KN01006, KN01006 - Kỹ năng hội nhập', '2023-08-23', '07:00:00', '2023-08-23', '11:40:00', 0, 'Kỹ năng hội nhập - KN01006 - KN01006, KN01006 - Tiet: 1 - 5 - Phong hoc: E201', 'E201', 'KNN08', 5, 2),
(5995, 'KN01006, KN01006 - Kỹ năng hội nhập', '2023-08-30', '07:00:00', '2023-08-30', '11:40:00', 0, 'Kỹ năng hội nhập - KN01006 - KN01006, KN01006 - Tiet: 1 - 5 - Phong hoc: E201', 'E201', 'KNN08', 5, 2),
(5996, 'KN01006, KN01006 - Kỹ năng hội nhập', '2023-09-06', '07:00:00', '2023-09-06', '11:40:00', 0, 'Kỹ năng hội nhập - KN01006 - KN01006, KN01006 - Tiet: 1 - 5 - Phong hoc: E201', 'E201', 'KNN08', 5, 2),
(5997, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-08-22', '12:45:00', '2023-08-22', '15:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.301', 'B.301', 'TBI09', 3, 2),
(5998, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-08-29', '12:45:00', '2023-08-29', '15:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.301', 'B.301', 'TBI09', 3, 2),
(5999, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-05', '12:45:00', '2023-09-05', '15:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.301', 'B.301', 'TBI09', 3, 2),
(6000, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-12', '12:45:00', '2023-09-12', '15:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.301', 'B.301', 'TBI09', 3, 2),
(6001, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-19', '12:45:00', '2023-09-19', '15:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.301', 'B.301', 'TBI09', 3, 2),
(6002, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-26', '12:45:00', '2023-09-26', '15:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.301', 'B.301', 'TBI09', 3, 2),
(6003, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-08-24', '12:45:00', '2023-08-24', '15:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C101', 'C101', 'CNC14', 3, 2),
(6004, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-08-31', '12:45:00', '2023-08-31', '15:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C101', 'C101', 'CNC14', 3, 2),
(6005, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-07', '12:45:00', '2023-09-07', '15:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C101', 'C101', 'CNC14', 3, 2),
(6006, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-14', '12:45:00', '2023-09-14', '15:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C101', 'C101', 'CNC14', 3, 2),
(6007, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-21', '12:45:00', '2023-09-21', '15:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C101', 'C101', 'CNC14', 3, 2),
(6008, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-28', '12:45:00', '2023-09-28', '15:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 6 - 8 - Phong hoc: C101', 'C101', 'CNC14', 3, 2),
(6009, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-08-24', '15:40:00', '2023-08-24', '17:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: B.301', 'B.301', 'TBI09', 2, 2),
(6010, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-08-31', '15:40:00', '2023-08-31', '17:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: B.301', 'B.301', 'TBI09', 2, 2),
(6011, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-07', '15:40:00', '2023-09-07', '17:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: B.301', 'B.301', 'TBI09', 2, 2),
(6012, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-14', '15:40:00', '2023-09-14', '17:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: B.301', 'B.301', 'TBI09', 2, 2),
(6013, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-21', '15:40:00', '2023-09-21', '17:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: B.301', 'B.301', 'TBI09', 2, 2),
(6014, 'K65CNTPD, K65CNTPD - Kỹ thuật nhiệt', '2023-09-28', '15:40:00', '2023-09-28', '17:25:00', 0, 'Kỹ thuật nhiệt - CD02301 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: B.301', 'B.301', 'TBI09', 2, 2),
(6015, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-08-25', '15:40:00', '2023-08-25', '17:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: A205', 'A205', 'CNC14', 2, 2),
(6016, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-01', '15:40:00', '2023-09-01', '17:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: A205', 'A205', 'CNC14', 2, 2),
(6017, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-08', '15:40:00', '2023-09-08', '17:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: A205', 'A205', 'CNC14', 2, 2),
(6018, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-15', '15:40:00', '2023-09-15', '17:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: A205', 'A205', 'CNC14', 2, 2),
(6019, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-22', '15:40:00', '2023-09-22', '17:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: A205', 'A205', 'CNC14', 2, 2),
(6020, 'K65CNTPD, K65CNTPD - Kỹ thuật thực phẩm 2', '2023-09-29', '15:40:00', '2023-09-29', '17:25:00', 0, 'Kỹ thuật thực phẩm 2 - CP02016 - K65CNTPD, K65CNTPD - Tiet: 9 - 10 - Phong hoc: A205', 'A205', 'CNC14', 2, 2),
(6021, 'K65CNTPD - Kỹ thuật thực phẩm 3', '2023-09-01', '12:45:00', '2023-09-01', '15:25:00', 0, 'Kỹ thuật thực phẩm 3 - CP02017 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.209', 'B.209', 'CNC14', 3, 1),
(6022, 'K65CNTPD - Kỹ thuật thực phẩm 3', '2023-09-08', '12:45:00', '2023-09-08', '15:25:00', 0, 'Kỹ thuật thực phẩm 3 - CP02017 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.209', 'B.209', 'CNC14', 3, 1),
(6023, 'K65CNTPD - Kỹ thuật thực phẩm 3', '2023-09-15', '12:45:00', '2023-09-15', '15:25:00', 0, 'Kỹ thuật thực phẩm 3 - CP02017 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.209', 'B.209', 'CNC14', 3, 1),
(6024, 'K65CNTPD - Kỹ thuật thực phẩm 3', '2023-09-22', '12:45:00', '2023-09-22', '15:25:00', 0, 'Kỹ thuật thực phẩm 3 - CP02017 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.209', 'B.209', 'CNC14', 3, 1),
(6025, 'K65CNTPD - Kỹ thuật thực phẩm 3', '2023-09-29', '12:45:00', '2023-09-29', '15:25:00', 0, 'Kỹ thuật thực phẩm 3 - CP02017 - K65CNTPD - Tiet: 6 - 8 - Phong hoc: B.209', 'B.209', 'CNC14', 3, 1),
(6026, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-09-06', '12:45:00', '2023-09-06', '17:25:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 6 - 10 - Phong hoc: THCNTP06', 'THCNTP06', 'null', 5, 2),
(6027, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-09-13', '12:45:00', '2023-09-13', '17:25:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 6 - 10 - Phong hoc: THCNTP06', 'THCNTP06', 'null', 5, 2),
(6028, 'K65CNTPD, K65CNTPD, ... - Vi sinh vật thực phẩm', '2023-09-20', '12:45:00', '2023-09-20', '17:25:00', 0, 'Vi sinh vật thực phẩm - CP03007 - K65CNTPD, K65CNTPD, ... - Tiet: 6 - 10 - Phong hoc: THCNTP06', 'THCNTP06', 'null', 5, 2),
(6029, 'KN01004, KN01004 - Kỹ năng tìm kiếm việc làm', '2023-09-21', '12:45:00', '2023-09-21', '17:25:00', 0, 'Kỹ năng tìm kiếm việc làm - KN01004 - KN01004, KN01004 - Tiet: 6 - 10 - Phong hoc: ND207', 'ND207', 'null', 5, 2),
(6030, 'KN01006, KN01006 - Kỹ năng hội nhập', '2023-09-23', '07:00:00', '2023-09-23', '11:40:00', 0, 'Kỹ năng hội nhập - KN01006 - KN01006, KN01006 - Tiet: 1 - 5 - Phong hoc: ND207', 'ND207', 'null', 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `idName` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `idName`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`, `fullName`) VALUES
(1, 'QTP02', 'quanle2001', 'quanle2001', 'Dai Xuyen, Phu Xuyen, Ha Noi', '0987654321', 'lequan18042001@gmail.com', 'giaovien', 'active', '', 'Le Hong Quan'),
(18, 'GDT23\r\n', 'lequan2001', 'lequan2001', 'phuxuyen hanoi', '0984877553', 'lequan18042001@gmail.com', 'giaovien', 'active', '2023-05-03 23:41:11', 'quan hong le'),
(19, 'admin', 'admin1', 'admin1', 'Viet Nammm', '098764374637', 'aaaa@gmail.com', 'admin', 'active', '2023-05-03 23:44:03', 'ADMIN'),
(20, '', 'hongquan2001', 'hongquan2001', 'aaaaaaaaaaaaaa', '111111111111111111', 'lequan18042001@gmail.com', 'giaovu', 'active', '2023-05-03 23:48:26', ''),
(22, '', 'quanle1804', '5YYNO8EI', 'Hoang Mai Ha Noi', '0984877553', 'lequan18042001@gmail.com', 'giaovien', 'active', '2023-07-08 21:24:20', 'Hong QUan Le');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Structure de la table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(30) NOT NULL,
  `id_presented` varchar(200) NOT NULL,
  `id_no` varchar(200) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `transaction` text NOT NULL,
  `pass_no` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `visitors`
--

INSERT INTO `visitors` (`id`, `id_presented`, `id_no`, `name`, `contact`, `address`, `transaction`, `pass_no`) VALUES
(1, 'Company ID', '6232014', 'John Smith', '+18456-5455-55', 'Sample', 'Sample', 23);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `giaovu`
--
ALTER TABLE `giaovu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kehoachgiangday`
--
ALTER TABLE `kehoachgiangday`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_kehoach`
--
ALTER TABLE `tbl_kehoach`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tbl_lichtheotiendo`
--
ALTER TABLE `tbl_lichtheotiendo`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_thoikhoabieu`
--
ALTER TABLE `tbl_thoikhoabieu`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `giaovu`
--
ALTER TABLE `giaovu`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `hocky`
--
ALTER TABLE `hocky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `hocphan`
--
ALTER TABLE `hocphan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `kehoachgiangday`
--
ALTER TABLE `kehoachgiangday`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `nganh`
--
ALTER TABLE `nganh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `tbl_kehoach`
--
ALTER TABLE `tbl_kehoach`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tbl_lichtheotiendo`
--
ALTER TABLE `tbl_lichtheotiendo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT pour la table `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `tbl_thoikhoabieu`
--
ALTER TABLE `tbl_thoikhoabieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6031;

--
-- AUTO_INCREMENT pour la table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
