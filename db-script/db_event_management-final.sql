-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2023 lúc 02:07 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_event_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `faculty`
--

INSERT INTO `faculty` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(1, '789', 'Faculty 1', 'Sample', 123456789);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaovien`
--

INSERT INTO `giaovien` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(3, '1', 'Giao Vien 1', 'Hà Nộik', 11111);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovu`
--

CREATE TABLE `giaovu` (
  `id` int(30) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaovu`
--

INSERT INTO `giaovu` (`id`, `id_no`, `name`, `address`, `contact`) VALUES
(1, '1', 'Giáo Vụ 11', 'Ha Noi', 11111),
(2, '2', 'Giáo Vụ 2', 'Ha Noi', 11112);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocky`
--

CREATE TABLE `hocky` (
  `id` int(11) NOT NULL,
  `maHocKy` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenHocKy` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocky`
--

INSERT INTO `hocky` (`id`, `maHocKy`, `tenHocKy`, `dateStart`, `dateEnd`) VALUES
(1, '11', 'Kì I 2022-2023', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocphan`
--

CREATE TABLE `hocphan` (
  `id` int(11) NOT NULL,
  `maHocPhan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenHocPhan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `soTinChi` int(11) NOT NULL,
  `tenGiangVien` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hocphan`
--

INSERT INTO `hocphan` (`id`, `maHocPhan`, `tenHocPhan`, `soTinChi`, `tenGiangVien`) VALUES
(4, 'CP02014', 'Hóa sinh thực phẩm', 2, 'Le Hong Quan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kehoachgiangday`
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
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id` int(11) NOT NULL,
  `maKhoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenKhoa` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`id`, `maKhoa`, `tenKhoa`) VALUES
(1, 'CNTT', 'Khoa Công Nghệ Thông'),
(2, 'DPT', 'Truyền Thông Đa Phươ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(30) NOT NULL,
  `type` varchar(100) NOT NULL,
  `frm_id` int(30) NOT NULL,
  `log_type` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `logs`
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
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` int(11) NOT NULL,
  `idMaLop` text COLLATE utf8_unicode_ci NOT NULL,
  `tenLop` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `siSo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`id`, `idMaLop`, `tenLop`, `siSo`) VALUES
(6, 'K65CNTPD', 'Công nghệ thực phẩm', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `id` int(11) NOT NULL,
  `maNganh` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tenNganh` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_settings`
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
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'School Log Management System', 'info@sample.comm', '+6948 8542 623', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_frontdesk_users`
--

CREATE TABLE `tbl_frontdesk_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `reason`, `bdate`) VALUES
(5, '2023-05-05', 'aaaaaaaaaaaaa', '2023-05-02 22:42:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_kehoach`
--

CREATE TABLE `tbl_kehoach` (
  `ID` int(11) NOT NULL,
  `Khoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HocKy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Lop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenMon` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_kehoach`
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
-- Cấu trúc bảng cho bảng `tbl_lichtheotiendo`
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
-- Đang đổ dữ liệu cho bảng `tbl_lichtheotiendo`
--

INSERT INTO `tbl_lichtheotiendo` (`ID`, `maMH`, `tenMH`, `soTinChi`, `maLop`, `soTCHP`, `thu`, `tietBD`, `soTiet`, `phong`, `CBGD`, `tuan`) VALUES
(241, 'null', 'Tiếng Anh GE1 - 523100B1', 6, '523100B', 6, 'Hai', 1, 2, '502', 'NTT01', '123456789012345'),
(242, 'null', 'Tiếng Anh GE1 - 523100B2', 6, '523100B', 6, 'Hai', 1, 2, '505', 'LTKA01', '123456789012345'),
(243, 'null', 'Triết học', 3, '523100B', 3, 'Hai', 3, 3, '405', 'NTT02', '123456789012345'),
(244, 'null', 'Tiếng Anh GE1 - 523100B1', 6, '523100B', 6, 'Tư', 1, 2, '502', 'NTT01', '123456789012345'),
(245, 'null', 'Tiếng Anh GE1 - 523100B2', 6, '523100B', 6, 'Tư', 1, 2, '505', 'LTKA01', '123456789012345'),
(246, 'null', 'Nhập môn Công nghệ thông tin', 3, '523100B', 3, 'Tư', 3, 3, 'HTL2', ' TTN01', '123456789012345'),
(247, 'null', 'Kiến trúc máy tính', 2, '523100B', 2, 'Năm', 4, 2, '306', 'CHH01', '123456789012345'),
(248, 'null', 'Tiếng Anh GE1 - 523100B1', 6, '523100B', 6, 'Sáu ', 1, 2, '502', 'NTT01', '123456789012345'),
(249, 'null', 'Tiếng Anh GE1 - 523100B2', 6, '523100B', 6, 'Sáu ', 1, 2, '505', 'LTKA01', '123456789012345'),
(250, 'null', 'Toán A1', 3, '523100B', 3, 'Sáu ', 3, 3, 'HTL1', 'NTTH01', '123456789012345'),
(251, 'null', 'Tiếng Anh GE1 - 523100C1', 6, '523100C', 6, 'Hai', 3, 3, '502', 'NTT01', '123456789012345'),
(252, 'null', 'Tiếng Anh GE1 - 523100C2', 6, '523100C', 6, 'Hai', 3, 3, '505', 'LTKA01', '123456789012345'),
(253, 'null', 'Triết học', 3, '523100C', 3, 'Ba', 3, 3, 'HTL2', 'NTT02', '123456789012345'),
(254, 'null', 'Nhập môn Công nghệ thông tin', 3, '523100C', 3, 'Tư', 1, 2, 'HTL2', ' TTN01', '123456789012345'),
(255, 'null', 'Kiến trúc máy tính', 2, '523100C', 2, 'Năm', 2, 2, '306', 'BTT01', '123456789012345'),
(256, 'null', 'Toán A1', 3, '523100C', 3, 'Sáu ', 1, 2, 'HTL1', 'NTTH01', '123456789012345'),
(257, 'null', 'Tiếng Anh GE1 - 523100C1', 6, '523100C', 6, 'Sáu ', 3, 3, '502', 'NTT01', '123456789012345'),
(258, 'null', 'Tiếng Anh GE1 - 523100C2', 6, '523100C', 6, 'Sáu ', 3, 3, '505', 'LTKA01', '123456789012345'),
(259, 'null', 'Tiếng Anh GE1 - 523107A1', 6, '523107A', 6, 'Hai', 8, 3, '506', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(260, 'null', 'Tiếng Anh GE1 - 523107A2', 6, '523107A', 6, 'Hai', 8, 3, '507', 'HTT01', '123456789012345'),
(261, 'null', 'Triết học', 3, '523107A', 3, 'Tư', 6, 3, '503', 'PGS.TS.GVCC. Đoàn Qu', '123456789012345'),
(262, 'null', 'Nhập môn Công nghệ thông tin', 3, '523107A', 3, 'Năm', 6, 2, '503', ' TTN01', '123456789012345'),
(263, 'null', 'Pháp luật đại cương', 2, '523107A', 2, 'Năm', 8, 2, '503', 'Ths. Nguyễn Hữu Đạt', '123456789012345'),
(264, 'null', 'Toán A1', 3, '523107A', 3, 'Sáu ', 6, 2, '306', 'DTH01', '123456789012345'),
(265, 'null', 'Tiếng Anh GE1 - 523107A1', 6, '523107A', 6, 'Sáu ', 8, 3, '506', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(266, 'null', 'Tiếng Anh GE1 - 523107A2', 6, '523107A', 6, 'Sáu ', 8, 3, '507', 'HTT01', '123456789012345'),
(267, 'null', 'Tiếng Anh GE1 - 523107B1', 6, '523107B', 6, 'Hai', 6, 2, '506', 'LTKA01', '123456789012345'),
(268, 'null', 'Tiếng Anh GE1 - 523107B2', 6, '523107B', 6, 'Hai', 6, 2, '507', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(269, 'null', 'Triết học', 3, '523107B', 3, 'Hai', 8, 3, '306', 'Ths:Nguyễn Thị Toan', '123456789012345'),
(270, 'null', 'Tiếng Anh GE1 - 523107B1', 6, '523107B', 6, 'Tư', 6, 2, '506', 'LTKA01', '123456789012345'),
(271, 'null', 'Tiếng Anh GE1 - 523107B2', 6, '523107B', 6, 'Tư', 6, 2, '507', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(272, 'null', 'Toán A1', 3, '523107B', 3, 'Tư', 8, 3, '306', 'DTH01', '123456789012345'),
(273, 'null', 'Pháp luật đại cương', 2, '523107B', 2, 'Năm', 6, 2, '306', 'Ths. Nguyễn Hữu Đạt', '123456789012345'),
(274, 'null', 'Nhập môn Công nghệ thông tin', 3, '523107B', 3, 'Năm', 8, 3, '306', ' TTN01', '123456789012345'),
(275, 'null', 'Tiếng Anh GE1 - 523107B1', 6, '523107B', 6, 'Sáu ', 6, 2, '506', 'LTKA01', '123456789012345'),
(276, 'null', 'Tiếng Anh GE1 - 523107C1', 6, '523107C', 6, 'Hai', 1, 3, '203', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(277, 'null', 'Tiếng Anh GE1 - 523107C2', 6, '523107C', 6, 'Hai', 1, 3, '204', 'Cô Trần Minh Châu', '123456789012345'),
(278, 'null', 'Triết học', 3, '523107C', 3, 'Hai', 4, 2, '406', 'PGS.TS.GVCC. Đoàn Qu', '123456789012345'),
(279, 'null', 'Toán A1', 3, '523107C', 3, 'Tư', 1, 3, '405', 'NTTH01', '123456789012345'),
(280, 'null', 'Triết học', 3, '523107C', 3, 'Tư', 4, 2, '405', 'PGS.TS.GVCC. Đoàn Qu', '123456789012345'),
(281, 'null', 'Nhập môn Công nghệ thông tin', 3, '523107C', 3, 'Năm', 1, 3, 'HTL1', ' TTN01', '123456789012345'),
(282, 'null', 'Pháp luật đại cương', 2, '523107C', 2, 'Năm', 4, 2, 'HTL1', 'Ths. Nguyễn Hữu Đạt', '123456789012345'),
(283, 'null', 'Tiếng Anh GE1 - 523107C1', 6, '523107C', 6, 'Sáu ', 1, 3, '203', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(284, 'null', 'Tiếng Anh GE1 - 523107C2', 6, '523107C', 6, 'Sáu ', 1, 3, '204', 'Cô Trần Minh Châu', '123456789012345'),
(285, 'null', 'Tiếng Anh GE1 - 523108A1', 6, '523108A', 6, 'Hai', 1, 2, '506', 'BTHY01', '123456789012345'),
(286, 'null', 'Tiếng Anh GE1 - 523108A2', 6, '523108A', 6, 'Hai', 1, 2, '507', 'HTT01', '123456789012345'),
(287, 'null', 'Toán A1', 3, '523108A', 3, 'Hai', 3, 3, '306', 'NTTH01', '123456789012345'),
(288, 'null', 'Pháp luật đại cương', 2, '523108A', 2, 'Ba', 2, 2, '306', 'TS. Nguyễn T Tố Uyên', '123456789012345'),
(289, 'null', 'Mạng máy tính', 2, '523108A', 2, 'Ba', 4, 2, '306', 'Cô Lê Thị Minh Thuỳ', '123456789012345'),
(290, 'null', 'Tiếng Anh GE1 - 523108A1', 6, '523108A', 6, 'Tư', 2, 2, '506', 'BTHY01', '123456789012345'),
(291, 'null', 'Tiếng Anh GE1 - 523108A2', 6, '523108A', 6, 'Tư', 2, 2, '507', 'HTT01', '123456789012345'),
(292, 'null', 'Nhập môn Thương mại điện tử', 2, '523108A', 2, 'Tư', 4, 2, 'HTL1', 'Cô Vũ Thị Thương', '123456789012345'),
(293, 'null', 'Tiếng Anh GE1 - 523108A1', 6, '523108A', 6, 'Sáu ', 1, 2, '506', 'BTHY01', '123456789012345'),
(294, 'null', 'Tiếng Anh GE1 - 523108A2', 6, '523108A', 6, 'Sáu ', 1, 2, '507', 'HTT01', '123456789012345'),
(295, 'null', 'Triết học', 3, '523108A', 3, 'Sáu ', 3, 3, '306', 'TS.Đỗ Thu Hường', '123456789012345'),
(296, 'null', 'Toán A1', 3, '523108B', 3, 'Hai', 1, 2, '306', 'NTTH01', '123456789012345'),
(297, 'null', 'Tiếng Anh GE1 - 523108B1', 6, '523108B', 6, 'Hai', 3, 3, '506', 'BTHY01', '123456789012345'),
(298, 'null', 'Tiếng Anh GE1 - 523108B2', 6, '523108B', 6, 'Hai', 3, 3, '507', 'HTT01', '123456789012345'),
(299, 'null', 'Triết học', 3, '523108B', 3, 'Ba', 2, 2, 'HTL1', 'TS.Đỗ Thu Hường', '-------89012345678'),
(300, 'null', 'Pháp luật đại cương', 2, '523108B', 2, 'Ba', 4, 2, 'HTL1', 'TS. Nguyễn T Tố Uyên', '123456789012345'),
(301, 'null', 'Nhập môn Thương mại điện tử', 2, '523108B', 2, 'Tư', 2, 2, '306', 'Cô Vũ Thị Thương', '123456789012345'),
(302, 'null', 'Mạng máy tính', 2, '523108B', 2, 'Tư', 4, 2, '306', 'Cô Dương Thị Bình', '123456789012345'),
(303, 'null', 'Triết học', 3, '523108B', 3, 'Sáu ', 1, 2, '306', 'Ban Mac-Lênin', '-------89012345678'),
(304, 'null', 'Tiếng Anh GE1 - 523108B1', 6, '523108B', 6, 'Sáu ', 3, 3, '506', 'BTHY01', '123456789012345'),
(305, 'null', 'Tiếng Anh GE1 - 523108B2', 6, '523108B', 6, 'Sáu ', 3, 3, '507', 'HTT01', '123456789012345'),
(306, 'null', 'Tiếng Anh GE1 - 523108C1', 6, '523108C', 6, 'Hai', 6, 2, '502', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(307, 'null', 'Tiếng Anh GE1 - 523108C2', 6, '523108C', 6, 'Hai', 6, 2, '505', 'Cô Nguyễn Thị Hồng H', '123456789012345'),
(308, 'null', 'Mạng máy tính', 2, '523108C', 2, 'Hai', 8, 2, 'HTL1', 'Cô Dương Thị Bình', '123456789012345'),
(309, 'null', 'Tiếng Anh GE1 - 523108C1', 6, '523108C', 6, 'Tư', 6, 2, '502', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(310, 'null', 'Tiếng Anh GE1 - 523108C2', 6, '523108C', 6, 'Tư', 6, 2, '505', 'Cô Nguyễn Thị Hồng H', '123456789012345'),
(311, 'null', 'Toán A1', 3, '523108C', 3, 'Tư', 8, 2, 'HTL1', 'NTTH01', '123456789012345'),
(312, 'null', 'Nhập môn Thương mại điện tử', 2, '523108C', 2, 'Năm', 6, 2, 'HTL1', 'Cô Vũ Thị Thương', '123456789012345'),
(313, 'null', 'Triết học', 3, '523108C', 3, 'Năm', 8, 2, 'HTL1', 'TS. Kiều Thị Hồng Nh', '123456789012345'),
(314, 'null', 'Pháp luật đại cương', 2, '523108C', 2, 'Sáu ', 6, 2, 'HTL1', 'Ths. Nguyễn Thị Huệ', '123456789012345'),
(315, 'null', 'Tiếng Anh GE1 - 523108C1', 6, '523108C', 6, 'Sáu ', 8, 2, '502', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(316, 'null', 'Tiếng Anh GE1 - 523108C2', 6, '523108C', 6, 'Sáu ', 8, 2, '505', 'LTKA01', '123456789012345'),
(317, 'null', 'Mạng máy tính', 2, '523108D', 2, 'Hai', 6, 2, 'HTL1', 'Cô Dương Thị Bình', '123456789012345'),
(318, 'null', 'Tiếng Anh GE1 - 523108D1', 6, '523108D', 6, 'Hai', 8, 2, '502', 'Nguyễn Thanh Xuân', '123456789012345'),
(319, 'null', 'Tiếng Anh GE1 - 523108D2', 6, '523108D', 6, 'Hai', 8, 2, '505', 'Nguyễn Thị Hồng Hà', '123456789012345'),
(320, 'null', 'Triết học', 3, '523108D', 3, 'Ba', 6, 2, 'HTL1', 'TS. Kiều Thị Hồng Nh', '123456789012345'),
(321, 'null', 'Toán A1', 3, '523108D', 3, 'Tư', 6, 2, 'HTL1', 'NTTH01', '123456789012345'),
(322, 'null', 'Tiếng Anh GE1 - 523108D1', 6, '523108D', 6, 'Tư', 8, 3, '502', 'Nguyễn Thanh Xuân', '123456789012345'),
(323, 'null', 'Tiếng Anh GE1 - 523108D2', 6, '523108D', 6, 'Tư', 8, 3, '505', 'Nguyễn Thị Hồng Hà', '123456789012345'),
(324, 'null', 'Triết học', 3, '523108D', 3, 'Năm', 6, 2, 'HTL2', 'TS. Kiều Thị Hồng Nh', '123456789012345'),
(325, 'null', 'Nhập môn Thương mại điện tử', 2, '523108D', 2, 'Năm', 8, 2, 'HTL2', 'Cô Vũ Thị Thương', '123456789012345'),
(326, 'null', 'Pháp luật đại cương', 2, '523108D', 2, 'Sáu ', 8, 2, 'HTL1', 'Ths. Nguyễn Thị Huệ', '123456789012345'),
(327, 'null', 'Tiếng Anh GE1 - 523100B1', 6, '523100B', 6, 'Hai', 1, 2, '502', 'NTT01', '123456789012345'),
(328, 'null', 'Tiếng Anh GE1 - 523100B2', 6, '523100B', 6, 'Hai', 1, 2, '505', 'LTKA01', '123456789012345'),
(329, 'null', 'Triết học', 3, '523100B', 3, 'Hai', 3, 3, '405', 'NTT02', '123456789012345'),
(330, 'null', 'Tiếng Anh GE1 - 523100B1', 6, '523100B', 6, 'Tư', 1, 2, '502', 'NTT01', '123456789012345'),
(331, 'null', 'Tiếng Anh GE1 - 523100B2', 6, '523100B', 6, 'Tư', 1, 2, '505', 'LTKA01', '123456789012345'),
(332, 'null', 'Nhập môn Công nghệ thông tin', 3, '523100B', 3, 'Tư', 3, 3, 'HTL2', ' TTN01', '123456789012345'),
(333, 'null', 'Kiến trúc máy tính', 2, '523100B', 2, 'Năm', 4, 2, '306', 'CHH01', '123456789012345'),
(334, 'null', 'Tiếng Anh GE1 - 523100B1', 6, '523100B', 6, 'Sáu ', 1, 2, '502', 'NTT01', '123456789012345'),
(335, 'null', 'Tiếng Anh GE1 - 523100B2', 6, '523100B', 6, 'Sáu ', 1, 2, '505', 'LTKA01', '123456789012345'),
(336, 'null', 'Toán A1', 3, '523100B', 3, 'Sáu ', 3, 3, 'HTL1', 'NTTH01', '123456789012345'),
(337, 'null', 'Tiếng Anh GE1 - 523100C1', 6, '523100C', 6, 'Hai', 3, 3, '502', 'NTT01', '123456789012345'),
(338, 'null', 'Tiếng Anh GE1 - 523100C2', 6, '523100C', 6, 'Hai', 3, 3, '505', 'LTKA01', '123456789012345'),
(339, 'null', 'Triết học', 3, '523100C', 3, 'Ba', 3, 3, 'HTL2', 'NTT02', '123456789012345'),
(340, 'null', 'Nhập môn Công nghệ thông tin', 3, '523100C', 3, 'Tư', 1, 2, 'HTL2', ' TTN01', '123456789012345'),
(341, 'null', 'Kiến trúc máy tính', 2, '523100C', 2, 'Năm', 2, 2, '306', 'BTT01', '123456789012345'),
(342, 'null', 'Toán A1', 3, '523100C', 3, 'Sáu ', 1, 2, 'HTL1', 'NTTH01', '123456789012345'),
(343, 'null', 'Tiếng Anh GE1 - 523100C1', 6, '523100C', 6, 'Sáu ', 3, 3, '502', 'NTT01', '123456789012345'),
(344, 'null', 'Tiếng Anh GE1 - 523100C2', 6, '523100C', 6, 'Sáu ', 3, 3, '505', 'LTKA01', '123456789012345'),
(345, 'null', 'Tiếng Anh GE1 - 523107A1', 6, '523107A', 6, 'Hai', 8, 3, '506', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(346, 'null', 'Tiếng Anh GE1 - 523107A2', 6, '523107A', 6, 'Hai', 8, 3, '507', 'HTT01', '123456789012345'),
(347, 'null', 'Triết học', 3, '523107A', 3, 'Tư', 6, 3, '503', 'PGS.TS.GVCC. Đoàn Qu', '123456789012345'),
(348, 'null', 'Nhập môn Công nghệ thông tin', 3, '523107A', 3, 'Năm', 6, 2, '503', ' TTN01', '123456789012345'),
(349, 'null', 'Pháp luật đại cương', 2, '523107A', 2, 'Năm', 8, 2, '503', 'Ths. Nguyễn Hữu Đạt', '123456789012345'),
(350, 'null', 'Toán A1', 3, '523107A', 3, 'Sáu ', 6, 2, '306', 'DTH01', '123456789012345'),
(351, 'null', 'Tiếng Anh GE1 - 523107A1', 6, '523107A', 6, 'Sáu ', 8, 3, '506', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(352, 'null', 'Tiếng Anh GE1 - 523107A2', 6, '523107A', 6, 'Sáu ', 8, 3, '507', 'HTT01', '123456789012345'),
(353, 'null', 'Tiếng Anh GE1 - 523107B1', 6, '523107B', 6, 'Hai', 6, 2, '506', 'LTKA01', '123456789012345'),
(354, 'null', 'Tiếng Anh GE1 - 523107B2', 6, '523107B', 6, 'Hai', 6, 2, '507', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(355, 'null', 'Triết học', 3, '523107B', 3, 'Hai', 8, 3, '306', 'Ths:Nguyễn Thị Toan', '123456789012345'),
(356, 'null', 'Tiếng Anh GE1 - 523107B1', 6, '523107B', 6, 'Tư', 6, 2, '506', 'LTKA01', '123456789012345'),
(357, 'null', 'Tiếng Anh GE1 - 523107B2', 6, '523107B', 6, 'Tư', 6, 2, '507', 'Cô Trần Thị Thu Hườn', '123456789012345'),
(358, 'null', 'Toán A1', 3, '523107B', 3, 'Tư', 8, 3, '306', 'DTH01', '123456789012345'),
(359, 'null', 'Pháp luật đại cương', 2, '523107B', 2, 'Năm', 6, 2, '306', 'Ths. Nguyễn Hữu Đạt', '123456789012345'),
(360, 'null', 'Nhập môn Công nghệ thông tin', 3, '523107B', 3, 'Năm', 8, 3, '306', ' TTN01', '123456789012345'),
(361, 'null', 'Tiếng Anh GE1 - 523107B1', 6, '523107B', 6, 'Sáu ', 6, 2, '506', 'LTKA01', '123456789012345'),
(362, 'null', 'Tiếng Anh GE1 - 523107C1', 6, '523107C', 6, 'Hai', 1, 3, '203', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(363, 'null', 'Tiếng Anh GE1 - 523107C2', 6, '523107C', 6, 'Hai', 1, 3, '204', 'Cô Trần Minh Châu', '123456789012345'),
(364, 'null', 'Triết học', 3, '523107C', 3, 'Hai', 4, 2, '406', 'PGS.TS.GVCC. Đoàn Qu', '123456789012345'),
(365, 'null', 'Toán A1', 3, '523107C', 3, 'Tư', 1, 3, '405', 'NTTH01', '123456789012345'),
(366, 'null', 'Triết học', 3, '523107C', 3, 'Tư', 4, 2, '405', 'PGS.TS.GVCC. Đoàn Qu', '123456789012345'),
(367, 'null', 'Nhập môn Công nghệ thông tin', 3, '523107C', 3, 'Năm', 1, 3, 'HTL1', ' TTN01', '123456789012345'),
(368, 'null', 'Pháp luật đại cương', 2, '523107C', 2, 'Năm', 4, 2, 'HTL1', 'Ths. Nguyễn Hữu Đạt', '123456789012345'),
(369, 'null', 'Tiếng Anh GE1 - 523107C1', 6, '523107C', 6, 'Sáu ', 1, 3, '203', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(370, 'null', 'Tiếng Anh GE1 - 523107C2', 6, '523107C', 6, 'Sáu ', 1, 3, '204', 'Cô Trần Minh Châu', '123456789012345'),
(371, 'null', 'Tiếng Anh GE1 - 523108A1', 6, '523108A', 6, 'Hai', 1, 2, '506', 'BTHY01', '123456789012345'),
(372, 'null', 'Tiếng Anh GE1 - 523108A2', 6, '523108A', 6, 'Hai', 1, 2, '507', 'HTT01', '123456789012345'),
(373, 'null', 'Toán A1', 3, '523108A', 3, 'Hai', 3, 3, '306', 'NTTH01', '123456789012345'),
(374, 'null', 'Pháp luật đại cương', 2, '523108A', 2, 'Ba', 2, 2, '306', 'TS. Nguyễn T Tố Uyên', '123456789012345'),
(375, 'null', 'Mạng máy tính', 2, '523108A', 2, 'Ba', 4, 2, '306', 'Cô Lê Thị Minh Thuỳ', '123456789012345'),
(376, 'null', 'Tiếng Anh GE1 - 523108A1', 6, '523108A', 6, 'Tư', 2, 2, '506', 'BTHY01', '123456789012345'),
(377, 'null', 'Tiếng Anh GE1 - 523108A2', 6, '523108A', 6, 'Tư', 2, 2, '507', 'HTT01', '123456789012345'),
(378, 'null', 'Nhập môn Thương mại điện tử', 2, '523108A', 2, 'Tư', 4, 2, 'HTL1', 'Cô Vũ Thị Thương', '123456789012345'),
(379, 'null', 'Tiếng Anh GE1 - 523108A1', 6, '523108A', 6, 'Sáu ', 1, 2, '506', 'BTHY01', '123456789012345'),
(380, 'null', 'Tiếng Anh GE1 - 523108A2', 6, '523108A', 6, 'Sáu ', 1, 2, '507', 'HTT01', '123456789012345'),
(381, 'null', 'Triết học', 3, '523108A', 3, 'Sáu ', 3, 3, '306', 'TS.Đỗ Thu Hường', '123456789012345'),
(382, 'null', 'Toán A1', 3, '523108B', 3, 'Hai', 1, 2, '306', 'NTTH01', '123456789012345'),
(383, 'null', 'Tiếng Anh GE1 - 523108B1', 6, '523108B', 6, 'Hai', 3, 3, '506', 'BTHY01', '123456789012345'),
(384, 'null', 'Tiếng Anh GE1 - 523108B2', 6, '523108B', 6, 'Hai', 3, 3, '507', 'HTT01', '123456789012345'),
(385, 'null', 'Triết học', 3, '523108B', 3, 'Ba', 2, 2, 'HTL1', 'TS.Đỗ Thu Hường', '-------89012345678'),
(386, 'null', 'Pháp luật đại cương', 2, '523108B', 2, 'Ba', 4, 2, 'HTL1', 'TS. Nguyễn T Tố Uyên', '123456789012345'),
(387, 'null', 'Nhập môn Thương mại điện tử', 2, '523108B', 2, 'Tư', 2, 2, '306', 'Cô Vũ Thị Thương', '123456789012345'),
(388, 'null', 'Mạng máy tính', 2, '523108B', 2, 'Tư', 4, 2, '306', 'Cô Dương Thị Bình', '123456789012345'),
(389, 'null', 'Triết học', 3, '523108B', 3, 'Sáu ', 1, 2, '306', 'Ban Mac-Lênin', '-------89012345678'),
(390, 'null', 'Tiếng Anh GE1 - 523108B1', 6, '523108B', 6, 'Sáu ', 3, 3, '506', 'BTHY01', '123456789012345'),
(391, 'null', 'Tiếng Anh GE1 - 523108B2', 6, '523108B', 6, 'Sáu ', 3, 3, '507', 'HTT01', '123456789012345'),
(392, 'null', 'Tiếng Anh GE1 - 523108C1', 6, '523108C', 6, 'Hai', 6, 2, '502', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(393, 'null', 'Tiếng Anh GE1 - 523108C2', 6, '523108C', 6, 'Hai', 6, 2, '505', 'Cô Nguyễn Thị Hồng H', '123456789012345'),
(394, 'null', 'Mạng máy tính', 2, '523108C', 2, 'Hai', 8, 2, 'HTL1', 'Cô Dương Thị Bình', '123456789012345'),
(395, 'null', 'Tiếng Anh GE1 - 523108C1', 6, '523108C', 6, 'Tư', 6, 2, '502', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(396, 'null', 'Tiếng Anh GE1 - 523108C2', 6, '523108C', 6, 'Tư', 6, 2, '505', 'Cô Nguyễn Thị Hồng H', '123456789012345'),
(397, 'null', 'Toán A1', 3, '523108C', 3, 'Tư', 8, 2, 'HTL1', 'NTTH01', '123456789012345'),
(398, 'null', 'Nhập môn Thương mại điện tử', 2, '523108C', 2, 'Năm', 6, 2, 'HTL1', 'Cô Vũ Thị Thương', '123456789012345'),
(399, 'null', 'Triết học', 3, '523108C', 3, 'Năm', 8, 2, 'HTL1', 'TS. Kiều Thị Hồng Nh', '123456789012345'),
(400, 'null', 'Pháp luật đại cương', 2, '523108C', 2, 'Sáu ', 6, 2, 'HTL1', 'Ths. Nguyễn Thị Huệ', '123456789012345'),
(401, 'null', 'Tiếng Anh GE1 - 523108C1', 6, '523108C', 6, 'Sáu ', 8, 2, '502', 'Cô Nguyễn Thanh Xuân', '123456789012345'),
(402, 'null', 'Tiếng Anh GE1 - 523108C2', 6, '523108C', 6, 'Sáu ', 8, 2, '505', 'LTKA01', '123456789012345'),
(403, 'null', 'Mạng máy tính', 2, '523108D', 2, 'Hai', 6, 2, 'HTL1', 'Cô Dương Thị Bình', '123456789012345'),
(404, 'null', 'Tiếng Anh GE1 - 523108D1', 6, '523108D', 6, 'Hai', 8, 2, '502', 'Nguyễn Thanh Xuân', '123456789012345'),
(405, 'null', 'Tiếng Anh GE1 - 523108D2', 6, '523108D', 6, 'Hai', 8, 2, '505', 'Nguyễn Thị Hồng Hà', '123456789012345'),
(406, 'null', 'Triết học', 3, '523108D', 3, 'Ba', 6, 2, 'HTL1', 'TS. Kiều Thị Hồng Nh', '123456789012345'),
(407, 'null', 'Toán A1', 3, '523108D', 3, 'Tư', 6, 2, 'HTL1', 'NTTH01', '123456789012345'),
(408, 'null', 'Tiếng Anh GE1 - 523108D1', 6, '523108D', 6, 'Tư', 8, 3, '502', 'Nguyễn Thanh Xuân', '123456789012345'),
(409, 'null', 'Tiếng Anh GE1 - 523108D2', 6, '523108D', 6, 'Tư', 8, 3, '505', 'Nguyễn Thị Hồng Hà', '123456789012345'),
(410, 'null', 'Triết học', 3, '523108D', 3, 'Năm', 6, 2, 'HTL2', 'TS. Kiều Thị Hồng Nh', '123456789012345'),
(411, 'null', 'Nhập môn Thương mại điện tử', 2, '523108D', 2, 'Năm', 8, 2, 'HTL2', 'Cô Vũ Thị Thương', '123456789012345'),
(412, 'null', 'Pháp luật đại cương', 2, '523108D', 2, 'Sáu ', 8, 2, 'HTL1', 'Ths. Nguyễn Thị Huệ', '123456789012345');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_reservations`
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
-- Đang đổ dữ liệu cho bảng `tbl_reservations`
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
-- Cấu trúc bảng cho bảng `tbl_thoikhoabieu`
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
  `soTinChi` int(11) NOT NULL,
  `idMaLop` int(11) NOT NULL,
  `noiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `siSo` int(11) NOT NULL,
  `nhanXet` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thoikhoabieu`
--

INSERT INTO `tbl_thoikhoabieu` (`ID`, `Subject`, `startDate`, `startTime`, `endDate`, `endTime`, `Event`, `Description`, `Location`, `CBGD`, `soTiet`, `soTinChi`, `idMaLop`, `noiDung`, `siSo`, `nhanXet`) VALUES
(6031, '523100B - Tiếng Anh GE1 - 523100B1', '2023-09-18', '07:00:00', '2023-09-18', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6032, '523100B - Tiếng Anh GE1 - 523100B1', '2023-09-25', '07:00:00', '2023-09-25', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6033, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-02', '07:00:00', '2023-10-02', '08:45:00', 1, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6034, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-09', '07:00:00', '2023-10-09', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6035, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-16', '07:00:00', '2023-10-16', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6036, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-23', '07:00:00', '2023-10-23', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6037, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-30', '07:00:00', '2023-10-30', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6038, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-06', '07:00:00', '2023-11-06', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6039, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-13', '07:00:00', '2023-11-13', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6040, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-20', '07:00:00', '2023-11-20', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6041, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-27', '07:00:00', '2023-11-27', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6042, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-04', '07:00:00', '2023-12-04', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6043, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-11', '07:00:00', '2023-12-11', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6044, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-18', '07:00:00', '2023-12-18', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6045, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-25', '07:00:00', '2023-12-25', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6046, '523100B - Tiếng Anh GE1 - 523100B2', '2023-09-18', '07:00:00', '2023-09-18', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6047, '523100B - Tiếng Anh GE1 - 523100B2', '2023-09-25', '07:00:00', '2023-09-25', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6048, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-02', '07:00:00', '2023-10-02', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6049, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-09', '07:00:00', '2023-10-09', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6050, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-16', '07:00:00', '2023-10-16', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6051, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-23', '07:00:00', '2023-10-23', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6052, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-30', '07:00:00', '2023-10-30', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6053, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-06', '07:00:00', '2023-11-06', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6054, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-13', '07:00:00', '2023-11-13', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6055, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-20', '07:00:00', '2023-11-20', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6056, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-27', '07:00:00', '2023-11-27', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6057, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-04', '07:00:00', '2023-12-04', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6058, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-11', '07:00:00', '2023-12-11', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6059, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-18', '07:00:00', '2023-12-18', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6060, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-25', '07:00:00', '2023-12-25', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6061, '523100B - Triết học', '2023-09-18', '08:50:00', '2023-09-18', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6062, '523100B - Triết học', '2023-09-25', '08:50:00', '2023-09-25', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6063, '523100B - Triết học', '2023-10-02', '08:50:00', '2023-10-02', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6064, '523100B - Triết học', '2023-10-09', '08:50:00', '2023-10-09', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6065, '523100B - Triết học', '2023-10-16', '08:50:00', '2023-10-16', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6066, '523100B - Triết học', '2023-10-23', '08:50:00', '2023-10-23', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6067, '523100B - Triết học', '2023-10-30', '08:50:00', '2023-10-30', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6068, '523100B - Triết học', '2023-11-06', '08:50:00', '2023-11-06', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6069, '523100B - Triết học', '2023-11-13', '08:50:00', '2023-11-13', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6070, '523100B - Triết học', '2023-11-20', '08:50:00', '2023-11-20', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6071, '523100B - Triết học', '2023-11-27', '08:50:00', '2023-11-27', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6072, '523100B - Triết học', '2023-12-04', '08:50:00', '2023-12-04', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6073, '523100B - Triết học', '2023-12-11', '08:50:00', '2023-12-11', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6074, '523100B - Triết học', '2023-12-18', '08:50:00', '2023-12-18', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6075, '523100B - Triết học', '2023-12-25', '08:50:00', '2023-12-25', '11:40:00', 0, 'Triết học -  - 523100B - Tiet: 3 - 5 - Phong hoc: 405', '405', 'NTT02', 3, 3, 523100, '', 0, ''),
(6076, '523100B - Tiếng Anh GE1 - 523100B1', '2023-09-20', '07:00:00', '2023-09-20', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6077, '523100B - Tiếng Anh GE1 - 523100B1', '2023-09-27', '07:00:00', '2023-09-27', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6078, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-04', '07:00:00', '2023-10-04', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6079, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-11', '07:00:00', '2023-10-11', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6080, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-18', '07:00:00', '2023-10-18', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6081, '523100B - Tiếng Anh GE1 - 523100B1', '2023-10-25', '07:00:00', '2023-10-25', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6082, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-01', '07:00:00', '2023-11-01', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6083, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-08', '07:00:00', '2023-11-08', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6084, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-15', '07:00:00', '2023-11-15', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6085, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-22', '07:00:00', '2023-11-22', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6086, '523100B - Tiếng Anh GE1 - 523100B1', '2023-11-29', '07:00:00', '2023-11-29', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6087, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-06', '07:00:00', '2023-12-06', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6088, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-13', '07:00:00', '2023-12-13', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6089, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-20', '07:00:00', '2023-12-20', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6090, '523100B - Tiếng Anh GE1 - 523100B1', '2023-12-27', '07:00:00', '2023-12-27', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6091, '523100B - Tiếng Anh GE1 - 523100B2', '2023-09-20', '07:00:00', '2023-09-20', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6092, '523100B - Tiếng Anh GE1 - 523100B2', '2023-09-27', '07:00:00', '2023-09-27', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6093, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-04', '07:00:00', '2023-10-04', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6094, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-11', '07:00:00', '2023-10-11', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6095, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-18', '07:00:00', '2023-10-18', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6096, '523100B - Tiếng Anh GE1 - 523100B2', '2023-10-25', '07:00:00', '2023-10-25', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6097, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-01', '07:00:00', '2023-11-01', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6098, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-08', '07:00:00', '2023-11-08', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6099, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-15', '07:00:00', '2023-11-15', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6100, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-22', '07:00:00', '2023-11-22', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6101, '523100B - Tiếng Anh GE1 - 523100B2', '2023-11-29', '07:00:00', '2023-11-29', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6102, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-06', '07:00:00', '2023-12-06', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6103, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-13', '07:00:00', '2023-12-13', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6104, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-20', '07:00:00', '2023-12-20', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6105, '523100B - Tiếng Anh GE1 - 523100B2', '2023-12-27', '07:00:00', '2023-12-27', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B2 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 505', '505', 'LTKA01', 2, 6, 523100, '', 0, ''),
(6106, '523100B - Nhập môn Công nghệ thông tin', '2023-09-20', '08:50:00', '2023-09-20', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6107, '523100B - Nhập môn Công nghệ thông tin', '2023-09-27', '08:50:00', '2023-09-27', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6108, '523100B - Nhập môn Công nghệ thông tin', '2023-10-04', '08:50:00', '2023-10-04', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6109, '523100B - Nhập môn Công nghệ thông tin', '2023-10-11', '08:50:00', '2023-10-11', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6110, '523100B - Nhập môn Công nghệ thông tin', '2023-10-18', '08:50:00', '2023-10-18', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6111, '523100B - Nhập môn Công nghệ thông tin', '2023-10-25', '08:50:00', '2023-10-25', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6112, '523100B - Nhập môn Công nghệ thông tin', '2023-11-01', '08:50:00', '2023-11-01', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6113, '523100B - Nhập môn Công nghệ thông tin', '2023-11-08', '08:50:00', '2023-11-08', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6114, '523100B - Nhập môn Công nghệ thông tin', '2023-11-15', '08:50:00', '2023-11-15', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6115, '523100B - Nhập môn Công nghệ thông tin', '2023-11-22', '08:50:00', '2023-11-22', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6116, '523100B - Nhập môn Công nghệ thông tin', '2023-11-29', '08:50:00', '2023-11-29', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6117, '523100B - Nhập môn Công nghệ thông tin', '2023-12-06', '08:50:00', '2023-12-06', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6118, '523100B - Nhập môn Công nghệ thông tin', '2023-12-13', '08:50:00', '2023-12-13', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6119, '523100B - Nhập môn Công nghệ thông tin', '2023-12-20', '08:50:00', '2023-12-20', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6120, '523100B - Nhập môn Công nghệ thông tin', '2023-12-27', '08:50:00', '2023-12-27', '11:40:00', 0, 'Nhập môn Công nghệ thông tin -  - 523100B - Tiet: 3 - 5 - Phong hoc: HTL2', 'HTL2', ' TTN01', 3, 3, 523100, '', 0, ''),
(6121, '523100B - Kiến trúc máy tính', '2023-09-21', '09:55:00', '2023-09-21', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6122, '523100B - Kiến trúc máy tính', '2023-09-28', '09:55:00', '2023-09-28', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6123, '523100B - Kiến trúc máy tính', '2023-10-05', '09:55:00', '2023-10-05', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6124, '523100B - Kiến trúc máy tính', '2023-10-12', '09:55:00', '2023-10-12', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6125, '523100B - Kiến trúc máy tính', '2023-10-19', '09:55:00', '2023-10-19', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6126, '523100B - Kiến trúc máy tính', '2023-10-26', '09:55:00', '2023-10-26', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6127, '523100B - Kiến trúc máy tính', '2023-11-02', '09:55:00', '2023-11-02', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6128, '523100B - Kiến trúc máy tính', '2023-11-09', '09:55:00', '2023-11-09', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6129, '523100B - Kiến trúc máy tính', '2023-11-16', '09:55:00', '2023-11-16', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6130, '523100B - Kiến trúc máy tính', '2023-11-23', '09:55:00', '2023-11-23', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6131, '523100B - Kiến trúc máy tính', '2023-11-30', '09:55:00', '2023-11-30', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6132, '523100B - Kiến trúc máy tính', '2023-12-07', '09:55:00', '2023-12-07', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6133, '523100B - Kiến trúc máy tính', '2023-12-14', '09:55:00', '2023-12-14', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6134, '523100B - Kiến trúc máy tính', '2023-12-21', '09:55:00', '2023-12-21', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6135, '523100B - Kiến trúc máy tính', '2023-12-28', '09:55:00', '2023-12-28', '11:40:00', 0, 'Kiến trúc máy tính -  - 523100B - Tiet: 4 - 5 - Phong hoc: 306', '306', 'CHH01', 2, 2, 523100, '', 0, ''),
(6136, '523100B - Tiếng Anh GE1 - 523100B1', '0000-00-00', '07:00:00', '0000-00-00', '08:45:00', 0, 'Tiếng Anh GE1 - 523100B1 -  - 523100B - Tiet: 1 - 2 - Phong hoc: 502', '502', 'NTT01', 2, 6, 523100, '', 0, ''),
(6137, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6138, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6139, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6140, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6141, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6142, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6143, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6144, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6145, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6146, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6147, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6148, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6149, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6150, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6151, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6152, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6153, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6154, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6155, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6156, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6157, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6158, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6159, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6160, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6161, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6162, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6163, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6164, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6165, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6166, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6167, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6168, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6169, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6170, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6171, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6172, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6173, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6174, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6175, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6176, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, ''),
(6177, 'null', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 0, 'null', 'null', 'null', 0, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
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
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `idName`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`, `fullName`) VALUES
(1, 'QTP02', 'quanle2001', 'quanle2001', 'Dai Xuyen, Phu Xuyen, Ha Noi', '0987654321', 'lequan18042001@gmail.com', 'giaovien', 'active', '', 'Le Hong Quan'),
(18, 'GDT23\r\n', 'lequan2001', 'lequan2001', 'phuxuyen hanoi', '0984877553', 'lequan18042001@gmail.com', 'giaovien', 'active', '2023-05-03 23:41:11', 'quan hong le'),
(19, 'admin', 'admin1', 'admin1', 'Viet Nammm', '098764374637', 'aaaa@gmail.com', 'admin', 'active', '2023-05-03 23:44:03', 'ADMIN'),
(20, '', 'hongquan2001', 'hongquan2001', 'aaaaaaaaaaaaaa', '111111111111111111', 'lequan18042001@gmail.com', 'giaovu', 'delete', '2023-05-03 23:48:26', ''),
(22, '', 'quanle1804', '5YYNO8EI', 'Hoang Mai Ha Noi', '0984877553', 'lequan18042001@gmail.com', 'giaovien', 'active', '2023-07-08 21:24:20', 'Hong QUan Le');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitors`
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
-- Đang đổ dữ liệu cho bảng `visitors`
--

INSERT INTO `visitors` (`id`, `id_presented`, `id_no`, `name`, `contact`, `address`, `transaction`, `pass_no`) VALUES
(1, 'Company ID', '6232014', 'John Smith', '+18456-5455-55', 'Sample', 'Sample', 23);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaovu`
--
ALTER TABLE `giaovu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kehoachgiangday`
--
ALTER TABLE `kehoachgiangday`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_kehoach`
--
ALTER TABLE `tbl_kehoach`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_lichtheotiendo`
--
ALTER TABLE `tbl_lichtheotiendo`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_thoikhoabieu`
--
ALTER TABLE `tbl_thoikhoabieu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `giaovu`
--
ALTER TABLE `giaovu`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hocky`
--
ALTER TABLE `hocky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hocphan`
--
ALTER TABLE `hocphan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `kehoachgiangday`
--
ALTER TABLE `kehoachgiangday`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nganh`
--
ALTER TABLE `nganh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_frontdesk_users`
--
ALTER TABLE `tbl_frontdesk_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_kehoach`
--
ALTER TABLE `tbl_kehoach`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_lichtheotiendo`
--
ALTER TABLE `tbl_lichtheotiendo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT cho bảng `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_thoikhoabieu`
--
ALTER TABLE `tbl_thoikhoabieu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6178;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
