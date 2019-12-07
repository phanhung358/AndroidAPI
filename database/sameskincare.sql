-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2019 lúc 06:11 AM
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
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `maadmin` int(10) NOT NULL,
  `adminname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`maadmin`, `adminname`, `password`, `hoten`, `diachi`, `email`, `sodienthoai`) VALUES
(1, 'kimthoa', '123', 'Nguyễn Thị Kim Thoa', 'Quảng Trị', 'kimthoanguyen@gmail.com', '0935076223');

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
(1, 'b1.jpg', 8),
(2, 'b2.jpg', 8),
(3, 'b3.jpg', 8),
(4, 'b4.jpg', 9),
(5, 'b5.jpg', 9),
(6, 'k1.jpg', 1),
(7, 'k2.jpg', 1),
(8, 'k3.jpg', 1),
(9, 'k4.jpg', 2),
(10, 'k5.jpg', 2),
(11, 'k6.jpg', 3),
(12, 'k7.jpg', 3),
(13, 'kd1.jpg', 12),
(14, 'kd2.jpg', 12),
(15, 'kd3.jpg', 12),
(16, 'kd4.jpg', 13),
(17, 'kd5.jpg', 13),
(18, 'kd6.jpg', 13),
(19, 'kd7.jpg', 13),
(20, 'kdm1.jpg', 16),
(21, 'kdm2.jpg', 16),
(22, 'kdm3.jpg', 16),
(23, 'kdm4.jpg', 16),
(24, 'kdm5.jpg', 17),
(25, 'kdm6.jpg', 17),
(26, 'kdm7.jpg', 17),
(27, 'mn1.jpg', 14),
(28, 'mn2.jpg', 14),
(29, 'mn3.jpg', 14),
(30, 'mn4.jpg', 15),
(31, 'mn5.jpg', 15),
(32, 'mn6.jpg', 15),
(33, 'mn7.jpg', 15),
(34, 'pm1.jpg', 10),
(35, 'pm2.jpg', 10),
(36, 'pm3.jpg', 10),
(37, 'pm4.jpg', 10),
(38, 'pm5.jpg', 11),
(39, 'pm6.jpg', 11),
(40, 'pm7.jpg', 11),
(41, 'p1.jpg', 4),
(42, 'p2.jpg', 4),
(43, 'p3.jpg', 4),
(44, 'p4.jpg', 5),
(45, 'p5.jpg', 5),
(46, 'p6.jpg', 5),
(47, 's1.jpg', 6),
(48, 's2.jpg', 6),
(49, 's3.jpg', 7),
(50, 's4.jpg', 7),
(51, 's5.jpg', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `mactgh` int(10) NOT NULL,
  `masp` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `magh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`mactgh`, `masp`, `soluong`, `magh`) VALUES
(1, 1, 2, 1),
(2, 5, 1, 1),
(3, 8, 3, 2),
(4, 15, 2, 2),
(5, 9, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `magh` int(10) NOT NULL,
  `mauser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`magh`, `mauser`) VALUES
(1, 1),
(2, 2);

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
(1, 'Kem che khuyết điểm', 'k1.jpg'),
(2, 'Phấn nền', 'p1.jpg'),
(3, 'Son môi', 's1.jpg'),
(4, 'Bút kẻ viền mắt', 'b1.jpg'),
(5, 'Phấn má hồng', 'pm1.jpg'),
(6, 'Kem dưỡng ẩm', 'kd1.jpg'),
(7, 'Mặt nạ', 'mn1.jpg'),
(8, 'Kem dưỡng vùng mắt', 'kdm1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `tensp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thuonghieu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dungtich` int(10) NOT NULL,
  `mota` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(10) NOT NULL,
  `soluongcosan` int(10) NOT NULL,
  `phivanchuyen` int(10) NOT NULL,
  `maloai` int(10) NOT NULL,
  `mashop` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `thuonghieu`, `dungtich`, `mota`, `dongia`, `soluongcosan`, `phivanchuyen`, `maloai`, `mashop`) VALUES
(1, 'Kem che khuyết điểm u\'nara', 'u\'nara', 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 70000, 100, 10000, 1, 0),
(2, 'Kem che khuyết điểm Nars Radiant Creamy', 'Nars', 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 100000, 100, 10000, 1, 0),
(3, 'Kem che khuyết điểm L\'Oreal Paris True Match The O', 'L\'Oreal', 100, 'N Vanilla: phù hợp với màu da sáng\r\nN Creamy Beige: phù hợp với màu da tự nhiên\r\nG/W Golden Beige: phù hợp với da tông vàng tự nhiên\r\nN Beige: phù hợp với màu da tối', 90000, 100, 10000, 1, 0),
(4, 'Phấn phủ MAC', 'MAC', 25, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 150000, 100, 10000, 2, 0),
(5, 'Phấn phủ Shiseido.', 'Shiseido', 25, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 130000, 100, 10000, 2, 0),
(6, 'Son môi Mamonde Creamy Tint Color Balm Intense', 'Mamonde', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 110000, 100, 5000, 3, 0),
(7, 'Son môi Maybelline SuperStay Matte Ink', 'Maybelline', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 130000, 100, 5000, 3, 0),
(8, 'Bút Kẻ Mắt Nước Không Trôi Vacosi Natural Studio W', 'Vacosi', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 110000, 100, 5000, 4, 0),
(9, 'Bút Kẻ Mắt Không Trôi Eyeliner Maxi Black Mistine', 'Eyeliner', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 120000, 100, 5000, 4, 0),
(10, 'Phấn má V-line Maybelline', 'Maybelline', 25, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 250000, 100, 5000, 5, 0),
(11, 'Phấn Baked Blush Full NYX', 'Baked', 25, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 136000, 100, 5000, 5, 0),
(12, 'Kem Dưỡng Ẩm Dịu Nhẹ Mamonde Moisture Ceramide Lig', 'Mamonde', 50, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 150000, 100, 5000, 6, 0),
(13, 'Kem Dưỡng Sáng Căng Bóng Da By Ecom Honey Glow Cer', 'Ecom Honey', 50, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 142000, 100, 5000, 6, 0),
(14, 'Mặt nạ dưỡng ẩm', 'Ecom Honey', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 55000, 100, 5000, 7, 0),
(15, 'Mặt nạ trị mụn', 'Mamonde', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 70000, 100, 5000, 7, 0),
(16, 'Kem mắt trị quầng thâm Kumargic', 'Kumargic', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 130000, 100, 5000, 8, 0),
(17, 'Kem dưỡng mắt Innisfree Green Tea', 'Innisfree', 50, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 95000, 100, 10000, 8, 0);

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
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `maslide` int(10) NOT NULL,
  `imageslisde` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`maslide`, `imageslisde`) VALUES
(1, 'b1.jpg'),
(2, 'k1.jpg'),
(3, 'kd1.jpg'),
(4, 'kdm1.jpg'),
(5, 'mn1.jpg'),
(6, 'pm1.jpg'),
(7, 'p1.jpg'),
(8, 's1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `mauser` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`mauser`, `username`, `password`, `hoten`, `gioitinh`, `diachi`, `sodienthoai`, `Email`) VALUES
(1, 'phanhung', '123', 'Phan Hùng', 'nam', 'Huế', '0364859754', 'phanhung.12a1.pdl@gmail.com'),
(2, 'ngocdieu', '123', 'Lê Thị Ngọc Diệu', 'nữ', 'Quảng Nam', '09031542846', 'diudiu@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`maadmin`);

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
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`maslide`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`mauser`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `maadmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `maanh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `mactgh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `magh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `maslide` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `mauser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
