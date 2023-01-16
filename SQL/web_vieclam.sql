-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2022 lúc 05:44 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_vieclam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `admin_status`) VALUES
(1, 'thuongadmin', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baivietct`
--

CREATE TABLE `baivietct` (
  `id_baiviet` int(11) NOT NULL,
  `id_congty` int(11) NOT NULL,
  `tencongty` varchar(255) NOT NULL,
  `id_nganhnghe` int(11) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `quymo` varchar(255) NOT NULL,
  `thanhlap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baivietuv`
--

CREATE TABLE `baivietuv` (
  `id_baiviet` int(11) NOT NULL,
  `id_nganhnghe` int(11) NOT NULL,
  `tenungvien` varchar(255) NOT NULL,
  `luong` varchar(255) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydang` varchar(255) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baivietuv`
--

INSERT INTO `baivietuv` (`id_baiviet`, `id_nganhnghe`, `tenungvien`, `luong`, `id_diadiem`, `tenbaiviet`, `mota`, `hinhanh`, `ngaydang`, `tinhtrang`) VALUES
(2, 1, 'Nguyễn Thấp Vân Anh', '10.000.000 đ', 2, 'Đơn xin ứng tuyển', '<p>GOOD</p>\r\n', 'asus.png', '1/11/2022', 1),
(3, 1, 'Võ Thị Hoài Thương', '10.000.000 đ', 1, 'Bài đăng ứng tuyển', '<p>Good JOB</p>\r\n', 'meta.png', '6/11/2021', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baivietvl`
--

CREATE TABLE `baivietvl` (
  `id_baiviet` int(11) NOT NULL,
  `id_nganhnghe` int(11) NOT NULL,
  `tenvieclam` varchar(255) NOT NULL,
  `luong` varchar(255) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydang` varchar(255) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baivietvl`
--

INSERT INTO `baivietvl` (`id_baiviet`, `id_nganhnghe`, `tenvieclam`, `luong`, `id_diadiem`, `tenbaiviet`, `mota`, `hinhanh`, `ngaydang`, `tinhtrang`) VALUES
(1, 1, 'Lập trình Java', '20.000.000 đ', 3, 'Bài đăng việc làm', '<p>GOOD</p>\r\n', 'asus.png', '1/11/2022', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id_dk` int(11) NOT NULL,
  `tenungvien` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangky`
--

INSERT INTO `dangky` (`id_dk`, `tenungvien`, `email`, `matkhau`) VALUES
(246, 'Võ Thị Hoài Thương', 'vothuong2122002@gmail.com', ''),
(247, '', 'vothuong2122002@gmail.com', '12345678'),
(248, '', 'vothuong2122002@gmail.com', '123'),
(249, '', '', ''),
(250, '', '', ''),
(251, '', 'vothuong2122002@gmail.com', '12345678'),
(252, '', 'vothuong2122002@gmail.com', '123'),
(253, '', 'vothuong2122002@gmail.com', '123'),
(254, '', 'vothuong2122002@gmail.com', '123'),
(255, '', 'vothuong2122002@gmail.com', '123'),
(256, '', 'vothuong2122002@gmail.com', '123'),
(257, '', '', ''),
(258, '', 'vothuong2122002@gmail.com', '123'),
(259, '', 'vothuong2122002@gmail.com', '123'),
(260, 'Võ Thị Hoài Thương', 'thuong@gmail.com', '12345678'),
(261, '', 'vothuong2122002@gmail.com', '123'),
(262, '', 'vothuong2122002@gmail.com', '123'),
(263, '', 'vothuong2122002@gmail.com', '12345678'),
(264, '', 'vothuong2122002@gmail.com', '123'),
(265, '', 'vothuong2122002@gmail.com', '123'),
(266, 'Võ Thị Hoài Thương', 'anh@gmail.com', '123456'),
(267, '', 'vothuong2122002@gmail.com', '12345678'),
(268, '', 'vothuong2122002@gmail.com', '123'),
(269, '', 'vothuong2122002@gmail.com', '123'),
(270, '', 'jizzky2122002@gmail.com', '123'),
(271, 'Võ Thị Hoài Thương', 'thuong@gmail.com', '12345678'),
(272, '', 'vothuong2122002@gmail.com', '123'),
(273, '', 'vothuong2122002@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiem`
--

CREATE TABLE `diadiem` (
  `id_diadiem` int(11) NOT NULL,
  `tendiadiem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `diadiem`
--

INSERT INTO `diadiem` (`id_diadiem`, `tendiadiem`) VALUES
('01', 'Thành phố Hà Nội'),
('02', 'Tỉnh Hà Giang'),
('04', 'Tỉnh Cao Bằng'),
('06', 'Tỉnh Bắc Kạn'),
('08', 'Tỉnh Tuyên Quang'),
('10', 'Tỉnh Lào Cai'),
('11', 'Tỉnh Điện Biên'),
('12', 'Tỉnh Lai Châu'),
('14', 'Tỉnh Sơn La'),
('15', 'Tỉnh Yên Bái'),
('17', 'Tỉnh Hoà Bình'),
('19', 'Tỉnh Thái Nguyên'),
('20', 'Tỉnh Lạng Sơn'),
('22', 'Tỉnh Quảng Ninh'),
('24', 'Tỉnh Bắc Giang'),
('25', 'Tỉnh Phú Thọ'),
('26', 'Tỉnh Vĩnh Phúc'),
('27', 'Tỉnh Bắc Ninh'),
('30', 'Tỉnh Hải Dương'),
('31', 'Thành phố Hải Phòng'),
('33', 'Tỉnh Hưng Yên'),
('34', 'Tỉnh Thái Bình'),
('35', 'Tỉnh Hà Nam'),
('36', 'Tỉnh Nam Định'),
('37', 'Tỉnh Ninh Bình'),
('38', 'Tỉnh Thanh Hóa'),
('40', 'Tỉnh Nghệ An'),
('42', 'Tỉnh Hà Tĩnh'),
('44', 'Tỉnh Quảng Bình'),
('45', 'Tỉnh Quảng Trị'),
('46', 'Tỉnh Thừa Thiên Huế'),
('48', 'Thành phố Đà Nẵng'),
('49', 'Tỉnh Quảng Nam'),
('51', 'Tỉnh Quảng Ngãi'),
('52', 'Tỉnh Bình Định'),
('54', 'Tỉnh Phú Yên'),
('56', 'Tỉnh Khánh Hòa'),
('58', 'Tỉnh Ninh Thuận'),
('60', 'Tỉnh Bình Thuận'),
('62', 'Tỉnh Kon Tum'),
('64', 'Tỉnh Gia Lai'),
('66', 'Tỉnh Đắk Lắk'),
('67', 'Tỉnh Đắk Nông'),
('68', 'Tỉnh Lâm Đồng'),
('70', 'Tỉnh Bình Phước'),
('72', 'Tỉnh Tây Ninh'),
('74', 'Tỉnh Bình Dương'),
('75', 'Tỉnh Đồng Nai'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu'),
('79', 'Thành phố Hồ Chí Minh'),
('80', 'Tỉnh Long An'),
('82', 'Tỉnh Tiền Giang'),
('83', 'Tỉnh Bến Tre'),
('84', 'Tỉnh Trà Vinh'),
('86', 'Tỉnh Vĩnh Long'),
('87', 'Tỉnh Đồng Tháp'),
('89', 'Tỉnh An Giang'),
('91', 'Tỉnh Kiên Giang'),
('92', 'Thành phố Cần Thơ'),
('93', 'Tỉnh Hậu Giang'),
('94', 'Tỉnh Sóc Trăng'),
('95', 'Tỉnh Bạc Liêu'),
('96', 'Tỉnh Cà Mau');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dknhatuyendung`
--

CREATE TABLE `dknhatuyendung` (
  `id_dk` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dknhatuyendung`
--

INSERT INTO `dknhatuyendung` (`id_dk`, `ten`, `email`, `matkhau`) VALUES
(39, 'Công ty trách nhiệm HH', 'thuong@gmail.com', '12345678'),
(40, '', 'vothuong2122002@gmail.com', '123'),
(41, 'Công ty trách nhiệm Sữa', 'jizzky2122002@gmail.com', '123'),
(42, 'Công ty trách nhiệm Sữa', 'vothuong2122002@gmail.com', '123'),
(43, '', 'vothuong2122002@gmail.com', '123'),
(44, '', 'vothuong2122002@gmail.com', '123'),
(45, '', '', ''),
(46, '', 'vothuong2122002@gmail.com', '123'),
(47, '', 'vothuong2122002@gmail.com', '123'),
(48, '', 'vothuong2122002@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `id_diadiem` int(11) NOT NULL,
  `sdt` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganhnghe`
--

CREATE TABLE `nganhnghe` (
  `id_nganhnghe` int(11) NOT NULL,
  `tennganhnghe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nganhnghe`
--

INSERT INTO `nganhnghe` (`id_nganhnghe`, `tennganhnghe`) VALUES
(1, 'Lập trình '),
(2, 'Bán hàng'),
(3, 'Maketing'),
(4, 'Trợ lý');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baivietuv`
--
ALTER TABLE `baivietuv`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `baivietvl`
--
ALTER TABLE `baivietvl`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_dk`);

--
-- Chỉ mục cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`id_diadiem`);

--
-- Chỉ mục cho bảng `dknhatuyendung`
--
ALTER TABLE `dknhatuyendung`
  ADD PRIMARY KEY (`id_dk`);

--
-- Chỉ mục cho bảng `nganhnghe`
--
ALTER TABLE `nganhnghe`
  ADD PRIMARY KEY (`id_nganhnghe`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `baivietuv`
--
ALTER TABLE `baivietuv`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `baivietvl`
--
ALTER TABLE `baivietvl`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT cho bảng `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `id_diadiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dknhatuyendung`
--
ALTER TABLE `dknhatuyendung`
  MODIFY `id_dk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `nganhnghe`
--
ALTER TABLE `nganhnghe`
  MODIFY `id_nganhnghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
