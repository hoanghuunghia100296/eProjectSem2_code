-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 21, 2021 lúc 11:07 AM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thegioicaykieng`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_account`
--

CREATE TABLE `admin_account` (
  `AccountID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin_account`
--

INSERT INTO `admin_account` (`AccountID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `Image`, `Telephone`, `Address`, `Birthday`) VALUES
(1, 'admin1@gmail.com', '12345', 'Nghia', 'Huu', 'Hoang', 'admin/images/avatar_admin/1630678440avatar5.png', '0995615253', '137/14 Phan Anh', '2011-09-01'),
(2, 'admin2@gmai.com', '12345', 'hieu', NULL, 'le', 'admin/images/avatar_admin/1630669800user1-128x128.jpg', '01234567', '122 Ho Van Tung', '2018-09-13'),
(3, 'admin3@gmail.com', '12345', 'Long', 'Hoang', 'Le', 'admin/images/avatar_admin/1630674567user1-128x128.jpg', '0995615253', '133/14 Ho Van THu', '2021-09-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Outdoor plants'),
(2, 'Office plants'),
(3, 'Potted');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `Birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`CustomerID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `Address`, `Telephone`, `Birthday`) VALUES
(1, 'cus1@gmail.com', '12345', 'Nghia', 'Huu', 'Hoang', '137/14 Phan Anh', '0995615253', '2011-08-01'),
(2, 'hoanghuunghia@gmail.com', '12345', 'Nghia', 'Huu', 'Hoang', '137/444 Hoang Van Thu', '0995615253', '2021-09-01'),
(3, 'tranquoctuan@gmail.com', '12345', 'Tuan', 'Quoc', 'Tran', '888 Cach Mang Thang Tam', '0995615253', '2021-09-01'),
(4, 'lehoanglong@gmail.com', '12345', 'Long', 'Hoang', 'Le', '33/11 Le Quang Xung', '0995615253', '2021-09-01'),
(5, 'TranThiDung@gmail.com', '12345', 'Dung', 'Thi', 'Trang', '19/2A Ho Thi Ky', '0995615253', '2021-09-02'),
(6, 'maithanhlam@gmail.com', '12345', 'Lam', 'Thanh', 'Mai', '21/2A Ho Ngoc Lam', '0995615253', '2021-09-01'),
(7, 'letrunghieu@gmail.com', '12345', 'Hieu', 'Trung', 'Le', '51/23B Hau Giang', '0995615253', '2021-09-01'),
(8, 'tranbichthuy@gmail.com', '12345', 'Thuy', 'Bich', 'Tran', '8/3A Phan Binh', '0995615253', '2021-09-05'),
(9, 'hoanghoatham@gmail.com', '12345', 'Tham', 'Hoa', 'Hoang', '13/2A Hoang Hoa Tham', '0995615253', '2021-09-02'),
(10, 'hoanghuunghia100296@gmail.com', '12345', 'nghia', 'huu', 'hoang', '137/22 Cach Mang Thang Tam', '09a', '2021-09-01'),
(11, 'hoanghuunghia5253@gmail.com', '12345', 'nghia', 'huu', 'hoang', '137/22 Cach Mang Thang Tam', '0931721638', '2021-09-01'),
(12, 'hoanghuunghia123@gmail.com', '12345', 'nghia', 'huu', 'hoang', '137/22 Cach Mang Thang Tam', '0931721638', '2021-09-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_like_product`
--

CREATE TABLE `customer_like_product` (
  `id` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer_like_product`
--

INSERT INTO `customer_like_product` (`id`, `CustomerID`, `ProductID`, `Status`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 2),
(3, 1, 3, 1),
(4, 1, 4, 2),
(5, 1, 5, 1),
(6, 1, 10, 1),
(7, 11, 1, 2),
(8, 12, 19, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `SeqNum` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`SeqNum`, `OrderID`, `ProductID`, `Quantity`, `Money`) VALUES
(1, 11, 1, 2, 200),
(2, 11, 2, 1, 100),
(3, 12, 5, 1, 100),
(4, 12, 6, 1, 100),
(5, 13, 1, 2, 200),
(6, 13, 7, 2, 200),
(7, 14, 1, 2, 200),
(8, 14, 5, 1, 100),
(9, 14, 7, 1, 100),
(10, 14, 8, 1, 100),
(11, 14, 9, 1, 100),
(12, 15, 1, 1, 100),
(13, 15, 2, 1, 100),
(14, 16, 4, 1, 100),
(15, 16, 1, 1, 100),
(16, 16, 5, 1, 100),
(17, 16, 6, 1, 100),
(18, 17, 3, 1, 100),
(19, 17, 1, 1, 100),
(20, 17, 4, 1, 100),
(21, 18, 1, 1, 100),
(22, 19, 1, 3, 300),
(23, 20, 1, 5, 500),
(24, 21, 1, 2, 200),
(25, 22, 1, 6, 600),
(26, 23, 1, 2, 200),
(27, 24, 1, 7, 700),
(28, 25, 1, 3, 300),
(29, 26, 1, 3, 300),
(30, 26, 2, 2, 200),
(31, 27, 19, 3, 900),
(32, 27, 16, 2, 600),
(33, 28, 25, 2, 800);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Price` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Information` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `CategoryID`, `ReleaseDate`, `Price`, `Status`, `Image`, `Information`) VALUES
(1, 'Catus Flower111', 1, '2021-08-24', 100, 1, 'guest/img/bg-img/40.png', 'ttttttttttttt'),
(2, 'Catus Flower', 1, '2021-08-17', 100, 1, 'guest/img/bg-img/41.png', 'uuuuuuuuu'),
(3, 'Catus Flower', 1, '2021-08-11', 100, 1, 'guest/img/bg-img/42.png', 'ttttttt'),
(4, 'Catus Flower', 1, '2021-08-19', 100, 1, 'guest/img/bg-img/43.png', 'ttttttt'),
(5, 'Catus Flower', 1, '2021-08-19', 100, 1, 'guest/img/bg-img/45.png', 'tttttttt'),
(6, 'Catus Flower', 1, '2021-08-16', 100, 1, 'guest/img/bg-img/46.png', 'ttt'),
(7, 'Catus Flower', 1, '2021-08-03', 100, 1, 'guest/img/bg-img/47.png', 'tttttt'),
(8, 'Catus Flower', 1, '2021-08-06', 100, 1, 'guest/img/bg-img/48.png', 'yyyyy'),
(9, 'Catus Flower', 1, '2021-08-03', 100, 1, 'guest/img/bg-img/44.png', '22222'),
(10, 'Catus Flower', 1, '2021-08-13', 100, 1, 'guest/img/bg-img/40.png', 'rrrrr'),
(11, 'Catus Flower', 1, '2021-08-07', 100, 1, 'guest/img/bg-img/41.png', 'rrrrr'),
(12, 'Catus Flower', 1, '2021-08-12', 100, 1, 'guest/img/bg-img/42.png', 'rrrrrr'),
(13, 'Catus Flower', 1, '2021-08-19', 100, 1, 'guest/img/bg-img/43.png', 'rrrrrr'),
(14, 'Catus Flower', 1, '2021-08-12', 200, 1, 'guest/img/bg-img/44.png', 'qqqqqq'),
(15, 'Tuliver', 1, '2021-02-02', 200, 1, 'guest/img/bg-img/40.png', 'tttttt'),
(16, 'Tuliver222', 1, '2021-02-02', 300, 1, 'guest/img/bg-img/45.png', 'tttttt'),
(17, 'Tuliver32', 1, '2021-02-02', 300, 1, 'guest/img/bg-img/46.png', 'tttttt'),
(18, 'Tuliver32', 1, '2021-02-02', 300, 1, 'guest/img/bg-img/40.png', 'tttttt'),
(19, 'Tuliver323333', 1, '2021-09-03', 300, 2, 'guest/img/bg-img/44.png', 'tttttt'),
(20, 'hoa2222', 1, '2021-02-02', 100, 1, 'guest/img/bg-img/48.png', 'tttttt'),
(21, 'hoa 1', 1, '2021-09-03', 100, 1, 'guest/img/bg-img/42.png', 'ttt'),
(22, 'hoa moi', 1, '2021-09-03', 100, 1, 'guest/img/bg-img/43.png', 'ttt'),
(23, 'hoa moi1', 1, '2021-09-03', 100, 1, 'guest/img/bg-img/45.png', 'ttt'),
(24, 'hoa iiiii', 1, '2021-09-02', 100, 1, 'guest/img/bg-img/47.png', 'ttttt'),
(25, 'Tulip USA', 1, '2021-09-19', 400, 1, 'guest/img/bg-img/163198523944.png', 'Tulip in USA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_order`
--

CREATE TABLE `status_order` (
  `StatusID` int(11) NOT NULL,
  `StatusName` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `status_order`
--

INSERT INTO `status_order` (`StatusID`, `StatusName`, `Description`) VALUES
(1, 'Processing', 'Customer dat hang dang doi admin approve'),
(2, 'Delivery', NULL),
(3, 'Done', NULL),
(4, 'Cancel', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_product`
--

CREATE TABLE `status_product` (
  `StatusID` int(11) NOT NULL,
  `StatusName` varchar(50) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `status_product`
--

INSERT INTO `status_product` (`StatusID`, `StatusName`, `Description`) VALUES
(1, 'Active', 'Dang hoat dong'),
(2, 'Deactive', 'Khong hoat dong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `CustomerID` int(11) NOT NULL,
  `DeliveryAddress` varchar(200) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `OrderStatus` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `DeliveryAddressAfterConfirm` varchar(300) DEFAULT NULL,
  `TelephoneAfterConfirm` varchar(20) DEFAULT NULL,
  `DescriptionAfterConfirm` varchar(500) DEFAULT NULL,
  `FullNameAfterConfirm` varchar(200) DEFAULT NULL,
  `DeliveryDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`OrderID`, `OrderDate`, `CustomerID`, `DeliveryAddress`, `Telephone`, `Description`, `OrderStatus`, `TotalPrice`, `DeliveryAddressAfterConfirm`, `TelephoneAfterConfirm`, `DescriptionAfterConfirm`, `FullNameAfterConfirm`, `DeliveryDate`) VALUES
(11, '2021-08-31 01:54:15', 1, '137/14 Phan Anh', '0995615253', 'Quickly quickly', 1, 300, NULL, NULL, NULL, '', NULL),
(12, '2021-08-31 02:54:53', 1, '111 ggg', '099312321', 'ttttt', 4, 200, '123', '1234', '12332', 'Hoang Huu Nghia', '2021-09-10 21:47:00'),
(13, '2021-08-31 10:51:14', 1, '3343 ggg', '5555', 'ttttt', 3, 400, '133/14 Phan ANh', '0995615253', 'hhhhhh', 'Hoang Huu Nghia', '2021-09-01 00:00:00'),
(14, '2021-09-09 23:46:59', 2, '930 Cach Mang Thang Tam', '0995615253', 'quickly', 1, 600, NULL, NULL, NULL, NULL, NULL),
(15, '2021-09-09 23:48:53', 2, '231 Dong Khoi', '0995615253', 'please contact me soon', 1, 200, NULL, NULL, NULL, NULL, NULL),
(16, '2021-09-09 23:49:36', 2, '33 Cong Hoa', '0995615253', 'Cong Hoa', 1, 400, NULL, NULL, NULL, NULL, NULL),
(17, '2021-09-09 23:50:11', 2, '77 Le Quang Xung', '0995615253', 'Le Quang Xung', 3, 300, '77 Le Quang Xung', '0995615253', 'Quickly', 'Hoang Huu Nghia', '2021-09-09 23:53:00'),
(18, '2021-09-09 23:50:56', 2, '11 Vo Thi Sau', '0995615253', 'Vo Thi Sau', 3, 100, '11 Vo Thi Sau', '0995615253', NULL, 'Hoang Huu Nghia', '2021-09-10 23:52:00'),
(19, '2021-01-01 18:07:34', 2, '137/14 Hoa Long', '0995615253', 'please contact me soon', 3, 300, NULL, NULL, NULL, NULL, NULL),
(20, '2021-02-03 18:14:50', 2, '137/14 Phan Anh', '0995615253', 'quickly', 3, 500, NULL, NULL, NULL, NULL, '2021-09-08 18:14:50'),
(21, '2021-03-10 18:16:36', 2, '137/14 Phan Anh', '0995615253', 'OK', 3, 200, '137/14 Phan Anh', '0995615253', NULL, NULL, '2021-09-10 13:16:35'),
(22, '2021-04-16 18:16:36', 2, '137/14 Phan Anh', '0995615253', 'OK', 3, 600, '137/14 Phan Anh', '0995615253', NULL, NULL, '2021-09-10 13:16:35'),
(23, '2021-05-14 18:18:51', 2, '137/14 Phan Anh', '0995615253', 'quickly', 3, 200, '137/14 Phan Anh', '0995615253', NULL, NULL, '2021-09-10 13:18:51'),
(24, '2021-06-04 18:18:51', 2, '137/14 Phan Anh', '0995615253', 'quickyly', 3, 700, '137/14 Phan Anh', '0995615253', NULL, NULL, '2021-09-10 13:18:51'),
(25, '2021-07-21 18:20:36', 2, '137/14 Phan Anh', '0995615253', 'quickyly', 3, 300, '137/14 Phan Anh', '0995615253', NULL, NULL, '2021-09-10 13:20:35'),
(26, '2021-09-18 23:51:10', 11, '137/22 Cach Mang Thang Tam', '0931721638', 'quickly', 3, 500, '137/22 Cach Mang Thang Tam', '0931721638', 'Quickly', 'Hoang Huu Nghia', '2021-09-18 23:54:00'),
(27, '2021-09-19 00:05:52', 12, '137/22 Cach Mang Thang Tam', '0931721638', 'quickly', 3, 1500, '137/22 Cach Mang Thang Tam', '0931721638', 'quickly', 'Hoang Huu Nghia', '2021-09-18 00:07:00'),
(28, '2021-09-21 15:25:20', 2, '137/22 Cach Mang Thang Tam', '0931721638', 'quickly', 1, 800, NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`AccountID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Chỉ mục cho bảng `customer_like_product`
--
ALTER TABLE `customer_like_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`SeqNum`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `Status` (`Status`);

--
-- Chỉ mục cho bảng `status_order`
--
ALTER TABLE `status_order`
  ADD PRIMARY KEY (`StatusID`);

--
-- Chỉ mục cho bảng `status_product`
--
ALTER TABLE `status_product`
  ADD PRIMARY KEY (`StatusID`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `OrderStatus` (`OrderStatus`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `customer_like_product`
--
ALTER TABLE `customer_like_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `SeqNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `status_order`
--
ALTER TABLE `status_order`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `status_product`
--
ALTER TABLE `status_product`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customer_like_product`
--
ALTER TABLE `customer_like_product`
  ADD CONSTRAINT `customer_like_product_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `customer_like_product_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `tbl_order` (`OrderID`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`Status`) REFERENCES `status_product` (`StatusID`);

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `tbl_order_ibfk_3` FOREIGN KEY (`OrderStatus`) REFERENCES `status_order` (`StatusID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
