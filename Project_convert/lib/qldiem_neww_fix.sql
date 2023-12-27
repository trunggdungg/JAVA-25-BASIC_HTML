-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3308
-- Thời gian đã tạo: Th12 27, 2023 lúc 04:06 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qldiem`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diem`
--

CREATE TABLE `diem` (
  `MaDiem` varchar(20) NOT NULL,
  `MaSinhVien` varchar(20) DEFAULT NULL,
  `MaMonHoc` varchar(20) DEFAULT NULL,
  `DiemChuyenCan` float DEFAULT NULL,
  `DiemGiuaKi` float DEFAULT NULL,
  `DiemThiLan1` float DEFAULT NULL,
  `DiemThiLan2` float DEFAULT NULL,
  `DiemCuoiKi` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemrl`
--

CREATE TABLE `diemrl` (
  `MaSinhVien` varchar(20) NOT NULL,
  `HocKy` varchar(20) DEFAULT NULL,
  `TongDiem` float DEFAULT NULL,
  `XepLoai` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaovien`
--

CREATE TABLE `giaovien` (
  `MaGiaoVien` varchar(20) NOT NULL,
  `TenGiaoVien` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `QueQuan` varchar(255) DEFAULT NULL,
  `TrinhDo` varchar(50) DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `MaKhoa` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MaKhoa` varchar(20) NOT NULL,
  `TenKhoa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `MaLopHoc` varchar(20) NOT NULL,
  `TenLopHoc` varchar(255) DEFAULT NULL,
  `MaMonHoc` varchar(20) DEFAULT NULL,
  `MaKhoa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMonHoc` varchar(20) NOT NULL,
  `TenMonHoc` varchar(50) DEFAULT NULL,
  `SoTinChi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung_gv`
--

CREATE TABLE `nguoidung_gv` (
  `MaNguoiDung` varchar(20) NOT NULL,
  `TenNguoiDung` varchar(255) DEFAULT NULL,
  `MatKhau` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung_sv`
--

CREATE TABLE `nguoidung_sv` (
  `MaNguoiDung` varchar(20) NOT NULL,
  `TenNguoiDung` varchar(255) DEFAULT NULL,
  `MatKhau` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanconggd`
--

CREATE TABLE `phanconggd` (
  `MaPhanCong` varchar(20) NOT NULL,
  `MaGiaoVien` varchar(20) DEFAULT NULL,
  `MaMonHoc` varchar(20) DEFAULT NULL,
  `MaLopHoc` varchar(20) DEFAULT NULL,
  `LichDay` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSinhVien` varchar(20) NOT NULL,
  `TenSinhVien` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `QueQuan` varchar(255) DEFAULT NULL,
  `CCCD` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `MaLopHoc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`MaDiem`),
  ADD KEY `MaSinhVien` (`MaSinhVien`),
  ADD KEY `MaMonHoc` (`MaMonHoc`);

--
-- Chỉ mục cho bảng `diemrl`
--
ALTER TABLE `diemrl`
  ADD KEY `MaSinhVien` (`MaSinhVien`);

--
-- Chỉ mục cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`MaGiaoVien`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`MaLopHoc`),
  ADD KEY `MaKhoa` (`MaKhoa`),
  ADD KEY `MaMonHoc` (`MaMonHoc`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMonHoc`);

--
-- Chỉ mục cho bảng `nguoidung_gv`
--
ALTER TABLE `nguoidung_gv`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Chỉ mục cho bảng `nguoidung_sv`
--
ALTER TABLE `nguoidung_sv`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Chỉ mục cho bảng `phanconggd`
--
ALTER TABLE `phanconggd`
  ADD PRIMARY KEY (`MaPhanCong`),
  ADD KEY `MaGiaoVien` (`MaGiaoVien`),
  ADD KEY `MaMonHoc` (`MaMonHoc`),
  ADD KEY `MaLopHoc` (`MaLopHoc`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSinhVien`),
  ADD KEY `MaLopHoc` (`MaLopHoc`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`MaSinhVien`) REFERENCES `sinhvien` (`MaSinhVien`),
  ADD CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`MaMonHoc`) REFERENCES `monhoc` (`MaMonHoc`);

--
-- Các ràng buộc cho bảng `diemrl`
--
ALTER TABLE `diemrl`
  ADD CONSTRAINT `diemrl_ibfk_1` FOREIGN KEY (`MaSinhVien`) REFERENCES `sinhvien` (`MaSinhVien`);

--
-- Các ràng buộc cho bảng `giaovien`
--
ALTER TABLE `giaovien`
  ADD CONSTRAINT `giaovien_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`);

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`MaKhoa`) REFERENCES `khoa` (`MaKhoa`),
  ADD CONSTRAINT `lophoc_ibfk_2` FOREIGN KEY (`MaMonHoc`) REFERENCES `monhoc` (`MaMonHoc`);

--
-- Các ràng buộc cho bảng `nguoidung_gv`
--
ALTER TABLE `nguoidung_gv`
  ADD CONSTRAINT `nguoidung_gv_ibfk_1` FOREIGN KEY (`MaNguoiDung`) REFERENCES `giaovien` (`MaGiaoVien`);

--
-- Các ràng buộc cho bảng `nguoidung_sv`
--
ALTER TABLE `nguoidung_sv`
  ADD CONSTRAINT `nguoidung_sv_ibfk_1` FOREIGN KEY (`MaNguoiDung`) REFERENCES `sinhvien` (`MaSinhVien`);

--
-- Các ràng buộc cho bảng `phanconggd`
--
ALTER TABLE `phanconggd`
  ADD CONSTRAINT `phanconggd_ibfk_1` FOREIGN KEY (`MaGiaoVien`) REFERENCES `giaovien` (`MaGiaoVien`),
  ADD CONSTRAINT `phanconggd_ibfk_2` FOREIGN KEY (`MaMonHoc`) REFERENCES `monhoc` (`MaMonHoc`),
  ADD CONSTRAINT `phanconggd_ibfk_3` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`MaLopHoc`) REFERENCES `lophoc` (`MaLopHoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
