-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2019 lúc 03:10 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sameskincare`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `maanh` int(10) NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `masp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `anh`
--

INSERT INTO `anh` (`maanh`, `link`, `masp`) VALUES
(1, 'img/butkevienmat/b1.jpg', 8),
(2, 'img/butkevienmat/b2.jpg', 8),
(3, 'img/butkevienmat/b3.jpg', 8),
(4, 'img/butkevienmat/b4.jpg', 9),
(5, 'img/butkevienmat/b5.jpg', 9),
(6, 'img/kemchekhuyetdiem/k1.jpg', 1),
(7, 'img/kemchekhuyetdiem/k2.jpg', 1),
(8, 'img/kemchekhuyetdiem/k3.jpg', 1),
(9, 'img/kemchekhuyetdiem/k4.jpg', 2),
(10, 'img/kemchekhuyetdiem/k5.jpg', 2),
(11, 'img/kemchekhuyetdiem/k6.jpg', 3),
(12, 'img/kemchekhuyetdiem/k7.jpg', 3),
(13, 'img/kemduongam/kd1.jpg', 12),
(14, 'img/kemduongam/kd2.jpg', 12),
(15, 'img/kemduongam/kd3.jpg', 12),
(16, 'img/kemduongam/kd4.jpg', 13),
(17, 'img/kemduongam/kd5.jpg', 13),
(18, 'img/kemduongam/kd6.jpg', 13),
(19, 'img/kemduongam/kd7.jpg', 13),
(20, 'img/kemduongvungmat/kdm1.jpg', 16),
(21, 'img/kemduongvungmat/kdm2.jpg', 16),
(22, 'img/kemduongvungmat/kdm3.jpg', 16),
(23, 'img/kemduongvungmat/kdm4.jpg', 16),
(24, 'img/kemduongvungmat/kdm5.jpg', 17),
(25, 'img/kemduongvungmat/kdm6.jpg', 17),
(26, 'img/kemduongvungmat/kdm7.jpg', 17),
(27, 'img/matna/mn1.jpg', 14),
(28, 'img/matna/mn2.jpg', 14),
(29, 'img/matna/mn3.jpg', 14),
(30, 'img/matna/mn4.jpg', 15),
(31, 'img/matna/mn5.jpg', 15),
(32, 'img/matna/mn6.jpg', 15),
(33, 'img/matna/mn7.jpg', 15),
(34, 'img/phanmahong/pm1.jpg', 10),
(35, 'img/phanmahong/pm2.jpg', 10),
(36, 'img/phanmahong/pm3.jpg', 10),
(37, 'img/phanmahong/pm4.jpg', 10),
(38, 'img/phanmahong/pm5.jpg', 11),
(39, 'img/phanmahong/pm6.jpg', 11),
(40, 'img/phanmahong/pm7.jpg', 11),
(41, 'img/phannen/p1.jpg', 4),
(42, 'img/phannen/p2.jpg', 4),
(43, 'img/phannen/p3.jpg', 4),
(44, 'img/phannen/p4.jpg', 5),
(45, 'img/phannen/p5.jpg', 5),
(46, 'img/phannen/p6.jpg', 5),
(47, 'img/sonmoi/s1.jpg', 6),
(48, 'img/sonmoi/s2.jpg', 6),
(49, 'img/sonmoi/s3.jpg', 7),
(50, 'img/sonmoi/s4.jpg', 7),
(51, 'img/sonmoi/s5.jpg', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `mactgh` int(10) NOT NULL,
  `tensp` int(50) NOT NULL,
  `soluong` int(10) NOT NULL,
  `magh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `magh` int(10) NOT NULL,
  `mauser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `maloai` int(10) NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `anh`) VALUES
(1, 'Kem che khuyết điểm', 'img/kemchekhuyetdiem/k1.jpg'),
(2, 'Phấn nền', 'img/phannen/p1.jpg'),
(3, 'Son môi', 'img/sonmoi/s1.jpg'),
(4, 'Bút kẻ viền mắt', 'img/butkevienmat/b1.jpg'),
(5, 'Phấn má hồng', 'img/phanmahong/pm1.jpg'),
(6, 'Kem dưỡng ẩm', 'img/kemduongam/kd1.jpg'),
(7, 'Mặt nạ', 'img/matna/mn1.jpg'),
(8, 'Kem dưỡng vùng mắt', 'img/keduongvungmat/kdm1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `tensp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(10) NOT NULL,
  `maloai` int(10) NOT NULL,
  `mashop` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `mota`, `dongia`, `maloai`, `mashop`) VALUES
(1, 'Kem che khuyết điểm u\'nara', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 70000, 1, 0),
(2, 'Kem che khuyết điểm Nars Radiant Creamy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 100000, 1, 0),
(3, 'Kem che khuyết điểm L\'Oreal Paris True Match The O', 'N Vanilla: phù hợp với màu da sáng\r\nN Creamy Beige: phù hợp với màu da tự nhiên\r\nG/W Golden Beige: phù hợp với da tông vàng tự nhiên\r\nN Beige: phù hợp với màu da tối', 90000, 1, 0),
(4, 'Phấn phủ MAC', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 150000, 2, 0),
(5, 'Phấn phủ Shiseido.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 130000, 2, 0),
(6, 'Son môi Mamonde Creamy Tint Color Balm Intense', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 110000, 3, 0),
(7, 'Son môi Maybelline SuperStay Matte Ink', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 130000, 3, 0),
(8, 'Bút Kẻ Mắt Nước Không Trôi Vacosi Natural Studio W', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 110000, 4, 0),
(9, 'Bút Kẻ Mắt Không Trôi Eyeliner Maxi Black Mistine', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 120000, 4, 0),
(10, 'Phấn má V-line Maybelline', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 250000, 5, 0),
(11, 'Phấn Baked Blush Full NYX', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 136000, 5, 0),
(12, 'Kem Dưỡng Ẩm Dịu Nhẹ Mamonde Moisture Ceramide Lig', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 150000, 6, 0),
(13, 'Kem Dưỡng Sáng Căng Bóng Da By Ecom Honey Glow Cer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 142000, 6, 0),
(14, 'Mặt nạ dưỡng ẩm', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 55000, 7, 0),
(15, 'Mặt nạ trị mụn', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 70000, 7, 0),
(16, 'Kem mắt trị quầng thâm Kumargic', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 130000, 8, 0),
(17, 'Kem dưỡng mắt Innisfree Green Tea', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 95000, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shop`
--

CREATE TABLE `shop` (
  `mashop` int(10) NOT NULL,
  `tenshop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `mauser` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`maanh`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`mactgh`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`magh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`);

--
-- Chỉ mục cho bảng `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`mashop`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`mauser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `maanh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `mactgh` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `magh` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `maloai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `shop`
--
ALTER TABLE `shop`
  MODIFY `mashop` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `mauser` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
