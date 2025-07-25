-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 28, 2020 lúc 01:42 AM
-- Phiên bản máy phục vụ: 5.5.63-MariaDB
-- Phiên bản PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cf_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci,
  `admin_state` int(11) DEFAULT '1',
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$sYR1CeUP5x0cw2Rwc1N25uglpBtX520qXyolMIggKy.zEt6XUinRu', '', '', '', 1, 1),
(4, NULL, NULL, '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, NULL),
(6, 'huyen', 'huyen', '$2y$10$3QBGNqA/qYZy6lCHJNLduOqMG4HEWec1ZU0lDfrixpn8Hyk0h3xQi', '', 'content24hgroup14@gmail.com', '', 1, 2),
(7, 'Trương Quang Tuấn', 'tuan', '$2y$10$mZKINVCnYWUN.ZTb3uygPO7Xhwg0qhHcaE6GUm0Qhy/Gsbz2alkU.', '0987654321', 'tuan@gmail.com', '', 1, 2),
(12, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '$2y$10$FIgkFJ7fUgosh6jeKUBUCerAgQpd6kzLbI0E6vFBvJlvN3V8zacxS', '0974641990', 'dvn.tungnguyen@gmail.com', '', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci,
  `note_buyer` text COLLATE utf8_unicode_ci,
  `method` text COLLATE utf8_unicode_ci,
  `new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `session_id`, `total_price`, `total_cart`, `date_cart`, `id_orderState`, `note_cart`, `name_buyer`, `mail_buyer`, `phone_buyer`, `address_buyer`, `note_buyer`, `method`, `new`) VALUES
(46, NULL, 'q6hilk5otma71lnmfk4jfe3bo0', 0, NULL, '0000-00-00', 1, NULL, 'Trương Tuấn 123', 'tuan@gmail.com', '012341', 'Ha Noi', 'test', NULL, 1),
(47, NULL, '8rg8qp2tib6bhq40siemsl0au1', 0, NULL, '0000-00-00', 2, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(48, NULL, 'p29v6fieekj8qc6r9iei8rkr84', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(49, NULL, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(50, NULL, 'skgfhmeppmr97bion8qlhv2f24', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(51, NULL, '14sbco3nbkh6tss6mibu4c63i2', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(52, NULL, 'rdk00s074i1i4seat51nh109d6', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(53, NULL, 'ibcpu4cam64hh6jvvlqde89v90', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(54, NULL, 'r2hcu630iilbqufhd80udq4eh0', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(55, NULL, 'krsem1sgk8k9smbs1uinikks42', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(56, NULL, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(57, NULL, 'q4asrlk395bqes71q3m1dj7a53', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(58, NULL, 'mfuj32kovfsj87sum11433so15', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(59, NULL, 'o82tantv1gh498mq2giekk0mj1', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(60, NULL, 'vv3bvs960u0efu33mksbikfr02', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(61, NULL, '77v49he85i8nuuet5p2vt9g7r0', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(62, NULL, 'qs835th55ruep5q2f34fdimdg6', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(63, NULL, '0v3amtlih28cip0bskvi8tr2t7', 7600000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(64, NULL, 's34tnbg59l4psbpbc2jg4ru734', 135000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(65, NULL, 'jna4k52dg50ce0e2euknmpsc53', 760000, NULL, '0000-00-00', NULL, NULL, 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '', NULL, 1),
(66, NULL, '1mrapf9122qb0n9gd32j94l6f5', 6000, NULL, '0000-00-00', NULL, NULL, 'adf', 'viethung@gmail.com', '01672523165', 'ha nội', 'ghi chú aaa', NULL, 1),
(67, NULL, 'sl6a5d5957d6n37tptrtp29mt4', 2000, NULL, '0000-00-00', NULL, NULL, 'bczcv', 'viethung@gmail.com', 'aasdfas', 'asfas', 'fdasdfasdf', NULL, 1),
(68, NULL, 'ape83laqntnptihbcmk5g0li26', 0, NULL, '0000-00-00', 2, '', 'tuan', 'tuan@gmail.com', '0123', 'Ha Noi', '29-3', NULL, 1),
(69, NULL, 'lc7opealpf3l1a0m2utp3nr4g7', 2937600, NULL, '0000-00-00', NULL, NULL, 'adsfasdf', 'viethung@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'fasdfasdf', NULL, 1),
(70, NULL, '5h573qfbbcbulqljthad7scpd3', 935300, NULL, '0000-00-00', NULL, NULL, 'foreverlvoe', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'ádfasdf', NULL, 1),
(71, NULL, '904nrn3lmfkbev7956opp4sbt5', 500400, NULL, '0000-00-00', NULL, NULL, '', '', '', '', '', NULL, 1),
(72, NULL, 'h2tteteqcbai73din008s3fbf1', 236700, NULL, '0000-00-00', NULL, NULL, 'Việt', 'viethung95cute@gmail.com', '1672523165', '', 'adasdsdas', NULL, 1),
(73, NULL, '9a4ohferctq5glunhc0up38tn3', 179100, NULL, '0000-00-00', NULL, NULL, 'Việt', 'viethung95cute@gmail.com', '1672523165', '', 'adasdasdasd', NULL, 1),
(74, NULL, '71o180267q5n0ecrec32uc0me6', 568200, NULL, '0000-00-00', 1, '', 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '1672523165', 'ĐH Mỏ - Địa chất', 'Test giỏ hàng', NULL, 1),
(75, NULL, 'uu5mmo6to1qch4qk2pqu12u5k3', 222220, NULL, '0000-00-00', 4, '', 'nguyenthuhuyen', 'huyennt62@wru.vn', '0352612682', 'Số 10/42 Sài Đồng, Long Biên', '', NULL, 1),
(77, NULL, 'm7v5tdrjh32p98jboh9bvbfth1', 222220, NULL, '2019-12-07', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0945184364', 'Hdhdjdj', '', NULL, 1),
(78, NULL, 'g57v11k51dceppu3ecv4eqetj4', 1999980, NULL, '2019-12-07', NULL, NULL, 'abc', 'anhtuan@gmail.com', '093443353', '223444', '334', NULL, 1),
(79, NULL, 'dvuce7s2lc3f0cp46cna1ggrv6', 444440, NULL, '2019-12-07', NULL, NULL, 'tuan', 'photographer@gmail.com', '675654', '4775674567', '65756756', NULL, 1),
(80, NULL, '6v6hpv39r10bmjl079qb7p3fc2', 24666420, NULL, '2019-12-07', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0352612682', 'Số 10/42 Sài Đồng, Long Biên', '', NULL, 1),
(81, NULL, 'a67fpfvoo9agjehd31hn2qj1k6', 444440, NULL, '2019-12-07', 1, '', 'Trương Quang Tuấn', 'tuan@gmail.com', '0352612682', 'Số 10/42 Sài Đồng, Long Biên', 'chờ xác nhận', NULL, 1),
(83, NULL, 'q5f95bk44tg3lapbsuka9binm1', 222220, NULL, '2019-12-10', 1, 'chờ xác nhận', 'abc', 'huyennt162@wru.vn', '03526126822', 'Số 10/42 Sài Đồng, Long Biên', 'chờ xác nhận', NULL, 1),
(85, NULL, 'os2bbq2mi5jnm5jv9gth62hfd2', 222220, NULL, '2019-12-10', 2, 'teass', 'abc', 'huyennt162@wru.vn', '03526126822', 'Số 10/42 Sài Đồng, Long Biên', '11111111111111', NULL, 1),
(88, NULL, 'f7tp2dqlh8vvtechn0gdtsc555', 222220, NULL, '2019-12-10', 3, 'aaaasfggbgnhmnjhumfgbf', 'abc', 'huyennt162@wru.vn', '03526126822', 'Số 10/42 Sài Đồng, Long Biên', NULL, NULL, 1),
(89, NULL, 'qu5fld9iga88uraa13f0epl2n0', 222220, NULL, '2019-12-11', NULL, NULL, 'abc', 'huyennt162@wru.vn', '03526126822', 'Số 10/42 Sài Đồng, Long Biên', '', NULL, 1),
(90, NULL, 'ec4ss9psutfu8s779ei261bgu2', 222220, NULL, '2019-12-12', NULL, NULL, 'Phạm Hoàng Long', 'quatmay999@gmail.com', '0965252789', 'xczxczx', '', NULL, 1),
(91, NULL, '1bh6nl97ah77vjv7etphkofp84', 0, NULL, '2019-12-12', 7, '', 'Phạm Hoàng Long', 'quatmay999@gmail.com', '0965252789', 'Gghbv', NULL, NULL, 1),
(92, NULL, '3qnlm8hjh3d39siedied72q744', 0, NULL, '2019-12-12', NULL, NULL, 'Phạm Hoàng Long', 'quatmay999@gmail.com', '0965252789', 'Yhbh', '', NULL, 1),
(93, NULL, 'e2om8fo0egn965667vnn6c71u0', 211109, NULL, '2019-12-16', NULL, NULL, 'abc', 'huyennt162@wru.vn', '03526126822', 'Số 10/42 Sài Đồng, Long Biên', '', NULL, 1),
(94, NULL, '9ep1lqickb348mr0lh83udg317', 18320000, NULL, '2019-12-18', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Số 10/42 Sài Đồng, Long Biên', '123', NULL, 1),
(95, NULL, '379s0q3tg2t97i16ptr6cj2062', 1822000, NULL, '2019-12-18', 6, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0352612682', 'Số 10/42 Sài Đồng, Long Biên', 'test', NULL, 1),
(96, NULL, '1e1vj2ca3kqfmgfpho3gid6j46', 1822000, NULL, '2019-12-18', 7, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0352612682', 'Số 10/42 Sài Đồng, Long Biên', '', NULL, 1),
(98, NULL, 'nmiahms1mlg0o82nhkuavac0f7', 1832000, NULL, '2019-12-19', 7, NULL, 'Trương Quang Tuấn', 'truongquangtuan3110@gmail.com', '0987654321', '26 HÀNG DẦU', 'test', '', 1),
(99, NULL, '3ddirnkl6h4qjmt168ofkmjpu5', 3644000, NULL, '2019-12-19', NULL, NULL, 'Trương Quang Tuấn', 'truongquangtuan3110@gmail.com', '0987654321', '26 HÀNG DẦU', 'TEST 2', '', 1),
(100, NULL, '43bccc4avth38ml6r2imjpo9o2', 3644000, NULL, '2019-12-21', NULL, NULL, 'Trương Tuấn 12', 'tuan@gmail.com', '0123', 'lâm gia trang1', '', '', 1),
(101, NULL, '2d65mh7835f5jg08dites81h82', 1832000, NULL, '2019-12-21', 7, NULL, 'Trương Tuấn 12', 'tuan@gmail.com', '0123', 'lâm gia trang1', '', '', 1),
(102, NULL, 'quvpugt7i99gnjtqopju1aqfe2', 3664000, NULL, '2019-12-21', 7, NULL, 'Trương Tuấn 12', 'tuan@gmail.com', '0123', 'lâm gia trang1', '', '', 1),
(103, NULL, 'jlfaudtetm0nb0gga73m58n5o2', 2519400, NULL, '2019-12-21', 2, NULL, 'Trương Tuấn 12', 'tuan@gmail.com', '0123', 'lâm gia trang1', '', 'Thanh toán chuyển khoản', 1),
(104, NULL, 'ee7pda26hrvbtvu28p0k7ab0o0', 213000, NULL, '2019-12-21', 7, NULL, 'Trương Tuấn 12', 'tuan@gmail.com', '0123', 'lâm gia trang1', '', 'Thanh toán tiền mặt', 1),
(105, NULL, 'sggb7tbs3jc6sega4lh6o72lm7', 223000, NULL, '2019-12-26', 6, NULL, 'Nguyễn Thanh Tùng', 'lucifer23011990@gmail.com', '0974641990', '16 ngõ 302 minh khai', '', 'Thanh toán tiền mặt', 1),
(106, NULL, '39pth45lfnj8qipvn64sv1aha2', 213000, NULL, '2019-12-26', NULL, NULL, 'Trương Tuấn 123', 'tuan@gmail.com', '01234', 'lâm gia trang12', '', 'Thanh toán VNpay.', 1),
(107, NULL, 'mvrjis22oj4s8t32m3lt0ip4h2', 213000, NULL, '2019-12-29', 6, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'áiuahsifuash', '', 'Thanh toán tiền mặt.', 1),
(108, NULL, 'adhf3mms48e6qh5ed9p135qe35', 223000, NULL, '2019-12-30', NULL, NULL, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Hà Nội', 'test', 'Thanh toán tiền mặt', 1),
(109, NULL, 'a6avqjb0bcmjq2r9n8ogu4hog0', 213000, NULL, '2019-12-30', NULL, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'Fguh', '', 'Thanh toán VNpay.', 1),
(110, NULL, 'son9b5uc1c6omb1t841j957h83', 1065000, NULL, '2019-12-30', NULL, NULL, 'àas', 'fasfasf@fsaf.sdgfsdf', 'fasfas', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(111, NULL, 'kockf57b0mi82f89meqo8b73k4', 437000, NULL, '2019-12-31', NULL, NULL, 'Trương Tuấn 123', 'tuan@gmail.com', '01234', 'lâm gia trang12', '', 'Thanh toán tiền mặt', 1),
(112, NULL, 'uo4ke8vn6q7rp9oj49i8807e27', 213000, NULL, '2019-12-31', NULL, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt.', 1),
(113, NULL, '86lljflfrl1f5fb136vfs0jno4', 213000, NULL, '2019-12-31', NULL, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt.', 1),
(114, NULL, 'tfkbk7hee1cs5ih4mbodammq27', 600000, NULL, '2019-12-31', NULL, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt', 1),
(115, NULL, 'iv3jsb16qpqmv1lk7trkegiaf6', 2519400, NULL, '2019-12-31', NULL, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt', 1),
(116, NULL, '599369e1c91qf5s5c5o2va3t25', 1832000, NULL, '2019-12-31', NULL, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt', 1),
(117, NULL, 'r3vhbl9ovnfjpafkl6tl83dq81', 223000, NULL, '2019-12-31', NULL, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt.', 1),
(118, NULL, 'hli7l5k42slat7pn4cnm5h2tc3', 480000, NULL, '2019-12-31', NULL, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt', 1),
(119, NULL, '7c1sdu1defpu39orhcar8rbdt1', 223000, NULL, '2019-12-31', NULL, NULL, 'Hdhdhd', 'bxbdhdh@hsudh.com', '4649595', 'Gdhdhd', '', 'Thanh toán tiền mặt.', 1),
(120, NULL, '7mpotpfjk11cel5ppovve89dp3', 223000, NULL, '2019-12-31', NULL, NULL, 'Jdjdj', 'quatmay999@gmail.com', '65656', 'Hdhdh', '', 'Thanh toán tiền mặt.', 1),
(121, NULL, 'k0179bqebvoku2q3n2g14qtsb6', 223000, NULL, '2019-12-31', NULL, NULL, 'Dhydh', 'quatmay999@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(122, NULL, 'n3p845tn4lc83la0uoj295nmh7', 223000, NULL, '2019-12-31', NULL, NULL, 'huyeb', 'huyennt62@wru.vn', '098433', 'Căn hộ 01 Nhà A4, TT QĐ Binh đoàn 11, Khương Đình, Thanh Xuân', '', 'Thanh toán tiền mặt', 1),
(123, NULL, 'qcbnadfl8ukn5p3d98nmm117a7', 213000, NULL, '2019-12-31', NULL, NULL, 'Trương Tuấn 123', 'tuan@gmail.com', '012341', 'lâm gia trang12', '', 'Thanh toán tiền mặt', 1),
(124, NULL, 'bamkr7hcddh4np35eufcbi9645', 675000, NULL, '2019-12-31', 4, NULL, 'Nguyễn Thanh Tùng ', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt.', 1),
(125, NULL, 'jf2mg4qghnt321t7repbgmvgh7', 213000, NULL, '2020-01-01', NULL, NULL, 'Trương Tuấn 123', 'tuan@gmail.com', '012341', 'lâm gia trang12', '', 'Thanh toán tiền mặt', 1),
(126, NULL, 'ms9du4mr5hhkb9inurkhfklok6', 213000, NULL, '2020-01-01', NULL, NULL, 'Trương Tuấn 123', 'tuan@gmail.com', '012341', 'lâm gia trang12', '', 'Thanh toán tiền mặt', 1),
(127, NULL, 'i34j0tuse6188rv2jg658grpt5', 426000, NULL, '2020-01-01', 1, NULL, 'Trương Tuấn 123', 'tuan@gmail.com', '012341', 'lâm gia trang12', '', 'Thanh toán tiền mặt', 1),
(128, NULL, '7f1e201uqa24gqrvgfncf7b5m3', 491000, NULL, '2020-01-02', NULL, NULL, 'đâs', 'quatmay999@gmail.com', 'ádasdas', 'ádas', '', 'Thanh toán tiền mặt.', 1),
(130, NULL, 'kr614dic3verl72ohi8map9624', 1461000, NULL, '2020-01-03', 5, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshxhdh', '', 'Thanh toán tiền mặt.', 1),
(131, NULL, 'f9pkt824vui8s1o8nfefmrake0', 213000, NULL, '2020-01-03', NULL, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'Gjfjfjf', '', 'Thanh toán tiền mặt.', 1),
(132, NULL, 'dsaht6lr7e8a2f9etr97jlmdf0', 213000, NULL, '2020-01-03', 4, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'Gjfjfjf', '', 'Thanh toán chuyển khoản', 1),
(133, NULL, '1m56djr0cseflejv1ou9lj0pn7', 446000, NULL, '2020-01-06', 3, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0965252789', 'xczxczx', '', 'Thanh toán chuyển khoản', 1),
(134, NULL, 'oecmtnmjnok05g18ng9ls3j080', 223000, NULL, '2020-01-06', 2, NULL, 'Nguyễn', 'quatmay999@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán chuyển khoản', 1),
(135, NULL, 'v273v4oeiu4kq1k8aucj4eg4f3', 223000, NULL, '2020-01-06', 4, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', 'dvn.tungnguyen@gmail.com', 'ádas', '', 'Thanh toán chuyển khoản', 1),
(136, NULL, 'tilirjl1pcomifofqa1nrt22l5', 337000, NULL, '2020-01-06', NULL, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'Đmdmdmdmd', '', 'Thanh toán tiền mặt', 1),
(137, NULL, 'qplttl539o3h76tnqfvt9nh0b6', 580000, NULL, '2020-01-06', 7, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'Đmdmdmdmd', '', 'Thanh toán tiền mặt.', 1),
(138, NULL, '9n57udhoiv2e687rt9m20rmcc2', 6821400, NULL, '2020-01-08', NULL, NULL, 'Phan Hoàng', 'quatmay999@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt', 1),
(139, NULL, 'd3h66poe44m7sp0pa89d8sbe53', 3219400, NULL, '2020-01-08', 7, NULL, 'Phan Hoàng', 'dvn.tungnguyen@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt', 1),
(140, NULL, 'o5gbn8thtlvva607nhis9oa740', 213000, NULL, '2020-01-08', 7, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', 'dvn.tungnguyen@gmail.com', '27 Phương Mai', '', 'Thanh toán tiền mặt', 1),
(141, NULL, '8kk4pfi8l55eg6dka23f7hknj7', 9390200, NULL, '2020-01-08', 7, NULL, 'Phan Hoàng', 'dvn.tungnguyen@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(142, NULL, 'ak3r0s4qiofedlg4dv0qa7nfh2', 3432400, NULL, '2020-01-08', NULL, NULL, 'Phạm Hoàng Long', 'quatmay999@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(143, NULL, 'cf2c354p0jgala1f4k0bf29rs3', 300000, NULL, '2020-01-08', NULL, NULL, 'Nguyễn Thanh Tùng', 'quatmay999@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(144, NULL, 'tic3mm839t1vt0q1ti3sn8gfm4', 290000, NULL, '2020-01-08', NULL, NULL, 'Phan Hoàng', 'dvn.tungnguyen@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(145, NULL, 'vqp8blg1dlqoat057h8997c6q2', 213000, NULL, '2020-01-08', NULL, NULL, 'Phan Hoàng', 'dvn.tungnguyen@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(146, NULL, '8hijn6cmeltqdmi5r34u735n43', 13754200, NULL, '2020-01-08', NULL, NULL, 'Nguyễn Thanh Tùng', 'quatmay999@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(147, NULL, 'i170s1suo0tlig3s88jnqb6vt6', 446000, NULL, '2020-01-08', 7, NULL, 'Phan Hoàng', 'dvn.tungnguyen@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt', 1),
(148, NULL, 'c2liunpjp2t4ehe8gied43oqg3', 426000, NULL, '2020-01-08', 7, NULL, 'Phan Hoàng', 'dvn.tungnguyen@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán chuyển khoản', 1),
(149, NULL, 't40quhkvh787oc0lf6j411vhu1', 223000, NULL, '2020-01-10', NULL, NULL, 'Hggtt', 'uhhhhhhvvv@gmail.com', '58555', 'Jhgvvvv', '', 'Thanh toán tiền mặt', 1),
(150, NULL, '4vsktp3pkh3nr079i2hh82gjr1', 1560000, NULL, '2020-01-10', NULL, NULL, 'sadas', 'quatmay999@gmail.com', 'ádasdas', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(151, NULL, '8bm08pdp4m6auvbbvigs2qn6b7', 1064000, NULL, '2020-01-10', 7, NULL, 'Nguyen Thanh Tung q', 'dvn.tungnguyen@gmail.com', '0974641990', 'đá', '', 'Thanh toán tiền mặt.', 1),
(152, NULL, 'hk8qv8v0qsepgu1cei4050rv94', 1064000, NULL, '2020-01-10', NULL, NULL, 'Bhhhu', 'bhhnh@bhygh.com', '((//((', 'Hhjnj', '', 'Thanh toán tiền mặt.', 1),
(153, NULL, '23q6a0ia1eifi9cv47kbd982n2', 4145400, NULL, '2020-01-10', NULL, NULL, 'Jdjdj', 'quatmay999@gmail.com', '0965252789', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(154, NULL, 'opmgm8pvibstvmt7o2bn832ml5', 6644800, NULL, '2020-01-10', 7, NULL, 'Nguyen Thanh Tung q', 'dvn.tungnguyen@gmail.com', '0974641990', 'Kdkdk', '', 'Thanh toán tiền mặt.', 1),
(155, NULL, 'ij300dc0o6qb95puar69rfqt14', 534000, NULL, '2020-01-11', 7, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'Hshdhdád', '', 'Thanh toán tiền mặt.', 1),
(156, NULL, 't9c58p2rl2virogk0jfa7ub152', 1482000, NULL, '2020-01-16', NULL, NULL, 'Nguyễn Thanh Tùng', 'quatmay999@gmail.com', '0965252789', 'xczxczx', '', 'Thanh toán tiền mặt.', 1),
(157, NULL, 'dteve1vfm7phkcbg784nntng46', 763000, NULL, '2020-01-16', 7, NULL, 'Nguyễn Thanh Tùng 1', 'dvn.tungnguyen@gmail.com', '0974641990', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(158, NULL, '3kavubigicqtasmtb4iev3akh4', 639000, NULL, '2020-01-16', 7, NULL, 'Nguyễn Thanh Tùng 1', 'dvn.tungnguyen@gmail.com', '0974641990', 'ádas', '', 'Thanh toán tiền mặt', 1),
(159, NULL, 'fqo52o25tnoea240rbih6eser2', 4145400, NULL, '2020-01-16', NULL, NULL, 'Hdhdndn', 'kdk@gmail.com', ')&)&8&8', 'Tjfjfjf', '', 'Thanh toán tiền mặt.', 1),
(160, NULL, 'vc9ofm115l1h7d6eha2p7sj5b2', 1064000, NULL, '2020-01-17', 7, NULL, 'Nguyễn Thanh Tùng 1', 'dvn.tungnguyen@gmail.com', '0974641990', ',sms,x,x', '', 'Thanh toán tiền mặt.', 1),
(162, NULL, 't3v16add36ko2toochlnd82ta1', 3858400, NULL, '2020-01-17', 7, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', 'ádas', '', 'Thanh toán tiền mặt.', 1),
(164, NULL, '2ktm8sa463cfbuathurbmduge7', 6116000, NULL, '2020-02-15', 6, NULL, 'Nguyễn Thanh Tùng 1', 'dvn.tungnguyen@gmail.com', '0974641990', '27 Phương Mai', 'Không liên lạc được với chủ thuê bao', 'Thanh toán tiền mặt.', 1),
(165, NULL, 'mds0856thmqs86jt41pig905d2', 426000, NULL, '2020-02-15', 1, NULL, 'Nguyễn Thanh Tùng 1', 'dvn.tungnguyen@gmail.com', '0974641990', '27 Phương Mai', '', 'Thanh toán tiền mặt', 1),
(166, NULL, 'v2divnbqgc9k8ocodr9m7abou5', 223000, NULL, '2020-02-15', NULL, NULL, 'Nguyễn Thanh Tùng', 'quatmay999@gmail.com', '0974641990', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(167, NULL, 'kfd2e07rigfa6p91bav1gmpfs3', 31115400, NULL, '2020-02-15', 2, NULL, 'Nguyễn Thanh Tùng', 'dvn.tungnguyen@gmail.com', '0974641990', '27 Phương Mai', '', 'Thanh toán tiền mặt.', 1),
(168, NULL, '3itfgb9b6mfcqkjichdghrmno3', 223000, NULL, '2020-02-22', NULL, NULL, 'anh tung', 'tung@gmail.com', '0934559968', 'hoang mai', 'ship nhanh', 'Thanh toán chuyển khoản', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cartdetail`
--

INSERT INTO `cartdetail` (`id_cartDetail`, `id_product`, `session_id`, `price_product`, `qyt_product`, `totalprice_product`, `subInfo1`, `id_color`, `id_size`, `color`, `size`, `id_cart`) VALUES
(32, 28, 'q6hilk5otma71lnmfk4jfe3bo0', 760000, 1, 760000, NULL, 0, 0, '', '', 46),
(33, 29, '8rg8qp2tib6bhq40siemsl0au1', 760000, 1, 760000, NULL, 0, 0, '', '', 47),
(34, 27, 'p29v6fieekj8qc6r9iei8rkr84', 760000, 1, 760000, NULL, 0, 0, '', '', 48),
(35, 28, 'gibro9jjp7o8r4dhlulet7t2c7', 760000, 1, 760000, NULL, 0, 0, '', '', 49),
(36, 30, 'skgfhmeppmr97bion8qlhv2f24', 7600000, 1, 7600000, NULL, 0, 0, '', '', 50),
(37, 31, '14sbco3nbkh6tss6mibu4c63i2', 760000, 1, 760000, NULL, 0, 0, '', '', 51),
(38, 32, 'rdk00s074i1i4seat51nh109d6', 7600000, 1, 7600000, NULL, 0, 0, '', '', 52),
(39, 33, 'ibcpu4cam64hh6jvvlqde89v90', 760000, 1, 760000, NULL, 0, 0, '', '', 53),
(40, 35, 'r2hcu630iilbqufhd80udq4eh0', 760000, 1, 760000, NULL, 0, 0, '', '', 54),
(41, 36, 'krsem1sgk8k9smbs1uinikks42', 7600000, 1, 7600000, NULL, 0, 0, '', '', 55),
(42, 37, 'gjdbs5hhkns2vjb0juaf6g8i84', 135000, 1, 135000, NULL, 0, 0, '', '', 56),
(43, 37, 'q4asrlk395bqes71q3m1dj7a53', 135000, 1, 135000, NULL, 0, 0, '', '', 57),
(44, 27, 'mfuj32kovfsj87sum11433so15', 760000, 1, 760000, NULL, 0, 0, '', '', 58),
(45, 28, 'o82tantv1gh498mq2giekk0mj1', 760000, 1, 760000, NULL, 0, 0, '', '', 59),
(46, 29, 'vv3bvs960u0efu33mksbikfr02', 760000, 1, 760000, NULL, 0, 0, '', '', 60),
(47, 30, '77v49he85i8nuuet5p2vt9g7r0', 7600000, 1, 7600000, NULL, 0, 0, '', '', 61),
(48, 35, 'qs835th55ruep5q2f34fdimdg6', 760000, 1, 760000, NULL, 0, 0, '', '', 62),
(49, 36, '0v3amtlih28cip0bskvi8tr2t7', 7600000, 1, 7600000, NULL, 0, 0, '', '', 63),
(50, 37, 's34tnbg59l4psbpbc2jg4ru734', 135000, 1, 135000, NULL, 0, 0, '', '', 64),
(51, 27, 'jna4k52dg50ce0e2euknmpsc53', 760000, 1, 760000, NULL, 0, 0, '', '', 65),
(52, 27, '1mrapf9122qb0n9gd32j94l6f5', 2000, 3, 6000, NULL, 0, 0, '', '', 66),
(53, 27, 'sl6a5d5957d6n37tptrtp29mt4', 2000, 1, 2000, NULL, 0, 0, '', '', 67),
(54, 28, 'ape83laqntnptihbcmk5g0li26', 2000, 3, 6000, NULL, 0, 0, '', '', 68),
(55, 27, 'lc7opealpf3l1a0m2utp3nr4g7', 125100, 4, 500400, NULL, 0, 0, '', '', 69),
(56, 29, 'lc7opealpf3l1a0m2utp3nr4g7', 999000, 2, 1998000, NULL, 0, 0, '', '', 69),
(57, 38, 'lc7opealpf3l1a0m2utp3nr4g7', 219600, 2, 439200, NULL, 0, 0, '', '', 69),
(58, 35, '5h573qfbbcbulqljthad7scpd3', 199000, 2, 398000, NULL, 0, 0, '', '', 70),
(59, 36, '5h573qfbbcbulqljthad7scpd3', 179100, 1, 179100, NULL, 0, 0, '', '', 70),
(60, 37, '5h573qfbbcbulqljthad7scpd3', 179100, 2, 358200, NULL, 0, 0, '', '', 70),
(61, 27, '904nrn3lmfkbev7956opp4sbt5', 125100, 4, 500400, NULL, 0, 0, '', '', 71),
(62, 33, 'h2tteteqcbai73din008s3fbf1', 236700, 1, 236700, NULL, 0, 0, '', '', 72),
(63, 37, '9a4ohferctq5glunhc0up38tn3', 179100, 1, 179100, NULL, 0, 0, '', '', 73),
(64, 36, '71o180267q5n0ecrec32uc0me6', 199000, 1, 199000, NULL, 0, 0, '', '', 74),
(65, 28, '71o180267q5n0ecrec32uc0me6', 119000, 1, 119000, NULL, 0, 0, '', '', 74),
(66, 27, '71o180267q5n0ecrec32uc0me6', 125100, 2, 250200, NULL, 0, 0, '', '', 74),
(67, 43, 'uu5mmo6to1qch4qk2pqu12u5k3', 222220, 1, 222220, NULL, 0, 0, '', '', 75),
(70, 44, 'm7v5tdrjh32p98jboh9bvbfth1', 0, 1, 0, NULL, 0, 0, '', '', 77),
(71, 43, 'm7v5tdrjh32p98jboh9bvbfth1', 222220, 1, 222220, NULL, 0, 0, '', '', 77),
(72, 43, 'g57v11k51dceppu3ecv4eqetj4', 222220, 9, 1999980, NULL, 0, 0, '', '', 78),
(73, 43, 'dvuce7s2lc3f0cp46cna1ggrv6', 222220, 2, 444440, NULL, 0, 0, '', '', 79),
(74, 43, '6v6hpv39r10bmjl079qb7p3fc2', 222220, 111, 24666420, NULL, 0, 0, '', '', 80),
(75, 44, '6v6hpv39r10bmjl079qb7p3fc2', 0, 2, 0, NULL, 0, 0, '', '', 80),
(76, 43, 'a67fpfvoo9agjehd31hn2qj1k6', 222220, 2, 444440, NULL, 0, 0, '', '', 81),
(78, 43, 'q5f95bk44tg3lapbsuka9binm1', 222220, 1, 222220, NULL, 0, 0, '', '', 83),
(80, 43, 'os2bbq2mi5jnm5jv9gth62hfd2', 222220, 1, 222220, NULL, 0, 0, '', '', 85),
(83, 43, 'f7tp2dqlh8vvtechn0gdtsc555', 222220, 1, 222220, NULL, 0, 0, '', '', 88),
(84, 43, 'qu5fld9iga88uraa13f0epl2n0', 222220, 1, 222220, NULL, 0, 0, '', '', 89),
(85, 43, 'ec4ss9psutfu8s779ei261bgu2', 222220, 1, 222220, NULL, 0, 0, '', '', 90),
(86, 43, '1bh6nl97ah77vjv7etphkofp84', 222220, 1, 222220, NULL, 0, 0, '', '', 91),
(87, 44, '3qnlm8hjh3d39siedied72q744', 0, 1, 0, NULL, 0, 0, '', '', 92),
(88, 43, 'e2om8fo0egn965667vnn6c71u0', 211109, 1, 211109, NULL, 0, 0, '', '', 93),
(89, 44, '9ep1lqickb348mr0lh83udg317', 1832000, 10, 18320000, NULL, 0, 0, '', '', 94),
(90, 44, '379s0q3tg2t97i16ptr6cj2062', 1822000, 1, 1822000, NULL, 0, 0, '', '', 95),
(91, 44, '1e1vj2ca3kqfmgfpho3gid6j46', 1822000, 1, 1822000, NULL, 0, 0, '', '', 96),
(93, 44, 'nmiahms1mlg0o82nhkuavac0f7', 1832000, 1, 1832000, NULL, 0, 0, '', '', 98),
(94, 44, '3ddirnkl6h4qjmt168ofkmjpu5', 1822000, 2, 3644000, NULL, 0, 0, '', '', 99),
(95, 44, '43bccc4avth38ml6r2imjpo9o2', 1822000, 2, 3644000, NULL, 0, 0, '', '', 100),
(96, 44, '2d65mh7835f5jg08dites81h82', 1832000, 1, 1832000, NULL, 0, 0, '', '', 101),
(97, 44, 'quvpugt7i99gnjtqopju1aqfe2', 1832000, 2, 3664000, NULL, 0, 0, '', '', 102),
(98, 47, 'jlfaudtetm0nb0gga73m58n5o2', 2519400, 1, 2519400, NULL, 0, 0, '', '', 103),
(99, 44, 'ee7pda26hrvbtvu28p0k7ab0o0', 213000, 1, 213000, NULL, 0, 0, '', '', 104),
(100, 44, 'sggb7tbs3jc6sega4lh6o72lm7', 223000, 1, 223000, NULL, 0, 0, '', '', 105),
(101, 44, '39pth45lfnj8qipvn64sv1aha2', 213000, 1, 213000, NULL, 0, 0, '', '', 106),
(102, 44, 'mvrjis22oj4s8t32m3lt0ip4h2', 213000, 1, 213000, NULL, 0, 0, '', '', 107),
(103, 44, 'adhf3mms48e6qh5ed9p135qe35', 223000, 1, 223000, NULL, 0, 0, '', '', 108),
(104, 44, 'a6avqjb0bcmjq2r9n8ogu4hog0', 213000, 1, 213000, NULL, 0, 0, '', '', 109),
(105, 44, 'son9b5uc1c6omb1t841j957h83', 213000, 5, 1065000, NULL, 0, 0, '', '', 110),
(106, 48, 'kockf57b0mi82f89meqo8b73k4', 224000, 1, 224000, NULL, 0, 0, '', '', 111),
(107, 44, 'kockf57b0mi82f89meqo8b73k4', 213000, 1, 213000, NULL, 0, 0, '', '', 111),
(108, 44, 'uo4ke8vn6q7rp9oj49i8807e27', 213000, 1, 213000, NULL, 0, 0, '', '', 112),
(109, 44, '86lljflfrl1f5fb136vfs0jno4', 213000, 1, 213000, NULL, 0, 0, '', '', 113),
(110, 49, 'tfkbk7hee1cs5ih4mbodammq27', 600000, 1, 600000, NULL, 0, 0, '', '', 114),
(111, 47, 'iv3jsb16qpqmv1lk7trkegiaf6', 2519400, 1, 2519400, NULL, 0, 0, '', '', 115),
(112, 44, '599369e1c91qf5s5c5o2va3t25', 1832000, 1, 1832000, NULL, 0, 0, '', '', 116),
(113, 44, 'r3vhbl9ovnfjpafkl6tl83dq81', 223000, 1, 223000, NULL, 0, 0, '', '', 117),
(114, 48, 'hli7l5k42slat7pn4cnm5h2tc3', 480000, 1, 480000, NULL, 0, 0, '', '', 118),
(115, 44, '7c1sdu1defpu39orhcar8rbdt1', 223000, 1, 223000, NULL, 0, 0, '', '', 119),
(116, 44, '7mpotpfjk11cel5ppovve89dp3', 223000, 1, 223000, NULL, 0, 0, '', '', 120),
(117, 44, 'k0179bqebvoku2q3n2g14qtsb6', 223000, 1, 223000, NULL, 0, 0, '', '', 121),
(118, 44, 'n3p845tn4lc83la0uoj295nmh7', 223000, 1, 223000, NULL, 0, 0, '', '', 122),
(119, 44, 'qcbnadfl8ukn5p3d98nmm117a7', 213000, 1, 213000, NULL, 0, 0, '', '', 123),
(120, 49, 'bamkr7hcddh4np35eufcbi9645', 675000, 1, 675000, NULL, 0, 0, '', '', 124),
(121, 44, 'jf2mg4qghnt321t7repbgmvgh7', 213000, 1, 213000, NULL, 0, 0, '', '', 125),
(122, 44, 'ms9du4mr5hhkb9inurkhfklok6', 213000, 1, 213000, NULL, 0, 0, '', '', 126),
(123, 44, 'i34j0tuse6188rv2jg658grpt5', 213000, 2, 426000, NULL, 0, 0, '', '', 127),
(125, 47, '7f1e201uqa24gqrvgfncf7b5m3', 134000, 1, 134000, NULL, 0, 0, '', '', 128),
(126, 49, '7f1e201uqa24gqrvgfncf7b5m3', 123000, 1, 123000, NULL, 0, 0, '', '', 128),
(127, 48, '7f1e201uqa24gqrvgfncf7b5m3', 234000, 1, 234000, NULL, 0, 0, '', '', 128),
(129, 44, 'kr614dic3verl72ohi8map9624', 223000, 6, 1338000, NULL, 0, 0, '', '', 130),
(130, 49, 'kr614dic3verl72ohi8map9624', 123000, 1, 123000, NULL, 0, 0, '', '', 130),
(131, 44, 'f9pkt824vui8s1o8nfefmrake0', 213000, 1, 213000, NULL, 0, 0, '', '', 131),
(132, 44, 'dsaht6lr7e8a2f9etr97jlmdf0', 213000, 1, 213000, NULL, 0, 0, '', '', 132),
(133, 44, '1m56djr0cseflejv1ou9lj0pn7', 223000, 2, 446000, NULL, 0, 0, '', '', 133),
(134, 44, 'oecmtnmjnok05g18ng9ls3j080', 223000, 1, 223000, NULL, 0, 0, '', '', 134),
(135, 44, 'v273v4oeiu4kq1k8aucj4eg4f3', 223000, 1, 223000, NULL, 0, 0, '', '', 135),
(136, 47, 'tilirjl1pcomifofqa1nrt22l5', 124000, 1, 124000, NULL, 0, 0, '', '', 136),
(137, 44, 'tilirjl1pcomifofqa1nrt22l5', 213000, 1, 213000, NULL, 0, 0, '', '', 136),
(138, 44, 'qplttl539o3h76tnqfvt9nh0b6', 223000, 2, 446000, NULL, 0, 0, '', '', 137),
(139, 47, 'qplttl539o3h76tnqfvt9nh0b6', 134000, 1, 134000, NULL, 0, 0, '', '', 137),
(140, 44, '9n57udhoiv2e687rt9m20rmcc2', 223000, 14, 3122000, NULL, 0, 0, '', '', 138),
(141, 47, '9n57udhoiv2e687rt9m20rmcc2', 2519400, 1, 2519400, NULL, 0, 0, '', '', 138),
(142, 48, '9n57udhoiv2e687rt9m20rmcc2', 480000, 1, 480000, NULL, 0, 0, '', '', 138),
(143, 49, '9n57udhoiv2e687rt9m20rmcc2', 700000, 1, 700000, NULL, 0, 0, '', '', 138),
(144, 49, 'd3h66poe44m7sp0pa89d8sbe53', 700000, 1, 700000, NULL, 0, 0, '', '', 139),
(145, 47, 'd3h66poe44m7sp0pa89d8sbe53', 2519400, 1, 2519400, NULL, 0, 0, '', '', 139),
(146, 44, 'o5gbn8thtlvva607nhis9oa740', 213000, 1, 213000, NULL, 0, 0, '', '', 140),
(147, 47, '8kk4pfi8l55eg6dka23f7hknj7', 2519400, 3, 7558200, NULL, 0, 0, '', '', 141),
(148, 44, '8kk4pfi8l55eg6dka23f7hknj7', 1832000, 1, 1832000, NULL, 0, 0, '', '', 141),
(149, 44, 'ak3r0s4qiofedlg4dv0qa7nfh2', 213000, 1, 213000, NULL, 0, 0, '', '', 142),
(150, 47, 'ak3r0s4qiofedlg4dv0qa7nfh2', 2519400, 1, 2519400, NULL, 0, 0, '', '', 142),
(151, 49, 'ak3r0s4qiofedlg4dv0qa7nfh2', 700000, 1, 700000, NULL, 0, 0, '', '', 142),
(152, 49, 'cf2c354p0jgala1f4k0bf29rs3', 300000, 1, 300000, NULL, 0, 0, '', '', 143),
(153, 49, 'tic3mm839t1vt0q1ti3sn8gfm4', 290000, 1, 290000, NULL, 0, 0, '', '', 144),
(154, 44, 'vqp8blg1dlqoat057h8997c6q2', 213000, 1, 213000, NULL, 0, 0, '', '', 145),
(155, 47, '8hijn6cmeltqdmi5r34u735n43', 2519400, 3, 7558200, NULL, 0, 0, '', '', 146),
(156, 44, '8hijn6cmeltqdmi5r34u735n43', 1832000, 3, 5496000, NULL, 0, 0, '', '', 146),
(157, 49, '8hijn6cmeltqdmi5r34u735n43', 700000, 1, 700000, NULL, 0, 0, '', '', 146),
(158, 44, 'i170s1suo0tlig3s88jnqb6vt6', 223000, 2, 446000, NULL, 0, 0, '', '', 147),
(159, 44, 'c2liunpjp2t4ehe8gied43oqg3', 213000, 2, 426000, NULL, 0, 0, '', '', 148),
(160, 44, 't40quhkvh787oc0lf6j411vhu1', 223000, 1, 223000, NULL, 0, 0, '', '', 149),
(161, 44, '4vsktp3pkh3nr079i2hh82gjr1', 223000, 4, 892000, NULL, 0, 0, '', '', 150),
(162, 47, '4vsktp3pkh3nr079i2hh82gjr1', 134000, 1, 134000, NULL, 0, 0, '', '', 150),
(163, 48, '4vsktp3pkh3nr079i2hh82gjr1', 234000, 1, 234000, NULL, 0, 0, '', '', 150),
(164, 49, '4vsktp3pkh3nr079i2hh82gjr1', 300000, 1, 300000, NULL, 0, 0, '', '', 150),
(165, 44, '8bm08pdp4m6auvbbvigs2qn6b7', 213000, 2, 426000, NULL, 0, 0, '', '', 151),
(166, 47, '8bm08pdp4m6auvbbvigs2qn6b7', 124000, 1, 124000, NULL, 0, 0, '', '', 151),
(167, 48, '8bm08pdp4m6auvbbvigs2qn6b7', 224000, 1, 224000, NULL, 0, 0, '', '', 151),
(168, 49, '8bm08pdp4m6auvbbvigs2qn6b7', 290000, 1, 290000, NULL, 0, 0, '', '', 151),
(169, 44, 'hk8qv8v0qsepgu1cei4050rv94', 213000, 2, 426000, NULL, 0, 0, '', '', 152),
(170, 47, 'hk8qv8v0qsepgu1cei4050rv94', 124000, 1, 124000, NULL, 0, 0, '', '', 152),
(171, 48, 'hk8qv8v0qsepgu1cei4050rv94', 224000, 1, 224000, NULL, 0, 0, '', '', 152),
(172, 49, 'hk8qv8v0qsepgu1cei4050rv94', 290000, 1, 290000, NULL, 0, 0, '', '', 152),
(173, 44, '23q6a0ia1eifi9cv47kbd982n2', 223000, 2, 446000, NULL, 0, 0, '', '', 153),
(174, 47, '23q6a0ia1eifi9cv47kbd982n2', 2519400, 1, 2519400, NULL, 0, 0, '', '', 153),
(175, 48, '23q6a0ia1eifi9cv47kbd982n2', 480000, 1, 480000, NULL, 0, 0, '', '', 153),
(176, 49, '23q6a0ia1eifi9cv47kbd982n2', 700000, 1, 700000, NULL, 0, 0, '', '', 153),
(177, 44, 'opmgm8pvibstvmt7o2bn832ml5', 213000, 2, 426000, NULL, 0, 0, '', '', 154),
(178, 47, 'opmgm8pvibstvmt7o2bn832ml5', 2519400, 2, 5038800, NULL, 0, 0, '', '', 154),
(179, 48, 'opmgm8pvibstvmt7o2bn832ml5', 480000, 1, 480000, NULL, 0, 0, '', '', 154),
(180, 49, 'opmgm8pvibstvmt7o2bn832ml5', 700000, 1, 700000, NULL, 0, 0, '', '', 154),
(181, 49, 'ij300dc0o6qb95puar69rfqt14', 300000, 1, 300000, NULL, 0, 0, '', '', 155),
(182, 48, 'ij300dc0o6qb95puar69rfqt14', 234000, 1, 234000, NULL, 0, 0, '', '', 155),
(183, 44, 't9c58p2rl2virogk0jfa7ub152', 223000, 2, 446000, NULL, 0, 0, '', '', 156),
(184, 47, 't9c58p2rl2virogk0jfa7ub152', 134000, 2, 268000, NULL, 0, 0, '', '', 156),
(185, 48, 't9c58p2rl2virogk0jfa7ub152', 234000, 2, 468000, NULL, 0, 0, '', '', 156),
(186, 49, 't9c58p2rl2virogk0jfa7ub152', 300000, 1, 300000, NULL, 0, 0, '', '', 156),
(187, 44, 'dteve1vfm7phkcbg784nntng46', 213000, 3, 639000, NULL, 0, 0, '', '', 157),
(188, 47, 'dteve1vfm7phkcbg784nntng46', 124000, 1, 124000, NULL, 0, 0, '', '', 157),
(189, 44, '3kavubigicqtasmtb4iev3akh4', 213000, 3, 639000, NULL, 0, 0, '', '', 158),
(190, 44, 'fqo52o25tnoea240rbih6eser2', 223000, 2, 446000, NULL, 0, 0, '', '', 159),
(191, 47, 'fqo52o25tnoea240rbih6eser2', 2519400, 1, 2519400, NULL, 0, 0, '', '', 159),
(192, 48, 'fqo52o25tnoea240rbih6eser2', 480000, 1, 480000, NULL, 0, 0, '', '', 159),
(193, 49, 'fqo52o25tnoea240rbih6eser2', 700000, 1, 700000, NULL, 0, 0, '', '', 159),
(194, 44, 'vc9ofm115l1h7d6eha2p7sj5b2', 213000, 2, 426000, NULL, 0, 0, '', '', 160),
(195, 47, 'vc9ofm115l1h7d6eha2p7sj5b2', 124000, 1, 124000, NULL, 0, 0, '', '', 160),
(196, 49, 'vc9ofm115l1h7d6eha2p7sj5b2', 290000, 1, 290000, NULL, 0, 0, '', '', 160),
(197, 48, 'vc9ofm115l1h7d6eha2p7sj5b2', 224000, 1, 224000, NULL, 0, 0, '', '', 160),
(199, 44, 't3v16add36ko2toochlnd82ta1', 213000, 3, 639000, NULL, 0, 0, '', '', 162),
(200, 49, 't3v16add36ko2toochlnd82ta1', 700000, 1, 700000, NULL, 0, 0, '', '', 162),
(202, 47, 't3v16add36ko2toochlnd82ta1', 2519400, 1, 2519400, NULL, 0, 0, '', '', 162),
(204, 44, '2ktm8sa463cfbuathurbmduge7', 213000, 4, 852000, NULL, 0, 0, '', '', 164),
(205, 47, '2ktm8sa463cfbuathurbmduge7', 124000, 1, 124000, NULL, 0, 0, '', '', 164),
(206, 49, '2ktm8sa463cfbuathurbmduge7', 290000, 10, 2900000, NULL, 0, 0, '', '', 164),
(207, 48, '2ktm8sa463cfbuathurbmduge7', 224000, 10, 2240000, NULL, 0, 0, '', '', 164),
(208, 44, 'mds0856thmqs86jt41pig905d2', 213000, 2, 426000, NULL, 0, 0, '', '', 165),
(209, 44, 'v2divnbqgc9k8ocodr9m7abou5', 223000, 1, 223000, NULL, 0, 0, '', '', 166),
(210, 44, 'kfd2e07rigfa6p91bav1gmpfs3', 213000, 2, 426000, NULL, 0, 0, '', '', 167),
(211, 47, 'kfd2e07rigfa6p91bav1gmpfs3', 2519400, 1, 2519400, NULL, 0, 0, '', '', 167),
(212, 49, 'kfd2e07rigfa6p91bav1gmpfs3', 700000, 1, 700000, NULL, 0, 0, '', '', 167),
(213, 48, 'kfd2e07rigfa6p91bav1gmpfs3', 480000, 1, 480000, NULL, 0, 0, '', '', 167),
(214, 53, 'kfd2e07rigfa6p91bav1gmpfs3', 26990000, 1, 26990000, NULL, 0, 0, '', '', 167),
(215, 44, '3itfgb9b6mfcqkjichdghrmno3', 223000, 1, 223000, NULL, 0, 0, '', '', 168);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'Ha Nội'),
(2, 'Hồ Chí Minh'),
(6, 'Mieen  Bac'),
(7, 'D'),
(8, 'R'),
(9, 't');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `city2`
--

CREATE TABLE `city2` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `city2`
--

INSERT INTO `city2` (`id`, `name`, `note`) VALUES
(1, 'Hà Nội', ''),
(2, 'Hồ Chí Minh', ''),
(3, 'Đà Nẵng', ''),
(4, 'Hải Phòng', ''),
(5, 'An Giang', ''),
(6, 'Bà Rịa Vũng Tàu', ''),
(7, 'Bạc Liêu', ''),
(8, 'Bến Tre', ''),
(9, 'Bình Định', ''),
(10, 'Bình Dương', ''),
(11, 'Bình Phước', ''),
(12, 'Bình Thuận', ''),
(13, 'Cà Mau', ''),
(14, 'Cần Thơ', ''),
(15, 'Đắc Nông', ''),
(16, 'Đắk Lắk', ''),
(17, 'Đồng Nai', ''),
(18, 'Đồng Tháp', ''),
(19, 'Gia Lai', ''),
(20, 'Hà Giang', ''),
(21, 'Khánh Hoà', ''),
(22, 'Kiên Giang', ''),
(23, 'Lâm Đồng', ''),
(24, 'Lào Cai', ''),
(25, 'Long An', ''),
(26, 'Nghệ An', ''),
(27, 'Ninh Bình', ''),
(28, 'Ninh Thuận', ''),
(29, 'Phú Yên', ''),
(30, 'Quảng Bình', ''),
(31, 'Quảng Ngãi', ''),
(32, 'Quảng Ninh', ''),
(33, 'Quảng Trị', ''),
(34, 'Sóc Trăng', ''),
(35, 'Tây Ninh', ''),
(36, 'Thừa Thiên Huế', ''),
(37, 'Tiền Giang', ''),
(38, 'Hậu Giang', ''),
(39, 'Nam Định', ''),
(40, 'Quảng Nam', ''),
(41, 'Trà Vinh', ''),
(42, 'Vĩnh Long', ''),
(43, 'Vĩnh Phúc', ''),
(44, 'Hòa Bình', ''),
(45, 'Hải Dương', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci,
  `web_meta` text COLLATE utf8_unicode_ci,
  `web_des` text COLLATE utf8_unicode_ci,
  `web_keyword` text COLLATE utf8_unicode_ci,
  `web_logo` text COLLATE utf8_unicode_ci,
  `web_hotline` text COLLATE utf8_unicode_ci,
  `web_phone` text COLLATE utf8_unicode_ci,
  `web_email` text COLLATE utf8_unicode_ci,
  `content_home1` text COLLATE utf8_unicode_ci,
  `content_home2` text COLLATE utf8_unicode_ci,
  `content_home3` text COLLATE utf8_unicode_ci,
  `content_home4` text COLLATE utf8_unicode_ci,
  `content_home5` text COLLATE utf8_unicode_ci,
  `content_home6` text COLLATE utf8_unicode_ci,
  `content_home7` text COLLATE utf8_unicode_ci,
  `content_home8` text COLLATE utf8_unicode_ci,
  `content_home9` text COLLATE utf8_unicode_ci,
  `content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci,
  `banner1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `product_num` int(11) NOT NULL,
  `count_down` date NOT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `product_flash_num` int(11) NOT NULL,
  `slide_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `slideshow_home`, `banner1`, `banner2`, `product_num`, `count_down`, `text`, `product_flash_num`, `slide_num`) VALUES
(1, 'Máy lọc không khí Max Air', '', 'Meta Description: ', '  Keyword', 'LOGO MAX AIR VUONG.png', '', '', 'Chuyên phân phối hạt giống sen bách diệp, sen cung đình, sen mini nhật, sen ta, cỏ nhung nhật và nhiều loại hạt giống hoa rau củ quả. Đồng thời shop chia sẻ cách ươm hạt, gieo  trồng, chăm sóc cây và cung cấp thuốc kích thích nảy mầm, kích thích tăng trưởng Atonik, phân viên tan chậm HP-111, phân hạt NPK Thái chuyên dùng cho sen, súng. Tất cả các giống hoa chúng tôi cung cấp đều theo tiêu chí Đẹp - Độc - Lạ.', 'Số 62 phố Lò Sũ, phường Hàng Bạc, quận Hoàn Kiếm, TP.Hà Nội', 'maxair.vn@gmail.com', '0868866698', 'Giới thiệu', 'Email liên hệ 2', '<li class=\"row_menu_footer\"><a href=\"/\">Thông tin</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/login\">Đơn hàng</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/tim-kiem-cua-hang\">Cửa hàng</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/dieu-khoan-dieu-kien\">Ưu đãi</a></li>', '<li class=\"row_menu_footer\"><a href=\"/huong-dan\">Hướng dẫn</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/dieu-khoan-dieu-kien\">Điều khoản điều kiện</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/chinh-sach-rieng-tu\">Chính sách riêng tư</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/thoa-thuan-nguoi-dung\">Thỏa thuận người dùng</a></li>', '10000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1862.0208089987673!2d105.8532045!3d21.0310207!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc0115a9327%3A0xf136ab014f9332ca!2zNjIgTMOyIFPFqSwgSMOgbmcgQuG6oWMsIEhvw6BuIEtp4bq_bSwgSMOgIE7hu5lp!5e0!3m2!1svi!2s!4v1576587222905!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '1000', 'https://www.facebook.com/IMBBGROUP', '#', '#', '', 'https://www.youtube.com/MaylockhongkhiMaxAir', 'LOGO-MAXAIR.png', '[\"{\\\"image\\\":\\\"New Project.jpg\\\"}\"]', 'LOGO-MAXAIR.png', 'hoa-sen-trang-600x599.jpg', 20, '2020-12-31', 'LÕI LỌC NGAY KHI ĐĂNG KÝ THÀNH VIÊN', 20, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci,
  `lang_web_meta` text COLLATE utf8_unicode_ci,
  `lang_web_des` text COLLATE utf8_unicode_ci,
  `lang_web_keyword` text COLLATE utf8_unicode_ci,
  `lang_web_hotline` text COLLATE utf8_unicode_ci,
  `lang_web_phone` text COLLATE utf8_unicode_ci,
  `lang_web_email` text COLLATE utf8_unicode_ci,
  `lang_content_home1` text COLLATE utf8_unicode_ci,
  `lang_content_home2` text COLLATE utf8_unicode_ci,
  `lang_content_home3` text COLLATE utf8_unicode_ci,
  `lang_content_home4` text COLLATE utf8_unicode_ci,
  `lang_content_home5` text COLLATE utf8_unicode_ci,
  `lang_content_home6` text COLLATE utf8_unicode_ci,
  `lang_content_home7` text COLLATE utf8_unicode_ci,
  `lang_content_home8` text COLLATE utf8_unicode_ci,
  `lang_content_home9` text COLLATE utf8_unicode_ci,
  `lang_content_home10` text COLLATE utf8_unicode_ci,
  `facebook` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `google_map` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `icon_web` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `facebook`, `google`, `twitter`, `google_map`, `youtube`, `icon_web`, `edit_state`) VALUES
(1, 1, 'vn', 'Máy lọc không khí Max Air', '', 'Meta Description: ', '  Keyword', '', '', 'Chuyên phân phối hạt giống sen bách diệp, sen cung đình, sen mini nhật, sen ta, cỏ nhung nhật và nhiều loại hạt giống hoa rau củ quả. Đồng thời shop chia sẻ cách ươm hạt, gieo  trồng, chăm sóc cây và cung cấp thuốc kích thích nảy mầm, kích thích tăng trưởng Atonik, phân viên tan chậm HP-111, phân hạt NPK Thái chuyên dùng cho sen, súng. Tất cả các giống hoa chúng tôi cung cấp đều theo tiêu chí Đẹp - Độc - Lạ.', 'Số 62 phố Lò Sũ, phường Hàng Bạc, quận Hoàn Kiếm, TP.Hà Nội', 'maxair.vn@gmail.com', '0868866698', 'Giới thiệu', 'Email liên hệ 2', '<li class=\"row_menu_footer\"><a href=\"/\">Thông tin</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/login\">Đơn hàng</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/tim-kiem-cua-hang\">Cửa hàng</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/dieu-khoan-dieu-kien\">Ưu đãi</a></li>', '<li class=\"row_menu_footer\"><a href=\"/huong-dan\">Hướng dẫn</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/dieu-khoan-dieu-kien\">Điều khoản điều kiện</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/chinh-sach-rieng-tu\">Chính sách riêng tư</a></li>\r\n\r\n                                    <li class=\"row_menu_footer\"><a href=\"/thoa-thuan-nguoi-dung\">Thỏa thuận người dùng</a></li>', '10000', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1862.0208089987673!2d105.8532045!3d21.0310207!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc0115a9327%3A0xf136ab014f9332ca!2zNjIgTMOyIFPFqSwgSMOgbmcgQuG6oWMsIEhvw6BuIEtp4bq_bSwgSMOgIE7hu5lp!5e0!3m2!1svi!2s!4v1576587222905!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '1000', 'https://www.facebook.com/IMBBGROUP', '#', '#', '<p><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785448771!2d105.80194413492788!3d21.02273601629448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSGFub2ksIEhvw6BuIEtp4bq_bSwgSGFub2k!5e0!3m2!1sen!2s!4v1513235284242\" style=\"border:0\" width=\"600\"></iframe></p>\r\n', 'https://www.youtube.com/MaylockhongkhiMaxAir', '', 1),
(2, 1, 'en', '', '', '', '', '', '', '', 'V-ONION Organic for your family', 'banhang@rio.net.vn', '+84 971 765 775', 'Số 12 ngõ 5, Tân Mỹ, P.Mỹ Đình 1, Q.Nam Từ Liêm, Hà Nội', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `count_down`
--

CREATE TABLE `count_down` (
  `id` int(11) NOT NULL,
  `day` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `count_down`
--

INSERT INTO `count_down` (`id`, `day`) VALUES
(1, '2020-03-02 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dai_ly`
--

CREATE TABLE `dai_ly` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `embed` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `map` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dai_ly`
--

INSERT INTO `dai_ly` (`id`, `name`, `address`, `phone`, `logo`, `embed`, `city`, `district`, `map`) VALUES
(187, 'Circle K - Xuân Thủy', 'Số 177 Xuân Thủy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Vietnam', '+84 24 3200 5592', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9072965258233!2d105.78445531476338!3d21.036394985994267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab4a84309b65%3A0xc7b5d299964783ca!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787303346!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 10, ''),
(188, 'Circle K - Nguyễn Khang', '74-76 Nguyễn Khang, Yên Hoà, Cầu Giấy, Hà Nội, Vietnam', '+84 24 3212 3656', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2619363245826!2d105.79730151476315!3d21.022202786001913!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab44fddcee5b%3A0x1f171fa8ec75bad3!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787324202!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 10, ''),
(189, 'Circle K - Lê Trọng Tấn', '46 Lê Trọng Tấn, Khương Mai, Thanh Xuân, Hà Nội, Vietnam', '+84 24 3200 6067', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.8216548257383!2d105.82576231476266!3d20.999784986014088!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8793f97cf1%3A0x394cc595a5226715!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787343488!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 26, ''),
(190, 'Circle K - Nguyễn Quý Đức', '5 Nguyễn Quý Đức, Thanh Xuân Bắc, Thanh Xuân, Hà Nội, Vietnam', '+84 24 3200 6330', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.0375668387724!2d105.79800021476261!3d20.991131186018723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acbf31b7d86d%3A0xe9e9f8005c8c4cd1!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787364996!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 26, ''),
(191, 'Circle K - Chùa Láng 2', '105 Phố Chùa Láng, Láng Thượng, Đống Đa, Hà Nội, Vietnam', '+84 24 3244 4528', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2347545780967!2d105.80375616476313!3d21.023290886001305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab680396ff8d%3A0x8ab335c2e533a906!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577787392708!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 13, ''),
(192, 'Circle K - Hoàng Quốc Việt', 'Khu Căn Hộ Somerset Hòa Bình, Ngõ 106 - Hoàng Quốc Việt, Nghĩa Đô, Cầu Giấy, Hà Nội, Vietnam', '+84 24 3200 6396', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.649465736683!2d105.79331771476362!3d21.046707285988617!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab3ac6b64d63%3A0xd8d256a7ff2b45da!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787415988!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 10, ''),
(193, 'Circle K - Vũ Trọng Phụng', '54 Vũ Trọng Phụng, Thanh Xuân Trung, Thanh Xuân, Hà Nội, Vietnam', '+84 24 3200 6849', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.856989791612!2d105.80694331476269!3d20.998368986014864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac9772b64271%3A0xaeeede138622473!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577787438700!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 26, ''),
(194, 'Circle K - Văn Cao', '97 Văn Cao, Liễu Giai, Ba Đình, Hà Nội, Vietnam', '+84 24 3200 7185', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.8335196820767!2d105.81374541476346!3d21.039346285992625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab122280b6eb%3A0x160b07dbc0e8ba48!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787460059!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 7, ''),
(195, 'Circle K - Nhân Hòa', '05 Nhân Hòa, Thanh Xuân Trung, Thanh Xuân, Hà Nội, Vietnam', '+84 24 3200 7831', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.765520954509!2d105.80634811476286!3d21.00203428601286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac99accf8493%3A0xcea0fa21fd93c45a!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787479910!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 26, ''),
(196, 'Circle K - 13 Hàng Bông', '13 Hàng Bông, Hàng Trống, Hoàn Kiếm, Hà Nội, Vietnam', '+84 24 3201 0381', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.0400789420373!2d105.84661151476328!3d21.031082285997098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abea375fca83%3A0x8abc012d70ab051f!2sCircle%20K%20Vietnam!5e0!3m2!1sen!2s!4v1577787505275!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 17, ''),
(197, 'Circle K - Dương Quảng Hàm', '98 Dương Quảng Hàm, Quan Hoa, Cầu Giấy, Hà Nội, Vietnam', '+84 24 3201 0971', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9329272478153!2d105.79832521476347!3d21.035369585994818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abe42f871175%3A0xd104514a039593c2!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787530386!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 10, ''),
(198, 'Circle K - Duy Tân', '78 Phố Duy Tân, Dịch Vọng Hậu, Cầu Giấy, Hà Nội, Vietnam', '+84 24 7108 6466', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.03540821966!2d105.78085151476328!3d21.031269185997015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abaf11d1425b%3A0xccef3c95030b2b96!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787571694!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 10, ''),
(199, 'Circle K - 33 Chùa Láng', '33 Chùa Láng, Láng Thượng, Đống Đa, Hà Nội, Vietnam', '+84 24 3201 1627', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.239878268919!2d105.80546211476306!3d21.02308578600138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab2bd82dc84d%3A0xa9a7c42b523d67ea!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787597009!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 13, ''),
(200, 'Circle K - 40 Hàng Bông', '40 Hàng Bông, Hàng Gai, Hoàn Kiếm, Hà Nội, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.046079100271!2d105.84583091476328!3d21.030842185997248!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbe1ffe1d17%3A0xe79ddd22ff1bb329!2zNDAgSMOgbmcgQsO0bmcsIEjDoG5nIEdhaSwgSG_DoG4gS2nhur9tLCBIw6AgTuG7mWksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1577787631061!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 17, ''),
(201, 'Circle K - Đội Cấn', '139 Đội Cấn, Ba Đình, Hà Nội, Vietnam', '+84 24 3204 7060', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29793.488123801475!2d105.81010061784094!3d21.025241804002206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9fcee1f353%3A0x651f8fcbaa1942e3!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787673481!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 7, ''),
(202, 'Circle K - 218 Nguyễn Huy Tưởng', '218 Nguyễn Huy Tưởng, Thanh Xuân Trung, Thanh Xuân, Hà Nội, Vietnam', '+84 24 3201 5055', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.4339101946232!2d105.80108835805169!3d20.99793494650375!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad6d18ea4c13%3A0xe1ea3eccd083c90b!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787709131!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 26, ''),
(203, 'Circle K - 94 Linh Lang', '94 Linh Lang, Cống Vị, Ba Đình, Hà Nội, Vietnam', '+84 24 3237 3075', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9775744465774!2d105.80765981476347!3d21.0335832859958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab14b09233e5%3A0x57a12e0ddc5adf57!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787745286!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 7, ''),
(204, 'Circle K - Vạn Bảo', '65 Vạn Bảo, Liễu Giai, Ba Đình, Hà Nội, Vietnam', '+84 24 3201 2695', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.959497803505!2d105.81359341476337!3d21.034306535995285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab3c9601071d%3A0x47ffcaadea05c9e7!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787771283!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 7, ''),
(205, 'Circle K - Hàng Bông', '138 Hàng Bông, Hoàn Kiếm, Hà Nội, Vietnam', '+84 24 3710 0510', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.0806543313574!2d105.8431833147633!3d21.02945858599806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab966d2f6599%3A0xf1dc991ec39ff443!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787798341!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 17, ''),
(206, 'Circle K - Nam Cao', '126 Nam Cao, Giảng Võ, Ba Đình, Hà Nội, Vietnam', '+84 24 3200 7751', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.0634544499067!2d105.81999461476326!3d21.03014688599762!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab739c69ada3%3A0x51a96e6ade362da6!2sCircle%20K%20VietNam!5e0!3m2!1sen!2s!4v1577787821223!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 7, ''),
(207, 'Circle K - Lò Đúc', '125G Lò Đúc, Phạm Đình Hổ, Hai Bà Trưng, Hà Nội, Vietnam', '+84 24 3204 7021', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4451313821264!2d105.85585271476299!3d21.01486798600589!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abdb270f56b7%3A0x48e65f6c9d97d564!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787845168!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 15, ''),
(208, 'Circle K - Lĩnh Nam', '54-56 Lĩnh Nam, Mai Động, Hoàng Mai, Hà Nội, Vietnam', '+84 24 3201 3998', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29795.56123277958!2d105.84053176774471!3d21.014867076373818!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135adeec51ebd21%3A0x67bdfd695a488bc0!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787907705!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 18, ''),
(209, 'Circle K - Hoàng Văn Thái', '292 Hoàng Văn Thái, Khương Trung, Thanh Xuân, Hà Nội, Vietnam', '+84 24 3200 7058', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.8435123657437!2d105.81817711476268!3d20.99890908601448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac85805c4671%3A0xa376573eea1c49b4!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577787942161!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 26, ''),
(210, 'Circle K - Ngụy Như Kon Tum', '70 Ngụy Như Kon Tum, Nhân Chính, Thanh Xuân, Hà Nội, Vietnam', '+84 24 3200 9051', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.8417955360137!2d105.79859871476275!3d20.9989778860145!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad431d928b5d%3A0x8cb0bef40a367899!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577787965833!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 26, ''),
(211, 'Circle K - Nguyễn Chí Thanh', '8/91 Nguyễn Chí Thanh, Láng Hạ, Ba Đình, Hà Nội, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.300299746164!2d105.80729791476313!3d21.020666986002734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab6645c8b25f%3A0xb76eb9019ab8dbd7!2zOCwgOTEgTmd1eeG7hW4gQ2jDrSBUaGFuaCwgTMOhbmcgSOG6oSwgQmEgxJDDrG5oLCBIw6AgTuG7mWksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1577788004407!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 7, ''),
(212, 'Circle K - The Manor 2', '37TT1 The Manor, phường Mỹ Đình 1 quận, Nam Từ Liêm, Hà Nội, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4386061628593!2d105.775483814763!3d21.01512928600576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454aa0fed56c7%3A0x1ba275bf03d4c1a9!2sThe%20Garden%20Shopping%20Center!5e0!3m2!1sen!2s!4v1577788064932!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 1, 21, ''),
(213, 'Circle K - Thủ Khoa Huân', '40 Thủ Khoa Huân, Phường Bến Thành, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3824 6230', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4807917300745!2d106.6947473146225!3d10.77444029232289!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f38e0203be9%3A0xd16f11c346fff7dd!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577788147755!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(214, 'Circle K - Sài Gòn Mia BC', 'L1-02 Sài Gòn Mia, Bình Hưng, Bình Chánh, Hồ Chí Minh, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3920.015093953779!2d106.68679731462214!3d10.733318992350764!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752fba902df1af%3A0xb8826993ded986a3!2sSaigon%20Mia!5e0!3m2!1sen!2s!4v1577788230563!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 42, ''),
(215, 'Circle K - CC Bộ Công An', 'Chung cư Bộ Công An, P. Bình An, Quận 2, Hồ Chí Minh, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2175767462704!2d106.73447501462267!3d10.794641092309156!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175260f6d4ee23b%3A0xadfc8a19c5624e29!2zQ2h1bmcgY8awIELhu5kgQ8O0bmcgQW4sIFAuIELDrG5oIEFuLCBRdeG6rW4gMiwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1577788275581!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 53, ''),
(216, 'Circle K - Lý Tự Trọng', '45 Lý Tự Trọng, Bến Nghé, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3825 8987', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4249080364866!2d106.6997910146226!3d10.778732292319985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f4870326a09%3A0x678df8c541cee7b8!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577788302419!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(217, 'Circle K - Tân Phong Residence Q7', 'B28 Tân Phong Residence, P.Tân Phong, Q.7, Ho Chi Minh, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15680.25676991763!2d106.69660717460403!3d10.729532427652726!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f96ae6b7c09%3A0x3440c5e67d8b63c5!2sT%C3%A2n%20Phong%2C%20District%207%2C%20Ho%20Chi%20Minh%20City%2C%20Vietnam!5e0!3m2!1sen!2s!4v1577788360513!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 57, ''),
(218, 'Circle K - Phổ Quang', '10 Phổ Quang, Phường 9, Phú Nhuận, Hồ Chí Minh, Vietnam', '+84 28 3997 6065', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.036791541356!2d106.6695133146228!3d10.808494092299755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752923df715057%3A0x94eeffd58376202d!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577788414737!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 48, ''),
(219, 'Circle K - Trần Khắc Chân', '2 Trần Khắc Chân, Tân Định, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3526 1003', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2242162673715!2d106.68979431462262!3d10.794131992309486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175298cec905461%3A0x6d35c96f70ccbd85!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577788473810!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(220, 'Circle K - Tôn Thất Tùng', '27 Đường Tôn Thất Tùng, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3925 0386', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.531361047504!2d106.68546831462253!3d10.77055499232553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f22d69d6fd3%3A0xd569f6b8fb3d1b89!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577788505805!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(221, 'Circle K - Cao Thắng', '306 Cao Thắng, Phường 12, Quận 10, Hồ Chí Minh, Vietnam', '+84 28 3979 8970', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4740261819666!2d106.67258141462244!3d10.774959992322483!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752fb9dfbfbd7f%3A0x3a0021da09d98041!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577788542311!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 50, ''),
(222, 'Circle K - Sunrise City View', 'Sunrise City View, 9, Quận 7, Hồ Chí Minh, Vietnam', '+84 28 3636 1220', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62711.198457283885!2d106.64693895498723!3d10.776812784166044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752fd7fa393587%3A0x4a382f102f05264f!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577788578526!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 57, ''),
(223, 'Circle K - Bình Dương', 'A3, Đông Hoà, Dĩ An, Bình Dương, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.093766201001!2d106.80292131462349!3d10.880472592250984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d8a541032b73%3A0x16763d7744de8f8a!2sH1%20Building%20-%20HCMC%20University%20of%20Technology!5e0!3m2!1sen!2s!4v1577788628077!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 10, 0, ''),
(224, 'Circle K - Lê Thánh Tôn', '273 Lê Thánh Tôn, Phường Bến Thành, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3822 3453', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5164080571503!2d106.69350521462249!3d10.771703992324753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3ec051761b%3A0xaa6f4b53ade846d!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577788666391!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(225, 'Circle K - Nguyễn Khắc Nhu', '69 Nguyễn Khắc Nhu, Phường Cô Giang, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3620 3073', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6223073672195!2d106.69070231462247!3d10.763563992330273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3065120509%3A0x6820738ad4aaac16!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577788695104!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(226, 'Circle K - Đề Thám', '250 Đường Đề Thám, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3620 1654', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5626544147003!2d106.69160531462249!3d10.768149992327134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752fa9fbf3cd05%3A0xe159b6ee89e6466d!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577788729510!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(227, 'Circle K - Nguyễn Hữu Cảnh', '92 Nguyễn Hữu Cảnh, Phường 22, Bình Thạnh, Hồ Chí Minh, Vietnam', '+84 28 3636 5496', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2996132991416!2d106.71211066462266!3d10.788349092313416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175299aefa165b1%3A0xf07e8a510282725f!2sCircle%20K%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577788762561!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 44, ''),
(228, 'Circle K - Sư Vạn Hạnh', '529 Sư Vạn Hạnh, Phường 12, Quận 10, Hồ Chí Minh, Vietnam', '+84 28 3979 8784', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.4910142949866!2d106.66622846462252!3d10.77365499232341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752edb0cb9ffbb%3A0x59edba926c4ea7e3!2sCircle%20K%20Vi%E1%BB%87t%20Nam!5e0!3m2!1sen!2s!4v1577788801071!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 50, ''),
(229, 'Circle K - Bùi Thị Xuân', '32 Bùi Thị Xuân, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3636 7551', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.511052447059!2d106.68820861462247!3d10.772115492324454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3c8cd755c3%3A0xd4ac328d3d329a90!2zQ2lyY2xlIEsgQsO5aSBUaOG7iyBYdcOibg!5e0!3m2!1sen!2s!4v1577788827914!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(230, 'Circle K - Era Town Residence', 'Era Town Đức Khải, Phú Mỹ, Quận 7, Vietnam', '+84 28 3620 9747', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3920.441387843952!2d106.73017641462178!3d10.700398292373073!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752552d5434117%3A0x39528f91ea719e73!2sCircle%20k%20Viet%20Nam!5e0!3m2!1sen!2s!4v1577788855368!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 57, ''),
(231, 'Circle K - Trần Bình Trọng', '81 Trần Bình Trọng, Phường 1, Quận 5, Hồ Chí Minh, Vietnam', '+84 28 3636 9324', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.736566372428!2d106.67936571462236!3d10.754774592336242!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752facdb64a68b%3A0x2ff9d048e5249fc8!2zQ2lyY2xlIEsgLSBUcuG6p24gQsOsbmggVHLhu41uZw!5e0!3m2!1sen!2s!4v1577788882322!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 56, ''),
(232, 'Circle K - Hoàng Diệu 2', '66C Hoàng Diệu 2, Phường Linh Trung, Thủ Đức, Hồ Chí Minh, Vietnam', '+84 28 3722 1525', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.403074757506!2d106.76214371462324!3d10.856915892266919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175279bfa32aa23%3A0x88755f454157152a!2zQ2lyY2xlIEsgSG_DoG5nIERp4buHdSAy!5e0!3m2!1sen!2s!4v1577788912286!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 62, ''),
(233, 'Satra Phạm Hùng', 'Siêu Thị Satra, C6/27 Phạm Hùng, Bình Hưng, Bình Chánh, Hồ Chí Minh, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3920.011292756034!2d106.67217911462217!3d10.733612092350631!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752e4cfd0e2185%3A0x9903d89058211ce9!2sBHD%20Star%20Cineplex!5e0!3m2!1sen!2s!4v1577788982035!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 42, ''),
(234, 'Satra Sài Gòn', '460 Đường 3 Tháng 2, Phường 12, Quận 10, Hồ Chí Minh, Vietnam', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31356.459184258012!2d106.65018343955079!3d10.768554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ee77824c1ed%3A0x12fdf52e3180c200!2sSaigon%20Supermarket!5e0!3m2!1sen!2s!4v1577789012194!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 50, ''),
(235, 'Satra Củ Chi', '1239 TL8, ấp Thạnh An, Củ Chi, Vietnam', '+84 28 3795 6666', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3916.72862133567!2d106.57728281462454!3d10.983844692181009!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d377aca4d4cb%3A0xf02114204aef7d5!2sSatra%20Centre%20Mall%20of%20Cu%20Chi!5e0!3m2!1sen!2s!4v1577789039357!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 45, ''),
(236, 'Satrafoods Lê Thị Riêng', '2-4-6 Lê Thị Riêng, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh, Vietnam', '+84 28 3925 3116', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5188209439684!2d106.69079031462249!3d10.771518592324819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f3c3beb27e9%3A0xb0dd3215d41fcc11!2zU2F0cmFmb29kcyBMw6ogVGjhu4sgUmnDqm5n!5e0!3m2!1sen!2s!4v1577789064547!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 49, ''),
(237, 'Satrafoods Ngọc Lan', '35 Phú Thuận, Quận 7, Hồ Chí Minh, Vietnam', '+84 28 6263 8161', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3920.036813671545!2d106.73545541462212!3d10.731644092351969!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175256fb6487b35%3A0x185f0b0f4c62ddbf!2sSatrafoods%20NG%E1%BB%8CC%20LAN!5e0!3m2!1sen!2s!4v1577789188728!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 2, 57, ''),
(238, 'Om', 'uhn', 'Es', '', 'av', 1, 0, 'dss');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `danh_gia`
--

INSERT INTO `danh_gia` (`id`, `name`, `email`, `title`, `note`, `rate`) VALUES
(3, 'Trương Quang Tuấn', 'tuan@gmail.com', 'Giáo viên nước ngoài', 'test', 0),
(4, 'Trương Quang Tuấn', 'tuan@gmail.com', 'tho may', 'test', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `city_id`, `name`) VALUES
(1, 1, 'Ba Đình'),
(2, 2, 'Quận 1'),
(5, 5, 'm'),
(6, 7, 'G');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district2`
--

CREATE TABLE `district2` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `district2`
--

INSERT INTO `district2` (`id`, `name`, `note`, `city_id`) VALUES
(7, 'Ba Đình', '', 1),
(8, 'Ba Vì', '', 1),
(9, 'Bắc Từ Liêm', '', 1),
(10, 'Cầu Giấy', '', 1),
(11, 'Đan Phượng', '', 1),
(12, 'Đông Anh', '', 1),
(13, 'Đống Đa', '', 1),
(14, 'Hà Đông', '', 1),
(15, 'Hai Bà Trưng', '', 1),
(16, 'Hoài Đức', '', 1),
(17, 'Hoàn Kiếm', '', 1),
(18, 'Hoàng Mai', '', 1),
(19, 'Lê Chân', '', 1),
(20, 'Long Biên', '', 1),
(21, 'Nam Từ Liêm', '', 1),
(22, 'Ngô Quyền', '', 1),
(23, 'Sơn Tây', '', 1),
(24, 'Tây Hồ', '', 1),
(25, 'Thanh Trì', '', 1),
(26, 'Thanh Xuân', '', 1),
(27, 'Từ Liêm', '', 1),
(28, 'An Dương', '', 4),
(29, 'Cát Dài', '', 4),
(30, 'Dương Kinh', '', 4),
(31, 'Hải An', '', 4),
(32, 'Hồng Bàng', '', 4),
(33, 'Kiến An', '', 4),
(34, 'Kiến Thụy', '', 4),
(35, 'Lê Chân', '', 4),
(36, 'Ngô Quyền', '', 4),
(37, 'Thủy Nguyên', '', 4),
(38, 'Hòa Bình', '', 44),
(39, 'Bãi Cháy', '', 32),
(40, 'Hạ Long', '', 32),
(41, 'Bạch Đằng', '', 2),
(42, 'Bình Chánh', '', 2),
(43, 'Bình Tân', '', 2),
(44, 'Bình Thạnh', '', 2),
(45, 'Củ Chi', '', 2),
(46, 'Gò Vấp', '', 2),
(47, 'Hóc Môn', '', 2),
(48, 'Phú Nhuận', '', 2),
(49, 'Quận 1', '', 2),
(50, 'Quận 10', '', 2),
(51, 'Quận 11', '', 2),
(52, 'Quận 12', '', 2),
(53, 'Quận 2', '', 2),
(54, 'Quận 3', '', 2),
(55, 'Quận 4', '', 2),
(56, 'Quận 5', '', 2),
(57, 'Quận 7', '', 2),
(58, 'Quận 8', '', 2),
(59, 'Quận 9', '', 2),
(60, 'Tân Bình', '', 2),
(61, 'Tân Phú', '', 2),
(62, 'Thủ Đức', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(18, 'Nguyễn Việt Hưng', 'viethung95cute@gmail.com', '', '', 'sdfgsdfg', '2018-05-02 12:01:44'),
(19, 'Việt Hưng', 'viethung95cute@gmail.com', '1672523165', '', 'Tesst  Liên hệ lần 1 ^_^ -_- :D :v :))', '2018-05-07 02:40:46'),
(20, 'teste', 'viethung95cute@gmail.com', '1672523165', '', '', '2018-05-28 11:12:36'),
(26, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', 'test', '2019-12-02 09:14:23'),
(27, 'huyen', 'huyennt62@wru.vn', '0352612682', '', '23erw', '2019-12-30 02:56:04'),
(28, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', '', '2019-12-30 07:46:58'),
(29, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', '', '2019-12-30 07:47:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci,
  `menu_sort_order` int(11) DEFAULT '0',
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Tổng quan', 0, 8, '#', 0, 0, 0, 0, 0, 1, 229, 0, 0, NULL),
(224, 'Tính năng', 0, 5, '', 0, 76, 0, 0, 0, 1, 229, 0, 0, NULL),
(225, 'Thông số kỹ thuật', 3, 8, '#thong-so-ky-thuat', 0, 0, 0, 0, 0, 1, 229, 0, 0, NULL),
(226, 'Bình Luận', 4, 5, '', 0, 73, 0, 0, 0, 1, 229, 0, 0, NULL),
(227, 'Tin tức', 5, 8, '#mua-o-dau', 0, 0, 0, 0, 0, 1, 229, 0, 0, NULL),
(229, 'menu dưới', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(230, 'menu trên', 0, 1, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(231, 'Sản phẩm', 0, 3, '', 233, 0, 0, 0, 0, 1, 230, 0, 0, NULL),
(232, 'Doanh nghiệp', 0, 5, '', 0, 84, 0, 0, 0, 1, 230, 0, 0, NULL),
(233, 'Hỗ trợ', 0, 13, '', 0, 0, 0, 55, 0, 1, 230, 0, 0, NULL),
(234, 'Ưu đãi', 0, 13, '', 0, 0, 0, 45, 0, 1, 230, 0, 0, NULL),
(235, 'Mua ở đâu', 0, 8, 'tim-kiem-cua-hang', 0, 0, 0, 0, 0, 1, 230, 0, 0, NULL),
(236, 'Hotline:0868866698', 0, 1, '', 0, 0, 0, 0, 0, 1, 230, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Tổng quan', 1, '#', 114),
(206, 'en', 'Home', 1, '', 114),
(425, 'vn', 'Tính năng', 0, '', 224),
(426, 'en', 'Tính năng', 0, '', 224),
(427, 'vn', 'Thông số kỹ thuật', 0, '#thong-so-ky-thuat', 225),
(428, 'en', 'Thông số kỹ thuật', 0, '', 225),
(429, 'vn', 'Bình Luận', 0, '', 226),
(430, 'en', 'Bình Luận', 0, '', 226),
(431, 'vn', 'Tin tức', 0, '#mua-o-dau', 227),
(432, 'en', 'Tin tức', 0, '', 227),
(435, 'vn', 'menu dưới', 0, '', 229),
(436, 'en', 'menu dưới', 0, '', 229),
(437, 'vn', 'menu trên', 0, '', 230),
(438, 'en', 'menu trên', 0, '', 230),
(439, 'vn', 'Sản phẩm', 0, '', 231),
(440, 'en', 'Sản phẩm', 0, '', 231),
(441, 'vn', 'Doanh nghiệp', 0, '', 232),
(442, 'en', 'Doanh nghiệp', 0, '', 232),
(443, 'vn', 'Hỗ trợ', 0, '', 233),
(444, 'en', 'Hỗ trợ', 0, '', 233),
(445, 'vn', 'Ưu đãi', 0, '', 234),
(446, 'en', 'Ưu đãi', 0, '', 234),
(447, 'vn', 'Mua ở đâu', 0, 'tim-kiem-cua-hang', 235),
(448, 'en', 'Mua ở đâu', 0, '', 235),
(449, 'vn', 'Hotline:0868866698', 0, '', 236),
(450, 'en', 'Hotline:0868866698', 0, '', 236);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci,
  `news_des` text COLLATE utf8_unicode_ci,
  `news_content` text COLLATE utf8_unicode_ci,
  `news_img` text COLLATE utf8_unicode_ci,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `news_sub_info1` text COLLATE utf8_unicode_ci,
  `news_sub_info2` text COLLATE utf8_unicode_ci,
  `news_sub_info3` text COLLATE utf8_unicode_ci,
  `news_sub_info4` text COLLATE utf8_unicode_ci,
  `news_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newstag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(63, 'Tìm kiếm cửa hàng gần nhất', 'Trải nghiệm sản phẩm Panasonic theo cách riêng của bạn! Tìm kiếm cửa hàng gần nhất ngay tại đây.', '<p>Trải nghiệm sản phẩm Panasonic theo c&aacute;ch ri&ecirc;ng của bạn! T&igrave;m kiếm cửa h&agrave;ng gần nhất ngay tại đ&acirc;y.</p>\r\n', '1563869155029.png', 0, 79, '', '2019-11-19 10:11:34', NULL, 1, '', '', '', '', '', 'Tìm kiếm cửa hàng gần nhất', '', 'tim-kiem-cua-hang-gan-nhat', '', NULL, ''),
(64, 'Mua online ngay!', 'Khám phá gian hàng online tiện lợi của chúng tôi và nhanh tay mua sắm ngay những sản phẩm mới nhất từ Panasonic. Giao hàng tận nơi!', '<p>Kh&aacute;m ph&aacute; gian h&agrave;ng online tiện lợi của ch&uacute;ng t&ocirc;i v&agrave; nhanh tay mua sắm ngay những sản phẩm mới nhất từ Panasonic. Giao h&agrave;ng tận nơi!</p>\r\n', '1563869148583.png', 0, 79, '', '2019-11-19 10:11:32', '2020-01-10 15:01:53', 1, '', '', '', '', '', 'Mua online ngay!', '', 'mua-online-ngay', '', NULL, ''),
(65, 'Danh mục sản phẩm', 'Yêu thích những thiết bị gia đình được tích công nghệ mới nhất và phong cách thiết kế đẳng cấp? Đừng ngại dạo qua danh mục sản phẩm của chúng tôi gồm Máy điều hòa, Tủ lạnh, Máy giặt, Sản phẩm chăm sóc sắc đẹp và nhiều lựa chọn hơn nữa.', '<p>Y&ecirc;u th&iacute;ch những thiết bị gia đ&igrave;nh được t&iacute;ch c&ocirc;ng nghệ mới nhất v&agrave; phong c&aacute;ch thiết kế đẳng cấp? Đừng ngại dạo qua danh mục sản phẩm của ch&uacute;ng t&ocirc;i gồm M&aacute;y điều h&ograve;a, Tủ lạnh, M&aacute;y giặt, Sản phẩm chăm s&oacute;c sắc đẹp v&agrave; nhiều lựa chọn hơn nữa.</p>\r\n', '1563869271622.png', 0, 79, '', '2019-11-19 10:11:39', '2020-01-16 23:01:36', 1, '', '', '', '', '', 'Danh mục sản phẩm', '', 'danh-muc-san-pham', '', NULL, ''),
(71, 'Tổng Quan - Slide 1', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-1.jpg\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, 76, '', '2019-12-17 23:12:44', NULL, 1, '', '', '', '', '', 'Tổng Quan - Slide 1', '', 'tong-quan-slide-1', '', 1, ''),
(72, 'Tổng Quan - Slide 2', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-2.png\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 76, '', '2019-12-17 23:12:29', '2019-12-17 23:12:48', 1, '', '', '', '', '', 'Tổng Quan - Slide 2', '', 'tong-quan-slide-2', '', 1, ''),
(75, 'Kỹ Thuật - Slide 1', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/THIETKE%20(3).jpg\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, 78, '', '2019-12-17 23:12:42', NULL, 1, '', '', '', '', '', 'Kỹ Thuật - Slide 1', '', 'ky-thuat-slide-1', '', 1, ''),
(77, 'Silde đánh giá_trái', '', '<p><img alt=\"Image\" src=\"http://cf.cafelinkcustomer.info/images/phan-mem-khao-sat-khach-hang.png\" /></p>\r\n', 'phan-mem-khao-sat-khach-hang.png', 0, 80, '', '2019-12-20 08:12:43', '2019-12-20 09:12:04', 1, '', '', '', '', '', 'Silde đánh giá_trái', '', 'silde-danh-giatrai', '', 1, ''),
(78, 'Slide đánh giá phải', '', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/1IPzX3c2kv4\" width=\"560\"></iframe></p>\r\n', '1563869271622.png', 0, 81, '', '2019-12-20 09:12:18', '2019-12-31 08:12:00', 1, '', '', '', '', '', 'Slide đánh giá phải', '', 'slide-danh-gia-phai', '', 1, ''),
(81, 'Tính năng - slide 1', '', '<p><img alt=\"\" height=\"824\" src=\"/image/images/THIETKE%20(1).jpg\" width=\"1136\" /></p>\r\n', '', 0, 77, '', '2020-02-10 20:02:10', NULL, 1, '', '', '', '', '', 'Tính năng - slide 1', '', 'tinh-nang-slide-1', '', 1, ''),
(82, 'Test slide 1', '', '<p><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-1.jpg\" width=\"1138\" /></p>\r\n', '', 0, 85, '', '2020-02-10 20:02:08', NULL, 1, '', '', '', '', '', 'Test slide 1', '', 'test-slide-1', '', 1, ''),
(85, '123', '', '<p><iframe frameborder=\"0\" src=\"https://www.youtube.com/embed/Sy7d2FXwf3o\" ></iframe></p>\r\n', NULL, 0, 81, '', '2020-02-10 21:02:03', '2020-02-12 00:02:32', 1, '', '', '', '', '', '123', '', '123', '', 1, ''),
(86, '456', '', '<p><img alt=\"\" src=\"/image/images/THIETKE%20(1).jpg\" /></p>\r\n', '', 0, 80, '', '2020-02-10 21:02:37', NULL, 1, '', '', '', '', '', '456', '', '456', '', 1, ''),
(87, '789', '', '<p><img alt=\"\" src=\"/image/images/LOILOC%20MA025.jpg\" /></p>\r\n', '', 0, 80, '', '2020-02-10 21:02:27', NULL, 1, '', '', '', '', '', '789', '', '789', '', 1, ''),
(93, 'Test 001', '', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/6R74Micwog8\" width=\"560\"></iframe></p>\r\n', '', 0, 81, '', '2020-02-15 15:02:15', NULL, 1, '', '', '', '', '', 'Test 001', '', 'test-001', '', 1, ''),
(94, 'test 002', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(3).jpg\" width=\"600\" /></p>\r\n', '', 0, 80, '', '2020-02-15 15:02:30', NULL, 1, '', '', '', '', '', 'test 002', '', 'test-002', '', 1, ''),
(95, 'Test 003', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(2).jpg\" width=\"600\" /></p>\r\n', NULL, 0, 78, '', '2020-02-15 15:02:35', '2020-02-15 16:02:42', 1, '', '', '', '', '', 'Test 003', '', 'test-003', '', 1, ''),
(96, '1234', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(1).jpg\" width=\"600\" /></p>\r\n', NULL, 0, 87, '', '2020-02-15 15:02:23', '2020-02-15 16:02:31', 1, '', '', '', '', '', '1234', '', '1234', '', 1, ''),
(97, 'Bụi đậu nành là gì? Tác hại đối với con người như thế nào?', '', '<p>Bụi đậu n&agrave;nh thường xuất hiện trong việc th&aacute;o dỡ hạt đậu n&agrave;nh với số lượng lớn v&agrave; c&oacute; khả năng g&acirc;y ra c&aacute;c bệnh về h&ocirc; hấp v&agrave; một số bệnh kh&aacute;c ở người. Đặc biệt l&agrave; những người mắc c&aacute;c bệnh về đường h&ocirc; hấp, người gi&agrave;, trẻ nhỏ v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p>[caption id=&quot;attachment_927&quot; align=&quot;aligncenter&quot; width=&quot;646&quot;]<img alt=\"Bụi Đậu Nành xuất hiện trong việc tháo dỡ số lượng lớn\" height=\"432\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Bụi-Đậu-Nành-xuất-hiện-trong-việc-tháo-dỡ-số-lượng-lớn.jpg\" width=\"646\" /> Bụi Đậu N&agrave;nh xuất hiện trong việc th&aacute;o dỡ số lượng lớn[/caption]</p>\r\n\r\n<p>Theo một nghi&ecirc;n cứu thuộc Trung t&acirc;m Th&ocirc;ng tin C&ocirc;ng nghệ sinh học Quốc gia Hoa Kỳ, chất g&acirc;y dị ứng ch&iacute;nh được t&igrave;m thấy trong tất cả c&aacute;c bộ phận của c&acirc;y, nhưng tập trung nhiều ở vỏ.</p>\r\n\r\n<p>Đậu n&agrave;nh cũng l&agrave; một chất g&acirc;y dị ứng thực phẩm v&igrave; n&oacute; c&oacute; thể g&acirc;y dị ứng Loại 1 bằng c&aacute;ch uống đơn giản, nhưng n&oacute; cũng l&agrave; một chất g&acirc;y dị ứng do bụi. Aeroallergen l&agrave; một chất trong kh&ocirc;ng kh&iacute; như h&oacute;a chất, hạt, phấn hoa, b&agrave;o tử c&oacute; thể g&acirc;y ra dị ứng. C&aacute;c triệu chứng phổ biến của dị ứng bao gồm nổi mề đay, c&aacute;c vấn đề về h&ocirc; hấp v&agrave; trong trường hợp xấu nhất c&oacute; thể dẫn đến sốc phản vệ v&agrave; dẫn đến tử vong.</p>\r\n\r\n<p>Sốc phản vệ l&agrave; dạng phản ứng dị ứng cực đoan nhất, cho thấy c&aacute;c triệu chứng như kh&ocirc; họng, sưng, kh&oacute; thở, huyết &aacute;p thấp v&agrave; ch&oacute;ng mặt,&hellip; C&aacute;c phản ứng tr&ecirc;n c&oacute; thể k&eacute;o d&agrave;i từ v&agrave;i ph&uacute;t đến v&agrave;i giờ v&agrave; g&acirc;y tử vong.</p>\r\n\r\n<p>Hệ thống miễn dịch giải ph&oacute;ng histamine khi tiếp x&uacute;c với chất g&acirc;y dị ứng v&agrave; c&aacute;c phản ứng dị ứng ch&iacute;nh bao gồm chảy nước mũi, k&iacute;ch th&iacute;ch họng, mắt, buồn n&ocirc;n, đau bụng v&agrave; kh&oacute; thở.</p>\r\n\r\n<p>C&aacute;c triệu chứng đ&oacute; c&oacute; thể trở n&ecirc;n trầm trọng hơn nếu người mắc phải thuộc nh&oacute;m người nhạy cảm, c&oacute; tiền sử mắc c&aacute;c bệnh về đường h&ocirc; hấp như: hen suyễn, vi&ecirc;m mũi dị ứng,...</p>\r\n\r\n<p>[caption id=&quot;attachment_928&quot; align=&quot;aligncenter&quot; width=&quot;513&quot;]<img alt=\"Chất gây dị ứng được tìm thấy trên toàn bộ thân cây, đặc biệt là ở vỏ\" height=\"341\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Chất-gây-dị-ứng-được-tìm-thấy-trên-toàn-bộ-thân-cây-đặc-biệt-là-ở-vỏ.jpg\" width=\"513\" /> Chất g&acirc;y dị ứng được t&igrave;m thấy tr&ecirc;n to&agrave;n bộ th&acirc;n c&acirc;y, đặc biệt l&agrave; ở vỏ[/caption]</p>\r\n\r\n<p>Một c&aacute;ch phổ biến để xem đ&oacute; c&oacute; phải l&agrave; phản ứng dị ứng do bụi đậu n&agrave;nh hay kh&ocirc;ng? Đ&oacute; l&agrave; thực hiện x&eacute;t nghiệm m&aacute;u. Kết quả x&eacute;t nghiệm c&oacute; thể tiết lộ lượng kh&aacute;ng thể nhất định trong m&aacute;u.</p>\r\n\r\n<p>Thực tế thuốc chống dị ứng c&oacute; thể gi&uacute;p người mắc bệnh ở giai đoạn đầu khi c&oacute; c&aacute;c triệu chứng nhẹ. V&agrave; cần đến gặp b&aacute;c sĩ ngay trong trường hợp người mắc bệnh c&oacute; triệu chứng nặng hơn.</p>\r\n', '', 0, 79, '', '2020-02-23 14:02:08', NULL, 1, '', '', '', '', '', 'Bụi đậu nành là gì? Tác hại đối với con người như thế nào?', '', 'bui-dau-nanh-la-gi-tac-hai-doi-voi-con-nguoi-nhu-the-nao', '', 1, ''),
(98, 'Tê tê, loài vật trung gian lây nhiễm virus corona cho con người?', '', '<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu Trung Quốc l&agrave;m r&otilde; nguồn gốc của virus corona (Covid-19), loại virus đ&atilde; g&acirc;y chết người ở Trung Quốc trong thời gian qua. V&agrave; t&ecirc; t&ecirc; c&oacute; thể l&agrave; lo&agrave;i động vật trung gian l&agrave;m l&acirc;y nhiễm virus giữa dơi v&agrave; người. C&aacute;c nh&agrave; khoa học cho biết việc t&igrave;m kiếm n&agrave;y chưa đi đến được kết quả cuối c&ugrave;ng.</p>\r\n\r\n<p>[caption id=&quot;attachment_922&quot; align=&quot;aligncenter&quot; width=&quot;800&quot;]<img alt=\"Pangolin là sinh vật có vảy thường được sử dụng trong y học cổ truyền Trung Quốc.\" height=\"450\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Pangolin-là-sinh-vật-có-vảy-thường-được-sử-dụng-trong-y-học-cổ-truyền-Trung-Quốc..jpg\" width=\"800\" /> Pangolin l&agrave; sinh vật c&oacute; vảy thường được sử dụng trong y học cổ truyền Trung Quốc.[/caption]</p>\r\n\r\n<p>Trong một nghi&ecirc;n cứu trước đ&oacute; đ&atilde; chỉ ra rắn v&agrave; một số lo&agrave;i động vật hoang d&atilde; ở Vũ H&aacute;n được cho l&agrave; kh&ocirc;ng phải nguồn l&acirc;y nhiễm của dịch bệnh.</p>\r\n\r\n<p>Sự b&ugrave;ng ph&aacute;t SARS năm 2002-2003, li&ecirc;n quan đến một chủng virus corona kh&aacute;c, đ&atilde; được l&acirc;y nhiễm qua lo&agrave;i cầy, một lo&agrave;i th&uacute; nhỏ được ưa chuộng v&agrave; lấy thịt ở Trung Quốc.</p>\r\n\r\n<h2>T&ecirc; t&ecirc; c&oacute; phải l&agrave; loại động vật trung gian?</h2>\r\n\r\n<p>[caption id=&quot;attachment_921&quot; align=&quot;aligncenter&quot; width=&quot;1024&quot;]<img alt=\"Tê tê có thể là động vật trung gian\" height=\"415\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Tê-tê-có-thể-là-động-vật-trung-gian.jpg\" width=\"1024\" /> T&ecirc; t&ecirc; c&oacute; thể l&agrave; động vật trung gian[/caption]</p>\r\n\r\n<p>Nhiều động vật ở Trung Quốc đều c&oacute; khả năng truyền virus cho c&aacute;c lo&agrave;i kh&aacute;c v&agrave; gần như tất cả c&aacute;c chủng virus corona truyền nhiễm cho người c&oacute; nguồn gốc từ động vật hoang d&atilde;.</p>\r\n\r\n<p>Dơi được biết l&agrave; lo&agrave;i vật mang mầm bệnh mới nhất, t&iacute;nh đến ng&agrave;y 12/02/2020 số người nhiễm bệnh đ&atilde; l&ecirc;n đến hơn 45.000 người v&agrave; giết chết hơn 1115 người tr&ecirc;n to&agrave;n thế giới, chủ yếu ở Trung Quốc nơi dịch bệnh bắt nguồn.</p>\r\n\r\n<p>Một kết quả ph&acirc;n t&iacute;ch gần đ&acirc;y cho thấy chủng virus hiện đang l&acirc;y lan ở người giống đến 96% với lo&agrave;i dơi được t&igrave;m thấy.</p>\r\n\r\n<p>Nhưng theo &ocirc;ng Arnaud Fontanet, từ Viện Pasteur của Ph&aacute;p &ldquo;căn bệnh n&agrave;y c&oacute; khả năng kh&ocirc;ng chuyển thẳng từ dơi sang người, ch&uacute;ng t&ocirc;i nghĩ rằng c&oacute; một lo&agrave;i động vật kh&aacute;c l&agrave; trung gian&quot;. Theo &ocirc;ng lo&agrave;i vật trung gian &quot;c&oacute; lẽ l&agrave; động vật c&oacute; v&uacute;&quot;.</p>\r\n\r\n<p>Sau khi thử nghiệm hơn 1.000 mẫu từ động vật hoang d&atilde;, c&aacute;c nh&agrave; khoa học tại Đại học N&ocirc;ng nghiệp Nam Trung Quốc đ&atilde; t&igrave;m thấy bộ gen của virus corona trong t&ecirc; t&ecirc; giống 99% với c&aacute;c bệnh nh&acirc;n mắc bệnh do nhiễm virus.</p>\r\n\r\n<p>Nhưng c&aacute;c chuy&ecirc;n gia kh&aacute;c y&ecirc;u cầu thận trọng.</p>\r\n\r\n<p>&Ocirc;ng James Wood, trưởng khoa th&uacute; y tại Đại học Cambridge n&oacute;i : &quot;Đ&acirc;y kh&ocirc;ng phải l&agrave; bằng chứng khoa học, c&aacute;c cuộc điều tra v&agrave;o c&aacute;c lo&agrave;i động vật l&agrave; v&ocirc; c&ugrave;ng quan trọng, nhưng kết quả phải được c&ocirc;ng bố để xem x&eacute;t quốc tế.&quot;</p>\r\n\r\n<p>&quot;Đơn giản chỉ cần b&aacute;o c&aacute;o ph&aacute;t hiện RNA virus với độ tương tự chuỗi 99% l&agrave; kh&ocirc;ng đủ&quot;, &ocirc;ng n&oacute;i th&ecirc;m.</p>\r\n\r\n<h2>Sự t&igrave;m kiếm v&ocirc; vọng?</h2>\r\n\r\n<p>Để x&aacute;c định cụ thể thủ phạm, c&aacute;c nh&agrave; nghi&ecirc;n cứu sẽ cần kiểm tra từng lo&agrave;i được b&aacute;n tr&ecirc;n thị trường. Đ&acirc;y gần như l&agrave; một điều gần như kh&ocirc;ng thể do hiện tại khu chợ nơi ph&aacute;t sinh dịch bệnh đ&atilde; đ&oacute;ng cửa vĩnh viễn.</p>\r\n\r\n<p>B&agrave; Martine Peeters, một nh&agrave; virus học tại Viện Nghi&ecirc;n cứu v&agrave; Ph&aacute;t triển (IRD) của Ph&aacute;p, đ&atilde; l&agrave;m việc trong nh&oacute;m x&aacute;c định động vật chủ của virus Ebola n&oacute;i: &ldquo;Họ ph&aacute;t hiện ra rằng lo&agrave;i dơi virus cho con người&rdquo; v&agrave; b&agrave; tin rằng đ&oacute; c&oacute; thể l&agrave; trường hợp xảy ra trong thời điểm n&agrave;y.</p>\r\n\r\n<p>Trong nghi&ecirc;n cứu về Ebola của b&agrave;, &quot;ch&uacute;ng t&ocirc;i đ&atilde; thu thập h&agrave;ng ng&agrave;n con dơi rơi từ một số địa điểm ở Ch&acirc;u Phi&quot;, Peeters n&oacute;i.</p>\r\n\r\n<p>&Ocirc;ng Fontanet n&oacute;i rằng c&aacute;c nh&agrave; nghi&ecirc;n cứu Trung Quốc cũng đang l&agrave;m như vậy.</p>\r\n\r\n<p>&quot;Họ n&oacute;i rằng họ đ&atilde; ph&acirc;n t&iacute;ch c&aacute;c mẫu từ một chiếc xe tải r&aacute;c&quot;, &ocirc;ng n&oacute;i.&nbsp;&quot;Họ kh&ocirc;ng n&oacute;i điều đ&oacute;, nhưng t&ocirc;i nghĩ c&oacute; khả năng đ&oacute; l&agrave; ph&acirc;n dơi v&agrave; ch&uacute;ng chỉ nằm xung quanh chiếc xe&quot;</p>\r\n\r\n<h2>Tại sao n&oacute; quan trọng?</h2>\r\n\r\n<p>Mặc d&ugrave; c&oacute; thể l&agrave; qu&aacute; muộn cho đợt b&ugrave;ng ph&aacute;t n&agrave;y, nhưng với việc x&aacute;c định động vật mang mầm bệnh cho virus corona. Đ&acirc;y sẽ l&agrave; điều sống c&ograve;n trong việc ngăn chặn c&aacute;c đợt b&ugrave;ng ph&aacute;t trong tương lai.</p>\r\n\r\n<p>V&iacute; dụ, Trung Quốc đặt ra ngo&agrave;i v&ograve;ng ph&aacute;p luật việc b&aacute;n cầy hương để lấy thực phẩm sau đại dịch SARS.</p>\r\n\r\n<p>&Ocirc;ng Eric Leroy, một nh&agrave; virus học v&agrave; b&aacute;c sĩ th&uacute; y tại IRD cho biết &ldquo;việc t&igrave;m kiếm cũng c&oacute; thể mang lại kết quả nhanh ch&oacute;ng như trong trường hợp SARS.&nbsp;Việc t&igrave;m kiếm như thế n&agrave;y c&oacute; thể mất nhiều năm.&rdquo;</p>\r\n\r\n<p>&quot;Với Ebola, nghi&ecirc;n cứu bắt đầu v&agrave;o năm 1976 v&agrave; kết quả đầu ti&ecirc;n được c&ocirc;ng bố v&agrave;o năm 2005&quot; &ocirc;ng n&oacute;i.</p>\r\n\r\n<h2>Ngăn chặn dịch bệnh trong tương lai?</h2>\r\n\r\n<p>Đối với &ocirc;ng Fontanet, virus corona chỉ l&agrave; v&iacute; dụ mới nhất về hậu quả của việc con người ti&ecirc;u thụ động vật hoang d&atilde; mang virus.</p>\r\n\r\n<p>&Ocirc;ng n&oacute;i rằng Trung Quốc cần phải &quot;thực hiện c&aacute;c biện ph&aacute;p triệt để chống lại việc bu&ocirc;n b&aacute;n động vật hoang d&atilde;&quot;.</p>\r\n\r\n<p>Hiện tại, th&agrave;nh phố Bắc Kinh đ&atilde; cấm h&agrave;nh vi n&agrave;y, nhưng chỉ thực hiện khi dịch bệnh đ&atilde; vượt khỏi tầm kiểm so&aacute;t.</p>\r\n\r\n<p>Kristian Andersen, một nh&agrave; miễn dịch học v&agrave; nh&agrave; sinh học t&iacute;nh to&aacute;n tại Scripps Research ở La Jolla, California n&oacute;i &ldquo;T&ocirc;i c&oacute; thể tin chắc rằng điều đ&oacute; c&oacute; thể l&agrave; sự thật&rdquo;.&nbsp;&Ocirc;ng đ&atilde; so s&aacute;nh c&aacute;c chuỗi virus t&ecirc; t&ecirc; c&oacute; sẵn v&agrave; thấy rằng ch&uacute;ng tương tự như của Covid-19.&nbsp;&Ocirc;ng n&oacute;i: &ldquo;T&ocirc;i rất mong chờ b&aacute;o c&aacute;o v&agrave; dữ liệu được c&ocirc;ng bố. Đ&acirc;y c&oacute; thể ch&igrave;a kh&oacute;a để ngăn chặn dịch bệnh trong tương lai&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 79, '', '2020-02-23 14:02:54', '2020-02-26 22:02:31', 1, '', '', '', '', '', 'Tê tê, loài vật trung gian lây nhiễm virus corona cho con người?', '', 'te-te-loai-vat-trung-gian-lay-nhiem-virus-corona-cho-con-nguoi', '', 1, ''),
(99, '40 sự thật về ô nhiễm không khí ( phần cuối)', '', '<blockquote>\r\n<p><strong>Phần cuối 40 sự thật về &ocirc; nhiễm kh&ocirc;ng kh&iacute; sẽ l&agrave; những th&ocirc;ng tin thực tế v&agrave; hữu &iacute;ch. Những con số, những sự kiện trong b&agrave;i viết n&agrave;y c&oacute; thể khiến ch&uacute;ng ta giật m&igrave;nh. H&atilde;y chung tay h&agrave;nh động v&igrave; m&ocirc;i trường, v&igrave; một bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh.</strong></p>\r\n</blockquote>\r\n\r\n<p>Sự thật 27: 80% bệnh phổi l&agrave; do c&aacute;c chất g&acirc;y hại từ kh&iacute; thải của xe hơi, xe bu&yacute;t, xe tải v&agrave; c&aacute;c phương tiện kh&aacute;c.</p>\r\n\r\n<p>Sự thật 28: Ước t&iacute;nh 750.000 người chết ở Trung Quốc sớm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 29: Nghi&ecirc;n cứu của MIT chứng minh rằng khoảng 13.000 c&ocirc;ng d&acirc;n Anh chết do &ocirc; nhiễm kh&ocirc;ng kh&iacute; từ c&aacute;c phương tiện của một nh&agrave; m&aacute;y điện.</p>\r\n\r\n<p>Sự thật 30: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ở California giết chết 25.000 người mỗi năm v&agrave; ti&ecirc;u tốn 200 triệu đ&ocirc; la chi ph&iacute; y tế.</p>\r\n\r\n<p>Sự thật 31: 300.000 ở Trung Quốc chết mỗi năm do bệnh tim v&agrave; ung thư phổi do kh&ocirc;ng kh&iacute; độc hại.</p>\r\n\r\n<p>Sự thật 32: Người d&acirc;n ở nhiều th&agrave;nh phố đeo mặt nạ li&ecirc;n tục để tự cứu m&igrave;nh khỏi m&ocirc;i trường &ocirc; nhiễm.</p>\r\n\r\n<p>Sự thật 33: Dầu th&ocirc; nặng l&agrave;m tăng kh&ocirc;ng kh&iacute; nhiễm độc nhiều hơn 40% so với dầu th&ocirc; nhẹ.</p>\r\n\r\n<p>Sự thật 34: Kh&ocirc;ng kh&iacute; độc hại g&acirc;y ra trong giao th&ocirc;ng l&agrave;m tăng nguy cơ đau tim.</p>\r\n\r\n<p>Sự thật 35: Đến năm 2050, 6 triệu người sẽ chết mỗi năm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 36: Trong l&uacute;c kẹt xe nặng, c&aacute;c chất &ocirc; nhiễm b&ecirc;n ngo&agrave;i c&oacute; thể thấm v&agrave;o xe của bạn, khiến kh&ocirc;ng kh&iacute; b&ecirc;n trong xe của bạn bị &ocirc; nhiễm gấp 10 lần so với kh&ocirc;ng kh&iacute; b&igrave;nh thường trong th&agrave;nh phố.</p>\r\n\r\n<p>Sự thật 37: Theo Bộ Gi&aacute;o dục California, Hen suyễn l&agrave; l&yacute; do h&agrave;ng đầu của việc học sinh nghỉ học.</p>\r\n\r\n<p>Sự thật 38: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; tệ hơn 2-5 lần so với kh&ocirc;ng kh&iacute; ngo&agrave;i trời.</p>\r\n\r\n<p>Sự thật 39: Những người sống gần đường mật độ giao th&ocirc;ng cao phải đối mặt với nguy cơ mắc bệnh ung thư, bệnh tim, hen suyễn v&agrave; vi&ecirc;m phế quản cao hơn v&igrave; những nơi n&agrave;y chứa nhiều chất g&acirc;y hại tập trung hơn.</p>\r\n\r\n<p>Sự thật 40: Chuyển sang nhi&ecirc;n liệu hiệu quả hơn v&agrave; sạch hơn từ nhi&ecirc;n liệu rắn (gỗ, nguy&ecirc;n liệu sinh khối) c&oacute; thể gi&uacute;p bạn giảm &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;.</p>\r\n\r\n<p>Bằng những h&agrave;nh động nhỏ như đi xe đạp, sử dụng phương tiện giao th&ocirc;ng c&ocirc;ng cộng, đốt &iacute;t than trong tiệc nướng BBQ... ch&uacute;ng ta c&oacute; thể tạo ra một m&ocirc;i trường trong l&agrave;nh cho c&aacute;c thế hệ tương lai v&agrave; ch&iacute;nh ch&uacute;ng ta.</p>\r\n', '', 0, 0, '', '2020-02-23 14:02:29', NULL, 1, '', '', '', '', '', '40 sự thật về ô nhiễm không khí ( phần cuối)', '', '40-su-that-ve-o-nhiem-khong-khi-phan-cuoi', '', 1, ''),
(100, 'Màng lọc Hepa và những điều cần biết về màng lọc Hepa', '', '<p><!-- wp:paragraph --></p>\r\n\r\n<p>C&oacute; rất nhiều loại m&agrave;ng lọc được sử dụng kh&aacute;c nhau trong c&aacute;c d&ograve;ng sản phẩm lọc kh&ocirc;ng kh&iacute;. Tuy nhi&ecirc;n m&agrave;ng lọc Hepa đang l&agrave; loại phổ biến nhất với c&ocirc;ng dụng lọc bụi bẩn k&iacute;ch thước lớn đến c&aacute;c hạt bụi PM 2.5. Một thiết bị đ&oacute;ng vai tr&ograve; rất quan trọng trong việc xử l&yacute; kh&ocirc;ng kh&iacute; &ocirc; nhiễm hiện nay.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>M&agrave;ng lọc Hepa l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>HEPA được viết tắt của cụm từ&nbsp;&nbsp;High Efficiency Particulate Air&nbsp;(bộ lọc kh&ocirc;ng kh&iacute; hiệu xuất cao). M&agrave;ng lọc HEPA bao gồm những sợi rất nhỏ c&oacute; k&iacute;ch thước từ 0,2 đến 2 &micro;m, được xếp chồng một c&aacute;ch ngẫu nhi&ecirc;n tạo th&agrave;nh một tấm lọc nhiều lớp. Khi li&ecirc;n kết lại ch&uacute;ng gi&uacute;p m&agrave;ng lọc hepa lọc được bụi bẩn, vi khuẩn, phấn hoa, nấm mốc&hellip;c&oacute; đường k&iacute;nh &gt;0,3 &micro;m (micromet). V&igrave; thế bộ lọc HEPA c&oacute; thể lọc được bụi mịn PM2.5 (2,5 micromet).</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>C&ocirc;ng dụng của M&agrave;ng lọc Hepa</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của c&aacute;c nh&agrave; khoa học đến từ Đại học C&ocirc;ng nghệ Queensland (th&agrave;nh phố Brisbane, nước &Uacute;c), m&agrave;ng lọc Hepa đ&uacute;ng nghĩa, ho&agrave;n chỉnh sẽ loại bỏ được 99,9% những tạp chất c&oacute; trong kh&ocirc;ng kh&iacute;&hellip;. V&agrave; ti&ecirc;u chuẩn để được gọi l&agrave; m&agrave;ng lọc hepa l&agrave; ch&uacute;ng phải giữ được tất cả những hạt nhỏ đến 0,3 &micro;m ( PM 0.3 ) bay lơ lửng trogn kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Năm 1940 tại Mỹ, với mục đ&iacute;ch ban đầu l&agrave; lọc bụi ph&oacute;ng xạ từ c&aacute;c vụ thử bom nguy&ecirc;n tử, trải qua qu&aacute; tr&igrave;nh li&ecirc;n tục cải tiến, ph&aacute;t triển đến ng&agrave;y nay m&agrave;ng lọc Hepa đạt được kết quả vượt bậc trong ứng dụng lọc sạch bầu kh&ocirc;ng kh&iacute;. V&agrave; trong tương lai, đ&acirc;y vẫn lu&ocirc;n l&agrave; c&ocirc;ng cụ quan trọng gi&uacute;p ch&uacute;ng ta c&oacute; được bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh hơn.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Với những c&ocirc;ng dụng hữu &iacute;ch như vậy, m&agrave;ng lọc Hepa được con người ứng dụng rất rộng r&atilde;i trong lĩnh vực l&agrave;m sạch kh&ocirc;ng kh&iacute;. N&oacute; được lắp hầu hết c&aacute;c M&aacute;y lọc kh&ocirc;ng kh&iacute; v&agrave; trở th&agrave;nh bộ phận kh&ocirc;ng thể thiếu trong bất kỳ chiếc M&aacute;y lọc kh&ocirc;ng kh&iacute; n&agrave;o.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Ở Việt Nam, chỉ số chất lượng tại hai th&agrave;nh phố lớn l&agrave; H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh lu&ocirc;n ở mức xấu ( c&oacute; hại cho sức khỏe ). &Ocirc; nhiễm kh&ocirc;ng kh&iacute; bởi bụi PM2.5 khiến cho 2 th&agrave;nh phố tr&ecirc;n lu&ocirc;n nằm trong top c&aacute;c th&agrave;nh phố c&oacute; chỉ số &ocirc; nhiễm kh&ocirc;ng kh&iacute; cao nhất qua từng thời điểm. Do đ&oacute;, m&agrave;ng lọc Hepa sẽ kh&ocirc;ng c&ograve;n xa lạ với ch&uacute;ng ta trong thời gian tới.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2>Nguy&ecirc;n l&yacute; hoạt động của m&agrave;ng lọc Hepa</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Về cơ bản, bộ lọc Hepa được bao gồm một chiếc lưới của c&aacute;c sợi sắp xếp ngẫu nhi&ecirc;n. C&aacute;c sợi thường bao gồm c&aacute;c sợi thủy tinh v&agrave; c&oacute; đường k&iacute;nh từ 0,5 v&agrave; 2,0 micromet, do đ&oacute; bộ lọc c&oacute; thể loại bỏ một số lượng lớn c&aacute;c hạt rất nhỏ, c&oacute; khả năng g&acirc;y hen suyễn v&agrave; dị ứng h&ocirc; hấp cho con người m&agrave; m&aacute;y h&uacute;t bụi b&igrave;nh thường kh&aacute;c kh&ocirc;ng h&uacute;t được. Th&ocirc;ng thường, c&aacute;c m&aacute;y h&uacute;t bụi kh&ocirc;ng trang bị bộ lọc Hepa sẽ thải những hạt bụi nhỏ như vậy trở lại v&agrave;o kh&ocirc;ng kh&iacute; trong nh&agrave;.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Bộ lọc HEPA c&oacute; thể lọc hầu hết c&aacute;c chất từ kh&ocirc;ng kh&iacute;, c&oacute; k&iacute;ch thước nhỏ đến 0,3&nbsp;mm. Ch&uacute;ng hữu &iacute;ch trong việc lọc phấn hoa, b&agrave;o tử nấm, l&ocirc;ng th&uacute; v&agrave; kh&oacute;i.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Hiện nay loại m&agrave;ng lọc hữu &iacute;ch n&agrave;y được sử dụng ở rất nhiều lĩnh vực kh&aacute;c nhau: c&ocirc;ng nghiệp, y tế, h&agrave;ng hải, th&iacute; nghiệm&hellip; những nơi c&oacute; con người sinh sống. Ta c&oacute; thể kể đến những nơi được lắp đặt m&agrave;ng lọc Hepa. V&iacute; dụ: trong &ocirc; t&ocirc;, trong bệnh viện, ph&ograve;ng th&iacute; nghiệm, nơi cần bảo quản thực phẩm tươi sống v&agrave; thiết bị ng&agrave;nh y tế, t&agrave;u vận tải biển&hellip;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2>C&aacute;ch chọn mua m&agrave;ng lọc Hepa</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Để mua được đ&uacute;ng chiếc m&agrave;ng lọc Hepa cần t&igrave;m, đầu ti&ecirc;n ch&uacute;ng ta phải x&aacute;c định loại k&iacute;ch thước m&igrave;nh định mua (mỗi một model m&aacute;y đều c&oacute; k&iacute;ch thước d&agrave;i, rộng, d&agrave;y của m&agrave;ng lọc l&agrave; kh&aacute;c nhau). Sau đ&oacute; ch&uacute;ng ta ưu ti&ecirc;n t&igrave;m những m&agrave;ng lọc của ch&iacute;nh h&atilde;ng sản xuất cho model m&aacute;y đ&oacute; tại c&aacute;c hệ thống Si&ecirc;u thị điện m&aacute;y, c&aacute;c cửa h&agrave;ng ủy quyền của nh&agrave; sản xuất để mua.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay c&aacute;c loại&nbsp;<strong>m&agrave;ng lọc hepa</strong>&nbsp;được sản xuất trong nước v&agrave; nhập khẩu. C&aacute;c sản phẩm n&agrave;y đến từ thương hiệu kh&aacute;c nhau, kiểu d&aacute;ng, k&iacute;ch thước v&agrave; gi&aacute; th&agrave;nh cũng kh&aacute;c nhau. Ch&uacute;ng ta n&ecirc;n gọi điện trước để được tư vấn cụ thể v&agrave; sẽ y&ecirc;n t&acirc;m hơn khi mua m&agrave;ng lọc ch&iacute;nh h&atilde;ng, chất lượng được đảm bảo. Đặc biệt n&ecirc;n ưu ti&ecirc;n những m&agrave;ng lọc c&oacute; tẩm th&ecirc;m c&aacute;c tinh chất chuy&ecirc;n diệt khuẩn v&agrave; nấm mốc b&aacute;m d&iacute;nh tr&ecirc;n đ&oacute;.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '', 0, 0, '', '2020-02-23 14:02:46', NULL, 1, '', '', '', '', '', 'Màng lọc Hepa và những điều cần biết về màng lọc Hepa', '', 'mang-loc-hepa-va-nhung-dieu-can-biet-ve-mang-loc-hepa', '', 1, ''),
(101, 'Chất lượng không khí ở Hà Nội những ngày qua', '', '<p><strong>Chất lượng kh&ocirc;ng kh&iacute;</strong> ở H&agrave; Nội sau khi xảy ra ch&aacute;y ở <strong>nh&agrave; m&aacute;y Rạng Đ&ocirc;ng</strong></p>\r\n\r\n<p>Những ng&agrave;y qua, chất lượng kh&ocirc;ng kh&iacute; ở H&agrave; Nội đều cho những kết quả đ&aacute;ng b&aacute;o động ở c&aacute;c <strong>điểm quan trắc </strong>v&agrave;o đầu giờ s&aacute;ng. <strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute;</strong> (<strong>AQI</strong>) của H&agrave; Nội th&ocirc;ng qua ứng dụng đo thời tiết như <strong>Air Quality</strong> ở mức <strong>c&oacute; hại cho sức khỏe</strong> (từ 151 &ndash; 200) v&agrave; mức b&aacute;o động n&agrave;y hầu hết đều nằm trong nội th&agrave;nh H&agrave; Nội. Điều n&agrave;y g&acirc;y ảnh hưởng đến sức khỏe của những người mắc bệnh về đường h&ocirc; hấp, người gi&agrave; v&agrave; trẻ nhỏ cao hơn so với người b&igrave;nh thường.</p>\r\n\r\n<p>Ng&agrave;y 28/8/2019, kho chứa h&agrave;ng của C&ocirc;ng ty CP b&oacute;ng đ&egrave;n ph&iacute;ch nước Rạng Đ&ocirc;ng xảy ra ch&aacute;y lớn. Đ&aacute;ng ch&uacute; &yacute; nguồn thủy ng&acirc;n ph&aacute;t t&aacute;n ra, theo t&iacute;nh to&aacute;n của c&aacute;c nh&agrave; khoa học th&igrave; khối lượng thủy ng&acirc;n ph&aacute;t t&aacute;n ra l&agrave; 27,2kg nhưng theo b&aacute;o c&aacute;o c&ocirc;ng ty tr&ecirc;n cơ sở số đ&egrave;n compact của C&ocirc;ng ty Rạng Đ&ocirc;ng l&agrave; 15,1kg. Sự cố ch&aacute;y ở Cty B&oacute;ng đ&egrave;n Ph&iacute;ch nước Rạng Đ&ocirc;ng c&oacute; nguy cơ g&acirc;y &ocirc; nhiễm thủy ng&acirc;n, &ocirc; nhiễm m&ocirc;i trường nước, &ocirc; nhiễm m&ocirc;i trường đất.</p>\r\n\r\n<p>Thủy ng&acirc;n l&agrave; chất độc t&iacute;ch lũy sinh học rất dễ hấp thụ qua da, c&aacute;c cơ quan h&ocirc; hấp v&agrave; ti&ecirc;u h&oacute;a. Thủy ng&acirc;n tạo ra sự &ocirc; nhiễm đ&aacute;ng kể đối với m&ocirc;i trường v&igrave; n&oacute; tạo ra c&aacute;c hợp chất hữu cơ trong cơ thể sinh vật. Một trong những hợp chất độc nhất của n&oacute; l&agrave; đim&ecirc;tyl thủy ng&acirc;n, độc đến mức chỉ v&agrave;i micr&ocirc;l&iacute;t rơi v&agrave;o da c&oacute; thể g&acirc;y tử vong. Thủy ng&acirc;n thuộc nh&oacute;m đầu c&aacute;c độc tố g&acirc;y nguy hiểm cho sức khỏe con người.</p>\r\n\r\n<p>Người tiếp x&uacute;c với nồng độ thủy ng&acirc;n trong kh&ocirc;ng kh&iacute; trong thời gian d&agrave;i sẽ xuất hiện c&aacute;c triệu chứng như run rẩy, mất khả năng điều h&ograve;a vận động, thay đổi t&iacute;nh c&aacute;ch, mất tr&iacute; nhớ, mất ngủ, mệt mỏi, đau đầu, giảm c&acirc;n, căng thẳng t&acirc;m l&yacute;, vi&ecirc;m lợi... Nặng hơn c&oacute; thể dẫn đến ph&ugrave; phổi cấp, suy h&ocirc; hấp v&agrave; tử vong..</p>\r\n\r\n<p>Nuốt phải thủy ng&acirc;n v&ocirc; cơ (điển h&igrave;nh l&agrave; pin) g&acirc;y phỏng ni&ecirc;m mạc miệng, đau bụng, buồn n&ocirc;n, n&ocirc;n ra m&aacute;u. Diễn tiến sau đ&oacute; v&agrave;i ng&agrave;y hoại tử ống thận cấp, g&acirc;y suy thận, rối loạn nước v&agrave; điện giải c&oacute; thể g&acirc;y tử vong.</p>\r\n\r\n<p>Ăn thức ăn chứa thủy ng&acirc;n hữu cơ như c&aacute; trong nguồn nước bị nhiễm thủy ng&acirc;n g&acirc;y ngộ độc, xuất hiện sau nhiều ng&agrave;y đến nhiều tuần g&acirc;y ra c&aacute;c triệu chứng về thần kinh l&agrave; dị cảm, thất điều, suy nhược thần kinh, giảm th&iacute;nh gi&aacute;c, loạn vận ng&ocirc;n, thu hẹp thị trường, rối loạn t&acirc;m thần, run cơ, rối loạn cử động v&agrave; c&oacute; thể tử vong. Đặc biệt, rất độc đối với thai nhi c&oacute; mẹ thường xuy&ecirc;n ăn c&aacute; nơi c&oacute; nước chứa nhiều thủy ng&acirc;n g&acirc;y sẩy thai, khuyết tật thần kinh, chậm ph&aacute;t triển t&acirc;m thần, bại n&atilde;o, biến dạng chi.</p>\r\n\r\n<p>Để đảm bảo an to&agrave;n tuyệt đối sức khỏe, người d&acirc;n sinh sống quanh khu vực ch&aacute;y cần thực hiện tốt c&aacute;c biện ph&aacute;p vệ sinh c&aacute; nh&acirc;n theo khuyến c&aacute;o của ng&agrave;nh y tế đưa ra như đưa trẻ em, người gi&agrave;, người mắc bệnh về đường h&ocirc; hấp ra khỏi khu vực từ 1 - 10 ng&agrave;y để hạn chế t&aacute;c hại của thủy ng&acirc;n, kh&oacute;i bụi; thường xuy&ecirc;n s&uacute;c miệng bằng dung dịch Natri Clorid từ 7 - 10 ng&agrave;y sau vụ ch&aacute;y. Kh&ocirc;ng sử dụng nước, thực phẩm, tr&aacute;i c&acirc;y,&hellip; trong b&aacute;n k&iacute;nh 1 km kể từ t&acirc;m đ&aacute;m ch&aacute;y, ti&ecirc;u hủy c&aacute;c loại tr&aacute;i c&acirc;y tự trồng trong b&aacute;n k&iacute;nh từ đ&aacute;m ch&aacute;y 500 m...</p>\r\n\r\n<p>Người d&acirc;n cũng được y&ecirc;u cầu thay, giặt to&agrave;n bộ quần &aacute;o nhiễm kh&oacute;i bụi do ch&aacute;y bằng c&aacute;ch giặt sạch nhiều lần sau đ&oacute; ng&acirc;m x&agrave; ph&ograve;ng n&oacute;ng trong 70-80 độ; thau rửa c&aacute;c vật dụng chứa nước, vật dụng sinh hoạt c&oacute; b&aacute;m bụi.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, 0, '', '2020-02-23 14:02:04', NULL, 1, '', '', '', '', '', 'Chất lượng không khí ở Hà Nội những ngày qua', '', 'chat-luong-khong-khi-o-ha-noi-nhung-ngay-qua', '', 1, ''),
(102, 'Cây cảnh thanh lọc không khí và chữa bệnh - Huyết Dụ', '', '<h4>Trồng c&aacute;c loại c&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; trong nh&agrave; l&agrave; một phương ph&aacute;p đơn giản đ&atilde; được nhiều nh&agrave; nghi&ecirc;n cứu chỉ để l&agrave;m giảm t&igrave;nh trang &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;. &Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đến từ rất nhiều sinh hoạt h&agrave;ng ng&agrave;y, tưởng trừng v&ocirc; hại v&agrave; diễn ra h&agrave;ng ng&agrave;y. Ch&iacute;nh v&igrave; thế t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đang tồn tại trong ch&iacute;nh ng&ocirc;i nh&agrave; m&agrave; ch&uacute;ng ta đang ở.</h4>\r\n\r\n<p>Huyết dụ l&agrave; một trong c&aacute;c loại c&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; Ngo&agrave;i ra, nhờ sắc đỏ lạ mắt v&agrave; h&igrave;nh d&aacute;ng đẹp n&ecirc;n c&ograve;n được trồng để trang tr&iacute; kh&ocirc;ng gian sống. Trong Đ&ocirc;ng Y, l&aacute; v&agrave; rễ c&acirc;y c&oacute; được trồng để l&agrave;m thuốc để chữa nhiều loại bệnh.</p>\r\n\r\n<h2>Đặc điểm:</h2>\r\n\r\n<p>[caption id=&quot;attachment_154&quot; align=&quot;aligncenter&quot; width=&quot;443&quot;]<img alt=\"Cây cảnh lọc không khí\" height=\"295\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Cây-cảnh-lọc-không-khí-1-300x200.jpg\" width=\"443\" /> C&acirc;y cảnh lọc kh&ocirc;ng kh&iacute;[/caption][caption id=&quot;attachment_158&quot; align=&quot;aligncenter&quot; width=&quot;444&quot;]<img alt=\"Huyết Dụ Đỏ\" height=\"274\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Huyết-Dụ-Đỏ-300x185.jpg\" width=\"444\" /> C&acirc;y lọc kh&iacute; trong nh&agrave;[/caption]</p>\r\n\r\n<p>C&acirc;y Huyết Dụ c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; Ph&aacute;t dụ, thiết thụ, chổng đeng, phật dụ,&hellip; T&ecirc;n khoa học l&agrave; Cordyline terminalis. Thuộc họ: Huyết dụ (Dracaena terminalis). C&oacute; 2 loại huyết dụ: một loại c&oacute; l&aacute; c&acirc;y đỏ cả 2 mặt; loại c&ograve;n lại c&oacute; 1 mặt đỏ, 1 mặt xanh.</p>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; l&agrave; thực vật th&acirc;n nhỏ, chiều cao khoảng 1 &ndash; 2m. C&acirc;y huyết dụ l&agrave; loại c&acirc;y mọc theo kh&oacute;m. L&aacute; c&acirc;y c&oacute; m&agrave;u đỏ, t&iacute;m. L&aacute; c&oacute; h&igrave;nh dạng d&agrave;i v&agrave; kh&ocirc;ng c&oacute; nhiều g&acirc;n. Th&acirc;n c&acirc;y mảnh, &iacute;t ph&acirc;n nh&aacute;nh, vỏ c&acirc;y c&oacute; nhiều sẹo. L&aacute; c&acirc;y c&oacute; m&agrave;u đỏ đặc trưng, một số c&acirc;y c&oacute; m&agrave;u đỏ t&iacute;a, l&aacute; mọc chủ yếu ở ngọn, chiều d&agrave;i khoảng 30 &ndash; 50cm, rộng khoảng 7 &ndash; 10cm.</p>\r\n\r\n<p><strong>C&acirc;y gi&uacute;p lọc kh&ocirc;ng kh&iacute;</strong> ph&acirc;n bố rải r&aacute;c khắp c&aacute;c tỉnh th&agrave;nh từ Bắc v&agrave;o Nam. C&acirc;y c&oacute; nguồn gốc ở v&ugrave;ng nhiệt đới v&agrave; được trồng l&agrave;m cảnh phổ biến tr&ecirc;n khắp nước ta, thường được thu h&aacute;i v&agrave;o m&ugrave;a h&egrave;.</p>\r\n\r\n<h2><strong>C&aacute;ch chăm s&oacute;c c&acirc;y cảnh trang tr&iacute; trong nh&agrave;:</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_156&quot; align=&quot;aligncenter&quot; width=&quot;328&quot;]<img alt=\"Cây Huyết Dụ\" height=\"410\" src=\"https://maxair.vn/wp-content/uploads/2019/12/cây-huyết-dụ-240x300.jpg\" width=\"328\" /> C&acirc;y Huyết Dụ[/caption]</p>\r\n\r\n<p>Kh&ocirc;ng phải l&agrave; một c&acirc;y k&eacute;n đất k&eacute;n nước, huyết dụ dễ d&agrave;ng ph&aacute;t triển trong m&ocirc;i trường kh&iacute; hậu nhiệt đới, ngay cả khi thiếu thốn về kh&ocirc;ng gian hay nguồn nước. Tuy nhi&ecirc;n, để <em>c&acirc;y lọc kh&iacute;</em> nhanh ch&oacute;ng ph&aacute;t triển v&agrave; c&oacute; tuổi thọ l&acirc;u d&agrave;i bạn cần ch&uacute; &yacute; tới một số điểm về c&aacute;ch chăm s&oacute;c như sau.</p>\r\n\r\n<h3>&Aacute;nh s&aacute;ng:</h3>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; th&iacute;ch hợp với &aacute;nh s&aacute;ng mạnh, c&acirc;y cần tr&aacute;nh &aacute;nh s&aacute;ng mặt trời trực tiếp. Ngo&agrave;i ra, c&acirc;y huyết dụ l&aacute; xanh thường th&iacute;ch ứng tốt nhất với &aacute;nh s&aacute;ng trực tiếp, trong khi những c&acirc;y c&oacute; l&aacute; m&agrave;u kh&aacute;c c&oacute; thể th&iacute;ch &aacute;nh s&aacute;ng mặt trời gi&aacute;n tiếp hoặc được lọc.</p>\r\n\r\n<h3>Đất:</h3>\r\n\r\n<p>C&acirc;y cảnh lọc kh&ocirc;ng kh&iacute; th&iacute;ch hợp với đất trồng tơi xốp, tho&aacute;ng kh&iacute;, tho&aacute;t nước tốt, giữ ẩm tốt. Bạn n&ecirc;n b&oacute;n th&ecirc;m một &iacute;t ph&acirc;n b&oacute;n hữu cơ để gi&uacute;p c&acirc;y sinh trưởng ph&aacute;t triển tốt. Đặc biệt ch&uacute; &yacute; thiếu đến loại ph&acirc;n b&oacute;n như Mg v&agrave; K, thiếu loại n&agrave;y c&acirc;y sẽ c&ograve;i cọc, ch&aacute;y l&aacute; v&agrave; dễ bị chết. Kh&ocirc;ng n&ecirc;n b&oacute;n ph&acirc;n cho đất trồng v&agrave;o m&ugrave;a đ&ocirc;ng. C&acirc;y ngo&agrave;i trời cũng cần được bảo đảm tốt; với những chiếc l&aacute; lớn của n&oacute;, ch&uacute;ng c&oacute; thể bắt gi&oacute; v&agrave; dễ lật đổ.</p>\r\n\r\n<h3>Nước v&agrave; Ph&acirc;n B&oacute;n:</h3>\r\n\r\n<p>C&acirc;y huyết dụ c&oacute; nhu cầu nước trung b&igrave;nh. Tưới nước để giữ độ ẩm cho đất trồng, gi&uacute;p c&acirc;y h&uacute;t được nước. Khi thiếu nước, l&aacute; c&acirc;y sẽ h&eacute;o kh&ocirc; v&agrave; chuyển sang m&agrave;u n&acirc;u. Kh&ocirc;ng n&ecirc;n để <strong>c&acirc;y xanh lọc kh&ocirc;ng kh&iacute;</strong> rơi v&agrave;o t&igrave;nh trạng n&agrave;y</p>\r\n\r\n<h3>Nhiệt độ v&agrave; độ ẩm:</h3>\r\n\r\n<p>C&acirc;y huyết dụ ph&aacute;t triển mạnh th&iacute;ch m&ocirc;i trường c&oacute; độ ẩm cao. C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; sinh trưởng v&agrave; ph&aacute;t triển tốt ỏ khoảng 15-27oC, nhiệt độ thấp nhất m&agrave; huyết dụ c&ograve;n c&oacute; thể chịu đựng l&agrave; 4oC. T&ugrave;y thuộc v&agrave;o nhiệt độ của khu vực của bạn, m&agrave; bố tr&iacute; vị tr&iacute; trồng c&acirc;y cho ph&ugrave; hợp.</p>\r\n\r\n<h3>S&acirc;u bệnh hại c&acirc;y:</h3>\r\n\r\n<p>N&ecirc;n d&ugrave;ng thuốc bảo vệ thực vật để diệt trừ s&acirc;u hại, sau đ&oacute;, cạo bỏ phần th&acirc;n c&acirc;y bị hoại tử, rửa vết thương bằng x&agrave; ph&ograve;ng v&agrave; nước sạch để trị bệnh cho c&acirc;y.</p>\r\n\r\n<h3>Chăm s&oacute;c t&aacute;n c&acirc;y:</h3>\r\n\r\n<p>C&acirc;y xanh lọc kh&ocirc;ng kh&iacute; theo thời gian cũng sẽ t&agrave;n nh&aacute;nh l&aacute;. Cần quan s&aacute;t kĩ c&aacute;c nh&aacute;nh l&aacute;, loại bỏ ngay c&aacute;c phần bị hư để tr&aacute;nh ảnh hưởng đến c&aacute;c nh&aacute;nh c&acirc;y kh&aacute;c.</p>\r\n\r\n<h2><strong>Một số c&ocirc;ng dụng của c&acirc;y xanh lọc kh&ocirc;ng kh&iacute;:</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_157&quot; align=&quot;aligncenter&quot; width=&quot;311&quot;]<img alt=\"Cây lọc khí độc \" height=\"415\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Huyết-Dụ-có-thể-sử-dụng-lá-và-rễ-để-chữa-bệnh-225x300.jpg\" width=\"311\" /> C&acirc;y lọc kh&iacute; độc[/caption]</p>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; k&iacute;ch thước nhỏ c&ograve;n được trồng l&agrave;m c&acirc;y để b&agrave;n, c&acirc;y trong nh&agrave;.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng <strong>lọc kh&iacute; độc</strong> c&oacute; trong kh&ocirc;ng kh&iacute; như Benzene, Xylene, Formaldehyde v&agrave; 94% c&aacute;c loại hợp chất g&acirc;y &ocirc; nhiễm kh&aacute;c</p>\r\n\r\n<p>Một c&ocirc;ng dụng nữa của <u>c&acirc;y l&agrave;m sạch kh&ocirc;ng kh&iacute;</u> đ&oacute; l&agrave; khả năng chữa bệnh. C&oacute; thể sử dụng l&aacute; v&agrave; rễ c&acirc;y điều trị c&aacute;c bệnh như lao phổi với ho thổ huyết, rong huyết,&hellip; Theo Đ&ocirc;ng y, Huyết dụ c&oacute; vị nhạt, hơi đắng, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng bổ huyết, ti&ecirc;u ứ, cầm m&aacute;u d&ugrave;ng chữa chứng kiết lỵ, rong kinh, phong thấp nhức xương, x&iacute;ch bạch đới, giảm đau, phong thấp g&acirc;y đau nhức.</p>\r\n\r\n<h2><strong>C&acirc;y lọc kh&ocirc;ng kh&iacute; hợp với mệnh n&agrave;o?</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_155&quot; align=&quot;aligncenter&quot; width=&quot;343&quot;]<img alt=\"Cây cho người mệnh Thổ và Hỏa\" height=\"457\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Cây-cho-người-mệnh-Thổ-và-Hỏa-225x300.jpg\" width=\"343\" /> C&acirc;y lọc kh&ocirc;ng kh&iacute;[/caption]</p>\r\n\r\n<p>Theo ngũ h&agrave;nh c&acirc;y huyết dụ thuộc h&agrave;nh hỏa do c&oacute; m&agrave;u đỏ t&iacute;nh dương mạnh. (t&iacute;nh &acirc;m dương phụ thuộc v&agrave;o độ s&aacute;ng tối của m&agrave;u sắc c&acirc;y).</p>\r\n\r\n<p>V&igrave; vậy c&acirc;y huyết dụ sẽ ph&ugrave; hợp với những người mệnh Thổ v&agrave; mệnh Hỏa. Gi&uacute;p gặp nhiều may mắn trong c&ocirc;ng việc v&agrave; cuộc sống. Đặc biệt đối với người mệnh kim kh&ocirc;ng n&ecirc;n d&ugrave;ng c&acirc;y huyết dụ l&agrave;m vật trang tr&iacute;. V&igrave; sẽ tương khắc do Kim sẽ khắc Hỏa.</p>\r\n\r\n<p>Trong phong thủy người ta tin rằng <em>c&acirc;y thanh lọc kh&ocirc;ng kh&iacute;</em> mang lại may mắn. C&oacute; t&aacute;c dụng giữ tiền của, t&agrave;i lộc cho gia chủ. Kh&ocirc;ng những thế huyết dụ c&oacute; thể ngăn, xua đuổi t&agrave; ma tấn c&ocirc;ng ng&ocirc;i nh&agrave; của bạn.</p>\r\n', '', 0, 0, '', '2020-02-23 14:02:28', NULL, 1, '', '', '', '', '', 'Cây cảnh thanh lọc không khí và chữa bệnh - Huyết Dụ', '', 'cay-canh-thanh-loc-khong-khi-va-chua-benh-huyet-du', '', 1, '');
INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(103, 'Chỉ số chất lượng không khí và những điều cần biết', '', '<p><strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute; (AQI) l&agrave; một thước đo đ&aacute;nh gi&aacute; chất lượng kh&ocirc;ng kh&iacute; hằng ng&agrave;y. Vậy chỉ số n&agrave;y l&agrave; g&igrave;? C&aacute;c gi&aacute; trị chỉ số AQI kh&aacute;c nhau sẽ c&oacute; &yacute; nghĩa như thế n&agrave;o về t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute;?</strong></p>\r\n\r\n<h2>Chỉ số chất lượng kh&ocirc;ng kh&iacute; l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute;</strong> t&ecirc;n gọi tiếng anh l&agrave;<strong> Air Quality Index</strong> được viết tắt l&agrave; <strong>AQI</strong>. <strong>Chỉ số AQI</strong> cho biết t&igrave;nh trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> v&agrave; mức độ ảnh hưởng đến sức khỏe con người. Con số n&agrave;y c&agrave;ng cao thể hiện <strong>kh&ocirc;ng kh&iacute; c&agrave;ng &ocirc; nhiễm</strong>. Cơ quan Bảo vệ M&ocirc;i trường Hoa Kỳ đ&atilde; t&iacute;nh to&aacute;n chỉ số n&agrave;y dựa tr&ecirc;n 5 chất g&acirc;y <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> được quy định bởi Đạo luật Kh&ocirc;ng kh&iacute; sạch. Bao gồm:</p>\r\n\r\n<h4>Ozone mặt đất</h4>\r\n\r\n<p>Ozone (O<sub>3</sub>) tự nhi&ecirc;n c&oacute; mặt tr&ecirc;n độ cao bảo vệ ch&uacute;ng ta chống lại c&aacute;c tia tử ngoại độc hại, nhưng khi chất kh&iacute; n&agrave;y ở mặt đất (c&ograve;n gọi l&agrave; ozone tầng đối lưu hay ozone xấu) th&igrave; n&oacute; sẽ trở th&agrave;nh một chất g&acirc;y &ocirc; nhiễm.</p>\r\n\r\n<h4><strong>Bụi trong kh&ocirc;ng kh&iacute; (PM)</strong></h4>\r\n\r\n<p>Thường đ&aacute;nh gi&aacute; qua chỉ số <strong>bụi mịn PM 2.5</strong> v&agrave; <strong>PM 10</strong>. C&aacute;c hạt bụi n&agrave;y đi v&agrave;o đường h&ocirc; hấp khi con người h&iacute;t thở.</p>\r\n\r\n<ul>\r\n	<li><strong>PM</strong> (Particulate Matter) l&agrave; c&oacute; nghĩa l&agrave; chất dạng hạt (rắn hoặc lỏng).</li>\r\n	<li><strong>PM 2.5</strong> chỉ c&aacute;c hạt c&oacute; k&iacute;ch thước nhỏ hơn hoặc bằng 2,5 micromet (&mu;m). Số <strong>PM 10</strong> l&agrave; chỉ những hạt c&oacute; đường k&iacute;nh nhỏ hơn hoặc bằng 10 &mu;m (nhưng lớn hơn k&iacute;ch thước PM 2.5).</li>\r\n	<li>C&aacute;c loại <strong>hạt bụi PM 2.5</strong> v&agrave; <strong>PM 10</strong> được h&igrave;nh th&agrave;nh từ c&aacute;c chất như cacbon, sun-phua, nito v&agrave; c&aacute;c hợp chất kim loại kh&aacute;c. <strong>Hạt bụi mịn PM 2.5</strong> sinh ra từ bụi đường phố, đốt r&aacute;c thải, h&uacute;t thuốc, kh&iacute; thải giao th&ocirc;ng ...</li>\r\n</ul>\r\n\r\n<h4>Cacbon monoxit (CO)</h4>\r\n\r\n<p>Cacbon monoxit l&agrave; một chất kh&iacute; kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, bắt ch&aacute;y v&agrave; c&oacute; độc t&iacute;nh cao. Nguồn sinh ra Cacbon monoxit m&agrave; ch&uacute;ng ta dễ h&igrave;nh dung nhất l&agrave; <strong>kh&iacute; thải động cơ</strong>.</p>\r\n\r\n<h4>Lưu huỳnh đi&ocirc;xit (SO2)</h4>\r\n\r\n<p>Lưu huỳnh đi&ocirc;xit (hay c&ograve;n gọi l&agrave; anhiđrit sunfurơ) l&agrave; một hợp chất h&oacute;a học với c&ocirc;ng thức SO<sub>2</sub>. N&oacute; sinh ra như l&agrave; sản phẩm phụ trong qu&aacute; tr&igrave;nh đốt ch&aacute;y than, dầu, kh&iacute; đốt.. Chất kh&iacute; n&agrave;y l&agrave; một mối lo m&ocirc;i trường đ&aacute;ng kể.</p>\r\n\r\n<h4>Nitơ đi&ocirc;xit (NO2)</h4>\r\n\r\n<p>Nitơ đi&ocirc;x&iacute;t hay đi&ocirc;x&iacute;t nitơ l&agrave; một hợp chất h&oacute;a học c&oacute; c&ocirc;ng thức NO<sub>2</sub>. Kh&iacute; độc m&agrave;u n&acirc;u đỏ n&agrave;y c&oacute; m&ugrave;i gắt đặc trưng v&agrave; l&agrave; một chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; nổi bật.</p>\r\n\r\n<p>Trong <strong>c&aacute;c chất g&acirc;y &ocirc; nhiễm</strong> tr&ecirc;n, ozone mặt đất v&agrave; <strong>bụi trong kh&ocirc;ng kh&iacute;</strong> được coi l&agrave; hai yếu tố g&acirc;y nguy hiểm nhất cho sức khỏe con người</p>\r\n\r\n<p>Bảng m&agrave;u ph&iacute;a dưới thể hiện <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> c&ugrave;ng mức độ ảnh hưởng tới sức khỏe con người.</p>\r\n\r\n<p><img alt=\"\" height=\"479\" src=\"https://maxair.vn/wp-content/uploads/2019/12/khong-khi-300x231.png\" width=\"622\" /></p>\r\n\r\n<h2>&Yacute; nghĩa cụ thể của chỉ số chất lượng kh&ocirc;ng kh&iacute; AQI</h2>\r\n\r\n<p><strong>AQI</strong> từ 0 đến 50: chất lượng kh&ocirc;ng kh&iacute; được coi l&agrave; đạt y&ecirc;u cầu. Người d&acirc;n kh&ocirc;ng gặp hoặc gặp rất &iacute;t c&aacute;c vấn đề sức khỏe.</p>\r\n\r\n<p><strong>AQI</strong> từ 51 đến 100: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> ở mức chấp nhận được. Ở mức độ n&agrave;y, c&oacute; một số &iacute;t người c&oacute; thể gặp phải c&aacute;c vấn đề sức khỏe đến từ chất g&acirc;y &ocirc; nhiễm trong kh&ocirc;ng kh&iacute;. V&iacute; dụ, những người nhạy cảm với ozone c&oacute; thể gặp c&aacute;c vấn đề về h&ocirc; hấp.</p>\r\n\r\n<p><strong>AQI</strong> từ 101 đến 150: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> nằm ở mức k&eacute;m. Phần đ&ocirc;ng người d&acirc;n chưa gặp phải c&aacute;c vấn đề sức khỏe. Tuy nhi&ecirc;n, những người mắc bệnh phổi, người lớn tuổi v&agrave; trẻ em c&oacute; nguy cơ cao hơn khi tiếp x&uacute;c với ozone v&agrave; <strong>bụi trong kh&ocirc;ng kh&iacute;.</strong></p>\r\n\r\n<p><strong>AQI</strong> từ 151 đến 200: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> xấu. Mọi người bắt đầu gặp phải c&aacute;c ảnh hưởng đến sức khỏe. Những người thuộc c&aacute;c nh&oacute;m nhạy cảm như người cao tuổi, trẻ em v&agrave; người mắc bệnh phổi gặp nguy cơ cao.</p>\r\n\r\n<p><strong>AQI</strong> từ 201 đến 300: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> rất xấu. Mọi người c&oacute; thể gặp c&aacute;c <strong>ảnh hưởng nghi&ecirc;m trọng tới sức khỏe</strong>.</p>\r\n\r\n<p><strong>AQI</strong> từ 301 đến 500: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> nằm ở mức nguy hại. Kh&ocirc;ng kh&iacute; c&oacute; chất lượng ở mức độ n&agrave;y được coi l&agrave; t&igrave;nh trạng khẩn cấp. Bất cứ ai cũng c&oacute; khả năng bị ảnh hưởng v&agrave; gặp c&aacute;c vấn đề <strong>nguy hiểm cho sức khỏe</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất lượng kh&ocirc;ng kh&iacute; ở Thủ đ&ocirc; H&agrave; Nội đ&atilde; c&oacute; thời điểm ở mức m&agrave;u t&iacute;m - cực kỳ nguy hại cho sức khỏe con người.</p>\r\n\r\n<p><img alt=\"\" height=\"491\" src=\"https://maxair.vn/wp-content/uploads/2019/12/79465607_1020445761637698_6376214263303766016_o-138x300.jpg\" width=\"226\" /></p>\r\n\r\n<h2>Một số lưu &yacute;</h2>\r\n\r\n<p>&ndash; <strong>AQI</strong> phản &aacute;nh chất lượng kh&ocirc;ng kh&iacute; tại một khu vực nhất định ở một<strong>&nbsp;</strong>thời điểm nhất định&nbsp;(theo giờ/ng&agrave;y).</p>\r\n\r\n<p>&ndash; Để đ&aacute;nh gi&aacute; <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> của một khu vực rộng (v&iacute; dụ AQI to&agrave;n th&agrave;nh phố H&agrave; Nội). Ch&uacute;ng ta cần thu thập v&agrave; đ&aacute;nh gi&aacute; dữ liệu từ c&aacute;c trạm quan trắc tr&ecirc;n to&agrave;n địa b&agrave;n.</p>\r\n\r\n<p>Khi theo d&otilde;i <strong>chỉ số AQI</strong> kh&ocirc;ng n&ecirc;n nh&igrave;n v&agrave;o 1 gi&aacute; trị tuyệt đối ở 1 thời điểm v&agrave; địa điểm. Trong đ&oacute;:</p>\r\n\r\n<p>&ndash; Theo d&otilde;i mức độ chất lượng kh&ocirc;ng kh&iacute; để c&oacute; c&aacute;c hoạt động ph&ugrave; hợp.</p>\r\n\r\n<p>&ndash; Theo d&otilde;i xu hướng để biết diễn biến chất lượng kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 0, '', '2020-02-23 14:02:46', '2020-02-23 14:02:16', 1, '', '', '', '', '', 'Chỉ số chất lượng không khí và những điều cần biết', '', 'chi-so-chat-luong-khong-khi-va-nhung-dieu-can-biet', '', 1, ''),
(104, 'Xe điện-lựa chọn thông minh khi ô nhiễm ngày càng gia tăng', '', '<p><!-- wp:paragraph --></p>\r\n\r\n<p><strong>Kh&oacute;i bụi của c&aacute;c phương tiện tham gia giao th&ocirc;ng l&agrave; một trong những nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y n&ecirc;n &ocirc; nhiễm kh&ocirc;ng kh&iacute;. Trước thực trạng n&agrave;y, việc sử dụng xe điện l&agrave; một lựa chọn th&ocirc;ng minh,vừa tiết kiệm chi ph&iacute; xăng xe vừa bảo vệ m&ocirc;i trường.</strong></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Sử dụng xe điện l&agrave; một xu thế mới</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Kh&ocirc;ng giống như c&aacute;c phương tiện th&ocirc;ng thường sử dụng động cơ chạy bằng xăng hoặc diesel, xe điện sử dụng động cơ điện chạy bằng điện từ pin hoặc pin nhi&ecirc;n liệu. Nghi&ecirc;n cứu đ&atilde; chỉ ra rằng c&aacute;c phương tiện giao th&ocirc;ng chạy bằng điện tốt hơn cho m&ocirc;i trường. Ch&uacute;ng thải ra &iacute;t kh&iacute; nh&agrave; k&iacute;nh v&agrave; c&aacute;c chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong suốt cuộc đời so với xe chạy bằng xăng hoặc dầu diesel. Ch&iacute;nh ưu điểm nổi trổi n&agrave;y đ&atilde; khiến c&aacute;c d&ograve;ng xe điện c&oacute; sức h&uacute;t hơn bao giờ hết đối với người ti&ecirc;u d&ugrave;ng, đặc biệt khi &ocirc; nhiễm đang l&agrave; một mối lo ngại lớn. Nắm bắt được nhu cầu thị trường, nhiều h&atilde;ng xe điện đ&atilde; cho ra đời c&aacute;c sản phẩm mới mẫu m&atilde; đa dạng phong ph&uacute;. Một trong những đơn vị đi đầu trong lĩnh vực n&agrave;y phải kể đến tập đo&agrave;n Vingroup, đại diện l&agrave; c&ocirc;ng ty con Vinfast.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Sử dụng xe điện g&oacute;p phần bảo vệ m&ocirc;i trường</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Những chiếc xe điện hiện đại đầu ti&ecirc;n chạy tr&ecirc;n đường phố l&agrave; v&agrave;o những năm 2000. Sử dụng c&aacute;c phương tiện n&agrave;y ch&iacute;nh l&agrave; đ&oacute;ng g&oacute;p v&agrave;o việc cải thiện chất lượng kh&ocirc;ng kh&iacute; ở c&aacute;c th&agrave;nh phố. Kh&ocirc;ng c&oacute; ống xả, xe điện kh&ocirc;ng tạo ra kh&iacute; thải carbon dioxide khi xe hoạt động. Điều n&agrave;y l&agrave;m giảm &ocirc; nhiễm kh&ocirc;ng kh&iacute; một c&aacute;ch đ&aacute;ng kể. Trong một năm, chỉ cần một chiếc xe điện tr&ecirc;n đường c&oacute; thể tiết kiệm trung b&igrave;nh 1,5 triệu gram CO2 tương đương với bốn chuyến bay trở về từ London đến Barcelona. Kh&ocirc;ng phải tự nhi&ecirc;n m&agrave; ch&iacute;nh phủ Anh đ&atilde; đặt mục ti&ecirc;u rằng việc b&aacute;n xe chạy bằng xăng v&agrave; dầu diesel sẽ bị cấm v&agrave;o năm 2040. Ngo&agrave;i ra, sử dụng xe điện cũng c&oacute; thể gi&uacute;p chống &ocirc; nhiễm tiếng ồn. Khi những chiếc xe n&agrave;y chạy tr&ecirc;n đường, ch&uacute;ng kh&ocirc;ng g&acirc;y ra những &acirc;m thanh lớn, ồn &agrave;o. Ch&uacute;ng ta c&oacute; thể tận hưởng sự sự y&ecirc;n b&igrave;nh khi tham gia giao th&ocirc;ng.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Những lưu &yacute; khi sử dụng xe điện</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng n&ecirc;n sạc điện nhiều lần</strong> : Để hạn chế chai pin, người sử dụng kh&ocirc;ng n&ecirc;n sạc qu&aacute; nhiều lần. N&ecirc;n canh thời gian sạc đầy để ngắt nguồn điện, gi&uacute;p ắc quy bền hơn v&agrave; giảm hiện tượng phồng ắc quy. Tốt nhất n&ecirc;n để xe gần hết ắc quy v&agrave; sạc 1 lần cho đầy pin rồi r&uacute;t điện. Tr&aacute;nh để ắc-quy cạn kiệt điện rồi mới sạc, cũng rất nhanh l&agrave;m chai ắc-quy.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Hệ thống pin hay ắc quy nhạy cảm với nước</strong> : Nếu để những bộ phận n&agrave;y ng&acirc;m nước, c&aacute;ch duy nhất chỉ c&oacute; thể l&agrave; thay thế linh kiện mới. Đ&acirc;y l&agrave; điều bất tiện nhất của tất cả c&aacute;c loại xe điện. Trong trường hợp gặp đường ngập nước n&ecirc;n c&acirc;n nhắc khả năng vượt qua hay kh&ocirc;ng. Đừng n&ecirc;n cố gắng dễ dẫn đến tiền mất tật mang. Ngo&agrave;i ra, khi rửa xe cần hết sức tr&aacute;nh phun trực tiếp nước v&agrave;o nơi đặt hệ thống điều khiển điện tử.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Sử dụng xe sai c&aacute;ch</strong>: Với thực tế giao th&ocirc;ng ở Việt Nam tạo cho người d&ugrave;ng th&oacute;i quen nhấp nhả phanh như sử dụng xe m&aacute;y chạy xăng. Đ&acirc;y l&agrave; điều l&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng tốt đối với việc sử dụng xe, dễ dẫn tới hỏng h&oacute;c v&agrave; tốn năng lượng nhiều hơn. Người d&ugrave;ng n&ecirc;n từ bỏ th&oacute;i quen nhấp nhả phanh li&ecirc;n tục để hạn chế ti&ecirc;u hao nhi&ecirc;n liệu cũng như những rủi ro tiềm ẩn. N&ecirc;n cho xe nghỉ mỗi khi di chuyển từ 20-25km, để l&agrave;m giảm nhiệt độ pin cũng như m&ocirc; tơ điện.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:paragraph --></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '', 0, 0, '', '2020-02-23 14:02:33', NULL, 1, '', '', '', '', '', 'Xe điện-lựa chọn thông minh khi ô nhiễm ngày càng gia tăng', '', 'xe-dien-lua-chon-thong-minh-khi-o-nhiem-ngay-cang-gia-tang', '', 1, ''),
(105, '40 sự thật về ô nhiễm không khí ( phần 1)', '', '<blockquote>\r\n<p><strong>&quot;&Ocirc; nhiễm Kh&ocirc;ng Kh&iacute;&quot; l&agrave; một cụm từ g&acirc;y lo lắng trong những ng&agrave;y gần đ&acirc;y. Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y hại đối với sức khỏe v&agrave; m&ocirc;i trường của bạn. </strong></p>\r\n</blockquote>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Theo Wikipedia, <strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> l&agrave; sự thay đổi lớn trong th&agrave;nh phần của kh&ocirc;ng kh&iacute;, chủ yếu do kh&oacute;i, bụi, hơi hoặc c&aacute;c kh&iacute; lạ được đưa v&agrave;o kh&ocirc;ng kh&iacute;, c&oacute; sự tỏa m&ugrave;i, l&agrave;m giảm tầm nh&igrave;n xa, g&acirc;y biến đổi kh&iacute; hậu, g&acirc;y bệnh cho con người v&agrave; cũng c&oacute; thể g&acirc;y hại cho sinh vật kh&aacute;c như động vật v&agrave; c&acirc;y lương thực, v&agrave; c&oacute; thể l&agrave;m hỏng m&ocirc;i trường tự nhi&ecirc;n hoặc x&acirc;y dựng. Hoạt động của con người v&agrave; c&aacute;c qu&aacute; tr&igrave;nh tự nhi&ecirc;n c&oacute; thể g&acirc;y ra &ocirc; nhiễm.</p>\r\n\r\n<h2>40 sự thật về &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Sự thật 1: Một người Mỹ trung b&igrave;nh h&iacute;t 2 gallon kh&ocirc;ng kh&iacute; mỗi ph&uacute;t, nghĩa l&agrave; khoảng 3400 gallon kh&ocirc;ng kh&iacute; mỗi ng&agrave;y.</p>\r\n\r\n<p>Sự thật 2: H&iacute;t phải &ocirc; nhiễm độc hại lấy đi &iacute;t nhất 1-2 năm cuộc đời một con người.</p>\r\n\r\n<p>Sự thật 3: C&aacute;c chất &ocirc; nhiễm g&acirc;y ra những t&aacute;c hại cấp độ nhỏ như cay mắt,ngứa cổ họng đến cấp độ lớn như kh&oacute; thở v&agrave; tử vong.</p>\r\n\r\n<p>Sự thật 4: C&aacute;c chất &ocirc; nhiễm được thải v&agrave;o kh&ocirc;ng kh&iacute;, tr&aacute;i ngược với c&aacute;c chất độc hại trong đất v&agrave; nước, l&agrave; những chất g&acirc;y hại nhất.</p>\r\n\r\n<p>Sự thật 5: Mức độ &ocirc; nhiễm gia tăng ở Bắc Kinh đ&atilde; mang đến một căn bệnh mới - Căn bệnh ho Bắc Kinh.</p>\r\n\r\n<p>Sự thật 6: Hiện tượng n&agrave;y kh&ocirc;ng phải gần đ&acirc;y mới xuất hiện. Năm 1952, một đợt kh&oacute; bụi lớn ở London đ&atilde; giết chết 8000 người.</p>\r\n\r\n<p>Sự thật 7: Những c&aacute;i chết do &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y thiệt hại cho Li&ecirc;n minh ch&acirc;u &Acirc;u 161 tỷ euro.</p>\r\n\r\n<p>Sự thật 8: Xe điện sản sinh ra &iacute;t chất g&acirc;y &ocirc; nhiễm hơn. Ch&uacute;ng khuấy động bụi bẩn nhưng kh&ocirc;ng tạo ra kh&iacute;.</p>\r\n\r\n<p>Sự thật 9: Sản xuất dầu th&ocirc; nặng l&agrave;m tăng 40% khả năng &ocirc; nhiễm nhiễm độc so với sản xuất dầu th&ocirc; nhẹ.</p>\r\n\r\n<p>Sự thật 10: Theo tạp ch&iacute; Lancet, kh&ocirc;ng kh&iacute; &ocirc; nhiễm do chờ đợi trong giao th&ocirc;ng l&agrave;m tăng khả năng tử vong do đau tim.</p>\r\n\r\n<p>Sự thật 11: Kh&ocirc;ng kh&iacute; độc hại l&agrave; mối đe dọa lớn hơn đối với trẻ em, do k&iacute;ch thước vật l&yacute; v&agrave; dung t&iacute;ch phổi của trẻ nhỏ hơn so với người lớn.</p>\r\n\r\n<p>Sự thật 12: Bầu kh&ocirc;ng kh&iacute; kh&ocirc;ng trong l&agrave;nh v&agrave; c&aacute;c ca tử vong do ch&uacute;ng đang gia tăng nhanh nhất ở ch&acirc;u &Aacute;.</p>\r\n\r\n<p>Sự thật 13: Kh&oacute;i bụi trong kh&ocirc;ng kh&iacute; ảnh hưởng đến c&aacute; heo v&agrave; khiến ch&uacute;ng mắc c&aacute;c bệnh phổi đen.</p>\r\n\r\n<p>(C&ograve;n tiếp...)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, 0, '', '2020-02-23 14:02:52', NULL, 1, '', '', '', '', '', '40 sự thật về ô nhiễm không khí ( phần 1)', '', '40-su-that-ve-o-nhiem-khong-khi-phan-1', '', 1, ''),
(106, '40 sự thật về ô nhiễm không khí ( phần 2)', '', '<p><strong>Khi n&oacute;i về &ocirc; nhiễm kh&ocirc;ng kh&iacute;, h&igrave;nh ảnh đầu ti&ecirc;n m&agrave; ch&uacute;ng ta nghĩ tới đ&oacute; những đ&aacute;m kh&oacute;i bụi khổng lồ nặng nề tr&ocirc;i dạt tr&ecirc;n c&aacute;c th&agrave;nh phố v&agrave; c&aacute;c nh&agrave; m&aacute;y c&ocirc;ng nghiệp. Đ&acirc;y l&agrave; h&igrave;nh thức &ocirc; nhiễm kh&ocirc;ng kh&iacute; đầu ti&ecirc;n v&agrave; r&otilde; r&agrave;ng nhất, nhưng n&oacute; kh&ocirc;ng phải l&agrave; h&igrave;nh thức duy nhất. Ở phần 1, ch&uacute;ng ta đ&atilde; t&igrave;m hiểu được 13 sự thật kh&ocirc;ng phải ai cũng biết về &ocirc; nhiễm kh&ocirc;ng kh&iacute;, phần 2 sẽ h&eacute; lộ nhiều th&ocirc;ng tin hơn nữa.</strong></p>\r\n\r\n<p>Sự thật 14: 70% kh&ocirc;ng kh&iacute; độc hại ở c&aacute;c th&agrave;nh phố Trung Quốc l&agrave; do ống xả.</p>\r\n\r\n<p>Sự thật 15: 5.000 c&aacute;i chết sớm ở Nam California được g&acirc;y ra do kh&iacute; thải từ xe tải diesel.</p>\r\n\r\n<p>Sự thật 16: Nếu bạn du lịch tới Grand Canyon thuộc tiểu bang Arizona - một trong c&aacute;c kỳ quan thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, bạn sẽ kh&ocirc;ng thể nh&igrave;n thấy ph&iacute;a b&ecirc;n kia trong 1000 dặm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 17: C&aacute;c chất nguy hiểm nhất được thải ra từ kh&ocirc;ng kh&iacute; v&agrave; &iacute;t hơn từ nước v&agrave; đất c&ugrave;ng nhau.</p>\r\n\r\n<p>Sự thật 18: C&aacute;ch tốt nhất để c&oacute; một bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh l&agrave; đi bộ v&agrave; đi xe đạp.</p>\r\n\r\n<p>Sự thật 19: Một chiếc xe bu&yacute;t chở h&agrave;nh kh&aacute;ch tương đương với l&aacute;i 40 chiếc xe.</p>\r\n\r\n<p>Sự thật 20: 28% người Mỹ tin rằng họ bị ảnh hưởng nhiều nhất bởi &ocirc; nhiễm kh&ocirc;ng kh&iacute; do xe cộ.</p>\r\n\r\n<p>Sự thật 21: Bạn c&oacute; tin rằng &ocirc; nhiễm kh&ocirc;ng kh&iacute; ở Trung Quốc c&oacute; thể đi đến tận Thung lũng Trung t&acirc;m California.</p>\r\n\r\n<p>Sự thật 22: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ngo&agrave;i trời được xếp hạng top 10 nguy&ecirc;n nh&acirc;n g&acirc;y tử vong h&agrave;ng đầu tr&ecirc;n tr&aacute;i đất.</p>\r\n\r\n<p>Sự thật 23: 65% số ca tử vong ở ch&acirc;u &Aacute; v&agrave; 25% số ca tử vong ở Ấn Độ l&agrave; do kh&ocirc;ng kh&iacute; độc hại.</p>\r\n\r\n<p>Sự thật 24: 2 triệu &ocirc; t&ocirc; ở Manila, Philippines g&acirc;y ra 80% c&aacute;c chất g&acirc;y hại trong kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 25: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ở Ấn Độ ước t&iacute;nh g&acirc;y ra 527,700 ca tử vong mỗi năm.</p>\r\n\r\n<p>Sự thật 26: Số người chết ở Mỹ mỗi năm do kh&ocirc;ng kh&iacute; độc hại l&agrave; tr&ecirc;n 50.000 người.</p>\r\n\r\n<p>(C&ograve;n tiếp...)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, 0, '', '2020-02-23 14:02:25', NULL, 1, '', '', '', '', '', '40 sự thật về ô nhiễm không khí ( phần 2)', '', '40-su-that-ve-o-nhiem-khong-khi-phan-2', '', 1, ''),
(107, 'Cháy rừng ở Úc không có dấu hiệu dừng lại.', '', '<p><strong>Ch&aacute;y rừng ở &Uacute;c đang g&acirc;y ra những thiệt hại nặng nề về người v&agrave; của. Tổng cộng c&oacute; 24 người đ&atilde; chết tr&ecirc;n to&agrave;n quốc v&agrave; chỉ ri&ecirc;ng ở bang New South Wales, hơn 1.300 ng&ocirc;i nh&agrave; đ&atilde; bị ph&aacute; hủy.Tất cả đ&atilde; trở n&ecirc;n trầm trọng hơn bởi thời tiết nắng n&oacute;ng v&agrave; hạn h&aacute;n dai dẳng, biến đổi kh&iacute; hậu l&agrave; một yếu tố khiến thảm họa thi&ecirc;n nhi&ecirc;n n&agrave;y diễn biến xấu hơn.</strong></p>\r\n\r\n<h2>Những đ&aacute;m ch&aacute;y ở đ&acirc;u?</h2>\r\n\r\n<p>Những vụ ch&aacute;y đ&atilde; xuất hiện ở khắp c&aacute;c tiểu bang của &Uacute;c, nhưng New South Wales l&agrave; nơi bị ảnh hưởng nặng nề nhất. Hậu quả l&agrave; những khu rừng v&agrave; c&aacute;c c&ocirc;ng vi&ecirc;n quốc gia như Blue Mountains bị ph&aacute; hủy nghi&ecirc;m trọng. Một số th&agrave;nh phố lớn nhất của &Uacute;c cũng đ&atilde; bị ảnh hưởng, bao gồm Melbourne v&agrave; Sydney - nơi c&aacute;c đ&aacute;m ch&aacute;y đ&atilde; l&agrave;m hư hại những ng&ocirc;i nh&agrave; ở v&ugrave;ng ngoại &ocirc; v&agrave; những đ&aacute;m kh&oacute;i d&agrave;y đ&atilde; che phủ trung t&acirc;m đ&ocirc; thị. Đầu th&aacute;ng 12, kh&oacute;i ở Sydney rất tệ đến nỗi chất lượng kh&ocirc;ng kh&iacute; đo được gấp 11 lần mức &quot;nguy hiểm&quot;. C&aacute;c đ&aacute;m ch&aacute;y c&oacute; phạm vi từ khu vực nhỏ - c&aacute;c t&ograve;a nh&agrave; biệt lập hoặc một phần của khu phố - đến c&aacute;c đ&aacute;m ch&aacute;y lớn tr&ecirc;n diện rộng. Một số đ&aacute;m ch&aacute;y bắt đầu ch&aacute;y trong v&agrave;i ng&agrave;y nhưng c&oacute; những nơi đ&atilde; b&ugrave;ng ch&aacute;y trong nhiều th&aacute;ng.</p>\r\n\r\n<h2><strong>Nguy&ecirc;n nh&acirc;n của c&aacute;c vụ ch&aacute;y ?</strong></h2>\r\n\r\n<p>Mỗi năm v&agrave;o m&ugrave;a h&egrave; ở &Uacute;c, thời tiết kh&ocirc; v&agrave; n&oacute;ng khiến cho những đ&aacute;m ch&aacute;y dễ d&agrave;ng bắt đầu v&agrave; lan rộng. Nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n đến từ những vụ s&eacute;t đ&aacute;nh v&agrave; c&aacute;c khu rừng bị ảnh hưởng hạn h&aacute;n. S&eacute;t kh&ocirc; l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra một số vụ ch&aacute;y trong khu vực Đ&ocirc;ng Gippsland Victoria v&agrave;o cuối th&aacute;ng 12. Ngo&agrave;i ra, nguy&ecirc;n nh&acirc;n c&ograve;n đến từ con người. V&agrave;o th&aacute;ng 11, Sở cứu hỏa n&ocirc;ng th&ocirc;n tiểu bang NSW đ&atilde; bắt giữ một th&agrave;nh vi&ecirc;n t&igrave;nh nguyện 19 tuổi v&igrave; nghi ngờ đốt ph&aacute;, buộc tội anh ta với bảy tội cố &yacute; g&acirc;y ra c&aacute;c vụ hỏa hoạn trong khoảng thời gian s&aacute;u tuần.</p>\r\n\r\n<h2><strong>V&igrave; sao ch&aacute;y rừng ở &Uacute;c trở n&ecirc;n tệ hơn?</strong></h2>\r\n\r\n<p>M&ugrave;a ch&aacute;y ở &Uacute;c lu&ocirc;n nguy hiểm - trận hỏa hoạn v&agrave;o Thứ Bảy Đen Tối năm 2009 đ&atilde; giết chết 173 người ở Victoria, khiến n&oacute; trở th&agrave;nh thảm họa ch&aacute;y rừng kinh ho&agrave;ng nhất được ghi nhận. &Uacute;c đang trải qua một trong những đợt hạn h&aacute;n tồi tệ nhất trong nhiều thập kỷ - Cục Kh&iacute; tượng của đất nước cho biết rằng m&ugrave;a xu&acirc;n năm ngo&aacute;i l&agrave; m&ugrave;a kh&ocirc; nhất trong lịch sử. Trong khi đ&oacute;, một đợt nắng n&oacute;ng v&agrave;o th&aacute;ng 12 đ&atilde; ph&aacute; vỡ kỷ lục về nhiệt độ trung b&igrave;nh cao nhất to&agrave;n quốc, với một số nơi bị biến đổi dưới nhiệt độ cao hơn 40 độ C (khoảng 113-120 độ F).</p>\r\n\r\n<p>Những cơn gi&oacute; mạnh cũng đ&atilde; khiến đ&aacute;m ch&aacute;y v&agrave; kh&oacute;i lan nhanh hơn, g&acirc;y nguy hiểm của con người - một l&iacute;nh cứu hỏa t&igrave;nh nguyện 28 tuổi đ&atilde; chết ở NSW v&agrave;o th&aacute;ng 12 sau khi xe tải của anh ta bị gi&oacute; cuốn đi.C&aacute;c chuy&ecirc;n gia cho biết biến đổi kh&iacute; hậu đ&atilde; l&agrave;m t&igrave;nh h&igrave;nh xấu hơn. Điều kiện thời tiết ng&agrave;y c&agrave;ng khắc nghiệt l&agrave; nguy&ecirc;n nh&acirc;n khiến c&aacute;c đ&aacute;m ch&aacute;y bắt đầu sớm hơn trong m&ugrave;a v&agrave; lan rộng với cường độ lớn hơn.Một số quan chức dịch vụ khẩn cấp cấp cao, bao gồm cựu ủy vi&ecirc;n của Sở Cứu hỏa v&agrave; Cứu hộ, đ&atilde; gửi thư cho Thủ tướng Scott Morrison v&agrave;o năm 2019 cảnh b&aacute;o về t&aacute;c động của cuộc khủng hoảng kh&iacute; hậu đối với &Uacute;c.</p>\r\n\r\n<h2>Những thiệt hại nặng nề</h2>\r\n\r\n<p>To&agrave;n bộ thị trấn đ&atilde; ch&igrave;m trong biển lửa v&agrave; cư d&acirc;n tr&ecirc;n nhiều tiểu bang đ&atilde; mất nh&agrave; cửa. Thiệt hại về&nbsp; c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng nặng nhất xảy ra ở NSW, tiểu bang đ&ocirc;ng d&acirc;n nhất của đất nước, nơi gần 1.300 ng&ocirc;i nh&agrave; đ&atilde; bị ph&aacute; hủy v&agrave; hơn 440 bị hư hại.Tổng cộng, hơn 5,9 triệu ha đ&atilde; bị đốt ch&aacute;y tr&ecirc;n khắp s&aacute;u tiểu bang của &Uacute;c - một khu vực rộng lớn hơn c&aacute;c quốc gia Bỉ v&agrave; Haiti cộng lại. Tiểu bang bị ảnh hưởng nặng nề nhất l&agrave; NSW, với 3,6 triệu ha bị đốt ch&aacute;y.Tổng cộng c&oacute; 24 người tr&ecirc;n khắp nước &Uacute;c đ&atilde; chết trong m&ugrave;a ch&aacute;y n&agrave;y, bao gồm một số l&iacute;nh cứu hỏa t&igrave;nh nguyện.<br />\r\nCũng đ&atilde; c&oacute; thiệt hại lớn cho động vật hoang d&atilde; v&agrave; m&ocirc;i trường. Gần một phần ba gấu kaola ở NSW c&oacute; thể đ&atilde; bị giết trong c&aacute;c vụ hỏa hoạn v&agrave; một phần ba m&ocirc;i trường sống của ch&uacute;ng đ&atilde; bị ph&aacute; hủy, Bộ trưởng M&ocirc;i trường Li&ecirc;n bang Sussan Ley cho biết.</p>\r\n\r\n<h2>Những nỗ lực trong việc giảm ch&aacute;y rừng ở &Uacute;c</h2>\r\n\r\n<p>Ch&iacute;nh quyền tiểu bang v&agrave; li&ecirc;n bang đ&atilde; rất nỗ lực để chống lại cuộc khủng hoảng hỏa hoạn trong nhiều th&aacute;ng. C&oacute; 2.300 nh&acirc;n vi&ecirc;n cứu hỏa được huy động ở NSW v&agrave; đang c&oacute; th&ecirc;m sự hỗ trợ từ Hoa Kỳ, Canada v&agrave; New Zealand. Ch&iacute;nh phủ li&ecirc;n bang cũng đ&atilde; gửi hỗ trợ qu&acirc;n sự như nh&acirc;n vi&ecirc;n qu&acirc;n đội, m&aacute;y bay kh&ocirc;ng qu&acirc;n v&agrave; t&agrave;u tuần dương của hải qu&acirc;n để chữa ch&aacute;y, t&igrave;m kiếm cứu nạn v&agrave; c&aacute;c nỗ lực l&agrave;m sạch.<br />\r\nMorrison cho biết ch&iacute;nh quyền của &ocirc;ng đ&atilde; ph&acirc;n bổ &iacute;t nhất 23 triệu đ&ocirc; la &Uacute;c (16,2 triệu đ&ocirc; la) nhằm khắc phục thảm họa cho c&aacute;c gia đ&igrave;nh v&agrave; doanh nghiệp bị ảnh hưởng, v&agrave; l&ecirc;n tới 6.000 đ&ocirc; la &Uacute;c (4.200 đ&ocirc; la) cho c&aacute;c nh&acirc;n vi&ecirc;n cứu hỏa t&igrave;nh nguyện được gọi để chữa ch&aacute;y trong hơn 10 ng&agrave;y.</p>\r\n\r\n<p><strong>Khi n&agrave;o ch&aacute;y rừng ở &Uacute;c sẽ kết th&uacute;c?</strong></p>\r\n\r\n<p>Thật kh&ocirc;ng may, &Uacute;c chỉ mới bước v&agrave;o m&ugrave;a h&egrave;. Th&ocirc;ng thường, nhiệt độ cao nhất v&agrave;o th&aacute;ng 1 v&agrave; th&aacute;ng 2, c&oacute; nghĩa l&agrave; đất nước n&agrave;y c&oacute; nguy cơ đối mặt với ch&aacute;y rừng trong nhiều th&aacute;ng.<br />\r\nC&aacute;c vụ hỏa hoạn kh&oacute; c&oacute; thể chấm dứt ho&agrave;n to&agrave;n v&igrave; đ&acirc;y l&agrave; một sự kiện xảy ra h&agrave;ng năm - v&agrave; thậm ch&iacute; c&oacute; thể trở n&ecirc;n tồi tệ hơn nếu t&igrave;nh h&igrave;nh kh&iacute; hậu li&ecirc;n tục thay đổi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 79, '', '2020-02-23 14:02:41', '2020-02-26 22:02:59', 1, '', '', '', '', '', 'Cháy rừng ở Úc không có dấu hiệu dừng lại.', '', 'chay-rung-o-uc-khong-co-dau-hieu-dung-lai', '', 1, ''),
(108, 'Ô nhiễm không khí và những thông tin nóng', '', '<p>Chất lượng kh&ocirc;ng kh&iacute; ở c&aacute;c th&agrave;nh phố lớn ở Việt Nam đ&atilde; bắt đầu giảm trong v&agrave;i th&aacute;ng qua. L&yacute; do g&acirc;y ra sự suy giảm chất lượng kh&ocirc;ng kh&iacute; đến từ kh&oacute;i bụi lơ lửng tr&ecirc;n c&aacute;c th&agrave;nh phố đến kh&oacute;i thuốc trong nh&agrave;, &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y ra mối đe dọa lớn đối với sức khỏe v&agrave; kh&iacute; hậu. C&aacute;c t&aacute;c động kết hợp của &ocirc; nhiễm kh&ocirc;ng kh&iacute; xung quanh (ngo&agrave;i trời) v&agrave; gia đ&igrave;nh g&acirc;y ra khoảng bảy triệu ca tử vong sớm h&agrave;ng năm. Chủ yếu l&agrave; do tăng tỷ lệ tử vong do đột quỵ, bệnh tim, bệnh phổi tắc nghẽn m&atilde;n t&iacute;nh, ung thư phổi v&agrave; nhiễm tr&ugrave;ng đường h&ocirc; hấp cấp t&iacute;nh. Dữ liệu của WHO cho thấy 9/10 người h&iacute;t thở kh&ocirc;ng kh&iacute; c&oacute; chứa chất g&acirc;y &ocirc; nhiễm cao. WHO đang hợp t&aacute;c với c&aacute;c nước để theo d&otilde;i &ocirc; nhiễm kh&ocirc;ng kh&iacute; v&agrave; cải thiện chất lượng kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; g&igrave;</h2>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; sự hiện diện của c&aacute;c h&oacute;a chất hoặc hợp chất độc hại (bao gồm cả c&aacute;c chất c&oacute; nguồn gốc sinh học) trong kh&ocirc;ng kh&iacute; v&agrave; l&agrave;m giảm chất lượng kh&ocirc;ng kh&iacute; ở mức độ g&acirc;y ra những thay đổi bất lợi cho chất lượng cuộc sống. Một số chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; độc hại, khi h&iacute;t v&agrave;o ch&uacute;ng c&oacute; thể khiến bạn gặp vấn đề về sức khỏe. Nh&oacute;m người nhạy cảm, phụ nữ mang thai, người gi&agrave; v&agrave; trẻ em c&oacute; nguy cơ rất cao mắc c&aacute;c bệnh do &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y ra. Năm chất g&acirc;y &ocirc; nhiễm ch&iacute;nh: &ocirc;z&ocirc;n tr&ecirc;n mặt đất, &ocirc; nhiễm hạt (hoặc chất hạt), carbon monoxide, lưu huỳnh đi&ocirc;x&iacute;t v&agrave; nitơ đioxit. Một số trong số đ&oacute; cũng g&oacute;p phần g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;, c&ugrave;ng với radon, kh&oacute;i thuốc l&aacute;, c&aacute;c hợp chất hữu cơ dễ bay hơi (VOC), formaldehyd, amiăng v&agrave; c&aacute;c chất kh&aacute;c.</p>\r\n\r\n<h2>Nguy&ecirc;n nh&acirc;n g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Kh&iacute; thải từ c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp sản xuất l&agrave; một trong những nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute;. C&aacute;c chất &ocirc; nhiễm ch&iacute;nh như oxit nitơ, lưu huỳnh, carbon monoxide, carbon dioxide v&agrave; c&aacute;c chất thải h&oacute;a học kh&aacute;c đang l&agrave;m giảm chất lượng kh&ocirc;ng kh&iacute; ở nhiều nơi. C&aacute;c phương tiện giao th&ocirc;ng chạy bằng nhi&ecirc;n liệu h&oacute;a thạch như dầu mỏ v&agrave; xăng thải ra muội than v&agrave; c&aacute;c loại kh&iacute; độc hại như CO, CO2 v&agrave; NO2,&hellip; những chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; ch&iacute;nh trong m&ocirc;i trường. Hoạt động khai th&aacute;c như khoan, khai th&aacute;c, nổ m&igrave;n v&agrave; vận chuyển l&agrave;m giải ph&oacute;ng c&aacute;c loại kh&iacute; như metan, carbon monoxide, sulfur dioxide v&agrave; c&aacute;c chất bụi trong c&aacute;c giai đoạn khai th&aacute;c kh&aacute;c nhau. Ph&acirc;n b&oacute;n v&agrave; amoniac được sử dụng nhiều trong n&ocirc;ng nghiệp, l&agrave; một trong những chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; c&oacute; hại. Việc tăng cường sử dụng ph&acirc;n b&oacute;n v&agrave; thuốc trừ s&acirc;u của n&ocirc;ng d&acirc;n cũng giải ph&oacute;ng c&aacute;c h&oacute;a chất kh&ocirc;ng mong muốn kh&aacute;c trong kh&iacute; quyển. Ngo&agrave;i ra, &ocirc; nhiễm kh&ocirc;ng kh&iacute; cũng bắt nguồn từ việc đốt c&acirc;y trồng, rơm rạ kh&ocirc;ng được kiểm so&aacute;t. Trong chừng mực, đ&acirc;y thực sự l&agrave; một c&ocirc;ng cụ hữu &iacute;ch trong canh t&aacute;c nhưng việc đốt c&acirc;y trồng kh&ocirc;ng được kiểm so&aacute;t g&acirc;y ra &ocirc; nhiễm kh&ocirc;ng kh&iacute; đ&aacute;ng kể.</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; tự nhi&ecirc;n l&agrave; những dạng xuất ph&aacute;t từ c&aacute;c hiện tượng tự nhi&ecirc;n. Điều n&agrave;y c&oacute; nghĩa l&agrave; ch&uacute;ng được g&acirc;y ra bởi c&aacute;c hoạt động định kỳ kh&ocirc;ng phải do con người tạo ra hoặc kết quả của hoạt động của con người. Hơn nữa, những nguồn g&acirc;y &ocirc; nhiễm n&agrave;y phải tu&acirc;n theo chu kỳ tự nhi&ecirc;n, phổ biến hơn trong những điều kiện nhất định v&agrave; &iacute;t phổ biến hơn dưới những điều kiện kh&aacute;c. L&agrave; một phần của biến đổi kh&iacute; hậu tự nhi&ecirc;n của Tr&aacute;i đất cũng c&oacute; nghĩa l&agrave; ch&uacute;ng bền vững trong thời gian d&agrave;i. C&oacute; một v&agrave;i nguồn &ocirc; nhiễm kh&ocirc;ng kh&iacute; tự nhi&ecirc;n l&agrave; tốt. chẳng hạn như ch&aacute;y rừng, hoạt động n&uacute;i lửa v&agrave; kh&iacute; m&ecirc;-tan thải ra từ gia s&uacute;c. Tuy nhi&ecirc;n, lượng &ocirc; nhiễm kh&ocirc;ng kh&iacute; do nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n g&acirc;y ra rất nhỏ khi so s&aacute;nh với thiệt hại do nguy&ecirc;n nh&acirc;n nh&acirc;n tạo g&acirc;y ra.</p>\r\n\r\n<h2>Ảnh hưởng đến sức khỏe</h2>\r\n\r\n<h3>C&aacute;c chất &ocirc; nhiễm t&aacute;c động đến con người</h3>\r\n\r\n<p>Một số chất &ocirc; nhiễm phổ biến nhất l&agrave; thủy ng&acirc;n, ch&igrave;, đi&ocirc;xin v&agrave; benzen. Đ&acirc;y l&agrave; những chất được h&igrave;nh th&agrave;nh trong qu&aacute; tr&igrave;nh đốt gas hoặc than, đốt hoặc trong trường hợp benzen, được t&igrave;m thấy trong xăng. Benzen, được ph&acirc;n loại l&agrave; chất g&acirc;y ung thư, c&oacute; thể g&acirc;y k&iacute;ch ứng mắt, da v&agrave; phổi trong thời gian ngắn v&agrave; rối loạn m&aacute;u trong thời gian d&agrave;i. Dioxin thường được t&igrave;m thấy trong thực phẩm nhưng cũng c&oacute; một lượng nhỏ trong kh&ocirc;ng kh&iacute;, c&oacute; thể ảnh hưởng đến gan trong thời gian ngắn v&agrave; g&acirc;y hại cho hệ thống miễn dịch, thần kinh v&agrave; nội tiết, cũng như c&aacute;c chức năng sinh sản. Ch&igrave; với số lượng lớn c&oacute; thể l&agrave;m cho trẻ em mắc c&aacute;c bệnh về n&atilde;o v&agrave; thận,&nbsp; với một lượng nhỏ, n&oacute; cũng c&oacute; thể ảnh hưởng đến trẻ. Thủy ng&acirc;n ảnh hưởng đến hệ thống thần kinh trung ương. Hydrocarbon thơm đa v&ograve;ng (PAH) l&agrave; th&agrave;nh phần độc hại được t&igrave;m thấy trong kh&iacute; thải giao th&ocirc;ng v&agrave; kh&oacute;i lửa. Tiếp x&uacute;c thường xuy&ecirc;n c&oacute; thể g&acirc;y k&iacute;ch ứng mắt, c&aacute;c vấn đề về m&aacute;u, gan, phổi v&agrave; thậm ch&iacute; l&agrave; ung thư.</p>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; ảnh hưởng rất nghi&ecirc;m trọng đến sức khỏe con người, tương đương với t&aacute;c hại của việc h&uacute;t thuốc l&aacute; v&agrave; cao hơn nhiều so với t&aacute;c động từ th&oacute;i quen ăn qu&aacute; nhiều muối. Thực tế, 1/3 số ca tử vong do đột quỵ, ung thư phổi v&agrave; c&aacute;c bệnh tim mạch l&agrave; do &ocirc; nhiễm kh&ocirc;ng kh&iacute;. C&aacute;c chất g&acirc;y hại c&oacute; trong kh&ocirc;ng kh&iacute; c&oacute; thể lọt qua hệ thống miễn dịch của cơ thể, x&acirc;m nhập s&acirc;u v&agrave;o hệ h&ocirc; hấp, tuần ho&agrave;n v&agrave; dần l&agrave;m hỏng phổi, tim, n&atilde;o của con người. C&aacute;c hạt bụi mịn v&agrave; si&ecirc;u mịn l&agrave; một trong những th&agrave;nh phần ch&iacute;nh của<em> kh&ocirc;ng kh&iacute; đ&atilde; bị &ocirc; nhiễm</em>, đ&atilde; được Cơ quan Nghi&ecirc;n cứu Ung thư Quốc tế xếp v&agrave;o nh&oacute;m chất g&acirc;y ung thư cho con người.</p>\r\n\r\n<h3>Về h&ocirc; hấp</h3>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; ảnh hưởng đến hệ h&ocirc; hấp đầu ti&ecirc;n, g&acirc;y vi&ecirc;m đường h&ocirc; hấp tr&ecirc;n như tai mũi họng. Bệnh nh&acirc;n thường xuy&ecirc;n nghẹt mũi, xoang, vi&ecirc;m phế quản, nặng hơn g&acirc;y t&igrave;nh trạng dị ứng g&acirc;y hen suyễn. Đặc biệt l&agrave; những người l&agrave;m việc hoặc tập thể dục b&ecirc;n ngo&agrave;i, trẻ em v&agrave; người gi&agrave;. N&oacute; c&ograve;n tệ hơn đối với những người mắc bệnh hen suyễn hoặc dị ứng. Những chất g&acirc;y &ocirc; nhiễm th&ecirc;m n&agrave;y chỉ l&agrave;m tăng th&ecirc;m c&aacute;c triệu chứng của họ v&agrave; g&acirc;y ra c&aacute;c cơn hen.</p>\r\n\r\n<p>Trong đ&oacute;, mũi l&agrave; cửa ng&otilde; của đường h&ocirc; hấp v&igrave; thế đ&acirc;y l&agrave; cơ quan đầu ti&ecirc;n tr&ecirc;n cơ thể phản ứng với những thay đổi thất thường của thời tiết hoặc t&aacute;c nh&acirc;n từ m&ocirc;i trường. Khi <strong>kh&ocirc;ng kh&iacute; bị &ocirc; nhiễm</strong> k&eacute;o d&agrave;i v&agrave; mức độ <em>&ocirc; nhiễm</em> ng&agrave;y c&agrave;ng gia tăng, những bệnh li&ecirc;n quan đến đường h&ocirc; hấp rất dễ mắc phải.</p>\r\n\r\n<p>C&aacute;c đ&ocirc; thị c&oacute; chỉ số chất lượng kh&ocirc;ng kh&iacute; cao, c&oacute; tỷ lệ người mắc c&aacute;c bệnh về đường h&ocirc; hấp cao gấp nhiều lần so với c&aacute;c đ&ocirc; thị kh&aacute;c. C&aacute;c chất độc c&oacute; trong kh&ocirc;ng kh&iacute; khi x&acirc;m nhập v&agrave;o cơ thể ch&iacute;nh l&agrave; t&aacute;c nh&acirc;n g&acirc;y ung thư phổi, v&ograve;m họng, mũi.</p>\r\n\r\n<h3>Về tim mạch</h3>\r\n\r\n<p>C&aacute;c chất &ocirc; nhiễm sẽ l&agrave;m tăng độc tố trong m&aacute;u, độc tố ngấm trong m&aacute;u g&acirc;y xơ vữa động mạch, cao huyết &aacute;p, từ đ&oacute; g&acirc;y n&ecirc;n c&aacute;c hệ lụy nguy hiểm kh&aacute;c như đột quỵ, suy tim,&hellip;</p>\r\n\r\n<p>C&aacute;c chất &ocirc; nhiễm n&agrave;y l&agrave; những chất độc t&iacute;nh xuy&ecirc;n qua m&agrave;ng lọc của phổi, đi v&agrave;o trong m&aacute;u, v&agrave;o cơ thể, ngấm v&agrave;o c&aacute;c th&agrave;nh mạch g&acirc;y n&ecirc;n t&igrave;nh trạng xơ vữa. Ch&uacute;ng c&oacute; thể t&aacute;c động g&acirc;y bệnh tức thời như vi&ecirc;m phổi, vi&ecirc;m mũi, hen suyễn, phế quản. Về l&acirc;u d&agrave;i, ch&uacute;ng sẽ lấp đầy trong phổi, xơ cứng phổi, 5-10 năm sau mới ph&aacute;t bệnh.</p>\r\n\r\n<h3>C&aacute;c bệnh về da</h3>\r\n\r\n<p>Bụi c&oacute; trong kh&ocirc;ng kh&iacute; l&agrave; t&aacute;c nh&acirc;n g&acirc;y c&aacute;c bệnh về da liễu như mụn, dị ứng, vi&ecirc;m da&hellip;. Ch&uacute;ng l&agrave; nơi chứa nhiều mầm bệnh, t&aacute;c nh&acirc;n mang vi khuẩn, virus, nấm mốc v&agrave;o cơ thể người nếu tiếp x&uacute;c l&acirc;u d&agrave;i v&agrave; t&ugrave;y theo cơ địa của từng người sẽ c&oacute; c&aacute;c bệnh l&yacute; kh&aacute;c nhau.</p>\r\n\r\n<h3>Bệnh về mắt</h3>\r\n\r\n<p>Trong c&aacute;c bộ phận, mắt l&agrave; nơi tiếp x&uacute;c trực tiếp v&agrave; đầu ti&ecirc;n với bụi bặm ngo&agrave;i m&ocirc;i trường. Ch&uacute;ng l&agrave; t&aacute;c nh&acirc;n khiến mắt tiết nước g&acirc;y vi&ecirc;m nhiễm đồng thời bụi c&oacute; thể g&acirc;y cộm, kh&oacute; chịu, thậm ch&iacute; trầy xước gi&aacute;c mạc nếu c&oacute; g&oacute;c cạnh.</p>\r\n\r\n<h2>Bảo vệ sức khỏe trước t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Kiểm tra dự b&aacute;o &ocirc; nhiễm kh&ocirc;ng kh&iacute; h&agrave;ng ng&agrave;y trong khu vực của bạn. C&aacute;c dự b&aacute;o được m&atilde; h&oacute;a m&agrave;u c&oacute; thể cho bạn biết khi kh&ocirc;ng kh&iacute; kh&ocirc;ng l&agrave;nh mạnh nơi bạn đang sống. C&aacute;c nguồn bao gồm b&aacute;o c&aacute;o thời tiết tr&ecirc;n đ&agrave;i ph&aacute;t thanh, truyền h&igrave;nh, b&aacute;o v&agrave; c&aacute;c trang mạng trực tuyến.</p>\r\n\r\n<p>Tr&aacute;nh tập thể dục ngo&agrave;i trời khi mức độ &ocirc; nhiễm cao. Khi kh&ocirc;ng kh&iacute; xấu, h&atilde;y đi bộ trong nh&agrave; trong trung t&acirc;m mua sắm hoặc ph&ograve;ng tập thể dục hoặc sử dụng m&aacute;y tập thể dục. Hạn chế thời gian con bạn d&agrave;nh cho chơi ngo&agrave;i trời nếu chất lượng kh&ocirc;ng kh&iacute; xấu.</p>\r\n\r\n<p>Lu&ocirc;n lu&ocirc;n tr&aacute;nh tập thể dục gần c&aacute;c khu vực giao th&ocirc;ng cao. Ngay cả khi dự b&aacute;o chất lượng kh&ocirc;ng kh&iacute; c&oacute; m&agrave;u xanh l&aacute; c&acirc;y. C&aacute;c phương tiện giao th&ocirc;ng c&oacute; thể tạo ra mức độ &ocirc; nhiễm cao cho khu vực đ&oacute;.</p>\r\n\r\n<p>Sử dụng &iacute;t năng lượng trong nh&agrave; của bạn. Bằng c&aacute;ch giảm sử dụng năng lượng, bạn c&oacute; thể gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; v&agrave; tiết kiệm tiền.</p>\r\n\r\n<p>Kh&ocirc;ng đốt rơm rạ hoặc r&aacute;c. Rơm rạ v&agrave; r&aacute;c l&agrave; một trong những nguồn g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; ch&iacute;nh ở nhiều nơi tr&ecirc;n cả nước.</p>\r\n\r\n<p>Kh&ocirc;ng h&uacute;t thuốc l&aacute; trong nh&agrave; v&agrave; c&aacute;c nơi c&ocirc;ng cộng.</p>\r\n\r\n<p>Đeo khẩu trang hoạt t&iacute;nh, k&iacute;nh chắn bụi mỗi khi ra đường v&agrave; tho&aacute;t khỏi những khu vực &ocirc; nhiễm.</p>\r\n\r\n<p>Thực phẩm gi&agrave;u chất chống oxy h&oacute;a như tr&aacute;i c&acirc;y v&agrave; rau quả cũng c&oacute; thể gi&uacute;p bảo vệ cơ thể bạn</p>\r\n\r\n<p>Cuối c&ugrave;ng, đừng qu&ecirc;n rằng kh&ocirc;ng gian trong nh&agrave; cũng c&oacute; thể bị &ocirc; nhiễm. Để hạn chế, bạn n&ecirc;n sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute;, trồng c&aacute;c loại c&acirc;y c&oacute; chức năng lọc kh&ocirc;ng kh&iacute; trong nh&agrave;, dọn dẹp nh&agrave; cửa để lau rửa sạch bụi bẩn v&agrave; nấm mốc,&hellip;</p>\r\n', NULL, 0, 79, '', '2020-02-23 14:02:58', '2020-02-26 22:02:42', 1, '', '', '', '', '', 'Ô nhiễm không khí và những thông tin nóng', '', 'o-nhiem-khong-khi-va-nhung-thong-tin-nong', '', 1, '');
INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newstag_arr`) VALUES
(109, 'Khẩu Trang :Bạn có biết cách lựa chọn khẩu trang chống bụi PM2.5?', '', '<blockquote>\r\n<hr /></blockquote>\r\n\r\n<p><strong>T&igrave;nh trạng kh&ocirc;ng kh&iacute; &ocirc; nhiễm tăng cao, H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh đang l&agrave; hai th&agrave;nh phố c&oacute; độ &ocirc; nhiễm ở mức b&aacute;o động. Ch&uacute;ng ta cần tự bảo vệ sức khỏe của bản th&acirc;n bằng việc trang bị cho m&igrave;nh khẩu trang mỗi khi ra ngo&agrave;i. Tuy nhi&ecirc;n, việc lựa chọn loại khẩu trang như thế n&agrave;o hay khẩu trang chống bụi mịn ra sao lại l&agrave; điều kh&ocirc;ng phải ai cũng biết.</strong></p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; đ&aacute;ng b&aacute;o động tại Việt Nam</h2>\r\n\r\n<p>Hiện nay, thực trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> đang l&agrave; vấn đề n&oacute;ng được quan t&acirc;m mỗi ng&agrave;y ở Việt Nam. Những th&agrave;nh phố lớn như H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh li&ecirc;n tục đứng đầu danh s&aacute;ch c&aacute;c th&agrave;nh phố c&oacute; chỉ số <strong>&ocirc; nhiễm cao nhất thế giới</strong>. C&aacute;c kh&aacute;i niệm về <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;, bụi mịn</strong> đều được người d&acirc;n đặc biệt quan t&acirc;m.</p>\r\n\r\n<p>Những ng&agrave;y gần đ&acirc;y, tại một số khu vực ở H&agrave; Nội <strong>chỉ số AQI</strong> đạt tr&ecirc;n mức 200 ( đ&acirc;y l&agrave; mức rất nguy hại đến sức khỏe ) theo ứng dụng AirVisual ng&agrave;y 14/12/2019. Điều đ&aacute;ng lưu &yacute; l&agrave; mức độ tiếp x&uacute;c&nbsp;<strong>bụi PM2.5</strong> ở trong nh&agrave; v&agrave; ngo&agrave;i trời đều vượt mức cho ph&eacute;p. C&aacute;c chỉ số n&agrave;y c&oacute; dấu hiệu tăng dần về đ&ecirc;m v&agrave; rạng s&aacute;ng.</p>\r\n\r\n<p>Theo Tổ chức Y tế&nbsp;Thế giới&nbsp;(WHO), cơ chế tự bảo vệ của cơ thể con người chỉ c&oacute; t&aacute;c dụng đối với bụi hạt c&oacute; đường k&iacute;nh lớn hơn 10 micromet. Đối với c&aacute;c hạt bụi k&iacute;ch cỡ từ 0,01 đến 5 micromet, ch&uacute;ng sẽ bị giữ lại trong kh&iacute; quản v&agrave; phế nang. Bụi mịn PM2.5 (c&oacute; đường k&iacute;nh nhỏ hơn 2,5 micromet) c&oacute; thể th&acirc;m nhập cơ thể người do c&oacute; k&iacute;ch thước si&ecirc;u nhỏ, g&acirc;y ảnh hưởng tới sức khỏe hơn bất kỳ chất g&acirc;y &ocirc; nhiễm n&agrave;o kh&aacute;c, ngay cả khi ở nồng độ thấp. Những người trong nh&oacute;m nhạy cảm, người gi&agrave;, trẻ nhỏ v&agrave; phụ nữ mang thai cần đặc biệt ch&uacute; &yacute; bảo vệ sức khỏe khi đi ra ngo&agrave;i.</p>\r\n\r\n<h2>Nếu kh&ocirc;ng đeo khẩu trang ra ngo&agrave;i, bạn sẽ đối mặt với những điều g&igrave;?</h2>\r\n\r\n<p>Kh&ocirc;ng kh&iacute; &ocirc; nhiễm chứa nhiều bụi, bụi mịn v&agrave; c&aacute;c chất độc hại. Việc kh&ocirc;ng đeo khẩu trang khi ra ngo&agrave;i kh&ocirc;ng kh&aacute;c g&igrave; mở cửa để bụi v&agrave; vi khuẩn x&acirc;m nhập một c&aacute;ch tự do v&agrave;o cơ thể ch&uacute;ng ta.</p>\r\n\r\n<h3><strong>Bụi mịn PM2.5</strong></h3>\r\n\r\n<p>Bụi mịn PM2.5 l&agrave; những hạt c&oacute; đường k&iacute;nh nhỏ hơn 2.5 &mu;m, bằng với k&iacute;ch thước của c&aacute;c loại vi khuẩn. Khi ch&uacute;ng ta h&iacute;t v&agrave;o, <strong>bụi PM2.5</strong> sẽ x&acirc;m nhập v&agrave;o phổi rồi v&agrave;o m&aacute;u v&agrave; tim. Lớp <strong>bụi</strong> n&agrave;y cứ từng ng&agrave;y đ&oacute;ng lại cho đến khi lớp <strong>bụi</strong> đủ lớn sẽ g&acirc;y ra tử vong. Những người thuộc nh&oacute;m nhạy cảm, trẻ em, phụ nữ, người lớn tuổi, người c&oacute; tiền sử bệnh h&ocirc; hấp v&agrave; tim mạch l&agrave; những người chịu nhiều t&aacute;c hại nhất.</p>\r\n\r\n<h3><strong>Bụi mịn</strong></h3>\r\n\r\n<p>Bụi mịn ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y nhiễm độc m&aacute;u, m&aacute;u kh&oacute; đ&ocirc;ng khiến cho hệ tuần ho&agrave;n bị ảnh hưởng, hệ thần kinh điều khiển hoạt động của cơ tim bị suy nhược g&acirc;y ra c&aacute;c bệnh l&yacute; về tim mạch. Khi ch&uacute;ng đi v&agrave;o phổi khiến m&aacute;u kh&ocirc;ng c&oacute; oxy đi nu&ocirc;i cơ thể, dẫn đến sự xuất hiện của c&aacute;c triệu chứng như đau đầu, mệt mỏi, ch&oacute;ng mặt. Nếu t&igrave;nh trạng n&agrave;y k&eacute;o d&agrave;i, hệ h&ocirc; hấp của ch&uacute;ng ta sẽ bị nhiễm độc, hệ miễn dịch bị ph&aacute; hủy, ch&uacute;ng x&acirc;m lấn v&agrave;o tế b&agrave;o v&agrave; cản trở c&aacute;c hoạt động của cơ thể.</p>\r\n\r\n<p>Đặc biệt l&agrave; đối với những&nbsp;phụ nữ đang mang thai nếu h&iacute;t phải <strong>bụi mịn</strong> do <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong> c&oacute; thể khiến cho thai nhi chậm ph&aacute;t triển. Trẻ sinh ra bị&nbsp;thiếu c&acirc;n,&nbsp;suy nhược thần kinh&nbsp;v&agrave;&nbsp;tự kỷ.</p>\r\n\r\n<p>Với hệ miễn dịch chưa được ph&aacute;t triển to&agrave;n diện, đầy đủ, trẻ em ch&iacute;nh l&agrave; đối tượng bị t&aacute;c động nhiều nhất do &ocirc; nhiễm kh&ocirc;ng kh&iacute;, c&ugrave;ng một nồng độ kh&iacute; bị &ocirc; nhiễm nhưng khi đi v&agrave;o cơ thể trẻ c&oacute; thể cao gấp 2 lần so với người lớn.</p>\r\n\r\n<h2>Ti&ecirc;u ch&iacute; chọn khẩu trang chống bụi mịn</h2>\r\n\r\n<p>Một chiếc <strong>khẩu trang</strong> ph&ugrave; hợp d&ugrave;ng để bảo vệ bạn v&agrave; gia đ&igrave;nh cần phải đảm bảo chống được bụi PM2.5, vi khuẩn, virus v&agrave; những chất độc c&oacute; trong kh&ocirc;ng kh&iacute;. Ngo&agrave;i ra, khẩu trang cần được thiết kế để đảm bảo tho&aacute;ng kh&iacute;, ngăn ngừa hấp hơi mờ k&iacute;nh, tạo cảm gi&aacute;c dễ chịu v&agrave; kh&ocirc;ng g&acirc;y tổn thương da v&agrave; tai.</p>\r\n\r\n<p>C&aacute;c loại như <strong>khẩu trang vải, khẩu trang y tế</strong> kh&ocirc;ng c&oacute; t&aacute;c dụng bảo vệ bạn khỏi <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong>.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n sử dụng <strong>khẩu trang vải</strong> v&igrave; kh&ocirc;ng c&oacute; khả năng lọc c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại trong <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong>. Khẩu trang loại n&agrave;y chỉ c&oacute; thể lọc được c&aacute;c <strong>hạt bụi</strong> c&oacute; k&iacute;ch thước lớn. Ngo&agrave;i ra, khẩu trang vải kh&ocirc;ng tho&aacute;t kh&iacute; l&acirc;u ng&agrave;y sẽ trở th&agrave;nh m&ocirc;i trường l&yacute; tưởng cho virus v&agrave; vi khuẩn sinh s&ocirc;i nảy nở, g&acirc;y hại nhiều hơn cho cơ thể.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n sử dụng <strong>khẩu trang y tế</strong> v&igrave; loại sản phẩm n&agrave;y chỉ c&oacute; thể ngăn ngừa sự x&acirc;m nhập của c&aacute;c loại virus m&agrave; kh&ocirc;ng chống được c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại kh&aacute;c. Hơn nữa khi sử dụng ngo&agrave;i đường phố, kết cấu mỏng manh tạo ra c&aacute;c khe hở khiến <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong> dễ d&agrave;ng hơn x&acirc;m nhập v&agrave;o cơ thể. Ngo&agrave;i m&ocirc;i trường bệnh viện ra, khẩu trang y tế ho&agrave;n to&agrave;n v&ocirc; t&aacute;c dụng khi sử dụng ngo&agrave;i đường.</p>\r\n\r\n<h3><strong>Ch&uacute; &yacute; chất liệu khẩu trang</strong></h3>\r\n\r\n<p>Tr&ecirc;n thị trường c&oacute; nhiều quảng c&aacute;o <strong>khẩu trang lọc bụi si&ecirc;u mịn</strong> ti&ecirc;u chuẩn N95 v&agrave; N99. Đ&acirc;y l&agrave; <strong>khẩu trang</strong> được Trung t&acirc;m kiểm so&aacute;t v&agrave; ph&ograve;ng ngừa dịch bệnh Hoa Kỳ khuyến nghị n&ecirc;n sử dụng ở th&agrave;nh phố &ocirc; nhiễm kh&ocirc;ng kh&iacute;. N95 c&oacute; nghĩa l&agrave; lọc được 95% c&aacute;c loại bụi c&oacute; trong kh&ocirc;ng kh&iacute; kể cả bụi si&ecirc;u mịn. C&ograve;n N99 lọc được 99% c&aacute;c vật chất c&oacute; trong kh&ocirc;ng kh&iacute;, ngăn cản được gần như tuyệt đối c&aacute;c loại vi khuẩn, virus.Tuy nhi&ecirc;n ch&uacute;ng ta n&ecirc;n thận trọng v&igrave; c&ocirc;ng nghệ lọc <strong>bụi si&ecirc;u mịn</strong> PM2.5 kh&aacute; l&agrave; kh&oacute;. Do đ&oacute;, nh&agrave; sản xuất phải c&oacute; uy t&iacute;n, sở hữu c&ocirc;ng nghệ cao v&agrave; đặc biệt phải được chứng nhận của c&aacute;c cơ quan kiểm định uy t&iacute;n tr&ecirc;n thế giới.</p>\r\n\r\n<h3><strong>Kiểu d&aacute;ng &ocirc;m s&aacute;t mặt </strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; ti&ecirc;u ch&iacute; quan trọng nhất v&igrave;&nbsp;gi&uacute;p cho <strong>bụi mịn</strong> kh&ocirc;ng chui v&agrave;o ph&iacute;a trong. <strong>Khẩu trang</strong> &ocirc;m s&aacute;t mặt, cho ph&eacute;p tối đa 5% kh&ocirc;ng kh&iacute; đi qua c&aacute;c khoảng trống.</p>\r\n\r\n<h3><strong>Chọn khẩu trang chống bụi mịn c&oacute; độ tho&aacute;ng cao</strong></h3>\r\n\r\n<p>Sử dụng <strong>khẩu trang</strong> cần c&oacute; độ tho&aacute;ng, gi&uacute;p người d&ugrave;ng thấy thoải m&aacute;i, h&ocirc; hấp b&igrave;nh thường v&agrave; cảm thấy tự tin sẵn s&agrave;ng đeo mọi l&uacute;c mọi nơi.</p>\r\n\r\n<h3><strong>Nguồn gốc xuất xứ&nbsp;</strong></h3>\r\n\r\n<p>Bạn n&ecirc;n lựa chọn <strong>khẩu trang chống bụi mịn</strong> c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng, đảm bảo chất lượng.</p>\r\n\r\n<h3>Thời hạn sử dụng khẩu trang</h3>\r\n\r\n<p>Sử dụng từ 10-15 ng&agrave;y với điều kiện được cất tại nơi tho&aacute;ng m&aacute;t</p>\r\n', NULL, 0, 79, '', '2020-02-23 14:02:25', '2020-02-26 22:02:26', 1, '', '', '', '', '', 'Khẩu Trang :Bạn có biết cách lựa chọn khẩu trang chống bụi PM2.5?', '', 'khau-trang-ban-co-biet-cach-lua-chon-khau-trang-chong-bui-pm25', '', 1, ''),
(110, 'Bụi Mịn nguy hiểm như thế nào đối với tính mạng con người', '', '<blockquote>\r\n<p><strong>Những ng&agrave;y gần đ&acirc;y, c&aacute;c tin tức về &ocirc; nhiễm kh&ocirc;ng kh&iacute; thường xuy&ecirc;n xuất hiện tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin. C&aacute;c b&agrave;i b&aacute;o hay nhắc tới c&aacute;c cụm từ như bụi mịn, bụi si&ecirc;u mịn, bụi PM 2.5, bụi PM 10. Vậy những cụm từ n&agrave;y c&oacute; &yacute; nghĩa như thế n&agrave;o? T&aacute;c hại của bụi mịn v&agrave; c&aacute;ch ph&ograve;ng tr&aacute;nh ra sao sẽ được đề cập trong b&agrave;i viết dưới đ&acirc;y.</strong></p>\r\n</blockquote>\r\n\r\n<h2>Bụi mịn l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Bụi</strong> hay hợp chất c&oacute; trong <strong>bụi</strong> được gọi chung l&agrave; <strong>Particulate Matter</strong>, viết tắt l&agrave; <strong>PM</strong> . Hỗn hợp phức tạp chứa c&aacute;c hạt v&ocirc; cơ v&agrave; hữu cơ ở dạng<em> rắn v&agrave; dạng lỏng, lơ lửng trong kh&ocirc;ng kh&iacute; gọi chung l&agrave; bụi.</em></p>\r\n\r\n<p><strong>Chỉ số PM</strong> thường được d&ugrave;ng để đề cập đến c&aacute;c hạt bụi rất nhỏ m&agrave; để đo lường k&iacute;ch thước của ch&uacute;ng người ta phải sử dụng đơn vị t&iacute;nh &mu;m (micromet ) 1&mu;m = 0.001mm . Những hạt n&agrave;y thường được gọi chung l&agrave; <strong>bụi mịn, bụi si&ecirc;u mịn</strong>. C&aacute;c hạt bụi mịn c&oacute; k&iacute;ch thước si&ecirc;u vi được biết đến nhiều nhất l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>PM10 &ndash; C&aacute;c hạt bụi c&oacute; k&iacute;ch thước đường k&iacute;nh từ 2.5 tới 10 &micro;m</li>\r\n	<li>PM2.5 &ndash; C&aacute;c hạt bụi c&oacute; k&iacute;ch thước đường k&iacute;nh nhỏ hơn hoặc bằng 2,5 &micro;m</li>\r\n</ul>\r\n\r\n<p>Bạn sẽ ngạc nhi&ecirc;n khi biết k&iacute;ch thước <strong>hạt bụi si&ecirc;u mịn PM2.5</strong> chỉ bằng 1/28 sợi t&oacute;c người, tương đương với k&iacute;ch thước của một con virus.</p>\r\n\r\n<h2>Bụi mịn đến từ đ&acirc;u?</h2>\r\n\r\n<p><strong>Bụi mịn</strong> đến từ 2 nguồn ch&iacute;nh l&agrave;&nbsp;nguồn sơ cấp&nbsp;v&agrave;&nbsp;nguồn thứ cấp.</p>\r\n\r\n<p><strong><em>Nguồn sơ cấp</em> </strong>l&agrave; những nguồn ph&aacute;t sinh trực tiếp ra m&ocirc;i trường, bao gồm:</p>\r\n\r\n<p>Bụi thi&ecirc;n nhi&ecirc;n: sa mạc, đất c&aacute;t, phun tr&agrave;o n&uacute;i lửa</p>\r\n\r\n<p>Sản xuất c&ocirc;ng nghiệp: kh&oacute;i thải từ nh&agrave; m&aacute;y, xưởng sản xuất, khu c&ocirc;ng nghiệp</p>\r\n\r\n<p>Giao th&ocirc;ng vận tải: kh&oacute;i thải từ c&aacute;c phương tiện c&aacute; nh&acirc;n, c&aacute;t bụi cuốn theo trong qu&aacute; tr&igrave;nh di chuyển, c&aacute;t bụi sinh ra do b&agrave;o m&ograve;n bề mặt đường</p>\r\n\r\n<p>Sinh hoạt: kh&oacute;i thải nấu nướng bằng bếp than, bếp củi, dầu</p>\r\n\r\n<p>R&aacute;c thải: r&aacute;c sinh hoạt, r&aacute;c c&ocirc;ng nghiệp</p>\r\n\r\n<p>N&ocirc;ng nghiệp: vận chuyển, đốt rơm rạ</p>\r\n\r\n<p>X&acirc;y dựng: bụi từ qu&aacute; tr&igrave;nh x&acirc;y dựng chung cư, cao ốc, cầu đường</p>\r\n\r\n<p><em><strong>Nguồn thứ cấp</strong></em>: khi nguồn sơ cấp lơ lửng trong kh&ocirc;ng kh&iacute;, một trong số ch&uacute;ng phản ứng ho&aacute; học với tự nhi&ecirc;n, tạo ra một chất mới, những chất ng&agrave;y l&agrave; nguồn thứ cấp.</p>\r\n\r\n<h2>T&aacute;c hại của Bụi Mịn PM 2.5, PM 10</h2>\r\n\r\n<p><strong>Bụi PM 2.5, PM 10</strong> kh&ocirc;ng chừa một ai. Trong đ&oacute; những người thuộc nh&oacute;m nhạy cảm l&agrave; trẻ em, phụ nữ, người lớn tuổi, người c&oacute; thể trạng yếu v&agrave; những người c&oacute; tiền sử bệnh h&ocirc; hấp v&agrave; tim mạch l&agrave; những người chịu nhiều t&aacute;c hại nhất.</p>\r\n\r\n<p>Ch&uacute;ng ta thường bỏ qua hoặc kh&ocirc;ng nhận thấy t&aacute;c hại của bụi PM 2.5 cũng như c&aacute;ch m&agrave; ch&uacute;ng x&acirc;m nhập v&agrave; g&acirc;y hại cho cơ thể. V&igrave; qu&aacute; tr&igrave;nh x&acirc;m nhập thường &acirc;m thầm, kh&ocirc;ng c&oacute; triệu chứng r&otilde; r&agrave;ng cho đến khi lượng bụi t&iacute;ch tụ đủ lớn.</p>\r\n\r\n<h4><em><strong>G&acirc;y dị ứng</strong></em>:</h4>\r\n\r\n<p>Ở mức độ nhẹ nhất, bụi PM 2.5 mang theo vi khuẩn b&aacute;m v&agrave;o bề mặt của cơ thể g&acirc;y cảm gi&aacute;c ngứa ng&aacute;y, kh&oacute; chịu, dị ứng. Nặng hơn g&acirc;y đau mắt, vi&ecirc;m mũi, c&aacute;c bệnh về tai mũi họng.</p>\r\n\r\n<h4><em><strong>G&acirc;y suy giảm hệ miễn dịch</strong></em>:</h4>\r\n\r\n<p>Sau khi bụi PM 2.5 hấp thụ chất độc, mang theo vi khuẩn, virus ngo&agrave;i m&ocirc;i trường x&acirc;m nhập v&agrave;o cơ thể con người. Ch&uacute;ng thải độc tố ngấm v&agrave;o cơ thể v&agrave; l&agrave;m suy giảm hệ miễn dịch.</p>\r\n\r\n<h4><em><strong>G&acirc;y vi&ecirc;m phổi, tắc nghẽn phổi m&atilde;n t&iacute;nh</strong></em>:</h4>\r\n\r\n<p>Bụi PM 2.5 v&agrave; PM 10 x&acirc;m nhập v&agrave;o cơ thể người th&ocirc;ng qua hoạt động h&iacute;t thở. Ch&uacute;ng theo đường dẫn kh&iacute;, b&aacute;m v&agrave; t&iacute;ch tụ v&agrave;o kh&iacute; quản v&agrave; bề mặt phổi. Theo thời gian, lượng bụi n&agrave;y t&iacute;ch tụ c&agrave;ng nhiều, g&acirc;y ảnh hưởng c&agrave;ng lớn.</p>\r\n\r\n<p><strong>Hạt PM 10</strong> v&agrave; <strong>PM 2.5</strong> x&acirc;m nhập v&agrave;o kh&iacute; quản v&agrave; phổi ban đầu g&acirc;y c&aacute;c cảm gi&aacute;c kh&oacute; chịu như khan tiếng, hắt hơi, ho, kh&oacute; thở. Theo thời gian ch&uacute;ng c&oacute; thể g&acirc;y ra c&aacute;c bệnh như hen suyễn, tim mạch.</p>\r\n\r\n<p>Đặc biệt <strong>PM 2.5</strong> c&oacute; k&iacute;ch thước si&ecirc;u nhỏ c&oacute; thể x&acirc;m nhập s&acirc;u, l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y ra tắc nghẽn phổi m&atilde;n t&iacute;nh. Khi lượng bụi t&iacute;ch tụ đủ lớn sẽ c&oacute; thể dẫn đến tử vong.</p>\r\n\r\n<p><strong>Bụi PM 2.5</strong> c&ograve;n nguy hiểm hơn <strong>PM 10</strong>, với đường k&iacute;nh si&ecirc;u nhỏ ch&uacute;ng c&oacute; khả năng luồn l&aacute;ch v&agrave;o c&aacute;c t&uacute;i phổi v&agrave; tĩnh mạch phổi, x&acirc;m nhập v&agrave;o m&aacute;u g&acirc;y ra những bệnh chết người. Ngo&agrave;i ra, ch&uacute;ng sẽ thẩm thấu v&agrave;o phế nang, ảnh hưởng đến chức năng trao đổi kh&iacute; của phế nang. Sau khi v&agrave;o phế nang, ch&uacute;ng c&oacute; thể vượt qua&nbsp;v&aacute;ch ngăn kh&iacute;-m&aacute;u&nbsp;để đi v&agrave;o hệ tuần ho&agrave;n v&agrave; g&acirc;y bệnh, thậm ch&iacute; ch&uacute;ng c&ograve;n c&oacute; thể ảnh hưởng đến hệ thống thần kinh.</p>\r\n\r\n<h4><em><strong>G&acirc;y nhồi m&aacute;u cơ tim:</strong></em></h4>\r\n\r\n<p><strong>Bụi PM 2.5</strong> v&agrave; <strong>PM 10</strong> trong khoảng thời gian ngắn c&oacute; thể khiến chỗ tắc mạch m&aacute;u b&igrave;nh thường kh&ocirc;ng nghi&ecirc;m trọng đột nhi&ecirc;n bị vỡ, tạo ra nghẽn mạch, g&acirc;y n&ecirc;n nhồi m&aacute;u cơ tim cấp t&iacute;nh</p>\r\n\r\n<h4><em><strong>L&agrave;m tăng tỷ lệ chết v&igrave; bệnh tim v&agrave; cao huyết &aacute;p:</strong></em></h4>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Đại học Harvard đ&atilde;, c&aacute;c nh&agrave; khoa học đ&atilde; chứng minh những chất độc hại c&oacute; trong bụi kh&ocirc;ng chỉ g&acirc;y nhồi m&aacute;u cơ tim m&agrave; c&ograve;n dẫn đến&nbsp;thiếu m&aacute;u hoặc tổn thương cơ tim. Kết quả khảo s&aacute;t 25.000 người bị bệnh tim hoặc tim kh&ocirc;ng khỏe v&agrave; ph&aacute;t hiện ra sau khi <strong>PM 2.5</strong> tăng l&ecirc;n 10 &micro;g/m<sup>3</sup>&nbsp;th&igrave; tỉ lệ thiệt mạng của người bệnh sẽ tăng 10% &ndash; 27%.</p>\r\n\r\n<h4><em><strong>G&acirc;y ung thư v&agrave; biến đổi gen</strong></em>:</h4>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện<strong> PM 2.5</strong> chứa kim loại l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ung thư v&agrave; khủng khiếp hơn l&agrave; biến đổi gen ở người. Đ&acirc;y l&agrave; một trong những điều đ&aacute;ng lo ngại nhất m&agrave; tất cả ch&uacute;ng ta đang phải đối mặt.</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 79, '', '2020-02-23 14:02:41', '2020-02-26 22:02:13', 1, '', '', '', '', '', 'Bụi Mịn nguy hiểm như thế nào đối với tính mạng con người', '', 'bui-min-nguy-hiem-nhu-the-nao-doi-voi-tinh-mang-con-nguoi', '', 1, ''),
(111, 'Khẩu trang phủ muối có thể ngăn chặn virus corona?', '', '<p>Tại Việt Nam, bạn sẽ thấy rất nhiều người đeo khẩu trang để tự bảo vệ m&igrave;nh khỏi virus corona. Một nh&agrave; khoa học người Canada tuy&ecirc;n bố rằng: &ldquo;những chiếc khẩu trang như vậy thực sự c&oacute; thể g&acirc;y bệnh nhiều hơn l&agrave; ph&ograve;ng bệnh. Nguy&ecirc;n nh&acirc;n l&agrave; do người đeo li&ecirc;n tục di chuyển, th&aacute;o ra v&agrave; đeo ch&uacute;ng trở lại. Tất cả những h&agrave;nh động đ&oacute; c&oacute; thể gi&uacute;p virus tr&ecirc;n bề mặt dễ d&agrave;ng x&acirc;m nhập v&agrave;o cơ thể cơ thể&rdquo;. Gi&aacute;o sư Hyo-Jick Choi n&oacute;i rằng vấn đề ch&iacute;nh khi sử dụng khẩu trang để chống lại virus corona.</p>\r\n\r\n<p>[caption id=&quot;attachment_909&quot; align=&quot;alignnone&quot; width=&quot;1300&quot;]<img alt=\"Hyo-Jick Choi (phải) và đồng nghiêp\" height=\"975\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Hyo-Jick-Choi-phải-và-Ilaria-Rubin-trái.jpg\" width=\"1300\" /> Hyo-Jick Choi (phải) v&agrave; đồng nghi&ecirc;p[/caption]</p>\r\n\r\n<p>Virus corna c&oacute; trong kh&ocirc;ng kh&iacute; th&ocirc;ng qua nước bọt, đờm do ho, hắt hơi của người bệnh hoặc tr&ecirc;n bề mặt khẩu trang sau khi tiếp x&uacute;c với người bệnh.</p>\r\n\r\n<p>Th&aacute;ch thức lớn nhất của c&aacute;c loại khẩu trang (đạt chuẩn N95/N99), hiện nay l&agrave; ch&uacute;ng kh&ocirc;ng thể ti&ecirc;u diệt virus c&oacute; tr&ecirc;n bề mặt, điều n&agrave;y l&agrave;m tăng cơ hội l&acirc;y truyền tiếp x&uacute;c. V&igrave; vậy &ocirc;ng đ&atilde; tạo ra một lớp phủ c&oacute; thể thay đổi điều đ&oacute;.</p>\r\n\r\n<p>[caption id=&quot;attachment_911&quot; align=&quot;aligncenter&quot; width=&quot;700&quot;]<img alt=\"Khẩu trang đạt chuẩn N95/N99\" height=\"525\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Mặt-nạ-được-nhìn-thấy-tại-một-cửa-hàng-ở-East-Palo-Alto-California-vào-ngày-26-tháng-1-năm-2020.jpg\" width=\"700\" /> Khẩu trang đạt chuẩn N95/N99[/caption]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute;o sư Hyo-Jick Choi, của trường Đại học Alberta - Canada, đ&atilde; tạo ra một giải ph&aacute;p c&oacute; thể thay đổi điều đ&oacute;. Một chiếc khẩu trang c&oacute; thể ti&ecirc;u diệt virus c&oacute; hại, thay v&igrave; ngăn chặn ch&uacute;ng.&nbsp;V&agrave; th&agrave;nh chủ yếu từ natri clorua v&agrave; kali clorua.</p>\r\n\r\n<p>Khi một giọt c&oacute; k&iacute;ch thước bất kỳ tiếp x&uacute;c với lớp phủ, muối sẽ h&ograve;a tan v&agrave;o n&oacute;. Sau khi nước bay hơi, muối h&ograve;a tan trong n&oacute; được kết tinh lại, c&aacute;c cạnh sắc nhọn của c&aacute;c tinh thể sẽ cắt xuy&ecirc;n qua virus v&agrave; v&ocirc; hiệu h&oacute;a ch&uacute;ng.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i đ&atilde; thử nghiệm tr&ecirc;n ba loại virus c&uacute;m kh&aacute;c nhau v&agrave; ba loại virus tr&ecirc;n bề mặt của khẩu trang bị nhiễm bẩn kh&ocirc;ng hoạt động trong v&ograve;ng năm ph&uacute;t v&agrave; bị v&ocirc; hiệu h&oacute;a ho&agrave;n to&agrave;n trong v&ograve;ng 30 ph&uacute;t&quot;, &ocirc;ng Choi n&oacute;i. &Ocirc;ng tin rằng thử nghiệm n&agrave;y sẽ c&oacute; hiệu quả tương đương với virus corona.</p>\r\n\r\n<p>[caption id=&quot;attachment_910&quot; align=&quot;aligncenter&quot; width=&quot;700&quot;]<img alt=\"Hyo-Jick Choi và đồng nghiệp tại Đại học Alberta\" height=\"525\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Hyo-Jick-Choi-và-Ilaria-Rubin-tại-Đại-học-Alberta.jpg\" width=\"700\" /> Hyo-Jick Choi v&agrave; đồng nghiệp tại Đại học Alberta[/caption]</p>\r\n\r\n<p>Trường Đại học Alberta hiện đang ph&aacute;t triển một lớp m&agrave;ng muối v&agrave; &aacute;p dụng n&oacute; l&ecirc;n tr&ecirc;n bề mặt khẩu trang, với hy vọng sản phẩm sẽ c&oacute; mặt tr&ecirc;n thị trường trong v&ograve;ng 12 đến 18 th&aacute;ng. Trong khi đ&oacute;, gi&aacute;o sư Choi khuy&ecirc;n người ti&ecirc;u d&ugrave;ng kh&ocirc;ng n&ecirc;n chạm v&agrave;o bề mặt, lu&ocirc;n rửa tay trước v&agrave; sau khi đeo, kh&ocirc;ng bao giờ cất ở những nơi như t&uacute;i v&agrave; thay mới sau mỗi lần sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 79, '', '2020-02-23 14:02:07', '2020-02-26 22:02:36', 1, '', '', '', '', '', 'Khẩu trang phủ muối có thể ngăn chặn virus corona?', '', 'khau-trang-phu-muoi-co-the-ngan-chan-virus-corona', '', 1, ''),
(112, 'Ô nhiễm không khí trong nhà cao gấp 8 lần ô nhiễm không khí ngoài trời', '', '<p><strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong>&nbsp;ngo&agrave;i trời gia tăng với c&aacute;c yếu tố như kh&iacute; thải xe cộ, đốt nhi&ecirc;n liệu h&oacute;a thạch v&agrave; kh&iacute; thải c&ocirc;ng nghiệp, điều đ&oacute; khiến bạn muốn ở trong nh&agrave; c&agrave;ng nhiều c&agrave;ng tốt. Nhưng thực tế, theo Cơ quan Bảo vệ M&ocirc;i trường ở Hoa Kỳ ước t&iacute;nh t&igrave;nh trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> c&oacute; thể cao gấp 8 lần<strong> &ocirc; nhiễm kh&ocirc;ng kh&iacute; ngo&agrave;i trời</strong>. Nơi m&agrave; người gi&agrave;, trẻ nhỏ, phụ nữ mang thai d&agrave;nh phần lớn thời gian trong ng&agrave;y để sinh hoạt. Vậy để bảo vệ sức khỏe cho gia đ&igrave;nh, ch&uacute;ng ta cần cải thiện <strong>chất lượng kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>, nơi ta đang sinh sống.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Theo t&agrave;i liệu từ Bộ M&ocirc;i Trường &Yacute; năm 1991, <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> được định nghĩa l&agrave;&nbsp;<em>sự &ocirc; nhiễm khi &ldquo;c&oacute; sự hiện diện của <strong>c&aacute;c chất &ocirc; nhiễm</strong> c&oacute; t&iacute;nh chất vật l&yacute;, h&oacute;a học hoặc sinh học trong kh&ocirc;ng kh&iacute; của c&aacute;c m&ocirc;i trường bị giới hạn, m&agrave; c&aacute;c chất n&agrave;y kh&ocirc;ng hiện diện một c&aacute;ch tự nhi&ecirc;n với số lượng lớn trong <strong>kh&ocirc;ng kh&iacute;</strong> ngo&agrave;i trời của hệ sinh th&aacute;i&quot;.</em></p>\r\n\r\n<p>N&oacute;i một c&aacute;c đơn giản,&nbsp;<strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>&nbsp;l&agrave; l&agrave; sự gia tăng c&aacute;c t&aacute;c nh&acirc;n vật l&iacute;, h&oacute;a học, sinh học trong ng&ocirc;i nh&agrave;, cao hơn mức b&igrave;nh thường v&agrave; c&oacute; t&aacute;c động bất lợi đến <strong>sức khỏe</strong>.</p>\r\n\r\n<p><strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> l&agrave; một trong những nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y n&ecirc;n <strong>c&aacute;c loại bệnh về đường h&ocirc; hấp</strong>, mỗi năm cướp đi sinh mạng của h&agrave;ng triệu người tr&ecirc;n thế giới. Tuy nhi&ecirc;n, một c&ocirc;ng bố của c&aacute;c nh&agrave; khoa học Mỹ cũng khiến kh&ocirc;ng &iacute;t người giật m&igrave;nh đ&oacute; l&agrave; &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; c&ograve;n cao gấp 8 lần ngo&agrave;i trời.</p>\r\n\r\n<p>Theo khảo s&aacute;t mới đ&acirc;y tại Mỹ cho thấy, cứ 6 ph&ograve;ng trong ng&ocirc;i nh&agrave; (tổng diện t&iacute;ch khoảng 450m2) sẽ &ldquo;thu&rdquo; được tới 18kg bụi/năm.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đến từ đ&acirc;u?</h2>\r\n\r\n<p><strong>C&aacute;c chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> ph&aacute;t sinh từ nhiều nguồn, c&oacute; <strong>những t&aacute;c nh&acirc;n g&acirc;y &ocirc; nhiễm</strong> từ b&ecirc;n ngo&agrave;i lọt v&agrave;o như virus, vi khuẩn... đeo b&aacute;m khi bạn tiếp x&uacute;c với những vật dụng nơi c&ocirc;ng cộng. C&aacute;c t&aacute;c nh&acirc;n h&oacute;a học nguy hiểm g&acirc;y &ocirc; nhiễm ẩn nấp trong nhiều loại sản phẩm kh&aacute;c nhau. Nhiều chất nằm trong danh s&aacute;ch c&aacute;c chất g&acirc;y ung thư của WHO như <strong>benzen</strong>, <strong>trichloroethylene</strong>, <strong>xylene</strong>, <strong>ammonia</strong> v&agrave; <strong>fomaldehyde</strong>.</p>\r\n\r\n<p><strong>Ben zen</strong> c&oacute; trong nhựa, sợi tổng hợp, kh&oacute;i thuốc l&aacute;, sơn, thuốc nhuộm,&hellip;</p>\r\n\r\n<p><strong>Xylene</strong> c&oacute; trong kh&oacute;i thuốc l&aacute;, kh&iacute; thải xe, giấy in, cao su,&hellip;</p>\r\n\r\n<p><strong>Trichloroethylene</strong> c&oacute; trong chất tẩy rửa, sơn tường, v&eacute;c ni đ&aacute;nh b&oacute;ng,&hellip;</p>\r\n\r\n<p><strong>Ammonia</strong> c&oacute; trong nước lau k&iacute;nh, ph&acirc;n b&oacute;n,&hellip;</p>\r\n\r\n<p><strong>Fomaldehyde</strong> c&oacute; trong giấy vệ sinh, vải tổng hợp, sơn tường, keo xịt t&oacute;c,&hellip;</p>\r\n\r\n<p>Một số t&aacute;c nh&acirc;n lại c&oacute; nguồn gốc sinh học như phấn hoa, c&aacute;c loại nấm mốc v&agrave; c&aacute;c chất g&acirc;y dị ứng ph&aacute;t ra từ c&aacute;c loại vật nu&ocirc;i, s&acirc;u bọ, gi&aacute;n...</p>\r\n\r\n<p>Ngo&agrave;i ra, <strong>kh&ocirc;ng kh&iacute;</strong> kh&ocirc;ng được lưu th&ocirc;ng khiến c&aacute;c chất g&acirc;y&nbsp;dị ứng&nbsp;v&agrave; &ocirc; nhiễm bị t&ugrave; đọng,&nbsp;nhiệt độ&nbsp;v&agrave; độ ẩm cao, sống gần đường đ&ocirc;ng đ&uacute;c cũng c&oacute; thể ảnh hưởng đến <strong>chất lượng kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>.</p>\r\n\r\n<h2>C&aacute;c bệnh thường gặp</h2>\r\n\r\n<p><strong>Ben Zen</strong></p>\r\n\r\n<p>Nếu sống ở nơi c&oacute; nhiều vật dụng chứa <strong>benzene</strong> c&oacute; thể bị tổn thương n&atilde;o, nhức đầu kinh ni&ecirc;n hay ngất xỉu. Với phụ nữ, nhiễm <strong>benzene</strong> c&oacute; thể g&acirc;y teo buồng trứng v&agrave; hậu quả l&agrave; v&ocirc; sinh, g&acirc;y rối loạn kinh nguyệt. Với đ&agrave;n &ocirc;ng c&oacute; thể l&agrave;m biến dạng hoặc giảm chất lượng tinh tr&ugrave;ng.</p>\r\n\r\n<p><strong>Ammonia</strong></p>\r\n\r\n<p>Tiếp x&uacute;c với nồng độ cao <strong>ammonia</strong> trong kh&ocirc;ng kh&iacute; g&acirc;y bỏng ni&ecirc;m mạc mũi v&agrave; suy h&ocirc; hấp. Nếu tiếp x&uacute;c với <strong>ammonia</strong> đậm đặc, da, mắt, họng, phổi c&oacute; thể bị bỏng rất nặng. Những vết bỏng c&oacute; thể g&acirc;y m&ugrave; vĩnh viễn, bệnh phổi, hoặc tử vong.</p>\r\n\r\n<p><strong>Formaldehyde</strong></p>\r\n\r\n<p><strong>Formaldehyde</strong> c&oacute; thể g&acirc;y ung thư. Đối với phụ nữ c&oacute; thai, <strong>formaldehyde</strong> c&oacute; thể g&acirc;y sai lệch v&agrave; biến dị c&aacute;c nhiễm sắc thể ảnh hưởng đến sự ph&aacute;t triển của b&agrave;o thai. Do ph&acirc;n tử của <strong>formaldehyde</strong> rất nhỏ n&ecirc;n c&oacute; thể len lỏi v&agrave;o da v&agrave; m&aacute;u g&acirc;y nguy hại cho tế b&agrave;o, g&acirc;y ung thư v&agrave; th&uacute;c đẩy c&aacute;c tế b&agrave;o ung thư ph&aacute;t triển. Điều đ&aacute;ng n&oacute;i l&agrave;&nbsp;cơ thể người kh&ocirc;ng c&oacute; cơ chế đ&agrave;o thải <strong>formaldehyde.</strong></p>\r\n\r\n<p><strong>Xylene</strong></p>\r\n\r\n<p><strong>Xylene</strong> l&agrave; chất c&oacute; g&acirc;y hại cho sức khỏe của con người.&nbsp;Hơi <strong>Xylene</strong> rất nguy hiểm, g&acirc;y k&iacute;ch ứng mạnh với da v&agrave; mắt. Nếu người khỏe mạnh h&iacute;t phải hơi <strong>Xylene</strong> sẽ g&acirc;y n&ecirc;n những tổn thương nghi&ecirc;m trọng cho&nbsp;tế b&agrave;o phổi, tế b&agrave;o gan, thận v&agrave; hệ thần kinh trung ương.</p>\r\n\r\n<p><strong>Trichloroethylene</strong></p>\r\n\r\n<p>Khi h&iacute;t phải <strong>Trichloroethylene</strong> sẽ dẫn tới c&aacute;c hiện tượng như g&acirc;y&nbsp;ức chế&nbsp;hệ thần kinh trung ương, đau đầu, n&ocirc;n mửa,... Việc <strong>trichloroethylene</strong> bị nhiễm v&agrave;o cơ thể sẽ g&acirc;y độc hại ở gan v&agrave; thận, dẫn tới ung thư.</p>\r\n\r\n<h2>Cần l&agrave;m g&igrave; để đối ph&oacute; với &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</h2>\r\n\r\n<h3><strong>Dọn dẹp cải thiện m&ocirc;i trường sống xung quanh</strong></h3>\r\n\r\n<p>Bắt đầu từ những việc l&agrave;m nhỏ nhất, mỗi một c&aacute; nh&acirc;n h&atilde;y tự <strong>cải thiện m&ocirc;i trường sống</strong> xung quanh m&igrave;nh thật sạch sẽ. Dọn sạch r&aacute;c thải, trồng thật nhiều c&acirc;y xanh, t&iacute;ch cực x&acirc;y dựng lối sống xanh.</p>\r\n\r\n<h3><strong>Sử dụng c&aacute;c m&aacute;y lọc kh&ocirc;ng kh&iacute; trong nh&agrave;, nơi l&agrave;m việc</strong></h3>\r\n\r\n<p>Một m&ocirc;i trường sống v&agrave; l&agrave;m việc sạch tho&aacute;ng sẽ bảo vệ sức khỏe của c&aacute;c bạn lu&ocirc;n an to&agrave;n, chất lượng cuộc sống nhờ đ&oacute; cũng được n&acirc;ng cao.&nbsp;Sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute;&nbsp;tại nơi ở v&agrave; chỗ l&agrave;m sẽ tạo cho bạn một kh&ocirc;ng gian tho&aacute;ng m&aacute;t, sạch sẽ, an to&agrave;n.</p>\r\n\r\n<h3><strong>Kiểm tra sức khỏe định kỳ</strong></h3>\r\n\r\n<p>H&atilde;y tự bảo vệ sức khỏe của bản th&acirc;n bằng c&aacute;ch x&acirc;y dựng một lối sống xanh, trang bị c&aacute;c thiết bị bảo vệ sức khỏe trước c&aacute;c t&aacute;c nh&acirc;n g&acirc;y bệnh. Hậu quả chủ yếu của &ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; kh&ocirc;n lường v&igrave; vậy h&atilde;y thường xuy&ecirc;n đi kiểm tra sức khỏe định kỳ.</p>\r\n', NULL, 0, 79, '', '2020-02-23 14:02:46', '2020-02-26 22:02:05', 1, '', '', '', '', '', 'Ô nhiễm không khí trong nhà cao gấp 8 lần ô nhiễm không khí ngoài trời', '', 'o-nhiem-khong-khi-trong-nha-cao-gap-8-lan-o-nhiem-khong-khi-ngoai-troi', '', 1, ''),
(113, 'test 004', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(2).jpg\" width=\"600\" /></p>\r\n', '', 0, 85, '', '2020-02-27 20:02:54', NULL, 1, '', '', '', '', '', 'test 004', '', 'test-004', '', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci,
  `newscat_des` text COLLATE utf8_unicode_ci,
  `newscat_content` text COLLATE utf8_unicode_ci,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `newscat_img` text COLLATE utf8_unicode_ci,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `newscat_sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `newscat_sort`) VALUES
(73, 'Bình luận', '', '', 0, 0, '2019-11-17 21:11:42', NULL, 1, '', '', '', '', '', '', 'Bình luận', '', '#binh-luan', '', 1, 0),
(75, 'Hỗ trợ', '', '', 0, 0, '2019-12-19 11:12:10', NULL, 1, NULL, '', '', '', '', '', 'Hỗ trợ', '', '123', '', 1, 0),
(76, 'SLIDE TỔNG QUAN', '', '', 86, 0, '2020-02-26 14:02:39', NULL, 1, NULL, '', '', '', '', '', 'SLIDE TỔNG QUAN', '', '#tinh-nang', '', 1, 0),
(77, 'SLIDE TÍNH NĂNG', '', '', 86, 0, '2020-02-22 09:02:37', NULL, 1, NULL, '', '', '', '', '', 'SLIDE TÍNH NĂNG', '', 'slide-tinh-nang', '', 1, 0),
(78, 'SLIDE THÔNG SỐ KỸ THUẬT', '', '', 86, 0, '2020-02-26 14:02:36', NULL, 1, 'THIETKE (1).jpg', '', '', '', '', '', 'SLIDE THÔNG SỐ KỸ THUẬT', '', 'slide-thong-so-ky-thuat', '', 1, 2),
(79, 'BẠN BIẾT CHƯA', '', '', 0, 0, '2020-02-26 22:02:29', NULL, 1, NULL, '', '', '', '', '', 'BẠN BIẾT CHƯA', '', 'tin-tuc', '', NULL, 0),
(80, 'Đánh giá trái', '', '', 0, 0, '2019-12-20 08:12:36', NULL, 1, '', '', '', '', '', '', 'Đánh giá trái', '', 'danh-gia-trai', '', 1, 0),
(81, 'Đánh giá phải', '', '', 0, 0, '2019-12-20 09:12:59', NULL, 1, '', '', '', '', '', '', 'Đánh giá phải', '', 'danh-gia-phai', '', 1, 0),
(83, 'Tư Vấn Riêng', '', '', 0, 0, '2020-01-16 23:01:50', NULL, 1, '', '', '', '', '', '', 'Tư Vấn Riêng', '', 'tu-van-rieng', '', 1, 0),
(84, 'Tin tức 1', '', '', 0, 0, '2020-01-17 09:01:16', NULL, 1, '', '', '', '', '', '', 'Tin tức 1', '', 'tin-tuc-1', '', 1, 0),
(85, 'SLIDE 1 1 1', '', '', 86, 0, '2020-02-27 20:02:23', NULL, 1, NULL, '', '', '', '', '', 'SLIDE 1 1 1', '', 'slide-1-1-1', '', 1, 0),
(86, 'slide', '', '', 0, 0, '2020-02-26 14:02:16', NULL, 1, NULL, '', '', '', '', '', 'slide', '', 'slide', '', 1, 1),
(87, 'Slide 222', '', '', 0, 0, '2020-02-15 15:02:58', NULL, 1, '', '', '', '', '', '', 'Slide 222', '', 'slide-222', '', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci,
  `lang_newscat_des` text COLLATE utf8_unicode_ci,
  `lang_newscat_content` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(141, 73, 'vn', 'Bình luận', '', '', '', '', '', '', '', 0, '#binh-luan', '', 'Bình luận', ''),
(142, 73, 'en', 'english version Bình luận', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-#binh-luan', '', 'Bình luận', ''),
(145, 75, 'vn', 'Hỗ trợ', '', NULL, '', '', '', '', '', 0, '123', '', 'Hỗ trợ', ''),
(146, 75, 'en', 'english version Hỗ trợ', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-#ho-tro', '', 'Hỗ trợ', ''),
(147, 76, 'vn', 'SLIDE TỔNG QUAN', '', NULL, '', '', '', '', '', 0, '#tinh-nang', '', 'SLIDE TỔNG QUAN', ''),
(148, 76, 'en', 'english version Slide Tính Năng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-#tinh-nang', '', 'Slide Tính Năng', ''),
(149, 77, 'vn', 'SLIDE TÍNH NĂNG', '', NULL, '', '', '', '', '', 0, 'slide-tinh-nang', '', 'SLIDE TÍNH NĂNG', ''),
(150, 77, 'en', 'english version Slide 2', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-slide-2', '', 'Slide 2', ''),
(151, 78, 'vn', 'SLIDE THÔNG SỐ KỸ THUẬT', '', NULL, '', '', '', '', '', 0, 'slide-thong-so-ky-thuat', '', 'SLIDE THÔNG SỐ KỸ THUẬT', ''),
(152, 78, 'en', 'english version Slide 3', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-slide-3', '', 'Slide 3', ''),
(153, 79, 'vn', 'BẠN BIẾT CHƯA', '', NULL, '', '', '', '', '', 0, 'tin-tuc', '', 'BẠN BIẾT CHƯA', ''),
(154, 79, 'en', 'english version Mua ở đâu', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-#mua-o-dau-1', '', 'Mua ở đâu', ''),
(155, 80, 'vn', 'Đánh giá trái', '', '', '', '', '', '', '', 0, 'danh-gia-trai', '', 'Đánh giá trái', ''),
(156, 80, 'en', 'english version Đánh giá trái', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-danh-gia-trai', '', 'Đánh giá trái', ''),
(157, 81, 'vn', 'Đánh giá phải', '', '', '', '', '', '', '', 0, 'danh-gia-phai', '', 'Đánh giá phải', ''),
(158, 81, 'en', 'english version Đánh giá phải', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-danh-gia-phai', '', 'Đánh giá phải', ''),
(161, 83, 'vn', 'Tư Vấn Riêng', '', '', '', '', '', '', '', 0, 'tu-van-rieng', '', 'Tư Vấn Riêng', ''),
(162, 83, 'en', 'english version Tư Vấn Riêng', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tu-van-rieng', '', 'Tư Vấn Riêng', ''),
(163, 84, 'vn', 'Tin tức 1', '', '', '', '', '', '', '', 0, 'tin-tuc-1', '', 'Tin tức 1', ''),
(164, 84, 'en', 'english version Tin tức 1', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc-1', '', 'Tin tức 1', ''),
(165, 85, 'vn', 'SLIDE 1 1 1', '', NULL, '', '', '', '', '', 0, 'slide-1-1-1', '', 'SLIDE 1 1 1', ''),
(166, 85, 'en', 'english version SLIDE 1 1 1', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-slide-1-1-1', '', 'SLIDE 1 1 1', ''),
(167, 86, 'vn', 'slide', '', NULL, '', '', '', '', '', 0, 'slide', '', 'slide', ''),
(168, 86, 'en', 'english version slide', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-slide', '', 'slide', ''),
(169, 87, 'vn', 'Slide 222', '', '', '', '', '', '', '', 0, 'slide-222', '', 'Slide 222', ''),
(170, 87, 'en', 'english version Slide 222', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-slide-222', '', 'Slide 222', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag`
--

CREATE TABLE `newstag` (
  `newstag_id` int(11) NOT NULL,
  `newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sort_order` int(11) NOT NULL,
  `newstag_created_date` datetime NOT NULL,
  `newstag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `newstag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newstag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag`
--

INSERT INTO `newstag` (`newstag_id`, `newstag_name`, `newstag_des`, `newstag_content`, `newstag_sort_order`, `newstag_created_date`, `newstag_update_date`, `state`, `newstag_img`, `newstag_sub_info1`, `newstag_sub_info2`, `newstag_sub_info3`, `newstag_sub_info4`, `newstag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(2, 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'sách hot', 'chuyên sách', 'sach-hot', 'sach', 1),
(3, 'Vở đẹp', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', '', '', '', '', '', 'Vở đẹp', '', 'vo-dep', '', 1),
(4, 'Butb', '<p>bb</p>\r\n', '', 0, '2017-12-13 11:12:54', '2017-12-13 11:12:11', 1, '', '', '', '', '', '', 'Butb', 'bb', 'butb', 'bb', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstag_languages`
--

CREATE TABLE `newstag_languages` (
  `id` int(11) NOT NULL,
  `newstag_id` int(11) NOT NULL,
  `languages_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_content` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lang_newstag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_newstag_sub_info5` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `newstag_languages`
--

INSERT INTO `newstag_languages` (`id`, `newstag_id`, `languages_code`, `lang_newstag_name`, `lang_newstag_des`, `lang_newstag_content`, `lang_newstag_sub_info1`, `lang_newstag_sub_info2`, `lang_newstag_sub_info3`, `lang_newstag_sub_info4`, `lang_newstag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(3, 2, 'vn', 'sách hot', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach-hot', 'sach', 'sách hot', 'chuyên sách'),
(4, 2, 'en', 'sách en', '<p>M&ocirc; tả s&aacute;ch</p>\r\n', '', '', '', '', '', '', 1, 'sach', 'sach', 'sách', 'chuyên sách'),
(5, 3, 'vn', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(6, 3, 'en', 'Vở đẹp', '', '', '', '', '', '', '', 1, 'vo-dep', '', 'Vở đẹp', ''),
(7, 4, 'vn', 'But', '<p>but</p>\r\n', '', '', '', '', '', '', 1, 'butb', 'bb', 'Butb', 'bb'),
(8, 4, 'en', 'pen', '<p>pen</p>\r\n', '', '', '', '', '', '', 1, 'but', 'b', 'But', 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci,
  `lang_news_des` text COLLATE utf8_unicode_ci,
  `lang_news_content` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(125, 63, 'vn', 'Tìm kiếm cửa hàng gần nhất', 'Trải nghiệm sản phẩm Panasonic theo cách riêng của bạn! Tìm kiếm cửa hàng gần nhất ngay tại đây.', '<p>Trải nghiệm sản phẩm Panasonic theo c&aacute;ch ri&ecirc;ng của bạn! T&igrave;m kiếm cửa h&agrave;ng gần nhất ngay tại đ&acirc;y.</p>\r\n', '', '', '', '', '', 0, 'tim-kiem-cua-hang-gan-nhat', 'Tìm kiếm cửa hàng gần nhất', '', ''),
(126, 63, 'en', 'english version Tìm kiếm cửa hàng gần nhất', 'english version Trải nghiệm sản phẩm Panasonic theo cách riêng của bạn! Tìm kiếm cửa hàng gần nhất ngay tại đây.', 'english version <p>Trải nghiệm sản phẩm Panasonic theo c&aacute;ch ri&ecirc;ng của bạn! T&igrave;m kiếm cửa h&agrave;ng gần nhất ngay tại đ&acirc;y.</p>\r\n', '', '', '', '', '', 0, 'en-tim-kiem-cua-hang-gan-nhat', 'Tìm kiếm cửa hàng gần nhất', '', ''),
(127, 64, 'vn', 'Mua online ngay!', 'Khám phá gian hàng online tiện lợi của chúng tôi và nhanh tay mua sắm ngay những sản phẩm mới nhất từ Panasonic. Giao hàng tận nơi!', '<p>Kh&aacute;m ph&aacute; gian h&agrave;ng online tiện lợi của ch&uacute;ng t&ocirc;i v&agrave; nhanh tay mua sắm ngay những sản phẩm mới nhất từ Panasonic. Giao h&agrave;ng tận nơi!</p>\r\n', '', '', '', '', '', 0, 'mua-online-ngay', 'Mua online ngay!', '', ''),
(128, 64, 'en', 'english version Mua online ngay!', 'english version Khám phá gian hàng online tiện lợi của chúng tôi và nhanh tay mua sắm ngay những sản phẩm mới nhất từ Panasonic. Giao hàng tận nơi!', 'english version <p>Kh&aacute;m ph&aacute; gian h&agrave;ng online tiện lợi của ch&uacute;ng t&ocirc;i v&agrave; nhanh tay mua sắm ngay những sản phẩm mới nhất từ Panasonic. Giao h&agrave;ng tận nơi!</p>\r\n', '', '', '', '', '', 0, 'en-mua-online-ngay', 'Mua online ngay!', '', ''),
(129, 65, 'vn', 'Danh mục sản phẩm', 'Yêu thích những thiết bị gia đình được tích công nghệ mới nhất và phong cách thiết kế đẳng cấp? Đừng ngại dạo qua danh mục sản phẩm của chúng tôi gồm Máy điều hòa, Tủ lạnh, Máy giặt, Sản phẩm chăm sóc sắc đẹp và nhiều lựa chọn hơn nữa.', '<p>Y&ecirc;u th&iacute;ch những thiết bị gia đ&igrave;nh được t&iacute;ch c&ocirc;ng nghệ mới nhất v&agrave; phong c&aacute;ch thiết kế đẳng cấp? Đừng ngại dạo qua danh mục sản phẩm của ch&uacute;ng t&ocirc;i gồm M&aacute;y điều h&ograve;a, Tủ lạnh, M&aacute;y giặt, Sản phẩm chăm s&oacute;c sắc đẹp v&agrave; nhiều lựa chọn hơn nữa.</p>\r\n', '', '', '', '', '', 0, 'danh-muc-san-pham', 'Danh mục sản phẩm', '', ''),
(130, 65, 'en', 'english version Danh mục sản phẩm', 'english version Yêu thích những thiết bị gia đình được tích công nghệ mới nhất và phong cách thiết kế đẳng cấp? Đừng ngại dạo qua danh mục sản phẩm của chúng tôi gồm Máy điều hòa, Tủ lạnh, Máy giặt, Sản phẩm chăm sóc sắc đẹp và nhiều lựa chọn hơn nữa.', 'english version <p>Y&ecirc;u th&iacute;ch những thiết bị gia đ&igrave;nh được t&iacute;ch c&ocirc;ng nghệ mới nhất v&agrave; phong c&aacute;ch thiết kế đẳng cấp? Đừng ngại dạo qua danh mục sản phẩm của ch&uacute;ng t&ocirc;i gồm M&aacute;y điều h&ograve;a, Tủ lạnh, M&aacute;y giặt, Sản phẩm chăm s&oacute;c sắc đẹp v&agrave; nhiều lựa chọn hơn nữa.</p>\r\n', '', '', '', '', '', 0, 'en-danh-muc-san-pham', 'Danh mục sản phẩm', '', ''),
(141, 71, 'vn', 'Tổng Quan - Slide 1', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-1.jpg\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tong-quan-slide-1', 'Tổng Quan - Slide 1', '', ''),
(142, 71, 'en', 'english version Tổng Quan - Slide 1', 'english version ', 'english version <p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-1.jpg\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-tong-quan-slide-1', 'Tổng Quan - Slide 1', '', ''),
(143, 72, 'vn', 'Tổng Quan - Slide 2', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-2.png\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'tong-quan-slide-2', 'Tổng Quan - Slide 2', '', ''),
(144, 72, 'en', 'english version Tổng Quan - Slide 2', 'english version ', 'english version <p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-2.jpg\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-tong-quan-slide-2', 'Tổng Quan - Slide 2', '', ''),
(149, 75, 'vn', 'Kỹ Thuật - Slide 1', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/THIETKE%20(3).jpg\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'ky-thuat-slide-1', 'Kỹ Thuật - Slide 1', '', ''),
(150, 75, 'en', 'english version Kỹ Thuật - Slide 1', 'english version ', 'english version <p style=\"text-align:center\"><img alt=\"\" height=\"725\" src=\"/image/images/THIETKE%20(3).jpg\" width=\"1138\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-ky-thuat-slide-1', 'Kỹ Thuật - Slide 1', '', ''),
(153, 77, 'vn', 'Silde đánh giá_trái', '', '<p><img alt=\"Image\" src=\"http://cf.cafelinkcustomer.info/images/phan-mem-khao-sat-khach-hang.png\" /></p>\r\n', '', '', '', '', '', 0, 'silde-danh-giatrai', 'Silde đánh giá_trái', '', ''),
(154, 77, 'en', 'english version Silde đánh giá', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-silde-danh-gia', 'Silde đánh giá', '', ''),
(155, 78, 'vn', 'Slide đánh giá phải', '', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/1IPzX3c2kv4\" width=\"560\"></iframe></p>\r\n', '', '', '', '', '', 0, 'slide-danh-gia-phai', 'Slide đánh giá phải', '', ''),
(156, 78, 'en', 'english version Slide đánh giá phải', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-slide-danh-gia-phai', 'Slide đánh giá phải', '', ''),
(161, 81, 'vn', 'Tính năng - slide 1', '', '<p><img alt=\"\" height=\"824\" src=\"/image/images/THIETKE%20(1).jpg\" width=\"1136\" /></p>\r\n', '', '', '', '', '', 0, 'tinh-nang-slide-1', 'Tính năng - slide 1', '', ''),
(162, 81, 'en', 'english version Tính năng - slide 1', 'english version ', 'english version <p><img alt=\"\" height=\"824\" src=\"/image/images/THIETKE%20(1).jpg\" width=\"1136\" /></p>\r\n', '', '', '', '', '', 0, 'en-tinh-nang-slide-1', 'Tính năng - slide 1', '', ''),
(163, 82, 'vn', 'Test slide 1', '', '<p><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-1.jpg\" width=\"1138\" /></p>\r\n', '', '', '', '', '', 0, 'test-slide-1', 'Test slide 1', '', ''),
(164, 82, 'en', 'english version Test slide 1', 'english version ', 'english version <p><img alt=\"\" height=\"725\" src=\"/image/images/Slide-tong-quan-1.jpg\" width=\"1138\" /></p>\r\n', '', '', '', '', '', 0, 'en-test-slide-1', 'Test slide 1', '', ''),
(169, 85, 'vn', '123', '', '<p><iframe frameborder=\"0\" src=\"https://www.youtube.com/embed/Sy7d2FXwf3o\" ></iframe></p>\r\n', '', '', '', '', '', 0, '123', '123', '', ''),
(170, 85, 'en', 'english version 123', 'english version ', 'english version <p><iframe frameborder=\"0\" height=\"315\" scrolling=\"no\" src=\"https://www.youtube.com/watch?v=BVJ3dziaOzg\" width=\"560\"></iframe></p>\r\n', '', '', '', '', '', 0, 'en-123', '123', '', ''),
(171, 86, 'vn', '456', '', '<p><img alt=\"\" src=\"/image/images/THIETKE%20(1).jpg\" /></p>\r\n', '', '', '', '', '', 0, '456', '456', '', ''),
(172, 86, 'en', 'english version 456', 'english version ', 'english version <p><img alt=\"\" src=\"/image/images/THIETKE%20(1).jpg\" /></p>\r\n', '', '', '', '', '', 0, 'en-456', '456', '', ''),
(173, 87, 'vn', '789', '', '<p><img alt=\"\" src=\"/image/images/LOILOC%20MA025.jpg\" /></p>\r\n', '', '', '', '', '', 0, '789', '789', '', ''),
(174, 87, 'en', 'english version 789', 'english version ', 'english version <p><img alt=\"\" src=\"/image/images/LOILOC%20MA025.jpg\" /></p>\r\n', '', '', '', '', '', 0, 'en-789', '789', '', ''),
(185, 93, 'vn', 'Test 001', '', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/6R74Micwog8\" width=\"560\"></iframe></p>\r\n', '', '', '', '', '', 0, 'test-001', 'Test 001', '', ''),
(186, 93, 'en', 'english version Test 001', 'english version ', 'english version <p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/6R74Micwog8\" width=\"560\"></iframe></p>\r\n', '', '', '', '', '', 0, 'en-test-001', 'Test 001', '', ''),
(187, 94, 'vn', 'test 002', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(3).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'test-002', 'test 002', '', ''),
(188, 94, 'en', 'english version test 002', 'english version ', 'english version <p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(3).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'en-test-002', 'test 002', '', ''),
(189, 95, 'vn', 'Test 003', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(2).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'test-003', 'Test 003', '', ''),
(190, 95, 'en', 'english version Test 003', 'english version ', 'english version <p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(2).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'en-test-003', 'Test 003', '', ''),
(191, 96, 'vn', '1234', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(1).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, '1234', '1234', '', ''),
(192, 96, 'en', 'english version 1234', 'english version ', 'english version <p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(1).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'en-1234', '1234', '', ''),
(193, 97, 'vn', 'Bụi đậu nành là gì? Tác hại đối với con người như thế nào?', '', '<p>Bụi đậu n&agrave;nh thường xuất hiện trong việc th&aacute;o dỡ hạt đậu n&agrave;nh với số lượng lớn v&agrave; c&oacute; khả năng g&acirc;y ra c&aacute;c bệnh về h&ocirc; hấp v&agrave; một số bệnh kh&aacute;c ở người. Đặc biệt l&agrave; những người mắc c&aacute;c bệnh về đường h&ocirc; hấp, người gi&agrave;, trẻ nhỏ v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p>[caption id=&quot;attachment_927&quot; align=&quot;aligncenter&quot; width=&quot;646&quot;]<img alt=\"Bụi Đậu Nành xuất hiện trong việc tháo dỡ số lượng lớn\" height=\"432\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Bụi-Đậu-Nành-xuất-hiện-trong-việc-tháo-dỡ-số-lượng-lớn.jpg\" width=\"646\" /> Bụi Đậu N&agrave;nh xuất hiện trong việc th&aacute;o dỡ số lượng lớn[/caption]</p>\r\n\r\n<p>Theo một nghi&ecirc;n cứu thuộc Trung t&acirc;m Th&ocirc;ng tin C&ocirc;ng nghệ sinh học Quốc gia Hoa Kỳ, chất g&acirc;y dị ứng ch&iacute;nh được t&igrave;m thấy trong tất cả c&aacute;c bộ phận của c&acirc;y, nhưng tập trung nhiều ở vỏ.</p>\r\n\r\n<p>Đậu n&agrave;nh cũng l&agrave; một chất g&acirc;y dị ứng thực phẩm v&igrave; n&oacute; c&oacute; thể g&acirc;y dị ứng Loại 1 bằng c&aacute;ch uống đơn giản, nhưng n&oacute; cũng l&agrave; một chất g&acirc;y dị ứng do bụi. Aeroallergen l&agrave; một chất trong kh&ocirc;ng kh&iacute; như h&oacute;a chất, hạt, phấn hoa, b&agrave;o tử c&oacute; thể g&acirc;y ra dị ứng. C&aacute;c triệu chứng phổ biến của dị ứng bao gồm nổi mề đay, c&aacute;c vấn đề về h&ocirc; hấp v&agrave; trong trường hợp xấu nhất c&oacute; thể dẫn đến sốc phản vệ v&agrave; dẫn đến tử vong.</p>\r\n\r\n<p>Sốc phản vệ l&agrave; dạng phản ứng dị ứng cực đoan nhất, cho thấy c&aacute;c triệu chứng như kh&ocirc; họng, sưng, kh&oacute; thở, huyết &aacute;p thấp v&agrave; ch&oacute;ng mặt,&hellip; C&aacute;c phản ứng tr&ecirc;n c&oacute; thể k&eacute;o d&agrave;i từ v&agrave;i ph&uacute;t đến v&agrave;i giờ v&agrave; g&acirc;y tử vong.</p>\r\n\r\n<p>Hệ thống miễn dịch giải ph&oacute;ng histamine khi tiếp x&uacute;c với chất g&acirc;y dị ứng v&agrave; c&aacute;c phản ứng dị ứng ch&iacute;nh bao gồm chảy nước mũi, k&iacute;ch th&iacute;ch họng, mắt, buồn n&ocirc;n, đau bụng v&agrave; kh&oacute; thở.</p>\r\n\r\n<p>C&aacute;c triệu chứng đ&oacute; c&oacute; thể trở n&ecirc;n trầm trọng hơn nếu người mắc phải thuộc nh&oacute;m người nhạy cảm, c&oacute; tiền sử mắc c&aacute;c bệnh về đường h&ocirc; hấp như: hen suyễn, vi&ecirc;m mũi dị ứng,...</p>\r\n\r\n<p>[caption id=&quot;attachment_928&quot; align=&quot;aligncenter&quot; width=&quot;513&quot;]<img alt=\"Chất gây dị ứng được tìm thấy trên toàn bộ thân cây, đặc biệt là ở vỏ\" height=\"341\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Chất-gây-dị-ứng-được-tìm-thấy-trên-toàn-bộ-thân-cây-đặc-biệt-là-ở-vỏ.jpg\" width=\"513\" /> Chất g&acirc;y dị ứng được t&igrave;m thấy tr&ecirc;n to&agrave;n bộ th&acirc;n c&acirc;y, đặc biệt l&agrave; ở vỏ[/caption]</p>\r\n\r\n<p>Một c&aacute;ch phổ biến để xem đ&oacute; c&oacute; phải l&agrave; phản ứng dị ứng do bụi đậu n&agrave;nh hay kh&ocirc;ng? Đ&oacute; l&agrave; thực hiện x&eacute;t nghiệm m&aacute;u. Kết quả x&eacute;t nghiệm c&oacute; thể tiết lộ lượng kh&aacute;ng thể nhất định trong m&aacute;u.</p>\r\n\r\n<p>Thực tế thuốc chống dị ứng c&oacute; thể gi&uacute;p người mắc bệnh ở giai đoạn đầu khi c&oacute; c&aacute;c triệu chứng nhẹ. V&agrave; cần đến gặp b&aacute;c sĩ ngay trong trường hợp người mắc bệnh c&oacute; triệu chứng nặng hơn.</p>\r\n', '', '', '', '', '', 0, 'bui-dau-nanh-la-gi-tac-hai-doi-voi-con-nguoi-nhu-the-nao', 'Bụi đậu nành là gì? Tác hại đối với con người như thế nào?', '', ''),
(194, 97, 'en', 'english version Bụi đậu nành là gì? Tác hại đối với con người như thế nào?', 'english version ', 'english version <p>Bụi đậu n&agrave;nh thường xuất hiện trong việc th&aacute;o dỡ hạt đậu n&agrave;nh với số lượng lớn v&agrave; c&oacute; khả năng g&acirc;y ra c&aacute;c bệnh về h&ocirc; hấp v&agrave; một số bệnh kh&aacute;c ở người. Đặc biệt l&agrave; những người mắc c&aacute;c bệnh về đường h&ocirc; hấp, người gi&agrave;, trẻ nhỏ v&agrave; phụ nữ mang thai.</p>\r\n\r\n<p>[caption id=&quot;attachment_927&quot; align=&quot;aligncenter&quot; width=&quot;646&quot;]<img alt=\"Bụi Đậu Nành xuất hiện trong việc tháo dỡ số lượng lớn\" height=\"432\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Bụi-Đậu-Nành-xuất-hiện-trong-việc-tháo-dỡ-số-lượng-lớn.jpg\" width=\"646\" /> Bụi Đậu N&agrave;nh xuất hiện trong việc th&aacute;o dỡ số lượng lớn[/caption]</p>\r\n\r\n<p>Theo một nghi&ecirc;n cứu thuộc Trung t&acirc;m Th&ocirc;ng tin C&ocirc;ng nghệ sinh học Quốc gia Hoa Kỳ, chất g&acirc;y dị ứng ch&iacute;nh được t&igrave;m thấy trong tất cả c&aacute;c bộ phận của c&acirc;y, nhưng tập trung nhiều ở vỏ.</p>\r\n\r\n<p>Đậu n&agrave;nh cũng l&agrave; một chất g&acirc;y dị ứng thực phẩm v&igrave; n&oacute; c&oacute; thể g&acirc;y dị ứng Loại 1 bằng c&aacute;ch uống đơn giản, nhưng n&oacute; cũng l&agrave; một chất g&acirc;y dị ứng do bụi. Aeroallergen l&agrave; một chất trong kh&ocirc;ng kh&iacute; như h&oacute;a chất, hạt, phấn hoa, b&agrave;o tử c&oacute; thể g&acirc;y ra dị ứng. C&aacute;c triệu chứng phổ biến của dị ứng bao gồm nổi mề đay, c&aacute;c vấn đề về h&ocirc; hấp v&agrave; trong trường hợp xấu nhất c&oacute; thể dẫn đến sốc phản vệ v&agrave; dẫn đến tử vong.</p>\r\n\r\n<p>Sốc phản vệ l&agrave; dạng phản ứng dị ứng cực đoan nhất, cho thấy c&aacute;c triệu chứng như kh&ocirc; họng, sưng, kh&oacute; thở, huyết &aacute;p thấp v&agrave; ch&oacute;ng mặt,&hellip; C&aacute;c phản ứng tr&ecirc;n c&oacute; thể k&eacute;o d&agrave;i từ v&agrave;i ph&uacute;t đến v&agrave;i giờ v&agrave; g&acirc;y tử vong.</p>\r\n\r\n<p>Hệ thống miễn dịch giải ph&oacute;ng histamine khi tiếp x&uacute;c với chất g&acirc;y dị ứng v&agrave; c&aacute;c phản ứng dị ứng ch&iacute;nh bao gồm chảy nước mũi, k&iacute;ch th&iacute;ch họng, mắt, buồn n&ocirc;n, đau bụng v&agrave; kh&oacute; thở.</p>\r\n\r\n<p>C&aacute;c triệu chứng đ&oacute; c&oacute; thể trở n&ecirc;n trầm trọng hơn nếu người mắc phải thuộc nh&oacute;m người nhạy cảm, c&oacute; tiền sử mắc c&aacute;c bệnh về đường h&ocirc; hấp như: hen suyễn, vi&ecirc;m mũi dị ứng,...</p>\r\n\r\n<p>[caption id=&quot;attachment_928&quot; align=&quot;aligncenter&quot; width=&quot;513&quot;]<img alt=\"Chất gây dị ứng được tìm thấy trên toàn bộ thân cây, đặc biệt là ở vỏ\" height=\"341\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Chất-gây-dị-ứng-được-tìm-thấy-trên-toàn-bộ-thân-cây-đặc-biệt-là-ở-vỏ.jpg\" width=\"513\" /> Chất g&acirc;y dị ứng được t&igrave;m thấy tr&ecirc;n to&agrave;n bộ th&acirc;n c&acirc;y, đặc biệt l&agrave; ở vỏ[/caption]</p>\r\n\r\n<p>Một c&aacute;ch phổ biến để xem đ&oacute; c&oacute; phải l&agrave; phản ứng dị ứng do bụi đậu n&agrave;nh hay kh&ocirc;ng? Đ&oacute; l&agrave; thực hiện x&eacute;t nghiệm m&aacute;u. Kết quả x&eacute;t nghiệm c&oacute; thể tiết lộ lượng kh&aacute;ng thể nhất định trong m&aacute;u.</p>\r\n\r\n<p>Thực tế thuốc chống dị ứng c&oacute; thể gi&uacute;p người mắc bệnh ở giai đoạn đầu khi c&oacute; c&aacute;c triệu chứng nhẹ. V&agrave; cần đến gặp b&aacute;c sĩ ngay trong trường hợp người mắc bệnh c&oacute; triệu chứng nặng hơn.</p>\r\n', '', '', '', '', '', 0, 'en-bui-dau-nanh-la-gi-tac-hai-doi-voi-con-nguoi-nhu-the-nao', 'Bụi đậu nành là gì? Tác hại đối với con người như thế nào?', '', ''),
(195, 98, 'vn', 'Tê tê, loài vật trung gian lây nhiễm virus corona cho con người?', '', '<p>C&aacute;c nh&agrave; nghi&ecirc;n cứu Trung Quốc l&agrave;m r&otilde; nguồn gốc của virus corona (Covid-19), loại virus đ&atilde; g&acirc;y chết người ở Trung Quốc trong thời gian qua. V&agrave; t&ecirc; t&ecirc; c&oacute; thể l&agrave; lo&agrave;i động vật trung gian l&agrave;m l&acirc;y nhiễm virus giữa dơi v&agrave; người. C&aacute;c nh&agrave; khoa học cho biết việc t&igrave;m kiếm n&agrave;y chưa đi đến được kết quả cuối c&ugrave;ng.</p>\r\n\r\n<p>[caption id=&quot;attachment_922&quot; align=&quot;aligncenter&quot; width=&quot;800&quot;]<img alt=\"Pangolin là sinh vật có vảy thường được sử dụng trong y học cổ truyền Trung Quốc.\" height=\"450\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Pangolin-là-sinh-vật-có-vảy-thường-được-sử-dụng-trong-y-học-cổ-truyền-Trung-Quốc..jpg\" width=\"800\" /> Pangolin l&agrave; sinh vật c&oacute; vảy thường được sử dụng trong y học cổ truyền Trung Quốc.[/caption]</p>\r\n\r\n<p>Trong một nghi&ecirc;n cứu trước đ&oacute; đ&atilde; chỉ ra rắn v&agrave; một số lo&agrave;i động vật hoang d&atilde; ở Vũ H&aacute;n được cho l&agrave; kh&ocirc;ng phải nguồn l&acirc;y nhiễm của dịch bệnh.</p>\r\n\r\n<p>Sự b&ugrave;ng ph&aacute;t SARS năm 2002-2003, li&ecirc;n quan đến một chủng virus corona kh&aacute;c, đ&atilde; được l&acirc;y nhiễm qua lo&agrave;i cầy, một lo&agrave;i th&uacute; nhỏ được ưa chuộng v&agrave; lấy thịt ở Trung Quốc.</p>\r\n\r\n<h2>T&ecirc; t&ecirc; c&oacute; phải l&agrave; loại động vật trung gian?</h2>\r\n\r\n<p>[caption id=&quot;attachment_921&quot; align=&quot;aligncenter&quot; width=&quot;1024&quot;]<img alt=\"Tê tê có thể là động vật trung gian\" height=\"415\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Tê-tê-có-thể-là-động-vật-trung-gian.jpg\" width=\"1024\" /> T&ecirc; t&ecirc; c&oacute; thể l&agrave; động vật trung gian[/caption]</p>\r\n\r\n<p>Nhiều động vật ở Trung Quốc đều c&oacute; khả năng truyền virus cho c&aacute;c lo&agrave;i kh&aacute;c v&agrave; gần như tất cả c&aacute;c chủng virus corona truyền nhiễm cho người c&oacute; nguồn gốc từ động vật hoang d&atilde;.</p>\r\n\r\n<p>Dơi được biết l&agrave; lo&agrave;i vật mang mầm bệnh mới nhất, t&iacute;nh đến ng&agrave;y 12/02/2020 số người nhiễm bệnh đ&atilde; l&ecirc;n đến hơn 45.000 người v&agrave; giết chết hơn 1115 người tr&ecirc;n to&agrave;n thế giới, chủ yếu ở Trung Quốc nơi dịch bệnh bắt nguồn.</p>\r\n\r\n<p>Một kết quả ph&acirc;n t&iacute;ch gần đ&acirc;y cho thấy chủng virus hiện đang l&acirc;y lan ở người giống đến 96% với lo&agrave;i dơi được t&igrave;m thấy.</p>\r\n\r\n<p>Nhưng theo &ocirc;ng Arnaud Fontanet, từ Viện Pasteur của Ph&aacute;p &ldquo;căn bệnh n&agrave;y c&oacute; khả năng kh&ocirc;ng chuyển thẳng từ dơi sang người, ch&uacute;ng t&ocirc;i nghĩ rằng c&oacute; một lo&agrave;i động vật kh&aacute;c l&agrave; trung gian&quot;. Theo &ocirc;ng lo&agrave;i vật trung gian &quot;c&oacute; lẽ l&agrave; động vật c&oacute; v&uacute;&quot;.</p>\r\n\r\n<p>Sau khi thử nghiệm hơn 1.000 mẫu từ động vật hoang d&atilde;, c&aacute;c nh&agrave; khoa học tại Đại học N&ocirc;ng nghiệp Nam Trung Quốc đ&atilde; t&igrave;m thấy bộ gen của virus corona trong t&ecirc; t&ecirc; giống 99% với c&aacute;c bệnh nh&acirc;n mắc bệnh do nhiễm virus.</p>\r\n\r\n<p>Nhưng c&aacute;c chuy&ecirc;n gia kh&aacute;c y&ecirc;u cầu thận trọng.</p>\r\n\r\n<p>&Ocirc;ng James Wood, trưởng khoa th&uacute; y tại Đại học Cambridge n&oacute;i : &quot;Đ&acirc;y kh&ocirc;ng phải l&agrave; bằng chứng khoa học, c&aacute;c cuộc điều tra v&agrave;o c&aacute;c lo&agrave;i động vật l&agrave; v&ocirc; c&ugrave;ng quan trọng, nhưng kết quả phải được c&ocirc;ng bố để xem x&eacute;t quốc tế.&quot;</p>\r\n\r\n<p>&quot;Đơn giản chỉ cần b&aacute;o c&aacute;o ph&aacute;t hiện RNA virus với độ tương tự chuỗi 99% l&agrave; kh&ocirc;ng đủ&quot;, &ocirc;ng n&oacute;i th&ecirc;m.</p>\r\n\r\n<h2>Sự t&igrave;m kiếm v&ocirc; vọng?</h2>\r\n\r\n<p>Để x&aacute;c định cụ thể thủ phạm, c&aacute;c nh&agrave; nghi&ecirc;n cứu sẽ cần kiểm tra từng lo&agrave;i được b&aacute;n tr&ecirc;n thị trường. Đ&acirc;y gần như l&agrave; một điều gần như kh&ocirc;ng thể do hiện tại khu chợ nơi ph&aacute;t sinh dịch bệnh đ&atilde; đ&oacute;ng cửa vĩnh viễn.</p>\r\n\r\n<p>B&agrave; Martine Peeters, một nh&agrave; virus học tại Viện Nghi&ecirc;n cứu v&agrave; Ph&aacute;t triển (IRD) của Ph&aacute;p, đ&atilde; l&agrave;m việc trong nh&oacute;m x&aacute;c định động vật chủ của virus Ebola n&oacute;i: &ldquo;Họ ph&aacute;t hiện ra rằng lo&agrave;i dơi virus cho con người&rdquo; v&agrave; b&agrave; tin rằng đ&oacute; c&oacute; thể l&agrave; trường hợp xảy ra trong thời điểm n&agrave;y.</p>\r\n\r\n<p>Trong nghi&ecirc;n cứu về Ebola của b&agrave;, &quot;ch&uacute;ng t&ocirc;i đ&atilde; thu thập h&agrave;ng ng&agrave;n con dơi rơi từ một số địa điểm ở Ch&acirc;u Phi&quot;, Peeters n&oacute;i.</p>\r\n\r\n<p>&Ocirc;ng Fontanet n&oacute;i rằng c&aacute;c nh&agrave; nghi&ecirc;n cứu Trung Quốc cũng đang l&agrave;m như vậy.</p>\r\n\r\n<p>&quot;Họ n&oacute;i rằng họ đ&atilde; ph&acirc;n t&iacute;ch c&aacute;c mẫu từ một chiếc xe tải r&aacute;c&quot;, &ocirc;ng n&oacute;i.&nbsp;&quot;Họ kh&ocirc;ng n&oacute;i điều đ&oacute;, nhưng t&ocirc;i nghĩ c&oacute; khả năng đ&oacute; l&agrave; ph&acirc;n dơi v&agrave; ch&uacute;ng chỉ nằm xung quanh chiếc xe&quot;</p>\r\n\r\n<h2>Tại sao n&oacute; quan trọng?</h2>\r\n\r\n<p>Mặc d&ugrave; c&oacute; thể l&agrave; qu&aacute; muộn cho đợt b&ugrave;ng ph&aacute;t n&agrave;y, nhưng với việc x&aacute;c định động vật mang mầm bệnh cho virus corona. Đ&acirc;y sẽ l&agrave; điều sống c&ograve;n trong việc ngăn chặn c&aacute;c đợt b&ugrave;ng ph&aacute;t trong tương lai.</p>\r\n\r\n<p>V&iacute; dụ, Trung Quốc đặt ra ngo&agrave;i v&ograve;ng ph&aacute;p luật việc b&aacute;n cầy hương để lấy thực phẩm sau đại dịch SARS.</p>\r\n\r\n<p>&Ocirc;ng Eric Leroy, một nh&agrave; virus học v&agrave; b&aacute;c sĩ th&uacute; y tại IRD cho biết &ldquo;việc t&igrave;m kiếm cũng c&oacute; thể mang lại kết quả nhanh ch&oacute;ng như trong trường hợp SARS.&nbsp;Việc t&igrave;m kiếm như thế n&agrave;y c&oacute; thể mất nhiều năm.&rdquo;</p>\r\n\r\n<p>&quot;Với Ebola, nghi&ecirc;n cứu bắt đầu v&agrave;o năm 1976 v&agrave; kết quả đầu ti&ecirc;n được c&ocirc;ng bố v&agrave;o năm 2005&quot; &ocirc;ng n&oacute;i.</p>\r\n\r\n<h2>Ngăn chặn dịch bệnh trong tương lai?</h2>\r\n\r\n<p>Đối với &ocirc;ng Fontanet, virus corona chỉ l&agrave; v&iacute; dụ mới nhất về hậu quả của việc con người ti&ecirc;u thụ động vật hoang d&atilde; mang virus.</p>\r\n\r\n<p>&Ocirc;ng n&oacute;i rằng Trung Quốc cần phải &quot;thực hiện c&aacute;c biện ph&aacute;p triệt để chống lại việc bu&ocirc;n b&aacute;n động vật hoang d&atilde;&quot;.</p>\r\n\r\n<p>Hiện tại, th&agrave;nh phố Bắc Kinh đ&atilde; cấm h&agrave;nh vi n&agrave;y, nhưng chỉ thực hiện khi dịch bệnh đ&atilde; vượt khỏi tầm kiểm so&aacute;t.</p>\r\n\r\n<p>Kristian Andersen, một nh&agrave; miễn dịch học v&agrave; nh&agrave; sinh học t&iacute;nh to&aacute;n tại Scripps Research ở La Jolla, California n&oacute;i &ldquo;T&ocirc;i c&oacute; thể tin chắc rằng điều đ&oacute; c&oacute; thể l&agrave; sự thật&rdquo;.&nbsp;&Ocirc;ng đ&atilde; so s&aacute;nh c&aacute;c chuỗi virus t&ecirc; t&ecirc; c&oacute; sẵn v&agrave; thấy rằng ch&uacute;ng tương tự như của Covid-19.&nbsp;&Ocirc;ng n&oacute;i: &ldquo;T&ocirc;i rất mong chờ b&aacute;o c&aacute;o v&agrave; dữ liệu được c&ocirc;ng bố. Đ&acirc;y c&oacute; thể ch&igrave;a kh&oacute;a để ngăn chặn dịch bệnh trong tương lai&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'te-te-loai-vat-trung-gian-lay-nhiem-virus-corona-cho-con-nguoi', 'Tê tê, loài vật trung gian lây nhiễm virus corona cho con người?', '', ''),
(196, 98, 'en', 'english version Tê tê, loài vật trung gian lây nhiễm virus corona cho con người?', 'english version ', 'english version <p>C&aacute;c nh&agrave; nghi&ecirc;n cứu Trung Quốc l&agrave;m r&otilde; nguồn gốc của virus corona (Covid-19), loại virus đ&atilde; g&acirc;y chết người ở Trung Quốc trong thời gian qua. V&agrave; t&ecirc; t&ecirc; c&oacute; thể l&agrave; lo&agrave;i động vật trung gian l&agrave;m l&acirc;y nhiễm virus giữa dơi v&agrave; người. C&aacute;c nh&agrave; khoa học cho biết việc t&igrave;m kiếm n&agrave;y chưa đi đến được kết quả cuối c&ugrave;ng.</p>\r\n\r\n<p>[caption id=&quot;attachment_922&quot; align=&quot;aligncenter&quot; width=&quot;800&quot;]<img alt=\"Pangolin là sinh vật có vảy thường được sử dụng trong y học cổ truyền Trung Quốc.\" height=\"450\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Pangolin-là-sinh-vật-có-vảy-thường-được-sử-dụng-trong-y-học-cổ-truyền-Trung-Quốc..jpg\" width=\"800\" /> Pangolin l&agrave; sinh vật c&oacute; vảy thường được sử dụng trong y học cổ truyền Trung Quốc.[/caption]</p>\r\n\r\n<p>Trong một nghi&ecirc;n cứu trước đ&oacute; đ&atilde; chỉ ra rắn v&agrave; một số lo&agrave;i động vật hoang d&atilde; ở Vũ H&aacute;n được cho l&agrave; kh&ocirc;ng phải nguồn l&acirc;y nhiễm của dịch bệnh.</p>\r\n\r\n<p>Sự b&ugrave;ng ph&aacute;t SARS năm 2002-2003, li&ecirc;n quan đến một chủng virus corona kh&aacute;c, đ&atilde; được l&acirc;y nhiễm qua lo&agrave;i cầy, một lo&agrave;i th&uacute; nhỏ được ưa chuộng v&agrave; lấy thịt ở Trung Quốc.</p>\r\n\r\n<h2>T&ecirc; t&ecirc; c&oacute; phải l&agrave; loại động vật trung gian?</h2>\r\n\r\n<p>[caption id=&quot;attachment_921&quot; align=&quot;aligncenter&quot; width=&quot;1024&quot;]<img alt=\"Tê tê có thể là động vật trung gian\" height=\"415\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Tê-tê-có-thể-là-động-vật-trung-gian.jpg\" width=\"1024\" /> T&ecirc; t&ecirc; c&oacute; thể l&agrave; động vật trung gian[/caption]</p>\r\n\r\n<p>Nhiều động vật ở Trung Quốc đều c&oacute; khả năng truyền virus cho c&aacute;c lo&agrave;i kh&aacute;c v&agrave; gần như tất cả c&aacute;c chủng virus corona truyền nhiễm cho người c&oacute; nguồn gốc từ động vật hoang d&atilde;.</p>\r\n\r\n<p>Dơi được biết l&agrave; lo&agrave;i vật mang mầm bệnh mới nhất, t&iacute;nh đến ng&agrave;y 12/02/2020 số người nhiễm bệnh đ&atilde; l&ecirc;n đến hơn 45.000 người v&agrave; giết chết hơn 1115 người tr&ecirc;n to&agrave;n thế giới, chủ yếu ở Trung Quốc nơi dịch bệnh bắt nguồn.</p>\r\n\r\n<p>Một kết quả ph&acirc;n t&iacute;ch gần đ&acirc;y cho thấy chủng virus hiện đang l&acirc;y lan ở người giống đến 96% với lo&agrave;i dơi được t&igrave;m thấy.</p>\r\n\r\n<p>Nhưng theo &ocirc;ng Arnaud Fontanet, từ Viện Pasteur của Ph&aacute;p &ldquo;căn bệnh n&agrave;y c&oacute; khả năng kh&ocirc;ng chuyển thẳng từ dơi sang người, ch&uacute;ng t&ocirc;i nghĩ rằng c&oacute; một lo&agrave;i động vật kh&aacute;c l&agrave; trung gian&quot;. Theo &ocirc;ng lo&agrave;i vật trung gian &quot;c&oacute; lẽ l&agrave; động vật c&oacute; v&uacute;&quot;.</p>\r\n\r\n<p>Sau khi thử nghiệm hơn 1.000 mẫu từ động vật hoang d&atilde;, c&aacute;c nh&agrave; khoa học tại Đại học N&ocirc;ng nghiệp Nam Trung Quốc đ&atilde; t&igrave;m thấy bộ gen của virus corona trong t&ecirc; t&ecirc; giống 99% với c&aacute;c bệnh nh&acirc;n mắc bệnh do nhiễm virus.</p>\r\n\r\n<p>Nhưng c&aacute;c chuy&ecirc;n gia kh&aacute;c y&ecirc;u cầu thận trọng.</p>\r\n\r\n<p>&Ocirc;ng James Wood, trưởng khoa th&uacute; y tại Đại học Cambridge n&oacute;i : &quot;Đ&acirc;y kh&ocirc;ng phải l&agrave; bằng chứng khoa học, c&aacute;c cuộc điều tra v&agrave;o c&aacute;c lo&agrave;i động vật l&agrave; v&ocirc; c&ugrave;ng quan trọng, nhưng kết quả phải được c&ocirc;ng bố để xem x&eacute;t quốc tế.&quot;</p>\r\n\r\n<p>&quot;Đơn giản chỉ cần b&aacute;o c&aacute;o ph&aacute;t hiện RNA virus với độ tương tự chuỗi 99% l&agrave; kh&ocirc;ng đủ&quot;, &ocirc;ng n&oacute;i th&ecirc;m.</p>\r\n\r\n<h2>Sự t&igrave;m kiếm v&ocirc; vọng?</h2>\r\n\r\n<p>Để x&aacute;c định cụ thể thủ phạm, c&aacute;c nh&agrave; nghi&ecirc;n cứu sẽ cần kiểm tra từng lo&agrave;i được b&aacute;n tr&ecirc;n thị trường. Đ&acirc;y gần như l&agrave; một điều gần như kh&ocirc;ng thể do hiện tại khu chợ nơi ph&aacute;t sinh dịch bệnh đ&atilde; đ&oacute;ng cửa vĩnh viễn.</p>\r\n\r\n<p>B&agrave; Martine Peeters, một nh&agrave; virus học tại Viện Nghi&ecirc;n cứu v&agrave; Ph&aacute;t triển (IRD) của Ph&aacute;p, đ&atilde; l&agrave;m việc trong nh&oacute;m x&aacute;c định động vật chủ của virus Ebola n&oacute;i: &ldquo;Họ ph&aacute;t hiện ra rằng lo&agrave;i dơi virus cho con người&rdquo; v&agrave; b&agrave; tin rằng đ&oacute; c&oacute; thể l&agrave; trường hợp xảy ra trong thời điểm n&agrave;y.</p>\r\n\r\n<p>Trong nghi&ecirc;n cứu về Ebola của b&agrave;, &quot;ch&uacute;ng t&ocirc;i đ&atilde; thu thập h&agrave;ng ng&agrave;n con dơi rơi từ một số địa điểm ở Ch&acirc;u Phi&quot;, Peeters n&oacute;i.</p>\r\n\r\n<p>&Ocirc;ng Fontanet n&oacute;i rằng c&aacute;c nh&agrave; nghi&ecirc;n cứu Trung Quốc cũng đang l&agrave;m như vậy.</p>\r\n\r\n<p>&quot;Họ n&oacute;i rằng họ đ&atilde; ph&acirc;n t&iacute;ch c&aacute;c mẫu từ một chiếc xe tải r&aacute;c&quot;, &ocirc;ng n&oacute;i.&nbsp;&quot;Họ kh&ocirc;ng n&oacute;i điều đ&oacute;, nhưng t&ocirc;i nghĩ c&oacute; khả năng đ&oacute; l&agrave; ph&acirc;n dơi v&agrave; ch&uacute;ng chỉ nằm xung quanh chiếc xe&quot;</p>\r\n\r\n<h2>Tại sao n&oacute; quan trọng?</h2>\r\n\r\n<p>Mặc d&ugrave; c&oacute; thể l&agrave; qu&aacute; muộn cho đợt b&ugrave;ng ph&aacute;t n&agrave;y, nhưng với việc x&aacute;c định động vật mang mầm bệnh cho virus corona. Đ&acirc;y sẽ l&agrave; điều sống c&ograve;n trong việc ngăn chặn c&aacute;c đợt b&ugrave;ng ph&aacute;t trong tương lai.</p>\r\n\r\n<p>V&iacute; dụ, Trung Quốc đặt ra ngo&agrave;i v&ograve;ng ph&aacute;p luật việc b&aacute;n cầy hương để lấy thực phẩm sau đại dịch SARS.</p>\r\n\r\n<p>&Ocirc;ng Eric Leroy, một nh&agrave; virus học v&agrave; b&aacute;c sĩ th&uacute; y tại IRD cho biết &ldquo;việc t&igrave;m kiếm cũng c&oacute; thể mang lại kết quả nhanh ch&oacute;ng như trong trường hợp SARS.&nbsp;Việc t&igrave;m kiếm như thế n&agrave;y c&oacute; thể mất nhiều năm.&rdquo;</p>\r\n\r\n<p>&quot;Với Ebola, nghi&ecirc;n cứu bắt đầu v&agrave;o năm 1976 v&agrave; kết quả đầu ti&ecirc;n được c&ocirc;ng bố v&agrave;o năm 2005&quot; &ocirc;ng n&oacute;i.</p>\r\n\r\n<h2>Ngăn chặn dịch bệnh trong tương lai?</h2>\r\n\r\n<p>Đối với &ocirc;ng Fontanet, virus corona chỉ l&agrave; v&iacute; dụ mới nhất về hậu quả của việc con người ti&ecirc;u thụ động vật hoang d&atilde; mang virus.</p>\r\n\r\n<p>&Ocirc;ng n&oacute;i rằng Trung Quốc cần phải &quot;thực hiện c&aacute;c biện ph&aacute;p triệt để chống lại việc bu&ocirc;n b&aacute;n động vật hoang d&atilde;&quot;.</p>\r\n\r\n<p>Hiện tại, th&agrave;nh phố Bắc Kinh đ&atilde; cấm h&agrave;nh vi n&agrave;y, nhưng chỉ thực hiện khi dịch bệnh đ&atilde; vượt khỏi tầm kiểm so&aacute;t.</p>\r\n\r\n<p>Kristian Andersen, một nh&agrave; miễn dịch học v&agrave; nh&agrave; sinh học t&iacute;nh to&aacute;n tại Scripps Research ở La Jolla, California n&oacute;i &ldquo;T&ocirc;i c&oacute; thể tin chắc rằng điều đ&oacute; c&oacute; thể l&agrave; sự thật&rdquo;.&nbsp;&Ocirc;ng đ&atilde; so s&aacute;nh c&aacute;c chuỗi virus t&ecirc; t&ecirc; c&oacute; sẵn v&agrave; thấy rằng ch&uacute;ng tương tự như của Covid-19.&nbsp;&Ocirc;ng n&oacute;i: &ldquo;T&ocirc;i rất mong chờ b&aacute;o c&aacute;o v&agrave; dữ liệu được c&ocirc;ng bố. Đ&acirc;y c&oacute; thể ch&igrave;a kh&oacute;a để ngăn chặn dịch bệnh trong tương lai&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-te-te-loai-vat-trung-gian-lay-nhiem-virus-corona-cho-con-nguoi', 'Tê tê, loài vật trung gian lây nhiễm virus corona cho con người?', '', ''),
(197, 99, 'vn', '40 sự thật về ô nhiễm không khí ( phần cuối)', '', '<blockquote>\r\n<p><strong>Phần cuối 40 sự thật về &ocirc; nhiễm kh&ocirc;ng kh&iacute; sẽ l&agrave; những th&ocirc;ng tin thực tế v&agrave; hữu &iacute;ch. Những con số, những sự kiện trong b&agrave;i viết n&agrave;y c&oacute; thể khiến ch&uacute;ng ta giật m&igrave;nh. H&atilde;y chung tay h&agrave;nh động v&igrave; m&ocirc;i trường, v&igrave; một bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh.</strong></p>\r\n</blockquote>\r\n\r\n<p>Sự thật 27: 80% bệnh phổi l&agrave; do c&aacute;c chất g&acirc;y hại từ kh&iacute; thải của xe hơi, xe bu&yacute;t, xe tải v&agrave; c&aacute;c phương tiện kh&aacute;c.</p>\r\n\r\n<p>Sự thật 28: Ước t&iacute;nh 750.000 người chết ở Trung Quốc sớm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 29: Nghi&ecirc;n cứu của MIT chứng minh rằng khoảng 13.000 c&ocirc;ng d&acirc;n Anh chết do &ocirc; nhiễm kh&ocirc;ng kh&iacute; từ c&aacute;c phương tiện của một nh&agrave; m&aacute;y điện.</p>\r\n\r\n<p>Sự thật 30: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ở California giết chết 25.000 người mỗi năm v&agrave; ti&ecirc;u tốn 200 triệu đ&ocirc; la chi ph&iacute; y tế.</p>\r\n\r\n<p>Sự thật 31: 300.000 ở Trung Quốc chết mỗi năm do bệnh tim v&agrave; ung thư phổi do kh&ocirc;ng kh&iacute; độc hại.</p>\r\n\r\n<p>Sự thật 32: Người d&acirc;n ở nhiều th&agrave;nh phố đeo mặt nạ li&ecirc;n tục để tự cứu m&igrave;nh khỏi m&ocirc;i trường &ocirc; nhiễm.</p>\r\n\r\n<p>Sự thật 33: Dầu th&ocirc; nặng l&agrave;m tăng kh&ocirc;ng kh&iacute; nhiễm độc nhiều hơn 40% so với dầu th&ocirc; nhẹ.</p>\r\n\r\n<p>Sự thật 34: Kh&ocirc;ng kh&iacute; độc hại g&acirc;y ra trong giao th&ocirc;ng l&agrave;m tăng nguy cơ đau tim.</p>\r\n\r\n<p>Sự thật 35: Đến năm 2050, 6 triệu người sẽ chết mỗi năm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 36: Trong l&uacute;c kẹt xe nặng, c&aacute;c chất &ocirc; nhiễm b&ecirc;n ngo&agrave;i c&oacute; thể thấm v&agrave;o xe của bạn, khiến kh&ocirc;ng kh&iacute; b&ecirc;n trong xe của bạn bị &ocirc; nhiễm gấp 10 lần so với kh&ocirc;ng kh&iacute; b&igrave;nh thường trong th&agrave;nh phố.</p>\r\n\r\n<p>Sự thật 37: Theo Bộ Gi&aacute;o dục California, Hen suyễn l&agrave; l&yacute; do h&agrave;ng đầu của việc học sinh nghỉ học.</p>\r\n\r\n<p>Sự thật 38: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; tệ hơn 2-5 lần so với kh&ocirc;ng kh&iacute; ngo&agrave;i trời.</p>\r\n\r\n<p>Sự thật 39: Những người sống gần đường mật độ giao th&ocirc;ng cao phải đối mặt với nguy cơ mắc bệnh ung thư, bệnh tim, hen suyễn v&agrave; vi&ecirc;m phế quản cao hơn v&igrave; những nơi n&agrave;y chứa nhiều chất g&acirc;y hại tập trung hơn.</p>\r\n\r\n<p>Sự thật 40: Chuyển sang nhi&ecirc;n liệu hiệu quả hơn v&agrave; sạch hơn từ nhi&ecirc;n liệu rắn (gỗ, nguy&ecirc;n liệu sinh khối) c&oacute; thể gi&uacute;p bạn giảm &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;.</p>\r\n\r\n<p>Bằng những h&agrave;nh động nhỏ như đi xe đạp, sử dụng phương tiện giao th&ocirc;ng c&ocirc;ng cộng, đốt &iacute;t than trong tiệc nướng BBQ... ch&uacute;ng ta c&oacute; thể tạo ra một m&ocirc;i trường trong l&agrave;nh cho c&aacute;c thế hệ tương lai v&agrave; ch&iacute;nh ch&uacute;ng ta.</p>\r\n', '', '', '', '', '', 0, '40-su-that-ve-o-nhiem-khong-khi-phan-cuoi', '40 sự thật về ô nhiễm không khí ( phần cuối)', '', ''),
(198, 99, 'en', 'english version 40 sự thật về ô nhiễm không khí ( phần cuối)', 'english version ', 'english version <blockquote>\r\n<p><strong>Phần cuối 40 sự thật về &ocirc; nhiễm kh&ocirc;ng kh&iacute; sẽ l&agrave; những th&ocirc;ng tin thực tế v&agrave; hữu &iacute;ch. Những con số, những sự kiện trong b&agrave;i viết n&agrave;y c&oacute; thể khiến ch&uacute;ng ta giật m&igrave;nh. H&atilde;y chung tay h&agrave;nh động v&igrave; m&ocirc;i trường, v&igrave; một bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh.</strong></p>\r\n</blockquote>\r\n\r\n<p>Sự thật 27: 80% bệnh phổi l&agrave; do c&aacute;c chất g&acirc;y hại từ kh&iacute; thải của xe hơi, xe bu&yacute;t, xe tải v&agrave; c&aacute;c phương tiện kh&aacute;c.</p>\r\n\r\n<p>Sự thật 28: Ước t&iacute;nh 750.000 người chết ở Trung Quốc sớm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 29: Nghi&ecirc;n cứu của MIT chứng minh rằng khoảng 13.000 c&ocirc;ng d&acirc;n Anh chết do &ocirc; nhiễm kh&ocirc;ng kh&iacute; từ c&aacute;c phương tiện của một nh&agrave; m&aacute;y điện.</p>\r\n\r\n<p>Sự thật 30: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ở California giết chết 25.000 người mỗi năm v&agrave; ti&ecirc;u tốn 200 triệu đ&ocirc; la chi ph&iacute; y tế.</p>\r\n\r\n<p>Sự thật 31: 300.000 ở Trung Quốc chết mỗi năm do bệnh tim v&agrave; ung thư phổi do kh&ocirc;ng kh&iacute; độc hại.</p>\r\n\r\n<p>Sự thật 32: Người d&acirc;n ở nhiều th&agrave;nh phố đeo mặt nạ li&ecirc;n tục để tự cứu m&igrave;nh khỏi m&ocirc;i trường &ocirc; nhiễm.</p>\r\n\r\n<p>Sự thật 33: Dầu th&ocirc; nặng l&agrave;m tăng kh&ocirc;ng kh&iacute; nhiễm độc nhiều hơn 40% so với dầu th&ocirc; nhẹ.</p>\r\n\r\n<p>Sự thật 34: Kh&ocirc;ng kh&iacute; độc hại g&acirc;y ra trong giao th&ocirc;ng l&agrave;m tăng nguy cơ đau tim.</p>\r\n\r\n<p>Sự thật 35: Đến năm 2050, 6 triệu người sẽ chết mỗi năm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 36: Trong l&uacute;c kẹt xe nặng, c&aacute;c chất &ocirc; nhiễm b&ecirc;n ngo&agrave;i c&oacute; thể thấm v&agrave;o xe của bạn, khiến kh&ocirc;ng kh&iacute; b&ecirc;n trong xe của bạn bị &ocirc; nhiễm gấp 10 lần so với kh&ocirc;ng kh&iacute; b&igrave;nh thường trong th&agrave;nh phố.</p>\r\n\r\n<p>Sự thật 37: Theo Bộ Gi&aacute;o dục California, Hen suyễn l&agrave; l&yacute; do h&agrave;ng đầu của việc học sinh nghỉ học.</p>\r\n\r\n<p>Sự thật 38: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; tệ hơn 2-5 lần so với kh&ocirc;ng kh&iacute; ngo&agrave;i trời.</p>\r\n\r\n<p>Sự thật 39: Những người sống gần đường mật độ giao th&ocirc;ng cao phải đối mặt với nguy cơ mắc bệnh ung thư, bệnh tim, hen suyễn v&agrave; vi&ecirc;m phế quản cao hơn v&igrave; những nơi n&agrave;y chứa nhiều chất g&acirc;y hại tập trung hơn.</p>\r\n\r\n<p>Sự thật 40: Chuyển sang nhi&ecirc;n liệu hiệu quả hơn v&agrave; sạch hơn từ nhi&ecirc;n liệu rắn (gỗ, nguy&ecirc;n liệu sinh khối) c&oacute; thể gi&uacute;p bạn giảm &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;.</p>\r\n\r\n<p>Bằng những h&agrave;nh động nhỏ như đi xe đạp, sử dụng phương tiện giao th&ocirc;ng c&ocirc;ng cộng, đốt &iacute;t than trong tiệc nướng BBQ... ch&uacute;ng ta c&oacute; thể tạo ra một m&ocirc;i trường trong l&agrave;nh cho c&aacute;c thế hệ tương lai v&agrave; ch&iacute;nh ch&uacute;ng ta.</p>\r\n', '', '', '', '', '', 0, 'en-40-su-that-ve-o-nhiem-khong-khi-phan-cuoi', '40 sự thật về ô nhiễm không khí ( phần cuối)', '', ''),
(199, 100, 'vn', 'Màng lọc Hepa và những điều cần biết về màng lọc Hepa', '', '<p><!-- wp:paragraph --></p>\r\n\r\n<p>C&oacute; rất nhiều loại m&agrave;ng lọc được sử dụng kh&aacute;c nhau trong c&aacute;c d&ograve;ng sản phẩm lọc kh&ocirc;ng kh&iacute;. Tuy nhi&ecirc;n m&agrave;ng lọc Hepa đang l&agrave; loại phổ biến nhất với c&ocirc;ng dụng lọc bụi bẩn k&iacute;ch thước lớn đến c&aacute;c hạt bụi PM 2.5. Một thiết bị đ&oacute;ng vai tr&ograve; rất quan trọng trong việc xử l&yacute; kh&ocirc;ng kh&iacute; &ocirc; nhiễm hiện nay.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>M&agrave;ng lọc Hepa l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>HEPA được viết tắt của cụm từ&nbsp;&nbsp;High Efficiency Particulate Air&nbsp;(bộ lọc kh&ocirc;ng kh&iacute; hiệu xuất cao). M&agrave;ng lọc HEPA bao gồm những sợi rất nhỏ c&oacute; k&iacute;ch thước từ 0,2 đến 2 &micro;m, được xếp chồng một c&aacute;ch ngẫu nhi&ecirc;n tạo th&agrave;nh một tấm lọc nhiều lớp. Khi li&ecirc;n kết lại ch&uacute;ng gi&uacute;p m&agrave;ng lọc hepa lọc được bụi bẩn, vi khuẩn, phấn hoa, nấm mốc&hellip;c&oacute; đường k&iacute;nh &gt;0,3 &micro;m (micromet). V&igrave; thế bộ lọc HEPA c&oacute; thể lọc được bụi mịn PM2.5 (2,5 micromet).</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>C&ocirc;ng dụng của M&agrave;ng lọc Hepa</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của c&aacute;c nh&agrave; khoa học đến từ Đại học C&ocirc;ng nghệ Queensland (th&agrave;nh phố Brisbane, nước &Uacute;c), m&agrave;ng lọc Hepa đ&uacute;ng nghĩa, ho&agrave;n chỉnh sẽ loại bỏ được 99,9% những tạp chất c&oacute; trong kh&ocirc;ng kh&iacute;&hellip;. V&agrave; ti&ecirc;u chuẩn để được gọi l&agrave; m&agrave;ng lọc hepa l&agrave; ch&uacute;ng phải giữ được tất cả những hạt nhỏ đến 0,3 &micro;m ( PM 0.3 ) bay lơ lửng trogn kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Năm 1940 tại Mỹ, với mục đ&iacute;ch ban đầu l&agrave; lọc bụi ph&oacute;ng xạ từ c&aacute;c vụ thử bom nguy&ecirc;n tử, trải qua qu&aacute; tr&igrave;nh li&ecirc;n tục cải tiến, ph&aacute;t triển đến ng&agrave;y nay m&agrave;ng lọc Hepa đạt được kết quả vượt bậc trong ứng dụng lọc sạch bầu kh&ocirc;ng kh&iacute;. V&agrave; trong tương lai, đ&acirc;y vẫn lu&ocirc;n l&agrave; c&ocirc;ng cụ quan trọng gi&uacute;p ch&uacute;ng ta c&oacute; được bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh hơn.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Với những c&ocirc;ng dụng hữu &iacute;ch như vậy, m&agrave;ng lọc Hepa được con người ứng dụng rất rộng r&atilde;i trong lĩnh vực l&agrave;m sạch kh&ocirc;ng kh&iacute;. N&oacute; được lắp hầu hết c&aacute;c M&aacute;y lọc kh&ocirc;ng kh&iacute; v&agrave; trở th&agrave;nh bộ phận kh&ocirc;ng thể thiếu trong bất kỳ chiếc M&aacute;y lọc kh&ocirc;ng kh&iacute; n&agrave;o.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Ở Việt Nam, chỉ số chất lượng tại hai th&agrave;nh phố lớn l&agrave; H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh lu&ocirc;n ở mức xấu ( c&oacute; hại cho sức khỏe ). &Ocirc; nhiễm kh&ocirc;ng kh&iacute; bởi bụi PM2.5 khiến cho 2 th&agrave;nh phố tr&ecirc;n lu&ocirc;n nằm trong top c&aacute;c th&agrave;nh phố c&oacute; chỉ số &ocirc; nhiễm kh&ocirc;ng kh&iacute; cao nhất qua từng thời điểm. Do đ&oacute;, m&agrave;ng lọc Hepa sẽ kh&ocirc;ng c&ograve;n xa lạ với ch&uacute;ng ta trong thời gian tới.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2>Nguy&ecirc;n l&yacute; hoạt động của m&agrave;ng lọc Hepa</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Về cơ bản, bộ lọc Hepa được bao gồm một chiếc lưới của c&aacute;c sợi sắp xếp ngẫu nhi&ecirc;n. C&aacute;c sợi thường bao gồm c&aacute;c sợi thủy tinh v&agrave; c&oacute; đường k&iacute;nh từ 0,5 v&agrave; 2,0 micromet, do đ&oacute; bộ lọc c&oacute; thể loại bỏ một số lượng lớn c&aacute;c hạt rất nhỏ, c&oacute; khả năng g&acirc;y hen suyễn v&agrave; dị ứng h&ocirc; hấp cho con người m&agrave; m&aacute;y h&uacute;t bụi b&igrave;nh thường kh&aacute;c kh&ocirc;ng h&uacute;t được. Th&ocirc;ng thường, c&aacute;c m&aacute;y h&uacute;t bụi kh&ocirc;ng trang bị bộ lọc Hepa sẽ thải những hạt bụi nhỏ như vậy trở lại v&agrave;o kh&ocirc;ng kh&iacute; trong nh&agrave;.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Bộ lọc HEPA c&oacute; thể lọc hầu hết c&aacute;c chất từ kh&ocirc;ng kh&iacute;, c&oacute; k&iacute;ch thước nhỏ đến 0,3&nbsp;mm. Ch&uacute;ng hữu &iacute;ch trong việc lọc phấn hoa, b&agrave;o tử nấm, l&ocirc;ng th&uacute; v&agrave; kh&oacute;i.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Hiện nay loại m&agrave;ng lọc hữu &iacute;ch n&agrave;y được sử dụng ở rất nhiều lĩnh vực kh&aacute;c nhau: c&ocirc;ng nghiệp, y tế, h&agrave;ng hải, th&iacute; nghiệm&hellip; những nơi c&oacute; con người sinh sống. Ta c&oacute; thể kể đến những nơi được lắp đặt m&agrave;ng lọc Hepa. V&iacute; dụ: trong &ocirc; t&ocirc;, trong bệnh viện, ph&ograve;ng th&iacute; nghiệm, nơi cần bảo quản thực phẩm tươi sống v&agrave; thiết bị ng&agrave;nh y tế, t&agrave;u vận tải biển&hellip;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2>C&aacute;ch chọn mua m&agrave;ng lọc Hepa</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Để mua được đ&uacute;ng chiếc m&agrave;ng lọc Hepa cần t&igrave;m, đầu ti&ecirc;n ch&uacute;ng ta phải x&aacute;c định loại k&iacute;ch thước m&igrave;nh định mua (mỗi một model m&aacute;y đều c&oacute; k&iacute;ch thước d&agrave;i, rộng, d&agrave;y của m&agrave;ng lọc l&agrave; kh&aacute;c nhau). Sau đ&oacute; ch&uacute;ng ta ưu ti&ecirc;n t&igrave;m những m&agrave;ng lọc của ch&iacute;nh h&atilde;ng sản xuất cho model m&aacute;y đ&oacute; tại c&aacute;c hệ thống Si&ecirc;u thị điện m&aacute;y, c&aacute;c cửa h&agrave;ng ủy quyền của nh&agrave; sản xuất để mua.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay c&aacute;c loại&nbsp;<strong>m&agrave;ng lọc hepa</strong>&nbsp;được sản xuất trong nước v&agrave; nhập khẩu. C&aacute;c sản phẩm n&agrave;y đến từ thương hiệu kh&aacute;c nhau, kiểu d&aacute;ng, k&iacute;ch thước v&agrave; gi&aacute; th&agrave;nh cũng kh&aacute;c nhau. Ch&uacute;ng ta n&ecirc;n gọi điện trước để được tư vấn cụ thể v&agrave; sẽ y&ecirc;n t&acirc;m hơn khi mua m&agrave;ng lọc ch&iacute;nh h&atilde;ng, chất lượng được đảm bảo. Đặc biệt n&ecirc;n ưu ti&ecirc;n những m&agrave;ng lọc c&oacute; tẩm th&ecirc;m c&aacute;c tinh chất chuy&ecirc;n diệt khuẩn v&agrave; nấm mốc b&aacute;m d&iacute;nh tr&ecirc;n đ&oacute;.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '', '', '', '', '', 0, 'mang-loc-hepa-va-nhung-dieu-can-biet-ve-mang-loc-hepa', 'Màng lọc Hepa và những điều cần biết về màng lọc Hepa', '', '');
INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(200, 100, 'en', 'english version Màng lọc Hepa và những điều cần biết về màng lọc Hepa', 'english version ', 'english version <p><!-- wp:paragraph --></p>\r\n\r\n<p>C&oacute; rất nhiều loại m&agrave;ng lọc được sử dụng kh&aacute;c nhau trong c&aacute;c d&ograve;ng sản phẩm lọc kh&ocirc;ng kh&iacute;. Tuy nhi&ecirc;n m&agrave;ng lọc Hepa đang l&agrave; loại phổ biến nhất với c&ocirc;ng dụng lọc bụi bẩn k&iacute;ch thước lớn đến c&aacute;c hạt bụi PM 2.5. Một thiết bị đ&oacute;ng vai tr&ograve; rất quan trọng trong việc xử l&yacute; kh&ocirc;ng kh&iacute; &ocirc; nhiễm hiện nay.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>M&agrave;ng lọc Hepa l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>HEPA được viết tắt của cụm từ&nbsp;&nbsp;High Efficiency Particulate Air&nbsp;(bộ lọc kh&ocirc;ng kh&iacute; hiệu xuất cao). M&agrave;ng lọc HEPA bao gồm những sợi rất nhỏ c&oacute; k&iacute;ch thước từ 0,2 đến 2 &micro;m, được xếp chồng một c&aacute;ch ngẫu nhi&ecirc;n tạo th&agrave;nh một tấm lọc nhiều lớp. Khi li&ecirc;n kết lại ch&uacute;ng gi&uacute;p m&agrave;ng lọc hepa lọc được bụi bẩn, vi khuẩn, phấn hoa, nấm mốc&hellip;c&oacute; đường k&iacute;nh &gt;0,3 &micro;m (micromet). V&igrave; thế bộ lọc HEPA c&oacute; thể lọc được bụi mịn PM2.5 (2,5 micromet).</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>C&ocirc;ng dụng của M&agrave;ng lọc Hepa</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của c&aacute;c nh&agrave; khoa học đến từ Đại học C&ocirc;ng nghệ Queensland (th&agrave;nh phố Brisbane, nước &Uacute;c), m&agrave;ng lọc Hepa đ&uacute;ng nghĩa, ho&agrave;n chỉnh sẽ loại bỏ được 99,9% những tạp chất c&oacute; trong kh&ocirc;ng kh&iacute;&hellip;. V&agrave; ti&ecirc;u chuẩn để được gọi l&agrave; m&agrave;ng lọc hepa l&agrave; ch&uacute;ng phải giữ được tất cả những hạt nhỏ đến 0,3 &micro;m ( PM 0.3 ) bay lơ lửng trogn kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Năm 1940 tại Mỹ, với mục đ&iacute;ch ban đầu l&agrave; lọc bụi ph&oacute;ng xạ từ c&aacute;c vụ thử bom nguy&ecirc;n tử, trải qua qu&aacute; tr&igrave;nh li&ecirc;n tục cải tiến, ph&aacute;t triển đến ng&agrave;y nay m&agrave;ng lọc Hepa đạt được kết quả vượt bậc trong ứng dụng lọc sạch bầu kh&ocirc;ng kh&iacute;. V&agrave; trong tương lai, đ&acirc;y vẫn lu&ocirc;n l&agrave; c&ocirc;ng cụ quan trọng gi&uacute;p ch&uacute;ng ta c&oacute; được bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh hơn.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Với những c&ocirc;ng dụng hữu &iacute;ch như vậy, m&agrave;ng lọc Hepa được con người ứng dụng rất rộng r&atilde;i trong lĩnh vực l&agrave;m sạch kh&ocirc;ng kh&iacute;. N&oacute; được lắp hầu hết c&aacute;c M&aacute;y lọc kh&ocirc;ng kh&iacute; v&agrave; trở th&agrave;nh bộ phận kh&ocirc;ng thể thiếu trong bất kỳ chiếc M&aacute;y lọc kh&ocirc;ng kh&iacute; n&agrave;o.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Ở Việt Nam, chỉ số chất lượng tại hai th&agrave;nh phố lớn l&agrave; H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh lu&ocirc;n ở mức xấu ( c&oacute; hại cho sức khỏe ). &Ocirc; nhiễm kh&ocirc;ng kh&iacute; bởi bụi PM2.5 khiến cho 2 th&agrave;nh phố tr&ecirc;n lu&ocirc;n nằm trong top c&aacute;c th&agrave;nh phố c&oacute; chỉ số &ocirc; nhiễm kh&ocirc;ng kh&iacute; cao nhất qua từng thời điểm. Do đ&oacute;, m&agrave;ng lọc Hepa sẽ kh&ocirc;ng c&ograve;n xa lạ với ch&uacute;ng ta trong thời gian tới.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2>Nguy&ecirc;n l&yacute; hoạt động của m&agrave;ng lọc Hepa</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Về cơ bản, bộ lọc Hepa được bao gồm một chiếc lưới của c&aacute;c sợi sắp xếp ngẫu nhi&ecirc;n. C&aacute;c sợi thường bao gồm c&aacute;c sợi thủy tinh v&agrave; c&oacute; đường k&iacute;nh từ 0,5 v&agrave; 2,0 micromet, do đ&oacute; bộ lọc c&oacute; thể loại bỏ một số lượng lớn c&aacute;c hạt rất nhỏ, c&oacute; khả năng g&acirc;y hen suyễn v&agrave; dị ứng h&ocirc; hấp cho con người m&agrave; m&aacute;y h&uacute;t bụi b&igrave;nh thường kh&aacute;c kh&ocirc;ng h&uacute;t được. Th&ocirc;ng thường, c&aacute;c m&aacute;y h&uacute;t bụi kh&ocirc;ng trang bị bộ lọc Hepa sẽ thải những hạt bụi nhỏ như vậy trở lại v&agrave;o kh&ocirc;ng kh&iacute; trong nh&agrave;.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Bộ lọc HEPA c&oacute; thể lọc hầu hết c&aacute;c chất từ kh&ocirc;ng kh&iacute;, c&oacute; k&iacute;ch thước nhỏ đến 0,3&nbsp;mm. Ch&uacute;ng hữu &iacute;ch trong việc lọc phấn hoa, b&agrave;o tử nấm, l&ocirc;ng th&uacute; v&agrave; kh&oacute;i.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Hiện nay loại m&agrave;ng lọc hữu &iacute;ch n&agrave;y được sử dụng ở rất nhiều lĩnh vực kh&aacute;c nhau: c&ocirc;ng nghiệp, y tế, h&agrave;ng hải, th&iacute; nghiệm&hellip; những nơi c&oacute; con người sinh sống. Ta c&oacute; thể kể đến những nơi được lắp đặt m&agrave;ng lọc Hepa. V&iacute; dụ: trong &ocirc; t&ocirc;, trong bệnh viện, ph&ograve;ng th&iacute; nghiệm, nơi cần bảo quản thực phẩm tươi sống v&agrave; thiết bị ng&agrave;nh y tế, t&agrave;u vận tải biển&hellip;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2>C&aacute;ch chọn mua m&agrave;ng lọc Hepa</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Để mua được đ&uacute;ng chiếc m&agrave;ng lọc Hepa cần t&igrave;m, đầu ti&ecirc;n ch&uacute;ng ta phải x&aacute;c định loại k&iacute;ch thước m&igrave;nh định mua (mỗi một model m&aacute;y đều c&oacute; k&iacute;ch thước d&agrave;i, rộng, d&agrave;y của m&agrave;ng lọc l&agrave; kh&aacute;c nhau). Sau đ&oacute; ch&uacute;ng ta ưu ti&ecirc;n t&igrave;m những m&agrave;ng lọc của ch&iacute;nh h&atilde;ng sản xuất cho model m&aacute;y đ&oacute; tại c&aacute;c hệ thống Si&ecirc;u thị điện m&aacute;y, c&aacute;c cửa h&agrave;ng ủy quyền của nh&agrave; sản xuất để mua.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay c&aacute;c loại&nbsp;<strong>m&agrave;ng lọc hepa</strong>&nbsp;được sản xuất trong nước v&agrave; nhập khẩu. C&aacute;c sản phẩm n&agrave;y đến từ thương hiệu kh&aacute;c nhau, kiểu d&aacute;ng, k&iacute;ch thước v&agrave; gi&aacute; th&agrave;nh cũng kh&aacute;c nhau. Ch&uacute;ng ta n&ecirc;n gọi điện trước để được tư vấn cụ thể v&agrave; sẽ y&ecirc;n t&acirc;m hơn khi mua m&agrave;ng lọc ch&iacute;nh h&atilde;ng, chất lượng được đảm bảo. Đặc biệt n&ecirc;n ưu ti&ecirc;n những m&agrave;ng lọc c&oacute; tẩm th&ecirc;m c&aacute;c tinh chất chuy&ecirc;n diệt khuẩn v&agrave; nấm mốc b&aacute;m d&iacute;nh tr&ecirc;n đ&oacute;.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '', '', '', '', '', 0, 'en-mang-loc-hepa-va-nhung-dieu-can-biet-ve-mang-loc-hepa', 'Màng lọc Hepa và những điều cần biết về màng lọc Hepa', '', ''),
(201, 101, 'vn', 'Chất lượng không khí ở Hà Nội những ngày qua', '', '<p><strong>Chất lượng kh&ocirc;ng kh&iacute;</strong> ở H&agrave; Nội sau khi xảy ra ch&aacute;y ở <strong>nh&agrave; m&aacute;y Rạng Đ&ocirc;ng</strong></p>\r\n\r\n<p>Những ng&agrave;y qua, chất lượng kh&ocirc;ng kh&iacute; ở H&agrave; Nội đều cho những kết quả đ&aacute;ng b&aacute;o động ở c&aacute;c <strong>điểm quan trắc </strong>v&agrave;o đầu giờ s&aacute;ng. <strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute;</strong> (<strong>AQI</strong>) của H&agrave; Nội th&ocirc;ng qua ứng dụng đo thời tiết như <strong>Air Quality</strong> ở mức <strong>c&oacute; hại cho sức khỏe</strong> (từ 151 &ndash; 200) v&agrave; mức b&aacute;o động n&agrave;y hầu hết đều nằm trong nội th&agrave;nh H&agrave; Nội. Điều n&agrave;y g&acirc;y ảnh hưởng đến sức khỏe của những người mắc bệnh về đường h&ocirc; hấp, người gi&agrave; v&agrave; trẻ nhỏ cao hơn so với người b&igrave;nh thường.</p>\r\n\r\n<p>Ng&agrave;y 28/8/2019, kho chứa h&agrave;ng của C&ocirc;ng ty CP b&oacute;ng đ&egrave;n ph&iacute;ch nước Rạng Đ&ocirc;ng xảy ra ch&aacute;y lớn. Đ&aacute;ng ch&uacute; &yacute; nguồn thủy ng&acirc;n ph&aacute;t t&aacute;n ra, theo t&iacute;nh to&aacute;n của c&aacute;c nh&agrave; khoa học th&igrave; khối lượng thủy ng&acirc;n ph&aacute;t t&aacute;n ra l&agrave; 27,2kg nhưng theo b&aacute;o c&aacute;o c&ocirc;ng ty tr&ecirc;n cơ sở số đ&egrave;n compact của C&ocirc;ng ty Rạng Đ&ocirc;ng l&agrave; 15,1kg. Sự cố ch&aacute;y ở Cty B&oacute;ng đ&egrave;n Ph&iacute;ch nước Rạng Đ&ocirc;ng c&oacute; nguy cơ g&acirc;y &ocirc; nhiễm thủy ng&acirc;n, &ocirc; nhiễm m&ocirc;i trường nước, &ocirc; nhiễm m&ocirc;i trường đất.</p>\r\n\r\n<p>Thủy ng&acirc;n l&agrave; chất độc t&iacute;ch lũy sinh học rất dễ hấp thụ qua da, c&aacute;c cơ quan h&ocirc; hấp v&agrave; ti&ecirc;u h&oacute;a. Thủy ng&acirc;n tạo ra sự &ocirc; nhiễm đ&aacute;ng kể đối với m&ocirc;i trường v&igrave; n&oacute; tạo ra c&aacute;c hợp chất hữu cơ trong cơ thể sinh vật. Một trong những hợp chất độc nhất của n&oacute; l&agrave; đim&ecirc;tyl thủy ng&acirc;n, độc đến mức chỉ v&agrave;i micr&ocirc;l&iacute;t rơi v&agrave;o da c&oacute; thể g&acirc;y tử vong. Thủy ng&acirc;n thuộc nh&oacute;m đầu c&aacute;c độc tố g&acirc;y nguy hiểm cho sức khỏe con người.</p>\r\n\r\n<p>Người tiếp x&uacute;c với nồng độ thủy ng&acirc;n trong kh&ocirc;ng kh&iacute; trong thời gian d&agrave;i sẽ xuất hiện c&aacute;c triệu chứng như run rẩy, mất khả năng điều h&ograve;a vận động, thay đổi t&iacute;nh c&aacute;ch, mất tr&iacute; nhớ, mất ngủ, mệt mỏi, đau đầu, giảm c&acirc;n, căng thẳng t&acirc;m l&yacute;, vi&ecirc;m lợi... Nặng hơn c&oacute; thể dẫn đến ph&ugrave; phổi cấp, suy h&ocirc; hấp v&agrave; tử vong..</p>\r\n\r\n<p>Nuốt phải thủy ng&acirc;n v&ocirc; cơ (điển h&igrave;nh l&agrave; pin) g&acirc;y phỏng ni&ecirc;m mạc miệng, đau bụng, buồn n&ocirc;n, n&ocirc;n ra m&aacute;u. Diễn tiến sau đ&oacute; v&agrave;i ng&agrave;y hoại tử ống thận cấp, g&acirc;y suy thận, rối loạn nước v&agrave; điện giải c&oacute; thể g&acirc;y tử vong.</p>\r\n\r\n<p>Ăn thức ăn chứa thủy ng&acirc;n hữu cơ như c&aacute; trong nguồn nước bị nhiễm thủy ng&acirc;n g&acirc;y ngộ độc, xuất hiện sau nhiều ng&agrave;y đến nhiều tuần g&acirc;y ra c&aacute;c triệu chứng về thần kinh l&agrave; dị cảm, thất điều, suy nhược thần kinh, giảm th&iacute;nh gi&aacute;c, loạn vận ng&ocirc;n, thu hẹp thị trường, rối loạn t&acirc;m thần, run cơ, rối loạn cử động v&agrave; c&oacute; thể tử vong. Đặc biệt, rất độc đối với thai nhi c&oacute; mẹ thường xuy&ecirc;n ăn c&aacute; nơi c&oacute; nước chứa nhiều thủy ng&acirc;n g&acirc;y sẩy thai, khuyết tật thần kinh, chậm ph&aacute;t triển t&acirc;m thần, bại n&atilde;o, biến dạng chi.</p>\r\n\r\n<p>Để đảm bảo an to&agrave;n tuyệt đối sức khỏe, người d&acirc;n sinh sống quanh khu vực ch&aacute;y cần thực hiện tốt c&aacute;c biện ph&aacute;p vệ sinh c&aacute; nh&acirc;n theo khuyến c&aacute;o của ng&agrave;nh y tế đưa ra như đưa trẻ em, người gi&agrave;, người mắc bệnh về đường h&ocirc; hấp ra khỏi khu vực từ 1 - 10 ng&agrave;y để hạn chế t&aacute;c hại của thủy ng&acirc;n, kh&oacute;i bụi; thường xuy&ecirc;n s&uacute;c miệng bằng dung dịch Natri Clorid từ 7 - 10 ng&agrave;y sau vụ ch&aacute;y. Kh&ocirc;ng sử dụng nước, thực phẩm, tr&aacute;i c&acirc;y,&hellip; trong b&aacute;n k&iacute;nh 1 km kể từ t&acirc;m đ&aacute;m ch&aacute;y, ti&ecirc;u hủy c&aacute;c loại tr&aacute;i c&acirc;y tự trồng trong b&aacute;n k&iacute;nh từ đ&aacute;m ch&aacute;y 500 m...</p>\r\n\r\n<p>Người d&acirc;n cũng được y&ecirc;u cầu thay, giặt to&agrave;n bộ quần &aacute;o nhiễm kh&oacute;i bụi do ch&aacute;y bằng c&aacute;ch giặt sạch nhiều lần sau đ&oacute; ng&acirc;m x&agrave; ph&ograve;ng n&oacute;ng trong 70-80 độ; thau rửa c&aacute;c vật dụng chứa nước, vật dụng sinh hoạt c&oacute; b&aacute;m bụi.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'chat-luong-khong-khi-o-ha-noi-nhung-ngay-qua', 'Chất lượng không khí ở Hà Nội những ngày qua', '', ''),
(202, 101, 'en', 'english version Chất lượng không khí ở Hà Nội những ngày qua', 'english version ', 'english version <p><strong>Chất lượng kh&ocirc;ng kh&iacute;</strong> ở H&agrave; Nội sau khi xảy ra ch&aacute;y ở <strong>nh&agrave; m&aacute;y Rạng Đ&ocirc;ng</strong></p>\r\n\r\n<p>Những ng&agrave;y qua, chất lượng kh&ocirc;ng kh&iacute; ở H&agrave; Nội đều cho những kết quả đ&aacute;ng b&aacute;o động ở c&aacute;c <strong>điểm quan trắc </strong>v&agrave;o đầu giờ s&aacute;ng. <strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute;</strong> (<strong>AQI</strong>) của H&agrave; Nội th&ocirc;ng qua ứng dụng đo thời tiết như <strong>Air Quality</strong> ở mức <strong>c&oacute; hại cho sức khỏe</strong> (từ 151 &ndash; 200) v&agrave; mức b&aacute;o động n&agrave;y hầu hết đều nằm trong nội th&agrave;nh H&agrave; Nội. Điều n&agrave;y g&acirc;y ảnh hưởng đến sức khỏe của những người mắc bệnh về đường h&ocirc; hấp, người gi&agrave; v&agrave; trẻ nhỏ cao hơn so với người b&igrave;nh thường.</p>\r\n\r\n<p>Ng&agrave;y 28/8/2019, kho chứa h&agrave;ng của C&ocirc;ng ty CP b&oacute;ng đ&egrave;n ph&iacute;ch nước Rạng Đ&ocirc;ng xảy ra ch&aacute;y lớn. Đ&aacute;ng ch&uacute; &yacute; nguồn thủy ng&acirc;n ph&aacute;t t&aacute;n ra, theo t&iacute;nh to&aacute;n của c&aacute;c nh&agrave; khoa học th&igrave; khối lượng thủy ng&acirc;n ph&aacute;t t&aacute;n ra l&agrave; 27,2kg nhưng theo b&aacute;o c&aacute;o c&ocirc;ng ty tr&ecirc;n cơ sở số đ&egrave;n compact của C&ocirc;ng ty Rạng Đ&ocirc;ng l&agrave; 15,1kg. Sự cố ch&aacute;y ở Cty B&oacute;ng đ&egrave;n Ph&iacute;ch nước Rạng Đ&ocirc;ng c&oacute; nguy cơ g&acirc;y &ocirc; nhiễm thủy ng&acirc;n, &ocirc; nhiễm m&ocirc;i trường nước, &ocirc; nhiễm m&ocirc;i trường đất.</p>\r\n\r\n<p>Thủy ng&acirc;n l&agrave; chất độc t&iacute;ch lũy sinh học rất dễ hấp thụ qua da, c&aacute;c cơ quan h&ocirc; hấp v&agrave; ti&ecirc;u h&oacute;a. Thủy ng&acirc;n tạo ra sự &ocirc; nhiễm đ&aacute;ng kể đối với m&ocirc;i trường v&igrave; n&oacute; tạo ra c&aacute;c hợp chất hữu cơ trong cơ thể sinh vật. Một trong những hợp chất độc nhất của n&oacute; l&agrave; đim&ecirc;tyl thủy ng&acirc;n, độc đến mức chỉ v&agrave;i micr&ocirc;l&iacute;t rơi v&agrave;o da c&oacute; thể g&acirc;y tử vong. Thủy ng&acirc;n thuộc nh&oacute;m đầu c&aacute;c độc tố g&acirc;y nguy hiểm cho sức khỏe con người.</p>\r\n\r\n<p>Người tiếp x&uacute;c với nồng độ thủy ng&acirc;n trong kh&ocirc;ng kh&iacute; trong thời gian d&agrave;i sẽ xuất hiện c&aacute;c triệu chứng như run rẩy, mất khả năng điều h&ograve;a vận động, thay đổi t&iacute;nh c&aacute;ch, mất tr&iacute; nhớ, mất ngủ, mệt mỏi, đau đầu, giảm c&acirc;n, căng thẳng t&acirc;m l&yacute;, vi&ecirc;m lợi... Nặng hơn c&oacute; thể dẫn đến ph&ugrave; phổi cấp, suy h&ocirc; hấp v&agrave; tử vong..</p>\r\n\r\n<p>Nuốt phải thủy ng&acirc;n v&ocirc; cơ (điển h&igrave;nh l&agrave; pin) g&acirc;y phỏng ni&ecirc;m mạc miệng, đau bụng, buồn n&ocirc;n, n&ocirc;n ra m&aacute;u. Diễn tiến sau đ&oacute; v&agrave;i ng&agrave;y hoại tử ống thận cấp, g&acirc;y suy thận, rối loạn nước v&agrave; điện giải c&oacute; thể g&acirc;y tử vong.</p>\r\n\r\n<p>Ăn thức ăn chứa thủy ng&acirc;n hữu cơ như c&aacute; trong nguồn nước bị nhiễm thủy ng&acirc;n g&acirc;y ngộ độc, xuất hiện sau nhiều ng&agrave;y đến nhiều tuần g&acirc;y ra c&aacute;c triệu chứng về thần kinh l&agrave; dị cảm, thất điều, suy nhược thần kinh, giảm th&iacute;nh gi&aacute;c, loạn vận ng&ocirc;n, thu hẹp thị trường, rối loạn t&acirc;m thần, run cơ, rối loạn cử động v&agrave; c&oacute; thể tử vong. Đặc biệt, rất độc đối với thai nhi c&oacute; mẹ thường xuy&ecirc;n ăn c&aacute; nơi c&oacute; nước chứa nhiều thủy ng&acirc;n g&acirc;y sẩy thai, khuyết tật thần kinh, chậm ph&aacute;t triển t&acirc;m thần, bại n&atilde;o, biến dạng chi.</p>\r\n\r\n<p>Để đảm bảo an to&agrave;n tuyệt đối sức khỏe, người d&acirc;n sinh sống quanh khu vực ch&aacute;y cần thực hiện tốt c&aacute;c biện ph&aacute;p vệ sinh c&aacute; nh&acirc;n theo khuyến c&aacute;o của ng&agrave;nh y tế đưa ra như đưa trẻ em, người gi&agrave;, người mắc bệnh về đường h&ocirc; hấp ra khỏi khu vực từ 1 - 10 ng&agrave;y để hạn chế t&aacute;c hại của thủy ng&acirc;n, kh&oacute;i bụi; thường xuy&ecirc;n s&uacute;c miệng bằng dung dịch Natri Clorid từ 7 - 10 ng&agrave;y sau vụ ch&aacute;y. Kh&ocirc;ng sử dụng nước, thực phẩm, tr&aacute;i c&acirc;y,&hellip; trong b&aacute;n k&iacute;nh 1 km kể từ t&acirc;m đ&aacute;m ch&aacute;y, ti&ecirc;u hủy c&aacute;c loại tr&aacute;i c&acirc;y tự trồng trong b&aacute;n k&iacute;nh từ đ&aacute;m ch&aacute;y 500 m...</p>\r\n\r\n<p>Người d&acirc;n cũng được y&ecirc;u cầu thay, giặt to&agrave;n bộ quần &aacute;o nhiễm kh&oacute;i bụi do ch&aacute;y bằng c&aacute;ch giặt sạch nhiều lần sau đ&oacute; ng&acirc;m x&agrave; ph&ograve;ng n&oacute;ng trong 70-80 độ; thau rửa c&aacute;c vật dụng chứa nước, vật dụng sinh hoạt c&oacute; b&aacute;m bụi.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-chat-luong-khong-khi-o-ha-noi-nhung-ngay-qua', 'Chất lượng không khí ở Hà Nội những ngày qua', '', ''),
(203, 102, 'vn', 'Cây cảnh thanh lọc không khí và chữa bệnh - Huyết Dụ', '', '<h4>Trồng c&aacute;c loại c&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; trong nh&agrave; l&agrave; một phương ph&aacute;p đơn giản đ&atilde; được nhiều nh&agrave; nghi&ecirc;n cứu chỉ để l&agrave;m giảm t&igrave;nh trang &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;. &Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đến từ rất nhiều sinh hoạt h&agrave;ng ng&agrave;y, tưởng trừng v&ocirc; hại v&agrave; diễn ra h&agrave;ng ng&agrave;y. Ch&iacute;nh v&igrave; thế t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đang tồn tại trong ch&iacute;nh ng&ocirc;i nh&agrave; m&agrave; ch&uacute;ng ta đang ở.</h4>\r\n\r\n<p>Huyết dụ l&agrave; một trong c&aacute;c loại c&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; Ngo&agrave;i ra, nhờ sắc đỏ lạ mắt v&agrave; h&igrave;nh d&aacute;ng đẹp n&ecirc;n c&ograve;n được trồng để trang tr&iacute; kh&ocirc;ng gian sống. Trong Đ&ocirc;ng Y, l&aacute; v&agrave; rễ c&acirc;y c&oacute; được trồng để l&agrave;m thuốc để chữa nhiều loại bệnh.</p>\r\n\r\n<h2>Đặc điểm:</h2>\r\n\r\n<p>[caption id=&quot;attachment_154&quot; align=&quot;aligncenter&quot; width=&quot;443&quot;]<img alt=\"Cây cảnh lọc không khí\" height=\"295\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Cây-cảnh-lọc-không-khí-1-300x200.jpg\" width=\"443\" /> C&acirc;y cảnh lọc kh&ocirc;ng kh&iacute;[/caption][caption id=&quot;attachment_158&quot; align=&quot;aligncenter&quot; width=&quot;444&quot;]<img alt=\"Huyết Dụ Đỏ\" height=\"274\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Huyết-Dụ-Đỏ-300x185.jpg\" width=\"444\" /> C&acirc;y lọc kh&iacute; trong nh&agrave;[/caption]</p>\r\n\r\n<p>C&acirc;y Huyết Dụ c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; Ph&aacute;t dụ, thiết thụ, chổng đeng, phật dụ,&hellip; T&ecirc;n khoa học l&agrave; Cordyline terminalis. Thuộc họ: Huyết dụ (Dracaena terminalis). C&oacute; 2 loại huyết dụ: một loại c&oacute; l&aacute; c&acirc;y đỏ cả 2 mặt; loại c&ograve;n lại c&oacute; 1 mặt đỏ, 1 mặt xanh.</p>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; l&agrave; thực vật th&acirc;n nhỏ, chiều cao khoảng 1 &ndash; 2m. C&acirc;y huyết dụ l&agrave; loại c&acirc;y mọc theo kh&oacute;m. L&aacute; c&acirc;y c&oacute; m&agrave;u đỏ, t&iacute;m. L&aacute; c&oacute; h&igrave;nh dạng d&agrave;i v&agrave; kh&ocirc;ng c&oacute; nhiều g&acirc;n. Th&acirc;n c&acirc;y mảnh, &iacute;t ph&acirc;n nh&aacute;nh, vỏ c&acirc;y c&oacute; nhiều sẹo. L&aacute; c&acirc;y c&oacute; m&agrave;u đỏ đặc trưng, một số c&acirc;y c&oacute; m&agrave;u đỏ t&iacute;a, l&aacute; mọc chủ yếu ở ngọn, chiều d&agrave;i khoảng 30 &ndash; 50cm, rộng khoảng 7 &ndash; 10cm.</p>\r\n\r\n<p><strong>C&acirc;y gi&uacute;p lọc kh&ocirc;ng kh&iacute;</strong> ph&acirc;n bố rải r&aacute;c khắp c&aacute;c tỉnh th&agrave;nh từ Bắc v&agrave;o Nam. C&acirc;y c&oacute; nguồn gốc ở v&ugrave;ng nhiệt đới v&agrave; được trồng l&agrave;m cảnh phổ biến tr&ecirc;n khắp nước ta, thường được thu h&aacute;i v&agrave;o m&ugrave;a h&egrave;.</p>\r\n\r\n<h2><strong>C&aacute;ch chăm s&oacute;c c&acirc;y cảnh trang tr&iacute; trong nh&agrave;:</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_156&quot; align=&quot;aligncenter&quot; width=&quot;328&quot;]<img alt=\"Cây Huyết Dụ\" height=\"410\" src=\"https://maxair.vn/wp-content/uploads/2019/12/cây-huyết-dụ-240x300.jpg\" width=\"328\" /> C&acirc;y Huyết Dụ[/caption]</p>\r\n\r\n<p>Kh&ocirc;ng phải l&agrave; một c&acirc;y k&eacute;n đất k&eacute;n nước, huyết dụ dễ d&agrave;ng ph&aacute;t triển trong m&ocirc;i trường kh&iacute; hậu nhiệt đới, ngay cả khi thiếu thốn về kh&ocirc;ng gian hay nguồn nước. Tuy nhi&ecirc;n, để <em>c&acirc;y lọc kh&iacute;</em> nhanh ch&oacute;ng ph&aacute;t triển v&agrave; c&oacute; tuổi thọ l&acirc;u d&agrave;i bạn cần ch&uacute; &yacute; tới một số điểm về c&aacute;ch chăm s&oacute;c như sau.</p>\r\n\r\n<h3>&Aacute;nh s&aacute;ng:</h3>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; th&iacute;ch hợp với &aacute;nh s&aacute;ng mạnh, c&acirc;y cần tr&aacute;nh &aacute;nh s&aacute;ng mặt trời trực tiếp. Ngo&agrave;i ra, c&acirc;y huyết dụ l&aacute; xanh thường th&iacute;ch ứng tốt nhất với &aacute;nh s&aacute;ng trực tiếp, trong khi những c&acirc;y c&oacute; l&aacute; m&agrave;u kh&aacute;c c&oacute; thể th&iacute;ch &aacute;nh s&aacute;ng mặt trời gi&aacute;n tiếp hoặc được lọc.</p>\r\n\r\n<h3>Đất:</h3>\r\n\r\n<p>C&acirc;y cảnh lọc kh&ocirc;ng kh&iacute; th&iacute;ch hợp với đất trồng tơi xốp, tho&aacute;ng kh&iacute;, tho&aacute;t nước tốt, giữ ẩm tốt. Bạn n&ecirc;n b&oacute;n th&ecirc;m một &iacute;t ph&acirc;n b&oacute;n hữu cơ để gi&uacute;p c&acirc;y sinh trưởng ph&aacute;t triển tốt. Đặc biệt ch&uacute; &yacute; thiếu đến loại ph&acirc;n b&oacute;n như Mg v&agrave; K, thiếu loại n&agrave;y c&acirc;y sẽ c&ograve;i cọc, ch&aacute;y l&aacute; v&agrave; dễ bị chết. Kh&ocirc;ng n&ecirc;n b&oacute;n ph&acirc;n cho đất trồng v&agrave;o m&ugrave;a đ&ocirc;ng. C&acirc;y ngo&agrave;i trời cũng cần được bảo đảm tốt; với những chiếc l&aacute; lớn của n&oacute;, ch&uacute;ng c&oacute; thể bắt gi&oacute; v&agrave; dễ lật đổ.</p>\r\n\r\n<h3>Nước v&agrave; Ph&acirc;n B&oacute;n:</h3>\r\n\r\n<p>C&acirc;y huyết dụ c&oacute; nhu cầu nước trung b&igrave;nh. Tưới nước để giữ độ ẩm cho đất trồng, gi&uacute;p c&acirc;y h&uacute;t được nước. Khi thiếu nước, l&aacute; c&acirc;y sẽ h&eacute;o kh&ocirc; v&agrave; chuyển sang m&agrave;u n&acirc;u. Kh&ocirc;ng n&ecirc;n để <strong>c&acirc;y xanh lọc kh&ocirc;ng kh&iacute;</strong> rơi v&agrave;o t&igrave;nh trạng n&agrave;y</p>\r\n\r\n<h3>Nhiệt độ v&agrave; độ ẩm:</h3>\r\n\r\n<p>C&acirc;y huyết dụ ph&aacute;t triển mạnh th&iacute;ch m&ocirc;i trường c&oacute; độ ẩm cao. C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; sinh trưởng v&agrave; ph&aacute;t triển tốt ỏ khoảng 15-27oC, nhiệt độ thấp nhất m&agrave; huyết dụ c&ograve;n c&oacute; thể chịu đựng l&agrave; 4oC. T&ugrave;y thuộc v&agrave;o nhiệt độ của khu vực của bạn, m&agrave; bố tr&iacute; vị tr&iacute; trồng c&acirc;y cho ph&ugrave; hợp.</p>\r\n\r\n<h3>S&acirc;u bệnh hại c&acirc;y:</h3>\r\n\r\n<p>N&ecirc;n d&ugrave;ng thuốc bảo vệ thực vật để diệt trừ s&acirc;u hại, sau đ&oacute;, cạo bỏ phần th&acirc;n c&acirc;y bị hoại tử, rửa vết thương bằng x&agrave; ph&ograve;ng v&agrave; nước sạch để trị bệnh cho c&acirc;y.</p>\r\n\r\n<h3>Chăm s&oacute;c t&aacute;n c&acirc;y:</h3>\r\n\r\n<p>C&acirc;y xanh lọc kh&ocirc;ng kh&iacute; theo thời gian cũng sẽ t&agrave;n nh&aacute;nh l&aacute;. Cần quan s&aacute;t kĩ c&aacute;c nh&aacute;nh l&aacute;, loại bỏ ngay c&aacute;c phần bị hư để tr&aacute;nh ảnh hưởng đến c&aacute;c nh&aacute;nh c&acirc;y kh&aacute;c.</p>\r\n\r\n<h2><strong>Một số c&ocirc;ng dụng của c&acirc;y xanh lọc kh&ocirc;ng kh&iacute;:</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_157&quot; align=&quot;aligncenter&quot; width=&quot;311&quot;]<img alt=\"Cây lọc khí độc \" height=\"415\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Huyết-Dụ-có-thể-sử-dụng-lá-và-rễ-để-chữa-bệnh-225x300.jpg\" width=\"311\" /> C&acirc;y lọc kh&iacute; độc[/caption]</p>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; k&iacute;ch thước nhỏ c&ograve;n được trồng l&agrave;m c&acirc;y để b&agrave;n, c&acirc;y trong nh&agrave;.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng <strong>lọc kh&iacute; độc</strong> c&oacute; trong kh&ocirc;ng kh&iacute; như Benzene, Xylene, Formaldehyde v&agrave; 94% c&aacute;c loại hợp chất g&acirc;y &ocirc; nhiễm kh&aacute;c</p>\r\n\r\n<p>Một c&ocirc;ng dụng nữa của <u>c&acirc;y l&agrave;m sạch kh&ocirc;ng kh&iacute;</u> đ&oacute; l&agrave; khả năng chữa bệnh. C&oacute; thể sử dụng l&aacute; v&agrave; rễ c&acirc;y điều trị c&aacute;c bệnh như lao phổi với ho thổ huyết, rong huyết,&hellip; Theo Đ&ocirc;ng y, Huyết dụ c&oacute; vị nhạt, hơi đắng, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng bổ huyết, ti&ecirc;u ứ, cầm m&aacute;u d&ugrave;ng chữa chứng kiết lỵ, rong kinh, phong thấp nhức xương, x&iacute;ch bạch đới, giảm đau, phong thấp g&acirc;y đau nhức.</p>\r\n\r\n<h2><strong>C&acirc;y lọc kh&ocirc;ng kh&iacute; hợp với mệnh n&agrave;o?</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_155&quot; align=&quot;aligncenter&quot; width=&quot;343&quot;]<img alt=\"Cây cho người mệnh Thổ và Hỏa\" height=\"457\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Cây-cho-người-mệnh-Thổ-và-Hỏa-225x300.jpg\" width=\"343\" /> C&acirc;y lọc kh&ocirc;ng kh&iacute;[/caption]</p>\r\n\r\n<p>Theo ngũ h&agrave;nh c&acirc;y huyết dụ thuộc h&agrave;nh hỏa do c&oacute; m&agrave;u đỏ t&iacute;nh dương mạnh. (t&iacute;nh &acirc;m dương phụ thuộc v&agrave;o độ s&aacute;ng tối của m&agrave;u sắc c&acirc;y).</p>\r\n\r\n<p>V&igrave; vậy c&acirc;y huyết dụ sẽ ph&ugrave; hợp với những người mệnh Thổ v&agrave; mệnh Hỏa. Gi&uacute;p gặp nhiều may mắn trong c&ocirc;ng việc v&agrave; cuộc sống. Đặc biệt đối với người mệnh kim kh&ocirc;ng n&ecirc;n d&ugrave;ng c&acirc;y huyết dụ l&agrave;m vật trang tr&iacute;. V&igrave; sẽ tương khắc do Kim sẽ khắc Hỏa.</p>\r\n\r\n<p>Trong phong thủy người ta tin rằng <em>c&acirc;y thanh lọc kh&ocirc;ng kh&iacute;</em> mang lại may mắn. C&oacute; t&aacute;c dụng giữ tiền của, t&agrave;i lộc cho gia chủ. Kh&ocirc;ng những thế huyết dụ c&oacute; thể ngăn, xua đuổi t&agrave; ma tấn c&ocirc;ng ng&ocirc;i nh&agrave; của bạn.</p>\r\n', '', '', '', '', '', 0, 'cay-canh-thanh-loc-khong-khi-va-chua-benh-huyet-du', 'Cây cảnh thanh lọc không khí và chữa bệnh - Huyết Dụ', '', ''),
(204, 102, 'en', 'english version Cây cảnh thanh lọc không khí và chữa bệnh - Huyết Dụ', 'english version ', 'english version <h4>Trồng c&aacute;c loại c&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; trong nh&agrave; l&agrave; một phương ph&aacute;p đơn giản đ&atilde; được nhiều nh&agrave; nghi&ecirc;n cứu chỉ để l&agrave;m giảm t&igrave;nh trang &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;. &Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đến từ rất nhiều sinh hoạt h&agrave;ng ng&agrave;y, tưởng trừng v&ocirc; hại v&agrave; diễn ra h&agrave;ng ng&agrave;y. Ch&iacute;nh v&igrave; thế t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đang tồn tại trong ch&iacute;nh ng&ocirc;i nh&agrave; m&agrave; ch&uacute;ng ta đang ở.</h4>\r\n\r\n<p>Huyết dụ l&agrave; một trong c&aacute;c loại c&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; Ngo&agrave;i ra, nhờ sắc đỏ lạ mắt v&agrave; h&igrave;nh d&aacute;ng đẹp n&ecirc;n c&ograve;n được trồng để trang tr&iacute; kh&ocirc;ng gian sống. Trong Đ&ocirc;ng Y, l&aacute; v&agrave; rễ c&acirc;y c&oacute; được trồng để l&agrave;m thuốc để chữa nhiều loại bệnh.</p>\r\n\r\n<h2>Đặc điểm:</h2>\r\n\r\n<p>[caption id=&quot;attachment_154&quot; align=&quot;aligncenter&quot; width=&quot;443&quot;]<img alt=\"Cây cảnh lọc không khí\" height=\"295\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Cây-cảnh-lọc-không-khí-1-300x200.jpg\" width=\"443\" /> C&acirc;y cảnh lọc kh&ocirc;ng kh&iacute;[/caption][caption id=&quot;attachment_158&quot; align=&quot;aligncenter&quot; width=&quot;444&quot;]<img alt=\"Huyết Dụ Đỏ\" height=\"274\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Huyết-Dụ-Đỏ-300x185.jpg\" width=\"444\" /> C&acirc;y lọc kh&iacute; trong nh&agrave;[/caption]</p>\r\n\r\n<p>C&acirc;y Huyết Dụ c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; Ph&aacute;t dụ, thiết thụ, chổng đeng, phật dụ,&hellip; T&ecirc;n khoa học l&agrave; Cordyline terminalis. Thuộc họ: Huyết dụ (Dracaena terminalis). C&oacute; 2 loại huyết dụ: một loại c&oacute; l&aacute; c&acirc;y đỏ cả 2 mặt; loại c&ograve;n lại c&oacute; 1 mặt đỏ, 1 mặt xanh.</p>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; l&agrave; thực vật th&acirc;n nhỏ, chiều cao khoảng 1 &ndash; 2m. C&acirc;y huyết dụ l&agrave; loại c&acirc;y mọc theo kh&oacute;m. L&aacute; c&acirc;y c&oacute; m&agrave;u đỏ, t&iacute;m. L&aacute; c&oacute; h&igrave;nh dạng d&agrave;i v&agrave; kh&ocirc;ng c&oacute; nhiều g&acirc;n. Th&acirc;n c&acirc;y mảnh, &iacute;t ph&acirc;n nh&aacute;nh, vỏ c&acirc;y c&oacute; nhiều sẹo. L&aacute; c&acirc;y c&oacute; m&agrave;u đỏ đặc trưng, một số c&acirc;y c&oacute; m&agrave;u đỏ t&iacute;a, l&aacute; mọc chủ yếu ở ngọn, chiều d&agrave;i khoảng 30 &ndash; 50cm, rộng khoảng 7 &ndash; 10cm.</p>\r\n\r\n<p><strong>C&acirc;y gi&uacute;p lọc kh&ocirc;ng kh&iacute;</strong> ph&acirc;n bố rải r&aacute;c khắp c&aacute;c tỉnh th&agrave;nh từ Bắc v&agrave;o Nam. C&acirc;y c&oacute; nguồn gốc ở v&ugrave;ng nhiệt đới v&agrave; được trồng l&agrave;m cảnh phổ biến tr&ecirc;n khắp nước ta, thường được thu h&aacute;i v&agrave;o m&ugrave;a h&egrave;.</p>\r\n\r\n<h2><strong>C&aacute;ch chăm s&oacute;c c&acirc;y cảnh trang tr&iacute; trong nh&agrave;:</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_156&quot; align=&quot;aligncenter&quot; width=&quot;328&quot;]<img alt=\"Cây Huyết Dụ\" height=\"410\" src=\"https://maxair.vn/wp-content/uploads/2019/12/cây-huyết-dụ-240x300.jpg\" width=\"328\" /> C&acirc;y Huyết Dụ[/caption]</p>\r\n\r\n<p>Kh&ocirc;ng phải l&agrave; một c&acirc;y k&eacute;n đất k&eacute;n nước, huyết dụ dễ d&agrave;ng ph&aacute;t triển trong m&ocirc;i trường kh&iacute; hậu nhiệt đới, ngay cả khi thiếu thốn về kh&ocirc;ng gian hay nguồn nước. Tuy nhi&ecirc;n, để <em>c&acirc;y lọc kh&iacute;</em> nhanh ch&oacute;ng ph&aacute;t triển v&agrave; c&oacute; tuổi thọ l&acirc;u d&agrave;i bạn cần ch&uacute; &yacute; tới một số điểm về c&aacute;ch chăm s&oacute;c như sau.</p>\r\n\r\n<h3>&Aacute;nh s&aacute;ng:</h3>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; th&iacute;ch hợp với &aacute;nh s&aacute;ng mạnh, c&acirc;y cần tr&aacute;nh &aacute;nh s&aacute;ng mặt trời trực tiếp. Ngo&agrave;i ra, c&acirc;y huyết dụ l&aacute; xanh thường th&iacute;ch ứng tốt nhất với &aacute;nh s&aacute;ng trực tiếp, trong khi những c&acirc;y c&oacute; l&aacute; m&agrave;u kh&aacute;c c&oacute; thể th&iacute;ch &aacute;nh s&aacute;ng mặt trời gi&aacute;n tiếp hoặc được lọc.</p>\r\n\r\n<h3>Đất:</h3>\r\n\r\n<p>C&acirc;y cảnh lọc kh&ocirc;ng kh&iacute; th&iacute;ch hợp với đất trồng tơi xốp, tho&aacute;ng kh&iacute;, tho&aacute;t nước tốt, giữ ẩm tốt. Bạn n&ecirc;n b&oacute;n th&ecirc;m một &iacute;t ph&acirc;n b&oacute;n hữu cơ để gi&uacute;p c&acirc;y sinh trưởng ph&aacute;t triển tốt. Đặc biệt ch&uacute; &yacute; thiếu đến loại ph&acirc;n b&oacute;n như Mg v&agrave; K, thiếu loại n&agrave;y c&acirc;y sẽ c&ograve;i cọc, ch&aacute;y l&aacute; v&agrave; dễ bị chết. Kh&ocirc;ng n&ecirc;n b&oacute;n ph&acirc;n cho đất trồng v&agrave;o m&ugrave;a đ&ocirc;ng. C&acirc;y ngo&agrave;i trời cũng cần được bảo đảm tốt; với những chiếc l&aacute; lớn của n&oacute;, ch&uacute;ng c&oacute; thể bắt gi&oacute; v&agrave; dễ lật đổ.</p>\r\n\r\n<h3>Nước v&agrave; Ph&acirc;n B&oacute;n:</h3>\r\n\r\n<p>C&acirc;y huyết dụ c&oacute; nhu cầu nước trung b&igrave;nh. Tưới nước để giữ độ ẩm cho đất trồng, gi&uacute;p c&acirc;y h&uacute;t được nước. Khi thiếu nước, l&aacute; c&acirc;y sẽ h&eacute;o kh&ocirc; v&agrave; chuyển sang m&agrave;u n&acirc;u. Kh&ocirc;ng n&ecirc;n để <strong>c&acirc;y xanh lọc kh&ocirc;ng kh&iacute;</strong> rơi v&agrave;o t&igrave;nh trạng n&agrave;y</p>\r\n\r\n<h3>Nhiệt độ v&agrave; độ ẩm:</h3>\r\n\r\n<p>C&acirc;y huyết dụ ph&aacute;t triển mạnh th&iacute;ch m&ocirc;i trường c&oacute; độ ẩm cao. C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; sinh trưởng v&agrave; ph&aacute;t triển tốt ỏ khoảng 15-27oC, nhiệt độ thấp nhất m&agrave; huyết dụ c&ograve;n c&oacute; thể chịu đựng l&agrave; 4oC. T&ugrave;y thuộc v&agrave;o nhiệt độ của khu vực của bạn, m&agrave; bố tr&iacute; vị tr&iacute; trồng c&acirc;y cho ph&ugrave; hợp.</p>\r\n\r\n<h3>S&acirc;u bệnh hại c&acirc;y:</h3>\r\n\r\n<p>N&ecirc;n d&ugrave;ng thuốc bảo vệ thực vật để diệt trừ s&acirc;u hại, sau đ&oacute;, cạo bỏ phần th&acirc;n c&acirc;y bị hoại tử, rửa vết thương bằng x&agrave; ph&ograve;ng v&agrave; nước sạch để trị bệnh cho c&acirc;y.</p>\r\n\r\n<h3>Chăm s&oacute;c t&aacute;n c&acirc;y:</h3>\r\n\r\n<p>C&acirc;y xanh lọc kh&ocirc;ng kh&iacute; theo thời gian cũng sẽ t&agrave;n nh&aacute;nh l&aacute;. Cần quan s&aacute;t kĩ c&aacute;c nh&aacute;nh l&aacute;, loại bỏ ngay c&aacute;c phần bị hư để tr&aacute;nh ảnh hưởng đến c&aacute;c nh&aacute;nh c&acirc;y kh&aacute;c.</p>\r\n\r\n<h2><strong>Một số c&ocirc;ng dụng của c&acirc;y xanh lọc kh&ocirc;ng kh&iacute;:</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_157&quot; align=&quot;aligncenter&quot; width=&quot;311&quot;]<img alt=\"Cây lọc khí độc \" height=\"415\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Huyết-Dụ-có-thể-sử-dụng-lá-và-rễ-để-chữa-bệnh-225x300.jpg\" width=\"311\" /> C&acirc;y lọc kh&iacute; độc[/caption]</p>\r\n\r\n<p>C&acirc;y cảnh thanh lọc kh&ocirc;ng kh&iacute; k&iacute;ch thước nhỏ c&ograve;n được trồng l&agrave;m c&acirc;y để b&agrave;n, c&acirc;y trong nh&agrave;.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng <strong>lọc kh&iacute; độc</strong> c&oacute; trong kh&ocirc;ng kh&iacute; như Benzene, Xylene, Formaldehyde v&agrave; 94% c&aacute;c loại hợp chất g&acirc;y &ocirc; nhiễm kh&aacute;c</p>\r\n\r\n<p>Một c&ocirc;ng dụng nữa của <u>c&acirc;y l&agrave;m sạch kh&ocirc;ng kh&iacute;</u> đ&oacute; l&agrave; khả năng chữa bệnh. C&oacute; thể sử dụng l&aacute; v&agrave; rễ c&acirc;y điều trị c&aacute;c bệnh như lao phổi với ho thổ huyết, rong huyết,&hellip; Theo Đ&ocirc;ng y, Huyết dụ c&oacute; vị nhạt, hơi đắng, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng bổ huyết, ti&ecirc;u ứ, cầm m&aacute;u d&ugrave;ng chữa chứng kiết lỵ, rong kinh, phong thấp nhức xương, x&iacute;ch bạch đới, giảm đau, phong thấp g&acirc;y đau nhức.</p>\r\n\r\n<h2><strong>C&acirc;y lọc kh&ocirc;ng kh&iacute; hợp với mệnh n&agrave;o?</strong></h2>\r\n\r\n<p>[caption id=&quot;attachment_155&quot; align=&quot;aligncenter&quot; width=&quot;343&quot;]<img alt=\"Cây cho người mệnh Thổ và Hỏa\" height=\"457\" src=\"https://maxair.vn/wp-content/uploads/2019/12/Cây-cho-người-mệnh-Thổ-và-Hỏa-225x300.jpg\" width=\"343\" /> C&acirc;y lọc kh&ocirc;ng kh&iacute;[/caption]</p>\r\n\r\n<p>Theo ngũ h&agrave;nh c&acirc;y huyết dụ thuộc h&agrave;nh hỏa do c&oacute; m&agrave;u đỏ t&iacute;nh dương mạnh. (t&iacute;nh &acirc;m dương phụ thuộc v&agrave;o độ s&aacute;ng tối của m&agrave;u sắc c&acirc;y).</p>\r\n\r\n<p>V&igrave; vậy c&acirc;y huyết dụ sẽ ph&ugrave; hợp với những người mệnh Thổ v&agrave; mệnh Hỏa. Gi&uacute;p gặp nhiều may mắn trong c&ocirc;ng việc v&agrave; cuộc sống. Đặc biệt đối với người mệnh kim kh&ocirc;ng n&ecirc;n d&ugrave;ng c&acirc;y huyết dụ l&agrave;m vật trang tr&iacute;. V&igrave; sẽ tương khắc do Kim sẽ khắc Hỏa.</p>\r\n\r\n<p>Trong phong thủy người ta tin rằng <em>c&acirc;y thanh lọc kh&ocirc;ng kh&iacute;</em> mang lại may mắn. C&oacute; t&aacute;c dụng giữ tiền của, t&agrave;i lộc cho gia chủ. Kh&ocirc;ng những thế huyết dụ c&oacute; thể ngăn, xua đuổi t&agrave; ma tấn c&ocirc;ng ng&ocirc;i nh&agrave; của bạn.</p>\r\n', '', '', '', '', '', 0, 'en-cay-canh-thanh-loc-khong-khi-va-chua-benh-huyet-du', 'Cây cảnh thanh lọc không khí và chữa bệnh - Huyết Dụ', '', ''),
(205, 103, 'vn', 'Chỉ số chất lượng không khí và những điều cần biết', '', '<p><strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute; (AQI) l&agrave; một thước đo đ&aacute;nh gi&aacute; chất lượng kh&ocirc;ng kh&iacute; hằng ng&agrave;y. Vậy chỉ số n&agrave;y l&agrave; g&igrave;? C&aacute;c gi&aacute; trị chỉ số AQI kh&aacute;c nhau sẽ c&oacute; &yacute; nghĩa như thế n&agrave;o về t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute;?</strong></p>\r\n\r\n<h2>Chỉ số chất lượng kh&ocirc;ng kh&iacute; l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute;</strong> t&ecirc;n gọi tiếng anh l&agrave;<strong> Air Quality Index</strong> được viết tắt l&agrave; <strong>AQI</strong>. <strong>Chỉ số AQI</strong> cho biết t&igrave;nh trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> v&agrave; mức độ ảnh hưởng đến sức khỏe con người. Con số n&agrave;y c&agrave;ng cao thể hiện <strong>kh&ocirc;ng kh&iacute; c&agrave;ng &ocirc; nhiễm</strong>. Cơ quan Bảo vệ M&ocirc;i trường Hoa Kỳ đ&atilde; t&iacute;nh to&aacute;n chỉ số n&agrave;y dựa tr&ecirc;n 5 chất g&acirc;y <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> được quy định bởi Đạo luật Kh&ocirc;ng kh&iacute; sạch. Bao gồm:</p>\r\n\r\n<h4>Ozone mặt đất</h4>\r\n\r\n<p>Ozone (O<sub>3</sub>) tự nhi&ecirc;n c&oacute; mặt tr&ecirc;n độ cao bảo vệ ch&uacute;ng ta chống lại c&aacute;c tia tử ngoại độc hại, nhưng khi chất kh&iacute; n&agrave;y ở mặt đất (c&ograve;n gọi l&agrave; ozone tầng đối lưu hay ozone xấu) th&igrave; n&oacute; sẽ trở th&agrave;nh một chất g&acirc;y &ocirc; nhiễm.</p>\r\n\r\n<h4><strong>Bụi trong kh&ocirc;ng kh&iacute; (PM)</strong></h4>\r\n\r\n<p>Thường đ&aacute;nh gi&aacute; qua chỉ số <strong>bụi mịn PM 2.5</strong> v&agrave; <strong>PM 10</strong>. C&aacute;c hạt bụi n&agrave;y đi v&agrave;o đường h&ocirc; hấp khi con người h&iacute;t thở.</p>\r\n\r\n<ul>\r\n	<li><strong>PM</strong> (Particulate Matter) l&agrave; c&oacute; nghĩa l&agrave; chất dạng hạt (rắn hoặc lỏng).</li>\r\n	<li><strong>PM 2.5</strong> chỉ c&aacute;c hạt c&oacute; k&iacute;ch thước nhỏ hơn hoặc bằng 2,5 micromet (&mu;m). Số <strong>PM 10</strong> l&agrave; chỉ những hạt c&oacute; đường k&iacute;nh nhỏ hơn hoặc bằng 10 &mu;m (nhưng lớn hơn k&iacute;ch thước PM 2.5).</li>\r\n	<li>C&aacute;c loại <strong>hạt bụi PM 2.5</strong> v&agrave; <strong>PM 10</strong> được h&igrave;nh th&agrave;nh từ c&aacute;c chất như cacbon, sun-phua, nito v&agrave; c&aacute;c hợp chất kim loại kh&aacute;c. <strong>Hạt bụi mịn PM 2.5</strong> sinh ra từ bụi đường phố, đốt r&aacute;c thải, h&uacute;t thuốc, kh&iacute; thải giao th&ocirc;ng ...</li>\r\n</ul>\r\n\r\n<h4>Cacbon monoxit (CO)</h4>\r\n\r\n<p>Cacbon monoxit l&agrave; một chất kh&iacute; kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, bắt ch&aacute;y v&agrave; c&oacute; độc t&iacute;nh cao. Nguồn sinh ra Cacbon monoxit m&agrave; ch&uacute;ng ta dễ h&igrave;nh dung nhất l&agrave; <strong>kh&iacute; thải động cơ</strong>.</p>\r\n\r\n<h4>Lưu huỳnh đi&ocirc;xit (SO2)</h4>\r\n\r\n<p>Lưu huỳnh đi&ocirc;xit (hay c&ograve;n gọi l&agrave; anhiđrit sunfurơ) l&agrave; một hợp chất h&oacute;a học với c&ocirc;ng thức SO<sub>2</sub>. N&oacute; sinh ra như l&agrave; sản phẩm phụ trong qu&aacute; tr&igrave;nh đốt ch&aacute;y than, dầu, kh&iacute; đốt.. Chất kh&iacute; n&agrave;y l&agrave; một mối lo m&ocirc;i trường đ&aacute;ng kể.</p>\r\n\r\n<h4>Nitơ đi&ocirc;xit (NO2)</h4>\r\n\r\n<p>Nitơ đi&ocirc;x&iacute;t hay đi&ocirc;x&iacute;t nitơ l&agrave; một hợp chất h&oacute;a học c&oacute; c&ocirc;ng thức NO<sub>2</sub>. Kh&iacute; độc m&agrave;u n&acirc;u đỏ n&agrave;y c&oacute; m&ugrave;i gắt đặc trưng v&agrave; l&agrave; một chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; nổi bật.</p>\r\n\r\n<p>Trong <strong>c&aacute;c chất g&acirc;y &ocirc; nhiễm</strong> tr&ecirc;n, ozone mặt đất v&agrave; <strong>bụi trong kh&ocirc;ng kh&iacute;</strong> được coi l&agrave; hai yếu tố g&acirc;y nguy hiểm nhất cho sức khỏe con người</p>\r\n\r\n<p>Bảng m&agrave;u ph&iacute;a dưới thể hiện <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> c&ugrave;ng mức độ ảnh hưởng tới sức khỏe con người.</p>\r\n\r\n<p><img alt=\"\" height=\"479\" src=\"https://maxair.vn/wp-content/uploads/2019/12/khong-khi-300x231.png\" width=\"622\" /></p>\r\n\r\n<h2>&Yacute; nghĩa cụ thể của chỉ số chất lượng kh&ocirc;ng kh&iacute; AQI</h2>\r\n\r\n<p><strong>AQI</strong> từ 0 đến 50: chất lượng kh&ocirc;ng kh&iacute; được coi l&agrave; đạt y&ecirc;u cầu. Người d&acirc;n kh&ocirc;ng gặp hoặc gặp rất &iacute;t c&aacute;c vấn đề sức khỏe.</p>\r\n\r\n<p><strong>AQI</strong> từ 51 đến 100: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> ở mức chấp nhận được. Ở mức độ n&agrave;y, c&oacute; một số &iacute;t người c&oacute; thể gặp phải c&aacute;c vấn đề sức khỏe đến từ chất g&acirc;y &ocirc; nhiễm trong kh&ocirc;ng kh&iacute;. V&iacute; dụ, những người nhạy cảm với ozone c&oacute; thể gặp c&aacute;c vấn đề về h&ocirc; hấp.</p>\r\n\r\n<p><strong>AQI</strong> từ 101 đến 150: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> nằm ở mức k&eacute;m. Phần đ&ocirc;ng người d&acirc;n chưa gặp phải c&aacute;c vấn đề sức khỏe. Tuy nhi&ecirc;n, những người mắc bệnh phổi, người lớn tuổi v&agrave; trẻ em c&oacute; nguy cơ cao hơn khi tiếp x&uacute;c với ozone v&agrave; <strong>bụi trong kh&ocirc;ng kh&iacute;.</strong></p>\r\n\r\n<p><strong>AQI</strong> từ 151 đến 200: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> xấu. Mọi người bắt đầu gặp phải c&aacute;c ảnh hưởng đến sức khỏe. Những người thuộc c&aacute;c nh&oacute;m nhạy cảm như người cao tuổi, trẻ em v&agrave; người mắc bệnh phổi gặp nguy cơ cao.</p>\r\n\r\n<p><strong>AQI</strong> từ 201 đến 300: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> rất xấu. Mọi người c&oacute; thể gặp c&aacute;c <strong>ảnh hưởng nghi&ecirc;m trọng tới sức khỏe</strong>.</p>\r\n\r\n<p><strong>AQI</strong> từ 301 đến 500: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> nằm ở mức nguy hại. Kh&ocirc;ng kh&iacute; c&oacute; chất lượng ở mức độ n&agrave;y được coi l&agrave; t&igrave;nh trạng khẩn cấp. Bất cứ ai cũng c&oacute; khả năng bị ảnh hưởng v&agrave; gặp c&aacute;c vấn đề <strong>nguy hiểm cho sức khỏe</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất lượng kh&ocirc;ng kh&iacute; ở Thủ đ&ocirc; H&agrave; Nội đ&atilde; c&oacute; thời điểm ở mức m&agrave;u t&iacute;m - cực kỳ nguy hại cho sức khỏe con người.</p>\r\n\r\n<p><img alt=\"\" height=\"491\" src=\"https://maxair.vn/wp-content/uploads/2019/12/79465607_1020445761637698_6376214263303766016_o-138x300.jpg\" width=\"226\" /></p>\r\n\r\n<h2>Một số lưu &yacute;</h2>\r\n\r\n<p>&ndash; <strong>AQI</strong> phản &aacute;nh chất lượng kh&ocirc;ng kh&iacute; tại một khu vực nhất định ở một<strong>&nbsp;</strong>thời điểm nhất định&nbsp;(theo giờ/ng&agrave;y).</p>\r\n\r\n<p>&ndash; Để đ&aacute;nh gi&aacute; <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> của một khu vực rộng (v&iacute; dụ AQI to&agrave;n th&agrave;nh phố H&agrave; Nội). Ch&uacute;ng ta cần thu thập v&agrave; đ&aacute;nh gi&aacute; dữ liệu từ c&aacute;c trạm quan trắc tr&ecirc;n to&agrave;n địa b&agrave;n.</p>\r\n\r\n<p>Khi theo d&otilde;i <strong>chỉ số AQI</strong> kh&ocirc;ng n&ecirc;n nh&igrave;n v&agrave;o 1 gi&aacute; trị tuyệt đối ở 1 thời điểm v&agrave; địa điểm. Trong đ&oacute;:</p>\r\n\r\n<p>&ndash; Theo d&otilde;i mức độ chất lượng kh&ocirc;ng kh&iacute; để c&oacute; c&aacute;c hoạt động ph&ugrave; hợp.</p>\r\n\r\n<p>&ndash; Theo d&otilde;i xu hướng để biết diễn biến chất lượng kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'chi-so-chat-luong-khong-khi-va-nhung-dieu-can-biet', 'Chỉ số chất lượng không khí và những điều cần biết', '', '');
INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(206, 103, 'en', 'english version Chỉ số chất lượng không khí và những điều cần biết', 'english version ', 'english version <p><strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute; (AQI) l&agrave; một thước đo đ&aacute;nh gi&aacute; chất lượng kh&ocirc;ng kh&iacute; hằng ng&agrave;y. Vậy chỉ số n&agrave;y l&agrave; g&igrave;? C&aacute;c gi&aacute; trị chỉ số AQI kh&aacute;c nhau sẽ c&oacute; &yacute; nghĩa như thế n&agrave;o về t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute;?</strong></p>\r\n\r\n<h2>Chỉ số chất lượng kh&ocirc;ng kh&iacute; l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Chỉ số chất lượng kh&ocirc;ng kh&iacute;</strong> t&ecirc;n gọi tiếng anh l&agrave;<strong> Air Quality Index</strong> được viết tắt l&agrave; <strong>AQI</strong>. <strong>Chỉ số AQI</strong> cho biết t&igrave;nh trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> v&agrave; mức độ ảnh hưởng đến sức khỏe con người. Con số n&agrave;y c&agrave;ng cao thể hiện <strong>kh&ocirc;ng kh&iacute; c&agrave;ng &ocirc; nhiễm</strong>. Cơ quan Bảo vệ M&ocirc;i trường Hoa Kỳ đ&atilde; t&iacute;nh to&aacute;n chỉ số n&agrave;y dựa tr&ecirc;n 5 chất g&acirc;y <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> được quy định bởi Đạo luật Kh&ocirc;ng kh&iacute; sạch. Bao gồm:</p>\r\n\r\n<h4>Ozone mặt đất</h4>\r\n\r\n<p>Ozone (O<sub>3</sub>) tự nhi&ecirc;n c&oacute; mặt tr&ecirc;n độ cao bảo vệ ch&uacute;ng ta chống lại c&aacute;c tia tử ngoại độc hại, nhưng khi chất kh&iacute; n&agrave;y ở mặt đất (c&ograve;n gọi l&agrave; ozone tầng đối lưu hay ozone xấu) th&igrave; n&oacute; sẽ trở th&agrave;nh một chất g&acirc;y &ocirc; nhiễm.</p>\r\n\r\n<h4><strong>Bụi trong kh&ocirc;ng kh&iacute; (PM)</strong></h4>\r\n\r\n<p>Thường đ&aacute;nh gi&aacute; qua chỉ số <strong>bụi mịn PM 2.5</strong> v&agrave; <strong>PM 10</strong>. C&aacute;c hạt bụi n&agrave;y đi v&agrave;o đường h&ocirc; hấp khi con người h&iacute;t thở.</p>\r\n\r\n<ul>\r\n	<li><strong>PM</strong> (Particulate Matter) l&agrave; c&oacute; nghĩa l&agrave; chất dạng hạt (rắn hoặc lỏng).</li>\r\n	<li><strong>PM 2.5</strong> chỉ c&aacute;c hạt c&oacute; k&iacute;ch thước nhỏ hơn hoặc bằng 2,5 micromet (&mu;m). Số <strong>PM 10</strong> l&agrave; chỉ những hạt c&oacute; đường k&iacute;nh nhỏ hơn hoặc bằng 10 &mu;m (nhưng lớn hơn k&iacute;ch thước PM 2.5).</li>\r\n	<li>C&aacute;c loại <strong>hạt bụi PM 2.5</strong> v&agrave; <strong>PM 10</strong> được h&igrave;nh th&agrave;nh từ c&aacute;c chất như cacbon, sun-phua, nito v&agrave; c&aacute;c hợp chất kim loại kh&aacute;c. <strong>Hạt bụi mịn PM 2.5</strong> sinh ra từ bụi đường phố, đốt r&aacute;c thải, h&uacute;t thuốc, kh&iacute; thải giao th&ocirc;ng ...</li>\r\n</ul>\r\n\r\n<h4>Cacbon monoxit (CO)</h4>\r\n\r\n<p>Cacbon monoxit l&agrave; một chất kh&iacute; kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, bắt ch&aacute;y v&agrave; c&oacute; độc t&iacute;nh cao. Nguồn sinh ra Cacbon monoxit m&agrave; ch&uacute;ng ta dễ h&igrave;nh dung nhất l&agrave; <strong>kh&iacute; thải động cơ</strong>.</p>\r\n\r\n<h4>Lưu huỳnh đi&ocirc;xit (SO2)</h4>\r\n\r\n<p>Lưu huỳnh đi&ocirc;xit (hay c&ograve;n gọi l&agrave; anhiđrit sunfurơ) l&agrave; một hợp chất h&oacute;a học với c&ocirc;ng thức SO<sub>2</sub>. N&oacute; sinh ra như l&agrave; sản phẩm phụ trong qu&aacute; tr&igrave;nh đốt ch&aacute;y than, dầu, kh&iacute; đốt.. Chất kh&iacute; n&agrave;y l&agrave; một mối lo m&ocirc;i trường đ&aacute;ng kể.</p>\r\n\r\n<h4>Nitơ đi&ocirc;xit (NO2)</h4>\r\n\r\n<p>Nitơ đi&ocirc;x&iacute;t hay đi&ocirc;x&iacute;t nitơ l&agrave; một hợp chất h&oacute;a học c&oacute; c&ocirc;ng thức NO<sub>2</sub>. Kh&iacute; độc m&agrave;u n&acirc;u đỏ n&agrave;y c&oacute; m&ugrave;i gắt đặc trưng v&agrave; l&agrave; một chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; nổi bật.</p>\r\n\r\n<p>Trong <strong>c&aacute;c chất g&acirc;y &ocirc; nhiễm</strong> tr&ecirc;n, ozone mặt đất v&agrave; <strong>bụi trong kh&ocirc;ng kh&iacute;</strong> được coi l&agrave; hai yếu tố g&acirc;y nguy hiểm nhất cho sức khỏe con người</p>\r\n\r\n<p>Bảng m&agrave;u ph&iacute;a dưới thể hiện <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> c&ugrave;ng mức độ ảnh hưởng tới sức khỏe con người.</p>\r\n\r\n<p><img alt=\"\" height=\"479\" src=\"https://maxair.vn/wp-content/uploads/2019/12/khong-khi-300x231.png\" width=\"622\" /></p>\r\n\r\n<h2>&Yacute; nghĩa cụ thể của chỉ số chất lượng kh&ocirc;ng kh&iacute; AQI</h2>\r\n\r\n<p><strong>AQI</strong> từ 0 đến 50: chất lượng kh&ocirc;ng kh&iacute; được coi l&agrave; đạt y&ecirc;u cầu. Người d&acirc;n kh&ocirc;ng gặp hoặc gặp rất &iacute;t c&aacute;c vấn đề sức khỏe.</p>\r\n\r\n<p><strong>AQI</strong> từ 51 đến 100: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> ở mức chấp nhận được. Ở mức độ n&agrave;y, c&oacute; một số &iacute;t người c&oacute; thể gặp phải c&aacute;c vấn đề sức khỏe đến từ chất g&acirc;y &ocirc; nhiễm trong kh&ocirc;ng kh&iacute;. V&iacute; dụ, những người nhạy cảm với ozone c&oacute; thể gặp c&aacute;c vấn đề về h&ocirc; hấp.</p>\r\n\r\n<p><strong>AQI</strong> từ 101 đến 150: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> nằm ở mức k&eacute;m. Phần đ&ocirc;ng người d&acirc;n chưa gặp phải c&aacute;c vấn đề sức khỏe. Tuy nhi&ecirc;n, những người mắc bệnh phổi, người lớn tuổi v&agrave; trẻ em c&oacute; nguy cơ cao hơn khi tiếp x&uacute;c với ozone v&agrave; <strong>bụi trong kh&ocirc;ng kh&iacute;.</strong></p>\r\n\r\n<p><strong>AQI</strong> từ 151 đến 200: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> xấu. Mọi người bắt đầu gặp phải c&aacute;c ảnh hưởng đến sức khỏe. Những người thuộc c&aacute;c nh&oacute;m nhạy cảm như người cao tuổi, trẻ em v&agrave; người mắc bệnh phổi gặp nguy cơ cao.</p>\r\n\r\n<p><strong>AQI</strong> từ 201 đến 300: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> rất xấu. Mọi người c&oacute; thể gặp c&aacute;c <strong>ảnh hưởng nghi&ecirc;m trọng tới sức khỏe</strong>.</p>\r\n\r\n<p><strong>AQI</strong> từ 301 đến 500: <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> nằm ở mức nguy hại. Kh&ocirc;ng kh&iacute; c&oacute; chất lượng ở mức độ n&agrave;y được coi l&agrave; t&igrave;nh trạng khẩn cấp. Bất cứ ai cũng c&oacute; khả năng bị ảnh hưởng v&agrave; gặp c&aacute;c vấn đề <strong>nguy hiểm cho sức khỏe</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chất lượng kh&ocirc;ng kh&iacute; ở Thủ đ&ocirc; H&agrave; Nội đ&atilde; c&oacute; thời điểm ở mức m&agrave;u t&iacute;m - cực kỳ nguy hại cho sức khỏe con người.</p>\r\n\r\n<p><img alt=\"\" height=\"491\" src=\"https://maxair.vn/wp-content/uploads/2019/12/79465607_1020445761637698_6376214263303766016_o-138x300.jpg\" width=\"226\" /></p>\r\n\r\n<h2>Một số lưu &yacute;</h2>\r\n\r\n<p>&ndash; <strong>AQI</strong> phản &aacute;nh chất lượng kh&ocirc;ng kh&iacute; tại một khu vực nhất định ở một<strong>&nbsp;</strong>thời điểm nhất định&nbsp;(theo giờ/ng&agrave;y).</p>\r\n\r\n<p>&ndash; Để đ&aacute;nh gi&aacute; <strong>chất lượng kh&ocirc;ng kh&iacute;</strong> của một khu vực rộng (v&iacute; dụ AQI to&agrave;n th&agrave;nh phố H&agrave; Nội). Ch&uacute;ng ta cần thu thập v&agrave; đ&aacute;nh gi&aacute; dữ liệu từ c&aacute;c trạm quan trắc tr&ecirc;n to&agrave;n địa b&agrave;n.</p>\r\n\r\n<p>Khi theo d&otilde;i <strong>chỉ số AQI</strong> kh&ocirc;ng n&ecirc;n nh&igrave;n v&agrave;o 1 gi&aacute; trị tuyệt đối ở 1 thời điểm v&agrave; địa điểm. Trong đ&oacute;:</p>\r\n\r\n<p>&ndash; Theo d&otilde;i mức độ chất lượng kh&ocirc;ng kh&iacute; để c&oacute; c&aacute;c hoạt động ph&ugrave; hợp.</p>\r\n\r\n<p>&ndash; Theo d&otilde;i xu hướng để biết diễn biến chất lượng kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-chi-so-chat-luong-khong-khi-va-nhung-dieu-can-biet', 'Chỉ số chất lượng không khí và những điều cần biết', '', ''),
(207, 104, 'vn', 'Xe điện-lựa chọn thông minh khi ô nhiễm ngày càng gia tăng', '', '<p><!-- wp:paragraph --></p>\r\n\r\n<p><strong>Kh&oacute;i bụi của c&aacute;c phương tiện tham gia giao th&ocirc;ng l&agrave; một trong những nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y n&ecirc;n &ocirc; nhiễm kh&ocirc;ng kh&iacute;. Trước thực trạng n&agrave;y, việc sử dụng xe điện l&agrave; một lựa chọn th&ocirc;ng minh,vừa tiết kiệm chi ph&iacute; xăng xe vừa bảo vệ m&ocirc;i trường.</strong></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Sử dụng xe điện l&agrave; một xu thế mới</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Kh&ocirc;ng giống như c&aacute;c phương tiện th&ocirc;ng thường sử dụng động cơ chạy bằng xăng hoặc diesel, xe điện sử dụng động cơ điện chạy bằng điện từ pin hoặc pin nhi&ecirc;n liệu. Nghi&ecirc;n cứu đ&atilde; chỉ ra rằng c&aacute;c phương tiện giao th&ocirc;ng chạy bằng điện tốt hơn cho m&ocirc;i trường. Ch&uacute;ng thải ra &iacute;t kh&iacute; nh&agrave; k&iacute;nh v&agrave; c&aacute;c chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong suốt cuộc đời so với xe chạy bằng xăng hoặc dầu diesel. Ch&iacute;nh ưu điểm nổi trổi n&agrave;y đ&atilde; khiến c&aacute;c d&ograve;ng xe điện c&oacute; sức h&uacute;t hơn bao giờ hết đối với người ti&ecirc;u d&ugrave;ng, đặc biệt khi &ocirc; nhiễm đang l&agrave; một mối lo ngại lớn. Nắm bắt được nhu cầu thị trường, nhiều h&atilde;ng xe điện đ&atilde; cho ra đời c&aacute;c sản phẩm mới mẫu m&atilde; đa dạng phong ph&uacute;. Một trong những đơn vị đi đầu trong lĩnh vực n&agrave;y phải kể đến tập đo&agrave;n Vingroup, đại diện l&agrave; c&ocirc;ng ty con Vinfast.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Sử dụng xe điện g&oacute;p phần bảo vệ m&ocirc;i trường</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Những chiếc xe điện hiện đại đầu ti&ecirc;n chạy tr&ecirc;n đường phố l&agrave; v&agrave;o những năm 2000. Sử dụng c&aacute;c phương tiện n&agrave;y ch&iacute;nh l&agrave; đ&oacute;ng g&oacute;p v&agrave;o việc cải thiện chất lượng kh&ocirc;ng kh&iacute; ở c&aacute;c th&agrave;nh phố. Kh&ocirc;ng c&oacute; ống xả, xe điện kh&ocirc;ng tạo ra kh&iacute; thải carbon dioxide khi xe hoạt động. Điều n&agrave;y l&agrave;m giảm &ocirc; nhiễm kh&ocirc;ng kh&iacute; một c&aacute;ch đ&aacute;ng kể. Trong một năm, chỉ cần một chiếc xe điện tr&ecirc;n đường c&oacute; thể tiết kiệm trung b&igrave;nh 1,5 triệu gram CO2 tương đương với bốn chuyến bay trở về từ London đến Barcelona. Kh&ocirc;ng phải tự nhi&ecirc;n m&agrave; ch&iacute;nh phủ Anh đ&atilde; đặt mục ti&ecirc;u rằng việc b&aacute;n xe chạy bằng xăng v&agrave; dầu diesel sẽ bị cấm v&agrave;o năm 2040. Ngo&agrave;i ra, sử dụng xe điện cũng c&oacute; thể gi&uacute;p chống &ocirc; nhiễm tiếng ồn. Khi những chiếc xe n&agrave;y chạy tr&ecirc;n đường, ch&uacute;ng kh&ocirc;ng g&acirc;y ra những &acirc;m thanh lớn, ồn &agrave;o. Ch&uacute;ng ta c&oacute; thể tận hưởng sự sự y&ecirc;n b&igrave;nh khi tham gia giao th&ocirc;ng.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Những lưu &yacute; khi sử dụng xe điện</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng n&ecirc;n sạc điện nhiều lần</strong> : Để hạn chế chai pin, người sử dụng kh&ocirc;ng n&ecirc;n sạc qu&aacute; nhiều lần. N&ecirc;n canh thời gian sạc đầy để ngắt nguồn điện, gi&uacute;p ắc quy bền hơn v&agrave; giảm hiện tượng phồng ắc quy. Tốt nhất n&ecirc;n để xe gần hết ắc quy v&agrave; sạc 1 lần cho đầy pin rồi r&uacute;t điện. Tr&aacute;nh để ắc-quy cạn kiệt điện rồi mới sạc, cũng rất nhanh l&agrave;m chai ắc-quy.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Hệ thống pin hay ắc quy nhạy cảm với nước</strong> : Nếu để những bộ phận n&agrave;y ng&acirc;m nước, c&aacute;ch duy nhất chỉ c&oacute; thể l&agrave; thay thế linh kiện mới. Đ&acirc;y l&agrave; điều bất tiện nhất của tất cả c&aacute;c loại xe điện. Trong trường hợp gặp đường ngập nước n&ecirc;n c&acirc;n nhắc khả năng vượt qua hay kh&ocirc;ng. Đừng n&ecirc;n cố gắng dễ dẫn đến tiền mất tật mang. Ngo&agrave;i ra, khi rửa xe cần hết sức tr&aacute;nh phun trực tiếp nước v&agrave;o nơi đặt hệ thống điều khiển điện tử.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Sử dụng xe sai c&aacute;ch</strong>: Với thực tế giao th&ocirc;ng ở Việt Nam tạo cho người d&ugrave;ng th&oacute;i quen nhấp nhả phanh như sử dụng xe m&aacute;y chạy xăng. Đ&acirc;y l&agrave; điều l&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng tốt đối với việc sử dụng xe, dễ dẫn tới hỏng h&oacute;c v&agrave; tốn năng lượng nhiều hơn. Người d&ugrave;ng n&ecirc;n từ bỏ th&oacute;i quen nhấp nhả phanh li&ecirc;n tục để hạn chế ti&ecirc;u hao nhi&ecirc;n liệu cũng như những rủi ro tiềm ẩn. N&ecirc;n cho xe nghỉ mỗi khi di chuyển từ 20-25km, để l&agrave;m giảm nhiệt độ pin cũng như m&ocirc; tơ điện.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:paragraph --></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '', '', '', '', '', 0, 'xe-dien-lua-chon-thong-minh-khi-o-nhiem-ngay-cang-gia-tang', 'Xe điện-lựa chọn thông minh khi ô nhiễm ngày càng gia tăng', '', ''),
(208, 104, 'en', 'english version Xe điện-lựa chọn thông minh khi ô nhiễm ngày càng gia tăng', 'english version ', 'english version <p><!-- wp:paragraph --></p>\r\n\r\n<p><strong>Kh&oacute;i bụi của c&aacute;c phương tiện tham gia giao th&ocirc;ng l&agrave; một trong những nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y n&ecirc;n &ocirc; nhiễm kh&ocirc;ng kh&iacute;. Trước thực trạng n&agrave;y, việc sử dụng xe điện l&agrave; một lựa chọn th&ocirc;ng minh,vừa tiết kiệm chi ph&iacute; xăng xe vừa bảo vệ m&ocirc;i trường.</strong></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Sử dụng xe điện l&agrave; một xu thế mới</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Kh&ocirc;ng giống như c&aacute;c phương tiện th&ocirc;ng thường sử dụng động cơ chạy bằng xăng hoặc diesel, xe điện sử dụng động cơ điện chạy bằng điện từ pin hoặc pin nhi&ecirc;n liệu. Nghi&ecirc;n cứu đ&atilde; chỉ ra rằng c&aacute;c phương tiện giao th&ocirc;ng chạy bằng điện tốt hơn cho m&ocirc;i trường. Ch&uacute;ng thải ra &iacute;t kh&iacute; nh&agrave; k&iacute;nh v&agrave; c&aacute;c chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong suốt cuộc đời so với xe chạy bằng xăng hoặc dầu diesel. Ch&iacute;nh ưu điểm nổi trổi n&agrave;y đ&atilde; khiến c&aacute;c d&ograve;ng xe điện c&oacute; sức h&uacute;t hơn bao giờ hết đối với người ti&ecirc;u d&ugrave;ng, đặc biệt khi &ocirc; nhiễm đang l&agrave; một mối lo ngại lớn. Nắm bắt được nhu cầu thị trường, nhiều h&atilde;ng xe điện đ&atilde; cho ra đời c&aacute;c sản phẩm mới mẫu m&atilde; đa dạng phong ph&uacute;. Một trong những đơn vị đi đầu trong lĩnh vực n&agrave;y phải kể đến tập đo&agrave;n Vingroup, đại diện l&agrave; c&ocirc;ng ty con Vinfast.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Sử dụng xe điện g&oacute;p phần bảo vệ m&ocirc;i trường</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph --></p>\r\n\r\n<p>Những chiếc xe điện hiện đại đầu ti&ecirc;n chạy tr&ecirc;n đường phố l&agrave; v&agrave;o những năm 2000. Sử dụng c&aacute;c phương tiện n&agrave;y ch&iacute;nh l&agrave; đ&oacute;ng g&oacute;p v&agrave;o việc cải thiện chất lượng kh&ocirc;ng kh&iacute; ở c&aacute;c th&agrave;nh phố. Kh&ocirc;ng c&oacute; ống xả, xe điện kh&ocirc;ng tạo ra kh&iacute; thải carbon dioxide khi xe hoạt động. Điều n&agrave;y l&agrave;m giảm &ocirc; nhiễm kh&ocirc;ng kh&iacute; một c&aacute;ch đ&aacute;ng kể. Trong một năm, chỉ cần một chiếc xe điện tr&ecirc;n đường c&oacute; thể tiết kiệm trung b&igrave;nh 1,5 triệu gram CO2 tương đương với bốn chuyến bay trở về từ London đến Barcelona. Kh&ocirc;ng phải tự nhi&ecirc;n m&agrave; ch&iacute;nh phủ Anh đ&atilde; đặt mục ti&ecirc;u rằng việc b&aacute;n xe chạy bằng xăng v&agrave; dầu diesel sẽ bị cấm v&agrave;o năm 2040. Ngo&agrave;i ra, sử dụng xe điện cũng c&oacute; thể gi&uacute;p chống &ocirc; nhiễm tiếng ồn. Khi những chiếc xe n&agrave;y chạy tr&ecirc;n đường, ch&uacute;ng kh&ocirc;ng g&acirc;y ra những &acirc;m thanh lớn, ồn &agrave;o. Ch&uacute;ng ta c&oacute; thể tận hưởng sự sự y&ecirc;n b&igrave;nh khi tham gia giao th&ocirc;ng.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2><strong>Những lưu &yacute; khi sử dụng xe điện</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng n&ecirc;n sạc điện nhiều lần</strong> : Để hạn chế chai pin, người sử dụng kh&ocirc;ng n&ecirc;n sạc qu&aacute; nhiều lần. N&ecirc;n canh thời gian sạc đầy để ngắt nguồn điện, gi&uacute;p ắc quy bền hơn v&agrave; giảm hiện tượng phồng ắc quy. Tốt nhất n&ecirc;n để xe gần hết ắc quy v&agrave; sạc 1 lần cho đầy pin rồi r&uacute;t điện. Tr&aacute;nh để ắc-quy cạn kiệt điện rồi mới sạc, cũng rất nhanh l&agrave;m chai ắc-quy.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Hệ thống pin hay ắc quy nhạy cảm với nước</strong> : Nếu để những bộ phận n&agrave;y ng&acirc;m nước, c&aacute;ch duy nhất chỉ c&oacute; thể l&agrave; thay thế linh kiện mới. Đ&acirc;y l&agrave; điều bất tiện nhất của tất cả c&aacute;c loại xe điện. Trong trường hợp gặp đường ngập nước n&ecirc;n c&acirc;n nhắc khả năng vượt qua hay kh&ocirc;ng. Đừng n&ecirc;n cố gắng dễ dẫn đến tiền mất tật mang. Ngo&agrave;i ra, khi rửa xe cần hết sức tr&aacute;nh phun trực tiếp nước v&agrave;o nơi đặt hệ thống điều khiển điện tử.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li><strong>Sử dụng xe sai c&aacute;ch</strong>: Với thực tế giao th&ocirc;ng ở Việt Nam tạo cho người d&ugrave;ng th&oacute;i quen nhấp nhả phanh như sử dụng xe m&aacute;y chạy xăng. Đ&acirc;y l&agrave; điều l&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng tốt đối với việc sử dụng xe, dễ dẫn tới hỏng h&oacute;c v&agrave; tốn năng lượng nhiều hơn. Người d&ugrave;ng n&ecirc;n từ bỏ th&oacute;i quen nhấp nhả phanh li&ecirc;n tục để hạn chế ti&ecirc;u hao nhi&ecirc;n liệu cũng như những rủi ro tiềm ẩn. N&ecirc;n cho xe nghỉ mỗi khi di chuyển từ 20-25km, để l&agrave;m giảm nhiệt độ pin cũng như m&ocirc; tơ điện.</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:paragraph --></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '', '', '', '', '', 0, 'en-xe-dien-lua-chon-thong-minh-khi-o-nhiem-ngay-cang-gia-tang', 'Xe điện-lựa chọn thông minh khi ô nhiễm ngày càng gia tăng', '', ''),
(209, 105, 'vn', '40 sự thật về ô nhiễm không khí ( phần 1)', '', '<blockquote>\r\n<p><strong>&quot;&Ocirc; nhiễm Kh&ocirc;ng Kh&iacute;&quot; l&agrave; một cụm từ g&acirc;y lo lắng trong những ng&agrave;y gần đ&acirc;y. Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y hại đối với sức khỏe v&agrave; m&ocirc;i trường của bạn. </strong></p>\r\n</blockquote>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Theo Wikipedia, <strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> l&agrave; sự thay đổi lớn trong th&agrave;nh phần của kh&ocirc;ng kh&iacute;, chủ yếu do kh&oacute;i, bụi, hơi hoặc c&aacute;c kh&iacute; lạ được đưa v&agrave;o kh&ocirc;ng kh&iacute;, c&oacute; sự tỏa m&ugrave;i, l&agrave;m giảm tầm nh&igrave;n xa, g&acirc;y biến đổi kh&iacute; hậu, g&acirc;y bệnh cho con người v&agrave; cũng c&oacute; thể g&acirc;y hại cho sinh vật kh&aacute;c như động vật v&agrave; c&acirc;y lương thực, v&agrave; c&oacute; thể l&agrave;m hỏng m&ocirc;i trường tự nhi&ecirc;n hoặc x&acirc;y dựng. Hoạt động của con người v&agrave; c&aacute;c qu&aacute; tr&igrave;nh tự nhi&ecirc;n c&oacute; thể g&acirc;y ra &ocirc; nhiễm.</p>\r\n\r\n<h2>40 sự thật về &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Sự thật 1: Một người Mỹ trung b&igrave;nh h&iacute;t 2 gallon kh&ocirc;ng kh&iacute; mỗi ph&uacute;t, nghĩa l&agrave; khoảng 3400 gallon kh&ocirc;ng kh&iacute; mỗi ng&agrave;y.</p>\r\n\r\n<p>Sự thật 2: H&iacute;t phải &ocirc; nhiễm độc hại lấy đi &iacute;t nhất 1-2 năm cuộc đời một con người.</p>\r\n\r\n<p>Sự thật 3: C&aacute;c chất &ocirc; nhiễm g&acirc;y ra những t&aacute;c hại cấp độ nhỏ như cay mắt,ngứa cổ họng đến cấp độ lớn như kh&oacute; thở v&agrave; tử vong.</p>\r\n\r\n<p>Sự thật 4: C&aacute;c chất &ocirc; nhiễm được thải v&agrave;o kh&ocirc;ng kh&iacute;, tr&aacute;i ngược với c&aacute;c chất độc hại trong đất v&agrave; nước, l&agrave; những chất g&acirc;y hại nhất.</p>\r\n\r\n<p>Sự thật 5: Mức độ &ocirc; nhiễm gia tăng ở Bắc Kinh đ&atilde; mang đến một căn bệnh mới - Căn bệnh ho Bắc Kinh.</p>\r\n\r\n<p>Sự thật 6: Hiện tượng n&agrave;y kh&ocirc;ng phải gần đ&acirc;y mới xuất hiện. Năm 1952, một đợt kh&oacute; bụi lớn ở London đ&atilde; giết chết 8000 người.</p>\r\n\r\n<p>Sự thật 7: Những c&aacute;i chết do &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y thiệt hại cho Li&ecirc;n minh ch&acirc;u &Acirc;u 161 tỷ euro.</p>\r\n\r\n<p>Sự thật 8: Xe điện sản sinh ra &iacute;t chất g&acirc;y &ocirc; nhiễm hơn. Ch&uacute;ng khuấy động bụi bẩn nhưng kh&ocirc;ng tạo ra kh&iacute;.</p>\r\n\r\n<p>Sự thật 9: Sản xuất dầu th&ocirc; nặng l&agrave;m tăng 40% khả năng &ocirc; nhiễm nhiễm độc so với sản xuất dầu th&ocirc; nhẹ.</p>\r\n\r\n<p>Sự thật 10: Theo tạp ch&iacute; Lancet, kh&ocirc;ng kh&iacute; &ocirc; nhiễm do chờ đợi trong giao th&ocirc;ng l&agrave;m tăng khả năng tử vong do đau tim.</p>\r\n\r\n<p>Sự thật 11: Kh&ocirc;ng kh&iacute; độc hại l&agrave; mối đe dọa lớn hơn đối với trẻ em, do k&iacute;ch thước vật l&yacute; v&agrave; dung t&iacute;ch phổi của trẻ nhỏ hơn so với người lớn.</p>\r\n\r\n<p>Sự thật 12: Bầu kh&ocirc;ng kh&iacute; kh&ocirc;ng trong l&agrave;nh v&agrave; c&aacute;c ca tử vong do ch&uacute;ng đang gia tăng nhanh nhất ở ch&acirc;u &Aacute;.</p>\r\n\r\n<p>Sự thật 13: Kh&oacute;i bụi trong kh&ocirc;ng kh&iacute; ảnh hưởng đến c&aacute; heo v&agrave; khiến ch&uacute;ng mắc c&aacute;c bệnh phổi đen.</p>\r\n\r\n<p>(C&ograve;n tiếp...)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, '40-su-that-ve-o-nhiem-khong-khi-phan-1', '40 sự thật về ô nhiễm không khí ( phần 1)', '', ''),
(210, 105, 'en', 'english version 40 sự thật về ô nhiễm không khí ( phần 1)', 'english version ', 'english version <blockquote>\r\n<p><strong>&quot;&Ocirc; nhiễm Kh&ocirc;ng Kh&iacute;&quot; l&agrave; một cụm từ g&acirc;y lo lắng trong những ng&agrave;y gần đ&acirc;y. Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y hại đối với sức khỏe v&agrave; m&ocirc;i trường của bạn. </strong></p>\r\n</blockquote>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Theo Wikipedia, <strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> l&agrave; sự thay đổi lớn trong th&agrave;nh phần của kh&ocirc;ng kh&iacute;, chủ yếu do kh&oacute;i, bụi, hơi hoặc c&aacute;c kh&iacute; lạ được đưa v&agrave;o kh&ocirc;ng kh&iacute;, c&oacute; sự tỏa m&ugrave;i, l&agrave;m giảm tầm nh&igrave;n xa, g&acirc;y biến đổi kh&iacute; hậu, g&acirc;y bệnh cho con người v&agrave; cũng c&oacute; thể g&acirc;y hại cho sinh vật kh&aacute;c như động vật v&agrave; c&acirc;y lương thực, v&agrave; c&oacute; thể l&agrave;m hỏng m&ocirc;i trường tự nhi&ecirc;n hoặc x&acirc;y dựng. Hoạt động của con người v&agrave; c&aacute;c qu&aacute; tr&igrave;nh tự nhi&ecirc;n c&oacute; thể g&acirc;y ra &ocirc; nhiễm.</p>\r\n\r\n<h2>40 sự thật về &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Sự thật 1: Một người Mỹ trung b&igrave;nh h&iacute;t 2 gallon kh&ocirc;ng kh&iacute; mỗi ph&uacute;t, nghĩa l&agrave; khoảng 3400 gallon kh&ocirc;ng kh&iacute; mỗi ng&agrave;y.</p>\r\n\r\n<p>Sự thật 2: H&iacute;t phải &ocirc; nhiễm độc hại lấy đi &iacute;t nhất 1-2 năm cuộc đời một con người.</p>\r\n\r\n<p>Sự thật 3: C&aacute;c chất &ocirc; nhiễm g&acirc;y ra những t&aacute;c hại cấp độ nhỏ như cay mắt,ngứa cổ họng đến cấp độ lớn như kh&oacute; thở v&agrave; tử vong.</p>\r\n\r\n<p>Sự thật 4: C&aacute;c chất &ocirc; nhiễm được thải v&agrave;o kh&ocirc;ng kh&iacute;, tr&aacute;i ngược với c&aacute;c chất độc hại trong đất v&agrave; nước, l&agrave; những chất g&acirc;y hại nhất.</p>\r\n\r\n<p>Sự thật 5: Mức độ &ocirc; nhiễm gia tăng ở Bắc Kinh đ&atilde; mang đến một căn bệnh mới - Căn bệnh ho Bắc Kinh.</p>\r\n\r\n<p>Sự thật 6: Hiện tượng n&agrave;y kh&ocirc;ng phải gần đ&acirc;y mới xuất hiện. Năm 1952, một đợt kh&oacute; bụi lớn ở London đ&atilde; giết chết 8000 người.</p>\r\n\r\n<p>Sự thật 7: Những c&aacute;i chết do &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y thiệt hại cho Li&ecirc;n minh ch&acirc;u &Acirc;u 161 tỷ euro.</p>\r\n\r\n<p>Sự thật 8: Xe điện sản sinh ra &iacute;t chất g&acirc;y &ocirc; nhiễm hơn. Ch&uacute;ng khuấy động bụi bẩn nhưng kh&ocirc;ng tạo ra kh&iacute;.</p>\r\n\r\n<p>Sự thật 9: Sản xuất dầu th&ocirc; nặng l&agrave;m tăng 40% khả năng &ocirc; nhiễm nhiễm độc so với sản xuất dầu th&ocirc; nhẹ.</p>\r\n\r\n<p>Sự thật 10: Theo tạp ch&iacute; Lancet, kh&ocirc;ng kh&iacute; &ocirc; nhiễm do chờ đợi trong giao th&ocirc;ng l&agrave;m tăng khả năng tử vong do đau tim.</p>\r\n\r\n<p>Sự thật 11: Kh&ocirc;ng kh&iacute; độc hại l&agrave; mối đe dọa lớn hơn đối với trẻ em, do k&iacute;ch thước vật l&yacute; v&agrave; dung t&iacute;ch phổi của trẻ nhỏ hơn so với người lớn.</p>\r\n\r\n<p>Sự thật 12: Bầu kh&ocirc;ng kh&iacute; kh&ocirc;ng trong l&agrave;nh v&agrave; c&aacute;c ca tử vong do ch&uacute;ng đang gia tăng nhanh nhất ở ch&acirc;u &Aacute;.</p>\r\n\r\n<p>Sự thật 13: Kh&oacute;i bụi trong kh&ocirc;ng kh&iacute; ảnh hưởng đến c&aacute; heo v&agrave; khiến ch&uacute;ng mắc c&aacute;c bệnh phổi đen.</p>\r\n\r\n<p>(C&ograve;n tiếp...)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-40-su-that-ve-o-nhiem-khong-khi-phan-1', '40 sự thật về ô nhiễm không khí ( phần 1)', '', ''),
(211, 106, 'vn', '40 sự thật về ô nhiễm không khí ( phần 2)', '', '<p><strong>Khi n&oacute;i về &ocirc; nhiễm kh&ocirc;ng kh&iacute;, h&igrave;nh ảnh đầu ti&ecirc;n m&agrave; ch&uacute;ng ta nghĩ tới đ&oacute; những đ&aacute;m kh&oacute;i bụi khổng lồ nặng nề tr&ocirc;i dạt tr&ecirc;n c&aacute;c th&agrave;nh phố v&agrave; c&aacute;c nh&agrave; m&aacute;y c&ocirc;ng nghiệp. Đ&acirc;y l&agrave; h&igrave;nh thức &ocirc; nhiễm kh&ocirc;ng kh&iacute; đầu ti&ecirc;n v&agrave; r&otilde; r&agrave;ng nhất, nhưng n&oacute; kh&ocirc;ng phải l&agrave; h&igrave;nh thức duy nhất. Ở phần 1, ch&uacute;ng ta đ&atilde; t&igrave;m hiểu được 13 sự thật kh&ocirc;ng phải ai cũng biết về &ocirc; nhiễm kh&ocirc;ng kh&iacute;, phần 2 sẽ h&eacute; lộ nhiều th&ocirc;ng tin hơn nữa.</strong></p>\r\n\r\n<p>Sự thật 14: 70% kh&ocirc;ng kh&iacute; độc hại ở c&aacute;c th&agrave;nh phố Trung Quốc l&agrave; do ống xả.</p>\r\n\r\n<p>Sự thật 15: 5.000 c&aacute;i chết sớm ở Nam California được g&acirc;y ra do kh&iacute; thải từ xe tải diesel.</p>\r\n\r\n<p>Sự thật 16: Nếu bạn du lịch tới Grand Canyon thuộc tiểu bang Arizona - một trong c&aacute;c kỳ quan thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, bạn sẽ kh&ocirc;ng thể nh&igrave;n thấy ph&iacute;a b&ecirc;n kia trong 1000 dặm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 17: C&aacute;c chất nguy hiểm nhất được thải ra từ kh&ocirc;ng kh&iacute; v&agrave; &iacute;t hơn từ nước v&agrave; đất c&ugrave;ng nhau.</p>\r\n\r\n<p>Sự thật 18: C&aacute;ch tốt nhất để c&oacute; một bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh l&agrave; đi bộ v&agrave; đi xe đạp.</p>\r\n\r\n<p>Sự thật 19: Một chiếc xe bu&yacute;t chở h&agrave;nh kh&aacute;ch tương đương với l&aacute;i 40 chiếc xe.</p>\r\n\r\n<p>Sự thật 20: 28% người Mỹ tin rằng họ bị ảnh hưởng nhiều nhất bởi &ocirc; nhiễm kh&ocirc;ng kh&iacute; do xe cộ.</p>\r\n\r\n<p>Sự thật 21: Bạn c&oacute; tin rằng &ocirc; nhiễm kh&ocirc;ng kh&iacute; ở Trung Quốc c&oacute; thể đi đến tận Thung lũng Trung t&acirc;m California.</p>\r\n\r\n<p>Sự thật 22: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ngo&agrave;i trời được xếp hạng top 10 nguy&ecirc;n nh&acirc;n g&acirc;y tử vong h&agrave;ng đầu tr&ecirc;n tr&aacute;i đất.</p>\r\n\r\n<p>Sự thật 23: 65% số ca tử vong ở ch&acirc;u &Aacute; v&agrave; 25% số ca tử vong ở Ấn Độ l&agrave; do kh&ocirc;ng kh&iacute; độc hại.</p>\r\n\r\n<p>Sự thật 24: 2 triệu &ocirc; t&ocirc; ở Manila, Philippines g&acirc;y ra 80% c&aacute;c chất g&acirc;y hại trong kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 25: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ở Ấn Độ ước t&iacute;nh g&acirc;y ra 527,700 ca tử vong mỗi năm.</p>\r\n\r\n<p>Sự thật 26: Số người chết ở Mỹ mỗi năm do kh&ocirc;ng kh&iacute; độc hại l&agrave; tr&ecirc;n 50.000 người.</p>\r\n\r\n<p>(C&ograve;n tiếp...)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, '40-su-that-ve-o-nhiem-khong-khi-phan-2', '40 sự thật về ô nhiễm không khí ( phần 2)', '', ''),
(212, 106, 'en', 'english version 40 sự thật về ô nhiễm không khí ( phần 2)', 'english version ', 'english version <p><strong>Khi n&oacute;i về &ocirc; nhiễm kh&ocirc;ng kh&iacute;, h&igrave;nh ảnh đầu ti&ecirc;n m&agrave; ch&uacute;ng ta nghĩ tới đ&oacute; những đ&aacute;m kh&oacute;i bụi khổng lồ nặng nề tr&ocirc;i dạt tr&ecirc;n c&aacute;c th&agrave;nh phố v&agrave; c&aacute;c nh&agrave; m&aacute;y c&ocirc;ng nghiệp. Đ&acirc;y l&agrave; h&igrave;nh thức &ocirc; nhiễm kh&ocirc;ng kh&iacute; đầu ti&ecirc;n v&agrave; r&otilde; r&agrave;ng nhất, nhưng n&oacute; kh&ocirc;ng phải l&agrave; h&igrave;nh thức duy nhất. Ở phần 1, ch&uacute;ng ta đ&atilde; t&igrave;m hiểu được 13 sự thật kh&ocirc;ng phải ai cũng biết về &ocirc; nhiễm kh&ocirc;ng kh&iacute;, phần 2 sẽ h&eacute; lộ nhiều th&ocirc;ng tin hơn nữa.</strong></p>\r\n\r\n<p>Sự thật 14: 70% kh&ocirc;ng kh&iacute; độc hại ở c&aacute;c th&agrave;nh phố Trung Quốc l&agrave; do ống xả.</p>\r\n\r\n<p>Sự thật 15: 5.000 c&aacute;i chết sớm ở Nam California được g&acirc;y ra do kh&iacute; thải từ xe tải diesel.</p>\r\n\r\n<p>Sự thật 16: Nếu bạn du lịch tới Grand Canyon thuộc tiểu bang Arizona - một trong c&aacute;c kỳ quan thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ, bạn sẽ kh&ocirc;ng thể nh&igrave;n thấy ph&iacute;a b&ecirc;n kia trong 1000 dặm do &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 17: C&aacute;c chất nguy hiểm nhất được thải ra từ kh&ocirc;ng kh&iacute; v&agrave; &iacute;t hơn từ nước v&agrave; đất c&ugrave;ng nhau.</p>\r\n\r\n<p>Sự thật 18: C&aacute;ch tốt nhất để c&oacute; một bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh l&agrave; đi bộ v&agrave; đi xe đạp.</p>\r\n\r\n<p>Sự thật 19: Một chiếc xe bu&yacute;t chở h&agrave;nh kh&aacute;ch tương đương với l&aacute;i 40 chiếc xe.</p>\r\n\r\n<p>Sự thật 20: 28% người Mỹ tin rằng họ bị ảnh hưởng nhiều nhất bởi &ocirc; nhiễm kh&ocirc;ng kh&iacute; do xe cộ.</p>\r\n\r\n<p>Sự thật 21: Bạn c&oacute; tin rằng &ocirc; nhiễm kh&ocirc;ng kh&iacute; ở Trung Quốc c&oacute; thể đi đến tận Thung lũng Trung t&acirc;m California.</p>\r\n\r\n<p>Sự thật 22: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ngo&agrave;i trời được xếp hạng top 10 nguy&ecirc;n nh&acirc;n g&acirc;y tử vong h&agrave;ng đầu tr&ecirc;n tr&aacute;i đất.</p>\r\n\r\n<p>Sự thật 23: 65% số ca tử vong ở ch&acirc;u &Aacute; v&agrave; 25% số ca tử vong ở Ấn Độ l&agrave; do kh&ocirc;ng kh&iacute; độc hại.</p>\r\n\r\n<p>Sự thật 24: 2 triệu &ocirc; t&ocirc; ở Manila, Philippines g&acirc;y ra 80% c&aacute;c chất g&acirc;y hại trong kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Sự thật 25: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; ở Ấn Độ ước t&iacute;nh g&acirc;y ra 527,700 ca tử vong mỗi năm.</p>\r\n\r\n<p>Sự thật 26: Số người chết ở Mỹ mỗi năm do kh&ocirc;ng kh&iacute; độc hại l&agrave; tr&ecirc;n 50.000 người.</p>\r\n\r\n<p>(C&ograve;n tiếp...)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-40-su-that-ve-o-nhiem-khong-khi-phan-2', '40 sự thật về ô nhiễm không khí ( phần 2)', '', ''),
(213, 107, 'vn', 'Cháy rừng ở Úc không có dấu hiệu dừng lại.', '', '<p><strong>Ch&aacute;y rừng ở &Uacute;c đang g&acirc;y ra những thiệt hại nặng nề về người v&agrave; của. Tổng cộng c&oacute; 24 người đ&atilde; chết tr&ecirc;n to&agrave;n quốc v&agrave; chỉ ri&ecirc;ng ở bang New South Wales, hơn 1.300 ng&ocirc;i nh&agrave; đ&atilde; bị ph&aacute; hủy.Tất cả đ&atilde; trở n&ecirc;n trầm trọng hơn bởi thời tiết nắng n&oacute;ng v&agrave; hạn h&aacute;n dai dẳng, biến đổi kh&iacute; hậu l&agrave; một yếu tố khiến thảm họa thi&ecirc;n nhi&ecirc;n n&agrave;y diễn biến xấu hơn.</strong></p>\r\n\r\n<h2>Những đ&aacute;m ch&aacute;y ở đ&acirc;u?</h2>\r\n\r\n<p>Những vụ ch&aacute;y đ&atilde; xuất hiện ở khắp c&aacute;c tiểu bang của &Uacute;c, nhưng New South Wales l&agrave; nơi bị ảnh hưởng nặng nề nhất. Hậu quả l&agrave; những khu rừng v&agrave; c&aacute;c c&ocirc;ng vi&ecirc;n quốc gia như Blue Mountains bị ph&aacute; hủy nghi&ecirc;m trọng. Một số th&agrave;nh phố lớn nhất của &Uacute;c cũng đ&atilde; bị ảnh hưởng, bao gồm Melbourne v&agrave; Sydney - nơi c&aacute;c đ&aacute;m ch&aacute;y đ&atilde; l&agrave;m hư hại những ng&ocirc;i nh&agrave; ở v&ugrave;ng ngoại &ocirc; v&agrave; những đ&aacute;m kh&oacute;i d&agrave;y đ&atilde; che phủ trung t&acirc;m đ&ocirc; thị. Đầu th&aacute;ng 12, kh&oacute;i ở Sydney rất tệ đến nỗi chất lượng kh&ocirc;ng kh&iacute; đo được gấp 11 lần mức &quot;nguy hiểm&quot;. C&aacute;c đ&aacute;m ch&aacute;y c&oacute; phạm vi từ khu vực nhỏ - c&aacute;c t&ograve;a nh&agrave; biệt lập hoặc một phần của khu phố - đến c&aacute;c đ&aacute;m ch&aacute;y lớn tr&ecirc;n diện rộng. Một số đ&aacute;m ch&aacute;y bắt đầu ch&aacute;y trong v&agrave;i ng&agrave;y nhưng c&oacute; những nơi đ&atilde; b&ugrave;ng ch&aacute;y trong nhiều th&aacute;ng.</p>\r\n\r\n<h2><strong>Nguy&ecirc;n nh&acirc;n của c&aacute;c vụ ch&aacute;y ?</strong></h2>\r\n\r\n<p>Mỗi năm v&agrave;o m&ugrave;a h&egrave; ở &Uacute;c, thời tiết kh&ocirc; v&agrave; n&oacute;ng khiến cho những đ&aacute;m ch&aacute;y dễ d&agrave;ng bắt đầu v&agrave; lan rộng. Nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n đến từ những vụ s&eacute;t đ&aacute;nh v&agrave; c&aacute;c khu rừng bị ảnh hưởng hạn h&aacute;n. S&eacute;t kh&ocirc; l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra một số vụ ch&aacute;y trong khu vực Đ&ocirc;ng Gippsland Victoria v&agrave;o cuối th&aacute;ng 12. Ngo&agrave;i ra, nguy&ecirc;n nh&acirc;n c&ograve;n đến từ con người. V&agrave;o th&aacute;ng 11, Sở cứu hỏa n&ocirc;ng th&ocirc;n tiểu bang NSW đ&atilde; bắt giữ một th&agrave;nh vi&ecirc;n t&igrave;nh nguyện 19 tuổi v&igrave; nghi ngờ đốt ph&aacute;, buộc tội anh ta với bảy tội cố &yacute; g&acirc;y ra c&aacute;c vụ hỏa hoạn trong khoảng thời gian s&aacute;u tuần.</p>\r\n\r\n<h2><strong>V&igrave; sao ch&aacute;y rừng ở &Uacute;c trở n&ecirc;n tệ hơn?</strong></h2>\r\n\r\n<p>M&ugrave;a ch&aacute;y ở &Uacute;c lu&ocirc;n nguy hiểm - trận hỏa hoạn v&agrave;o Thứ Bảy Đen Tối năm 2009 đ&atilde; giết chết 173 người ở Victoria, khiến n&oacute; trở th&agrave;nh thảm họa ch&aacute;y rừng kinh ho&agrave;ng nhất được ghi nhận. &Uacute;c đang trải qua một trong những đợt hạn h&aacute;n tồi tệ nhất trong nhiều thập kỷ - Cục Kh&iacute; tượng của đất nước cho biết rằng m&ugrave;a xu&acirc;n năm ngo&aacute;i l&agrave; m&ugrave;a kh&ocirc; nhất trong lịch sử. Trong khi đ&oacute;, một đợt nắng n&oacute;ng v&agrave;o th&aacute;ng 12 đ&atilde; ph&aacute; vỡ kỷ lục về nhiệt độ trung b&igrave;nh cao nhất to&agrave;n quốc, với một số nơi bị biến đổi dưới nhiệt độ cao hơn 40 độ C (khoảng 113-120 độ F).</p>\r\n\r\n<p>Những cơn gi&oacute; mạnh cũng đ&atilde; khiến đ&aacute;m ch&aacute;y v&agrave; kh&oacute;i lan nhanh hơn, g&acirc;y nguy hiểm của con người - một l&iacute;nh cứu hỏa t&igrave;nh nguyện 28 tuổi đ&atilde; chết ở NSW v&agrave;o th&aacute;ng 12 sau khi xe tải của anh ta bị gi&oacute; cuốn đi.C&aacute;c chuy&ecirc;n gia cho biết biến đổi kh&iacute; hậu đ&atilde; l&agrave;m t&igrave;nh h&igrave;nh xấu hơn. Điều kiện thời tiết ng&agrave;y c&agrave;ng khắc nghiệt l&agrave; nguy&ecirc;n nh&acirc;n khiến c&aacute;c đ&aacute;m ch&aacute;y bắt đầu sớm hơn trong m&ugrave;a v&agrave; lan rộng với cường độ lớn hơn.Một số quan chức dịch vụ khẩn cấp cấp cao, bao gồm cựu ủy vi&ecirc;n của Sở Cứu hỏa v&agrave; Cứu hộ, đ&atilde; gửi thư cho Thủ tướng Scott Morrison v&agrave;o năm 2019 cảnh b&aacute;o về t&aacute;c động của cuộc khủng hoảng kh&iacute; hậu đối với &Uacute;c.</p>\r\n\r\n<h2>Những thiệt hại nặng nề</h2>\r\n\r\n<p>To&agrave;n bộ thị trấn đ&atilde; ch&igrave;m trong biển lửa v&agrave; cư d&acirc;n tr&ecirc;n nhiều tiểu bang đ&atilde; mất nh&agrave; cửa. Thiệt hại về&nbsp; c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng nặng nhất xảy ra ở NSW, tiểu bang đ&ocirc;ng d&acirc;n nhất của đất nước, nơi gần 1.300 ng&ocirc;i nh&agrave; đ&atilde; bị ph&aacute; hủy v&agrave; hơn 440 bị hư hại.Tổng cộng, hơn 5,9 triệu ha đ&atilde; bị đốt ch&aacute;y tr&ecirc;n khắp s&aacute;u tiểu bang của &Uacute;c - một khu vực rộng lớn hơn c&aacute;c quốc gia Bỉ v&agrave; Haiti cộng lại. Tiểu bang bị ảnh hưởng nặng nề nhất l&agrave; NSW, với 3,6 triệu ha bị đốt ch&aacute;y.Tổng cộng c&oacute; 24 người tr&ecirc;n khắp nước &Uacute;c đ&atilde; chết trong m&ugrave;a ch&aacute;y n&agrave;y, bao gồm một số l&iacute;nh cứu hỏa t&igrave;nh nguyện.<br />\r\nCũng đ&atilde; c&oacute; thiệt hại lớn cho động vật hoang d&atilde; v&agrave; m&ocirc;i trường. Gần một phần ba gấu kaola ở NSW c&oacute; thể đ&atilde; bị giết trong c&aacute;c vụ hỏa hoạn v&agrave; một phần ba m&ocirc;i trường sống của ch&uacute;ng đ&atilde; bị ph&aacute; hủy, Bộ trưởng M&ocirc;i trường Li&ecirc;n bang Sussan Ley cho biết.</p>\r\n\r\n<h2>Những nỗ lực trong việc giảm ch&aacute;y rừng ở &Uacute;c</h2>\r\n\r\n<p>Ch&iacute;nh quyền tiểu bang v&agrave; li&ecirc;n bang đ&atilde; rất nỗ lực để chống lại cuộc khủng hoảng hỏa hoạn trong nhiều th&aacute;ng. C&oacute; 2.300 nh&acirc;n vi&ecirc;n cứu hỏa được huy động ở NSW v&agrave; đang c&oacute; th&ecirc;m sự hỗ trợ từ Hoa Kỳ, Canada v&agrave; New Zealand. Ch&iacute;nh phủ li&ecirc;n bang cũng đ&atilde; gửi hỗ trợ qu&acirc;n sự như nh&acirc;n vi&ecirc;n qu&acirc;n đội, m&aacute;y bay kh&ocirc;ng qu&acirc;n v&agrave; t&agrave;u tuần dương của hải qu&acirc;n để chữa ch&aacute;y, t&igrave;m kiếm cứu nạn v&agrave; c&aacute;c nỗ lực l&agrave;m sạch.<br />\r\nMorrison cho biết ch&iacute;nh quyền của &ocirc;ng đ&atilde; ph&acirc;n bổ &iacute;t nhất 23 triệu đ&ocirc; la &Uacute;c (16,2 triệu đ&ocirc; la) nhằm khắc phục thảm họa cho c&aacute;c gia đ&igrave;nh v&agrave; doanh nghiệp bị ảnh hưởng, v&agrave; l&ecirc;n tới 6.000 đ&ocirc; la &Uacute;c (4.200 đ&ocirc; la) cho c&aacute;c nh&acirc;n vi&ecirc;n cứu hỏa t&igrave;nh nguyện được gọi để chữa ch&aacute;y trong hơn 10 ng&agrave;y.</p>\r\n\r\n<p><strong>Khi n&agrave;o ch&aacute;y rừng ở &Uacute;c sẽ kết th&uacute;c?</strong></p>\r\n\r\n<p>Thật kh&ocirc;ng may, &Uacute;c chỉ mới bước v&agrave;o m&ugrave;a h&egrave;. Th&ocirc;ng thường, nhiệt độ cao nhất v&agrave;o th&aacute;ng 1 v&agrave; th&aacute;ng 2, c&oacute; nghĩa l&agrave; đất nước n&agrave;y c&oacute; nguy cơ đối mặt với ch&aacute;y rừng trong nhiều th&aacute;ng.<br />\r\nC&aacute;c vụ hỏa hoạn kh&oacute; c&oacute; thể chấm dứt ho&agrave;n to&agrave;n v&igrave; đ&acirc;y l&agrave; một sự kiện xảy ra h&agrave;ng năm - v&agrave; thậm ch&iacute; c&oacute; thể trở n&ecirc;n tồi tệ hơn nếu t&igrave;nh h&igrave;nh kh&iacute; hậu li&ecirc;n tục thay đổi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'chay-rung-o-uc-khong-co-dau-hieu-dung-lai', 'Cháy rừng ở Úc không có dấu hiệu dừng lại.', '', ''),
(214, 107, 'en', 'english version Cháy rừng ở Úc không có dấu hiệu dừng lại.', 'english version ', 'english version <p><strong>Ch&aacute;y rừng ở &Uacute;c đang g&acirc;y ra những thiệt hại nặng nề về người v&agrave; của. Tổng cộng c&oacute; 24 người đ&atilde; chết tr&ecirc;n to&agrave;n quốc v&agrave; chỉ ri&ecirc;ng ở bang New South Wales, hơn 1.300 ng&ocirc;i nh&agrave; đ&atilde; bị ph&aacute; hủy.Tất cả đ&atilde; trở n&ecirc;n trầm trọng hơn bởi thời tiết nắng n&oacute;ng v&agrave; hạn h&aacute;n dai dẳng, biến đổi kh&iacute; hậu l&agrave; một yếu tố khiến thảm họa thi&ecirc;n nhi&ecirc;n n&agrave;y diễn biến xấu hơn.</strong></p>\r\n\r\n<h2>Những đ&aacute;m ch&aacute;y ở đ&acirc;u?</h2>\r\n\r\n<p>Những vụ ch&aacute;y đ&atilde; xuất hiện ở khắp c&aacute;c tiểu bang của &Uacute;c, nhưng New South Wales l&agrave; nơi bị ảnh hưởng nặng nề nhất. Hậu quả l&agrave; những khu rừng v&agrave; c&aacute;c c&ocirc;ng vi&ecirc;n quốc gia như Blue Mountains bị ph&aacute; hủy nghi&ecirc;m trọng. Một số th&agrave;nh phố lớn nhất của &Uacute;c cũng đ&atilde; bị ảnh hưởng, bao gồm Melbourne v&agrave; Sydney - nơi c&aacute;c đ&aacute;m ch&aacute;y đ&atilde; l&agrave;m hư hại những ng&ocirc;i nh&agrave; ở v&ugrave;ng ngoại &ocirc; v&agrave; những đ&aacute;m kh&oacute;i d&agrave;y đ&atilde; che phủ trung t&acirc;m đ&ocirc; thị. Đầu th&aacute;ng 12, kh&oacute;i ở Sydney rất tệ đến nỗi chất lượng kh&ocirc;ng kh&iacute; đo được gấp 11 lần mức &quot;nguy hiểm&quot;. C&aacute;c đ&aacute;m ch&aacute;y c&oacute; phạm vi từ khu vực nhỏ - c&aacute;c t&ograve;a nh&agrave; biệt lập hoặc một phần của khu phố - đến c&aacute;c đ&aacute;m ch&aacute;y lớn tr&ecirc;n diện rộng. Một số đ&aacute;m ch&aacute;y bắt đầu ch&aacute;y trong v&agrave;i ng&agrave;y nhưng c&oacute; những nơi đ&atilde; b&ugrave;ng ch&aacute;y trong nhiều th&aacute;ng.</p>\r\n\r\n<h2><strong>Nguy&ecirc;n nh&acirc;n của c&aacute;c vụ ch&aacute;y ?</strong></h2>\r\n\r\n<p>Mỗi năm v&agrave;o m&ugrave;a h&egrave; ở &Uacute;c, thời tiết kh&ocirc; v&agrave; n&oacute;ng khiến cho những đ&aacute;m ch&aacute;y dễ d&agrave;ng bắt đầu v&agrave; lan rộng. Nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n đến từ những vụ s&eacute;t đ&aacute;nh v&agrave; c&aacute;c khu rừng bị ảnh hưởng hạn h&aacute;n. S&eacute;t kh&ocirc; l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra một số vụ ch&aacute;y trong khu vực Đ&ocirc;ng Gippsland Victoria v&agrave;o cuối th&aacute;ng 12. Ngo&agrave;i ra, nguy&ecirc;n nh&acirc;n c&ograve;n đến từ con người. V&agrave;o th&aacute;ng 11, Sở cứu hỏa n&ocirc;ng th&ocirc;n tiểu bang NSW đ&atilde; bắt giữ một th&agrave;nh vi&ecirc;n t&igrave;nh nguyện 19 tuổi v&igrave; nghi ngờ đốt ph&aacute;, buộc tội anh ta với bảy tội cố &yacute; g&acirc;y ra c&aacute;c vụ hỏa hoạn trong khoảng thời gian s&aacute;u tuần.</p>\r\n\r\n<h2><strong>V&igrave; sao ch&aacute;y rừng ở &Uacute;c trở n&ecirc;n tệ hơn?</strong></h2>\r\n\r\n<p>M&ugrave;a ch&aacute;y ở &Uacute;c lu&ocirc;n nguy hiểm - trận hỏa hoạn v&agrave;o Thứ Bảy Đen Tối năm 2009 đ&atilde; giết chết 173 người ở Victoria, khiến n&oacute; trở th&agrave;nh thảm họa ch&aacute;y rừng kinh ho&agrave;ng nhất được ghi nhận. &Uacute;c đang trải qua một trong những đợt hạn h&aacute;n tồi tệ nhất trong nhiều thập kỷ - Cục Kh&iacute; tượng của đất nước cho biết rằng m&ugrave;a xu&acirc;n năm ngo&aacute;i l&agrave; m&ugrave;a kh&ocirc; nhất trong lịch sử. Trong khi đ&oacute;, một đợt nắng n&oacute;ng v&agrave;o th&aacute;ng 12 đ&atilde; ph&aacute; vỡ kỷ lục về nhiệt độ trung b&igrave;nh cao nhất to&agrave;n quốc, với một số nơi bị biến đổi dưới nhiệt độ cao hơn 40 độ C (khoảng 113-120 độ F).</p>\r\n\r\n<p>Những cơn gi&oacute; mạnh cũng đ&atilde; khiến đ&aacute;m ch&aacute;y v&agrave; kh&oacute;i lan nhanh hơn, g&acirc;y nguy hiểm của con người - một l&iacute;nh cứu hỏa t&igrave;nh nguyện 28 tuổi đ&atilde; chết ở NSW v&agrave;o th&aacute;ng 12 sau khi xe tải của anh ta bị gi&oacute; cuốn đi.C&aacute;c chuy&ecirc;n gia cho biết biến đổi kh&iacute; hậu đ&atilde; l&agrave;m t&igrave;nh h&igrave;nh xấu hơn. Điều kiện thời tiết ng&agrave;y c&agrave;ng khắc nghiệt l&agrave; nguy&ecirc;n nh&acirc;n khiến c&aacute;c đ&aacute;m ch&aacute;y bắt đầu sớm hơn trong m&ugrave;a v&agrave; lan rộng với cường độ lớn hơn.Một số quan chức dịch vụ khẩn cấp cấp cao, bao gồm cựu ủy vi&ecirc;n của Sở Cứu hỏa v&agrave; Cứu hộ, đ&atilde; gửi thư cho Thủ tướng Scott Morrison v&agrave;o năm 2019 cảnh b&aacute;o về t&aacute;c động của cuộc khủng hoảng kh&iacute; hậu đối với &Uacute;c.</p>\r\n\r\n<h2>Những thiệt hại nặng nề</h2>\r\n\r\n<p>To&agrave;n bộ thị trấn đ&atilde; ch&igrave;m trong biển lửa v&agrave; cư d&acirc;n tr&ecirc;n nhiều tiểu bang đ&atilde; mất nh&agrave; cửa. Thiệt hại về&nbsp; c&aacute;c c&ocirc;ng tr&igrave;nh x&acirc;y dựng nặng nhất xảy ra ở NSW, tiểu bang đ&ocirc;ng d&acirc;n nhất của đất nước, nơi gần 1.300 ng&ocirc;i nh&agrave; đ&atilde; bị ph&aacute; hủy v&agrave; hơn 440 bị hư hại.Tổng cộng, hơn 5,9 triệu ha đ&atilde; bị đốt ch&aacute;y tr&ecirc;n khắp s&aacute;u tiểu bang của &Uacute;c - một khu vực rộng lớn hơn c&aacute;c quốc gia Bỉ v&agrave; Haiti cộng lại. Tiểu bang bị ảnh hưởng nặng nề nhất l&agrave; NSW, với 3,6 triệu ha bị đốt ch&aacute;y.Tổng cộng c&oacute; 24 người tr&ecirc;n khắp nước &Uacute;c đ&atilde; chết trong m&ugrave;a ch&aacute;y n&agrave;y, bao gồm một số l&iacute;nh cứu hỏa t&igrave;nh nguyện.<br />\r\nCũng đ&atilde; c&oacute; thiệt hại lớn cho động vật hoang d&atilde; v&agrave; m&ocirc;i trường. Gần một phần ba gấu kaola ở NSW c&oacute; thể đ&atilde; bị giết trong c&aacute;c vụ hỏa hoạn v&agrave; một phần ba m&ocirc;i trường sống của ch&uacute;ng đ&atilde; bị ph&aacute; hủy, Bộ trưởng M&ocirc;i trường Li&ecirc;n bang Sussan Ley cho biết.</p>\r\n\r\n<h2>Những nỗ lực trong việc giảm ch&aacute;y rừng ở &Uacute;c</h2>\r\n\r\n<p>Ch&iacute;nh quyền tiểu bang v&agrave; li&ecirc;n bang đ&atilde; rất nỗ lực để chống lại cuộc khủng hoảng hỏa hoạn trong nhiều th&aacute;ng. C&oacute; 2.300 nh&acirc;n vi&ecirc;n cứu hỏa được huy động ở NSW v&agrave; đang c&oacute; th&ecirc;m sự hỗ trợ từ Hoa Kỳ, Canada v&agrave; New Zealand. Ch&iacute;nh phủ li&ecirc;n bang cũng đ&atilde; gửi hỗ trợ qu&acirc;n sự như nh&acirc;n vi&ecirc;n qu&acirc;n đội, m&aacute;y bay kh&ocirc;ng qu&acirc;n v&agrave; t&agrave;u tuần dương của hải qu&acirc;n để chữa ch&aacute;y, t&igrave;m kiếm cứu nạn v&agrave; c&aacute;c nỗ lực l&agrave;m sạch.<br />\r\nMorrison cho biết ch&iacute;nh quyền của &ocirc;ng đ&atilde; ph&acirc;n bổ &iacute;t nhất 23 triệu đ&ocirc; la &Uacute;c (16,2 triệu đ&ocirc; la) nhằm khắc phục thảm họa cho c&aacute;c gia đ&igrave;nh v&agrave; doanh nghiệp bị ảnh hưởng, v&agrave; l&ecirc;n tới 6.000 đ&ocirc; la &Uacute;c (4.200 đ&ocirc; la) cho c&aacute;c nh&acirc;n vi&ecirc;n cứu hỏa t&igrave;nh nguyện được gọi để chữa ch&aacute;y trong hơn 10 ng&agrave;y.</p>\r\n\r\n<p><strong>Khi n&agrave;o ch&aacute;y rừng ở &Uacute;c sẽ kết th&uacute;c?</strong></p>\r\n\r\n<p>Thật kh&ocirc;ng may, &Uacute;c chỉ mới bước v&agrave;o m&ugrave;a h&egrave;. Th&ocirc;ng thường, nhiệt độ cao nhất v&agrave;o th&aacute;ng 1 v&agrave; th&aacute;ng 2, c&oacute; nghĩa l&agrave; đất nước n&agrave;y c&oacute; nguy cơ đối mặt với ch&aacute;y rừng trong nhiều th&aacute;ng.<br />\r\nC&aacute;c vụ hỏa hoạn kh&oacute; c&oacute; thể chấm dứt ho&agrave;n to&agrave;n v&igrave; đ&acirc;y l&agrave; một sự kiện xảy ra h&agrave;ng năm - v&agrave; thậm ch&iacute; c&oacute; thể trở n&ecirc;n tồi tệ hơn nếu t&igrave;nh h&igrave;nh kh&iacute; hậu li&ecirc;n tục thay đổi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-chay-rung-o-uc-khong-co-dau-hieu-dung-lai', 'Cháy rừng ở Úc không có dấu hiệu dừng lại.', '', '');
INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(215, 108, 'vn', 'Ô nhiễm không khí và những thông tin nóng', '', '<p>Chất lượng kh&ocirc;ng kh&iacute; ở c&aacute;c th&agrave;nh phố lớn ở Việt Nam đ&atilde; bắt đầu giảm trong v&agrave;i th&aacute;ng qua. L&yacute; do g&acirc;y ra sự suy giảm chất lượng kh&ocirc;ng kh&iacute; đến từ kh&oacute;i bụi lơ lửng tr&ecirc;n c&aacute;c th&agrave;nh phố đến kh&oacute;i thuốc trong nh&agrave;, &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y ra mối đe dọa lớn đối với sức khỏe v&agrave; kh&iacute; hậu. C&aacute;c t&aacute;c động kết hợp của &ocirc; nhiễm kh&ocirc;ng kh&iacute; xung quanh (ngo&agrave;i trời) v&agrave; gia đ&igrave;nh g&acirc;y ra khoảng bảy triệu ca tử vong sớm h&agrave;ng năm. Chủ yếu l&agrave; do tăng tỷ lệ tử vong do đột quỵ, bệnh tim, bệnh phổi tắc nghẽn m&atilde;n t&iacute;nh, ung thư phổi v&agrave; nhiễm tr&ugrave;ng đường h&ocirc; hấp cấp t&iacute;nh. Dữ liệu của WHO cho thấy 9/10 người h&iacute;t thở kh&ocirc;ng kh&iacute; c&oacute; chứa chất g&acirc;y &ocirc; nhiễm cao. WHO đang hợp t&aacute;c với c&aacute;c nước để theo d&otilde;i &ocirc; nhiễm kh&ocirc;ng kh&iacute; v&agrave; cải thiện chất lượng kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; g&igrave;</h2>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; sự hiện diện của c&aacute;c h&oacute;a chất hoặc hợp chất độc hại (bao gồm cả c&aacute;c chất c&oacute; nguồn gốc sinh học) trong kh&ocirc;ng kh&iacute; v&agrave; l&agrave;m giảm chất lượng kh&ocirc;ng kh&iacute; ở mức độ g&acirc;y ra những thay đổi bất lợi cho chất lượng cuộc sống. Một số chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; độc hại, khi h&iacute;t v&agrave;o ch&uacute;ng c&oacute; thể khiến bạn gặp vấn đề về sức khỏe. Nh&oacute;m người nhạy cảm, phụ nữ mang thai, người gi&agrave; v&agrave; trẻ em c&oacute; nguy cơ rất cao mắc c&aacute;c bệnh do &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y ra. Năm chất g&acirc;y &ocirc; nhiễm ch&iacute;nh: &ocirc;z&ocirc;n tr&ecirc;n mặt đất, &ocirc; nhiễm hạt (hoặc chất hạt), carbon monoxide, lưu huỳnh đi&ocirc;x&iacute;t v&agrave; nitơ đioxit. Một số trong số đ&oacute; cũng g&oacute;p phần g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;, c&ugrave;ng với radon, kh&oacute;i thuốc l&aacute;, c&aacute;c hợp chất hữu cơ dễ bay hơi (VOC), formaldehyd, amiăng v&agrave; c&aacute;c chất kh&aacute;c.</p>\r\n\r\n<h2>Nguy&ecirc;n nh&acirc;n g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Kh&iacute; thải từ c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp sản xuất l&agrave; một trong những nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute;. C&aacute;c chất &ocirc; nhiễm ch&iacute;nh như oxit nitơ, lưu huỳnh, carbon monoxide, carbon dioxide v&agrave; c&aacute;c chất thải h&oacute;a học kh&aacute;c đang l&agrave;m giảm chất lượng kh&ocirc;ng kh&iacute; ở nhiều nơi. C&aacute;c phương tiện giao th&ocirc;ng chạy bằng nhi&ecirc;n liệu h&oacute;a thạch như dầu mỏ v&agrave; xăng thải ra muội than v&agrave; c&aacute;c loại kh&iacute; độc hại như CO, CO2 v&agrave; NO2,&hellip; những chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; ch&iacute;nh trong m&ocirc;i trường. Hoạt động khai th&aacute;c như khoan, khai th&aacute;c, nổ m&igrave;n v&agrave; vận chuyển l&agrave;m giải ph&oacute;ng c&aacute;c loại kh&iacute; như metan, carbon monoxide, sulfur dioxide v&agrave; c&aacute;c chất bụi trong c&aacute;c giai đoạn khai th&aacute;c kh&aacute;c nhau. Ph&acirc;n b&oacute;n v&agrave; amoniac được sử dụng nhiều trong n&ocirc;ng nghiệp, l&agrave; một trong những chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; c&oacute; hại. Việc tăng cường sử dụng ph&acirc;n b&oacute;n v&agrave; thuốc trừ s&acirc;u của n&ocirc;ng d&acirc;n cũng giải ph&oacute;ng c&aacute;c h&oacute;a chất kh&ocirc;ng mong muốn kh&aacute;c trong kh&iacute; quyển. Ngo&agrave;i ra, &ocirc; nhiễm kh&ocirc;ng kh&iacute; cũng bắt nguồn từ việc đốt c&acirc;y trồng, rơm rạ kh&ocirc;ng được kiểm so&aacute;t. Trong chừng mực, đ&acirc;y thực sự l&agrave; một c&ocirc;ng cụ hữu &iacute;ch trong canh t&aacute;c nhưng việc đốt c&acirc;y trồng kh&ocirc;ng được kiểm so&aacute;t g&acirc;y ra &ocirc; nhiễm kh&ocirc;ng kh&iacute; đ&aacute;ng kể.</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; tự nhi&ecirc;n l&agrave; những dạng xuất ph&aacute;t từ c&aacute;c hiện tượng tự nhi&ecirc;n. Điều n&agrave;y c&oacute; nghĩa l&agrave; ch&uacute;ng được g&acirc;y ra bởi c&aacute;c hoạt động định kỳ kh&ocirc;ng phải do con người tạo ra hoặc kết quả của hoạt động của con người. Hơn nữa, những nguồn g&acirc;y &ocirc; nhiễm n&agrave;y phải tu&acirc;n theo chu kỳ tự nhi&ecirc;n, phổ biến hơn trong những điều kiện nhất định v&agrave; &iacute;t phổ biến hơn dưới những điều kiện kh&aacute;c. L&agrave; một phần của biến đổi kh&iacute; hậu tự nhi&ecirc;n của Tr&aacute;i đất cũng c&oacute; nghĩa l&agrave; ch&uacute;ng bền vững trong thời gian d&agrave;i. C&oacute; một v&agrave;i nguồn &ocirc; nhiễm kh&ocirc;ng kh&iacute; tự nhi&ecirc;n l&agrave; tốt. chẳng hạn như ch&aacute;y rừng, hoạt động n&uacute;i lửa v&agrave; kh&iacute; m&ecirc;-tan thải ra từ gia s&uacute;c. Tuy nhi&ecirc;n, lượng &ocirc; nhiễm kh&ocirc;ng kh&iacute; do nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n g&acirc;y ra rất nhỏ khi so s&aacute;nh với thiệt hại do nguy&ecirc;n nh&acirc;n nh&acirc;n tạo g&acirc;y ra.</p>\r\n\r\n<h2>Ảnh hưởng đến sức khỏe</h2>\r\n\r\n<h3>C&aacute;c chất &ocirc; nhiễm t&aacute;c động đến con người</h3>\r\n\r\n<p>Một số chất &ocirc; nhiễm phổ biến nhất l&agrave; thủy ng&acirc;n, ch&igrave;, đi&ocirc;xin v&agrave; benzen. Đ&acirc;y l&agrave; những chất được h&igrave;nh th&agrave;nh trong qu&aacute; tr&igrave;nh đốt gas hoặc than, đốt hoặc trong trường hợp benzen, được t&igrave;m thấy trong xăng. Benzen, được ph&acirc;n loại l&agrave; chất g&acirc;y ung thư, c&oacute; thể g&acirc;y k&iacute;ch ứng mắt, da v&agrave; phổi trong thời gian ngắn v&agrave; rối loạn m&aacute;u trong thời gian d&agrave;i. Dioxin thường được t&igrave;m thấy trong thực phẩm nhưng cũng c&oacute; một lượng nhỏ trong kh&ocirc;ng kh&iacute;, c&oacute; thể ảnh hưởng đến gan trong thời gian ngắn v&agrave; g&acirc;y hại cho hệ thống miễn dịch, thần kinh v&agrave; nội tiết, cũng như c&aacute;c chức năng sinh sản. Ch&igrave; với số lượng lớn c&oacute; thể l&agrave;m cho trẻ em mắc c&aacute;c bệnh về n&atilde;o v&agrave; thận,&nbsp; với một lượng nhỏ, n&oacute; cũng c&oacute; thể ảnh hưởng đến trẻ. Thủy ng&acirc;n ảnh hưởng đến hệ thống thần kinh trung ương. Hydrocarbon thơm đa v&ograve;ng (PAH) l&agrave; th&agrave;nh phần độc hại được t&igrave;m thấy trong kh&iacute; thải giao th&ocirc;ng v&agrave; kh&oacute;i lửa. Tiếp x&uacute;c thường xuy&ecirc;n c&oacute; thể g&acirc;y k&iacute;ch ứng mắt, c&aacute;c vấn đề về m&aacute;u, gan, phổi v&agrave; thậm ch&iacute; l&agrave; ung thư.</p>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; ảnh hưởng rất nghi&ecirc;m trọng đến sức khỏe con người, tương đương với t&aacute;c hại của việc h&uacute;t thuốc l&aacute; v&agrave; cao hơn nhiều so với t&aacute;c động từ th&oacute;i quen ăn qu&aacute; nhiều muối. Thực tế, 1/3 số ca tử vong do đột quỵ, ung thư phổi v&agrave; c&aacute;c bệnh tim mạch l&agrave; do &ocirc; nhiễm kh&ocirc;ng kh&iacute;. C&aacute;c chất g&acirc;y hại c&oacute; trong kh&ocirc;ng kh&iacute; c&oacute; thể lọt qua hệ thống miễn dịch của cơ thể, x&acirc;m nhập s&acirc;u v&agrave;o hệ h&ocirc; hấp, tuần ho&agrave;n v&agrave; dần l&agrave;m hỏng phổi, tim, n&atilde;o của con người. C&aacute;c hạt bụi mịn v&agrave; si&ecirc;u mịn l&agrave; một trong những th&agrave;nh phần ch&iacute;nh của<em> kh&ocirc;ng kh&iacute; đ&atilde; bị &ocirc; nhiễm</em>, đ&atilde; được Cơ quan Nghi&ecirc;n cứu Ung thư Quốc tế xếp v&agrave;o nh&oacute;m chất g&acirc;y ung thư cho con người.</p>\r\n\r\n<h3>Về h&ocirc; hấp</h3>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; ảnh hưởng đến hệ h&ocirc; hấp đầu ti&ecirc;n, g&acirc;y vi&ecirc;m đường h&ocirc; hấp tr&ecirc;n như tai mũi họng. Bệnh nh&acirc;n thường xuy&ecirc;n nghẹt mũi, xoang, vi&ecirc;m phế quản, nặng hơn g&acirc;y t&igrave;nh trạng dị ứng g&acirc;y hen suyễn. Đặc biệt l&agrave; những người l&agrave;m việc hoặc tập thể dục b&ecirc;n ngo&agrave;i, trẻ em v&agrave; người gi&agrave;. N&oacute; c&ograve;n tệ hơn đối với những người mắc bệnh hen suyễn hoặc dị ứng. Những chất g&acirc;y &ocirc; nhiễm th&ecirc;m n&agrave;y chỉ l&agrave;m tăng th&ecirc;m c&aacute;c triệu chứng của họ v&agrave; g&acirc;y ra c&aacute;c cơn hen.</p>\r\n\r\n<p>Trong đ&oacute;, mũi l&agrave; cửa ng&otilde; của đường h&ocirc; hấp v&igrave; thế đ&acirc;y l&agrave; cơ quan đầu ti&ecirc;n tr&ecirc;n cơ thể phản ứng với những thay đổi thất thường của thời tiết hoặc t&aacute;c nh&acirc;n từ m&ocirc;i trường. Khi <strong>kh&ocirc;ng kh&iacute; bị &ocirc; nhiễm</strong> k&eacute;o d&agrave;i v&agrave; mức độ <em>&ocirc; nhiễm</em> ng&agrave;y c&agrave;ng gia tăng, những bệnh li&ecirc;n quan đến đường h&ocirc; hấp rất dễ mắc phải.</p>\r\n\r\n<p>C&aacute;c đ&ocirc; thị c&oacute; chỉ số chất lượng kh&ocirc;ng kh&iacute; cao, c&oacute; tỷ lệ người mắc c&aacute;c bệnh về đường h&ocirc; hấp cao gấp nhiều lần so với c&aacute;c đ&ocirc; thị kh&aacute;c. C&aacute;c chất độc c&oacute; trong kh&ocirc;ng kh&iacute; khi x&acirc;m nhập v&agrave;o cơ thể ch&iacute;nh l&agrave; t&aacute;c nh&acirc;n g&acirc;y ung thư phổi, v&ograve;m họng, mũi.</p>\r\n\r\n<h3>Về tim mạch</h3>\r\n\r\n<p>C&aacute;c chất &ocirc; nhiễm sẽ l&agrave;m tăng độc tố trong m&aacute;u, độc tố ngấm trong m&aacute;u g&acirc;y xơ vữa động mạch, cao huyết &aacute;p, từ đ&oacute; g&acirc;y n&ecirc;n c&aacute;c hệ lụy nguy hiểm kh&aacute;c như đột quỵ, suy tim,&hellip;</p>\r\n\r\n<p>C&aacute;c chất &ocirc; nhiễm n&agrave;y l&agrave; những chất độc t&iacute;nh xuy&ecirc;n qua m&agrave;ng lọc của phổi, đi v&agrave;o trong m&aacute;u, v&agrave;o cơ thể, ngấm v&agrave;o c&aacute;c th&agrave;nh mạch g&acirc;y n&ecirc;n t&igrave;nh trạng xơ vữa. Ch&uacute;ng c&oacute; thể t&aacute;c động g&acirc;y bệnh tức thời như vi&ecirc;m phổi, vi&ecirc;m mũi, hen suyễn, phế quản. Về l&acirc;u d&agrave;i, ch&uacute;ng sẽ lấp đầy trong phổi, xơ cứng phổi, 5-10 năm sau mới ph&aacute;t bệnh.</p>\r\n\r\n<h3>C&aacute;c bệnh về da</h3>\r\n\r\n<p>Bụi c&oacute; trong kh&ocirc;ng kh&iacute; l&agrave; t&aacute;c nh&acirc;n g&acirc;y c&aacute;c bệnh về da liễu như mụn, dị ứng, vi&ecirc;m da&hellip;. Ch&uacute;ng l&agrave; nơi chứa nhiều mầm bệnh, t&aacute;c nh&acirc;n mang vi khuẩn, virus, nấm mốc v&agrave;o cơ thể người nếu tiếp x&uacute;c l&acirc;u d&agrave;i v&agrave; t&ugrave;y theo cơ địa của từng người sẽ c&oacute; c&aacute;c bệnh l&yacute; kh&aacute;c nhau.</p>\r\n\r\n<h3>Bệnh về mắt</h3>\r\n\r\n<p>Trong c&aacute;c bộ phận, mắt l&agrave; nơi tiếp x&uacute;c trực tiếp v&agrave; đầu ti&ecirc;n với bụi bặm ngo&agrave;i m&ocirc;i trường. Ch&uacute;ng l&agrave; t&aacute;c nh&acirc;n khiến mắt tiết nước g&acirc;y vi&ecirc;m nhiễm đồng thời bụi c&oacute; thể g&acirc;y cộm, kh&oacute; chịu, thậm ch&iacute; trầy xước gi&aacute;c mạc nếu c&oacute; g&oacute;c cạnh.</p>\r\n\r\n<h2>Bảo vệ sức khỏe trước t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Kiểm tra dự b&aacute;o &ocirc; nhiễm kh&ocirc;ng kh&iacute; h&agrave;ng ng&agrave;y trong khu vực của bạn. C&aacute;c dự b&aacute;o được m&atilde; h&oacute;a m&agrave;u c&oacute; thể cho bạn biết khi kh&ocirc;ng kh&iacute; kh&ocirc;ng l&agrave;nh mạnh nơi bạn đang sống. C&aacute;c nguồn bao gồm b&aacute;o c&aacute;o thời tiết tr&ecirc;n đ&agrave;i ph&aacute;t thanh, truyền h&igrave;nh, b&aacute;o v&agrave; c&aacute;c trang mạng trực tuyến.</p>\r\n\r\n<p>Tr&aacute;nh tập thể dục ngo&agrave;i trời khi mức độ &ocirc; nhiễm cao. Khi kh&ocirc;ng kh&iacute; xấu, h&atilde;y đi bộ trong nh&agrave; trong trung t&acirc;m mua sắm hoặc ph&ograve;ng tập thể dục hoặc sử dụng m&aacute;y tập thể dục. Hạn chế thời gian con bạn d&agrave;nh cho chơi ngo&agrave;i trời nếu chất lượng kh&ocirc;ng kh&iacute; xấu.</p>\r\n\r\n<p>Lu&ocirc;n lu&ocirc;n tr&aacute;nh tập thể dục gần c&aacute;c khu vực giao th&ocirc;ng cao. Ngay cả khi dự b&aacute;o chất lượng kh&ocirc;ng kh&iacute; c&oacute; m&agrave;u xanh l&aacute; c&acirc;y. C&aacute;c phương tiện giao th&ocirc;ng c&oacute; thể tạo ra mức độ &ocirc; nhiễm cao cho khu vực đ&oacute;.</p>\r\n\r\n<p>Sử dụng &iacute;t năng lượng trong nh&agrave; của bạn. Bằng c&aacute;ch giảm sử dụng năng lượng, bạn c&oacute; thể gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; v&agrave; tiết kiệm tiền.</p>\r\n\r\n<p>Kh&ocirc;ng đốt rơm rạ hoặc r&aacute;c. Rơm rạ v&agrave; r&aacute;c l&agrave; một trong những nguồn g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; ch&iacute;nh ở nhiều nơi tr&ecirc;n cả nước.</p>\r\n\r\n<p>Kh&ocirc;ng h&uacute;t thuốc l&aacute; trong nh&agrave; v&agrave; c&aacute;c nơi c&ocirc;ng cộng.</p>\r\n\r\n<p>Đeo khẩu trang hoạt t&iacute;nh, k&iacute;nh chắn bụi mỗi khi ra đường v&agrave; tho&aacute;t khỏi những khu vực &ocirc; nhiễm.</p>\r\n\r\n<p>Thực phẩm gi&agrave;u chất chống oxy h&oacute;a như tr&aacute;i c&acirc;y v&agrave; rau quả cũng c&oacute; thể gi&uacute;p bảo vệ cơ thể bạn</p>\r\n\r\n<p>Cuối c&ugrave;ng, đừng qu&ecirc;n rằng kh&ocirc;ng gian trong nh&agrave; cũng c&oacute; thể bị &ocirc; nhiễm. Để hạn chế, bạn n&ecirc;n sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute;, trồng c&aacute;c loại c&acirc;y c&oacute; chức năng lọc kh&ocirc;ng kh&iacute; trong nh&agrave;, dọn dẹp nh&agrave; cửa để lau rửa sạch bụi bẩn v&agrave; nấm mốc,&hellip;</p>\r\n', '', '', '', '', '', 0, 'o-nhiem-khong-khi-va-nhung-thong-tin-nong', 'Ô nhiễm không khí và những thông tin nóng', '', ''),
(216, 108, 'en', 'english version Ô nhiễm không khí và những thông tin nóng', 'english version ', 'english version <p>Chất lượng kh&ocirc;ng kh&iacute; ở c&aacute;c th&agrave;nh phố lớn ở Việt Nam đ&atilde; bắt đầu giảm trong v&agrave;i th&aacute;ng qua. L&yacute; do g&acirc;y ra sự suy giảm chất lượng kh&ocirc;ng kh&iacute; đến từ kh&oacute;i bụi lơ lửng tr&ecirc;n c&aacute;c th&agrave;nh phố đến kh&oacute;i thuốc trong nh&agrave;, &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y ra mối đe dọa lớn đối với sức khỏe v&agrave; kh&iacute; hậu. C&aacute;c t&aacute;c động kết hợp của &ocirc; nhiễm kh&ocirc;ng kh&iacute; xung quanh (ngo&agrave;i trời) v&agrave; gia đ&igrave;nh g&acirc;y ra khoảng bảy triệu ca tử vong sớm h&agrave;ng năm. Chủ yếu l&agrave; do tăng tỷ lệ tử vong do đột quỵ, bệnh tim, bệnh phổi tắc nghẽn m&atilde;n t&iacute;nh, ung thư phổi v&agrave; nhiễm tr&ugrave;ng đường h&ocirc; hấp cấp t&iacute;nh. Dữ liệu của WHO cho thấy 9/10 người h&iacute;t thở kh&ocirc;ng kh&iacute; c&oacute; chứa chất g&acirc;y &ocirc; nhiễm cao. WHO đang hợp t&aacute;c với c&aacute;c nước để theo d&otilde;i &ocirc; nhiễm kh&ocirc;ng kh&iacute; v&agrave; cải thiện chất lượng kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; g&igrave;</h2>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; sự hiện diện của c&aacute;c h&oacute;a chất hoặc hợp chất độc hại (bao gồm cả c&aacute;c chất c&oacute; nguồn gốc sinh học) trong kh&ocirc;ng kh&iacute; v&agrave; l&agrave;m giảm chất lượng kh&ocirc;ng kh&iacute; ở mức độ g&acirc;y ra những thay đổi bất lợi cho chất lượng cuộc sống. Một số chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; độc hại, khi h&iacute;t v&agrave;o ch&uacute;ng c&oacute; thể khiến bạn gặp vấn đề về sức khỏe. Nh&oacute;m người nhạy cảm, phụ nữ mang thai, người gi&agrave; v&agrave; trẻ em c&oacute; nguy cơ rất cao mắc c&aacute;c bệnh do &ocirc; nhiễm kh&ocirc;ng kh&iacute; g&acirc;y ra. Năm chất g&acirc;y &ocirc; nhiễm ch&iacute;nh: &ocirc;z&ocirc;n tr&ecirc;n mặt đất, &ocirc; nhiễm hạt (hoặc chất hạt), carbon monoxide, lưu huỳnh đi&ocirc;x&iacute;t v&agrave; nitơ đioxit. Một số trong số đ&oacute; cũng g&oacute;p phần g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;, c&ugrave;ng với radon, kh&oacute;i thuốc l&aacute;, c&aacute;c hợp chất hữu cơ dễ bay hơi (VOC), formaldehyd, amiăng v&agrave; c&aacute;c chất kh&aacute;c.</p>\r\n\r\n<h2>Nguy&ecirc;n nh&acirc;n g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Kh&iacute; thải từ c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp sản xuất l&agrave; một trong những nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute;. C&aacute;c chất &ocirc; nhiễm ch&iacute;nh như oxit nitơ, lưu huỳnh, carbon monoxide, carbon dioxide v&agrave; c&aacute;c chất thải h&oacute;a học kh&aacute;c đang l&agrave;m giảm chất lượng kh&ocirc;ng kh&iacute; ở nhiều nơi. C&aacute;c phương tiện giao th&ocirc;ng chạy bằng nhi&ecirc;n liệu h&oacute;a thạch như dầu mỏ v&agrave; xăng thải ra muội than v&agrave; c&aacute;c loại kh&iacute; độc hại như CO, CO2 v&agrave; NO2,&hellip; những chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; ch&iacute;nh trong m&ocirc;i trường. Hoạt động khai th&aacute;c như khoan, khai th&aacute;c, nổ m&igrave;n v&agrave; vận chuyển l&agrave;m giải ph&oacute;ng c&aacute;c loại kh&iacute; như metan, carbon monoxide, sulfur dioxide v&agrave; c&aacute;c chất bụi trong c&aacute;c giai đoạn khai th&aacute;c kh&aacute;c nhau. Ph&acirc;n b&oacute;n v&agrave; amoniac được sử dụng nhiều trong n&ocirc;ng nghiệp, l&agrave; một trong những chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; c&oacute; hại. Việc tăng cường sử dụng ph&acirc;n b&oacute;n v&agrave; thuốc trừ s&acirc;u của n&ocirc;ng d&acirc;n cũng giải ph&oacute;ng c&aacute;c h&oacute;a chất kh&ocirc;ng mong muốn kh&aacute;c trong kh&iacute; quyển. Ngo&agrave;i ra, &ocirc; nhiễm kh&ocirc;ng kh&iacute; cũng bắt nguồn từ việc đốt c&acirc;y trồng, rơm rạ kh&ocirc;ng được kiểm so&aacute;t. Trong chừng mực, đ&acirc;y thực sự l&agrave; một c&ocirc;ng cụ hữu &iacute;ch trong canh t&aacute;c nhưng việc đốt c&acirc;y trồng kh&ocirc;ng được kiểm so&aacute;t g&acirc;y ra &ocirc; nhiễm kh&ocirc;ng kh&iacute; đ&aacute;ng kể.</p>\r\n\r\n<p>Nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n: &Ocirc; nhiễm kh&ocirc;ng kh&iacute; tự nhi&ecirc;n l&agrave; những dạng xuất ph&aacute;t từ c&aacute;c hiện tượng tự nhi&ecirc;n. Điều n&agrave;y c&oacute; nghĩa l&agrave; ch&uacute;ng được g&acirc;y ra bởi c&aacute;c hoạt động định kỳ kh&ocirc;ng phải do con người tạo ra hoặc kết quả của hoạt động của con người. Hơn nữa, những nguồn g&acirc;y &ocirc; nhiễm n&agrave;y phải tu&acirc;n theo chu kỳ tự nhi&ecirc;n, phổ biến hơn trong những điều kiện nhất định v&agrave; &iacute;t phổ biến hơn dưới những điều kiện kh&aacute;c. L&agrave; một phần của biến đổi kh&iacute; hậu tự nhi&ecirc;n của Tr&aacute;i đất cũng c&oacute; nghĩa l&agrave; ch&uacute;ng bền vững trong thời gian d&agrave;i. C&oacute; một v&agrave;i nguồn &ocirc; nhiễm kh&ocirc;ng kh&iacute; tự nhi&ecirc;n l&agrave; tốt. chẳng hạn như ch&aacute;y rừng, hoạt động n&uacute;i lửa v&agrave; kh&iacute; m&ecirc;-tan thải ra từ gia s&uacute;c. Tuy nhi&ecirc;n, lượng &ocirc; nhiễm kh&ocirc;ng kh&iacute; do nguy&ecirc;n nh&acirc;n tự nhi&ecirc;n g&acirc;y ra rất nhỏ khi so s&aacute;nh với thiệt hại do nguy&ecirc;n nh&acirc;n nh&acirc;n tạo g&acirc;y ra.</p>\r\n\r\n<h2>Ảnh hưởng đến sức khỏe</h2>\r\n\r\n<h3>C&aacute;c chất &ocirc; nhiễm t&aacute;c động đến con người</h3>\r\n\r\n<p>Một số chất &ocirc; nhiễm phổ biến nhất l&agrave; thủy ng&acirc;n, ch&igrave;, đi&ocirc;xin v&agrave; benzen. Đ&acirc;y l&agrave; những chất được h&igrave;nh th&agrave;nh trong qu&aacute; tr&igrave;nh đốt gas hoặc than, đốt hoặc trong trường hợp benzen, được t&igrave;m thấy trong xăng. Benzen, được ph&acirc;n loại l&agrave; chất g&acirc;y ung thư, c&oacute; thể g&acirc;y k&iacute;ch ứng mắt, da v&agrave; phổi trong thời gian ngắn v&agrave; rối loạn m&aacute;u trong thời gian d&agrave;i. Dioxin thường được t&igrave;m thấy trong thực phẩm nhưng cũng c&oacute; một lượng nhỏ trong kh&ocirc;ng kh&iacute;, c&oacute; thể ảnh hưởng đến gan trong thời gian ngắn v&agrave; g&acirc;y hại cho hệ thống miễn dịch, thần kinh v&agrave; nội tiết, cũng như c&aacute;c chức năng sinh sản. Ch&igrave; với số lượng lớn c&oacute; thể l&agrave;m cho trẻ em mắc c&aacute;c bệnh về n&atilde;o v&agrave; thận,&nbsp; với một lượng nhỏ, n&oacute; cũng c&oacute; thể ảnh hưởng đến trẻ. Thủy ng&acirc;n ảnh hưởng đến hệ thống thần kinh trung ương. Hydrocarbon thơm đa v&ograve;ng (PAH) l&agrave; th&agrave;nh phần độc hại được t&igrave;m thấy trong kh&iacute; thải giao th&ocirc;ng v&agrave; kh&oacute;i lửa. Tiếp x&uacute;c thường xuy&ecirc;n c&oacute; thể g&acirc;y k&iacute;ch ứng mắt, c&aacute;c vấn đề về m&aacute;u, gan, phổi v&agrave; thậm ch&iacute; l&agrave; ung thư.</p>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; ảnh hưởng rất nghi&ecirc;m trọng đến sức khỏe con người, tương đương với t&aacute;c hại của việc h&uacute;t thuốc l&aacute; v&agrave; cao hơn nhiều so với t&aacute;c động từ th&oacute;i quen ăn qu&aacute; nhiều muối. Thực tế, 1/3 số ca tử vong do đột quỵ, ung thư phổi v&agrave; c&aacute;c bệnh tim mạch l&agrave; do &ocirc; nhiễm kh&ocirc;ng kh&iacute;. C&aacute;c chất g&acirc;y hại c&oacute; trong kh&ocirc;ng kh&iacute; c&oacute; thể lọt qua hệ thống miễn dịch của cơ thể, x&acirc;m nhập s&acirc;u v&agrave;o hệ h&ocirc; hấp, tuần ho&agrave;n v&agrave; dần l&agrave;m hỏng phổi, tim, n&atilde;o của con người. C&aacute;c hạt bụi mịn v&agrave; si&ecirc;u mịn l&agrave; một trong những th&agrave;nh phần ch&iacute;nh của<em> kh&ocirc;ng kh&iacute; đ&atilde; bị &ocirc; nhiễm</em>, đ&atilde; được Cơ quan Nghi&ecirc;n cứu Ung thư Quốc tế xếp v&agrave;o nh&oacute;m chất g&acirc;y ung thư cho con người.</p>\r\n\r\n<h3>Về h&ocirc; hấp</h3>\r\n\r\n<p>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; ảnh hưởng đến hệ h&ocirc; hấp đầu ti&ecirc;n, g&acirc;y vi&ecirc;m đường h&ocirc; hấp tr&ecirc;n như tai mũi họng. Bệnh nh&acirc;n thường xuy&ecirc;n nghẹt mũi, xoang, vi&ecirc;m phế quản, nặng hơn g&acirc;y t&igrave;nh trạng dị ứng g&acirc;y hen suyễn. Đặc biệt l&agrave; những người l&agrave;m việc hoặc tập thể dục b&ecirc;n ngo&agrave;i, trẻ em v&agrave; người gi&agrave;. N&oacute; c&ograve;n tệ hơn đối với những người mắc bệnh hen suyễn hoặc dị ứng. Những chất g&acirc;y &ocirc; nhiễm th&ecirc;m n&agrave;y chỉ l&agrave;m tăng th&ecirc;m c&aacute;c triệu chứng của họ v&agrave; g&acirc;y ra c&aacute;c cơn hen.</p>\r\n\r\n<p>Trong đ&oacute;, mũi l&agrave; cửa ng&otilde; của đường h&ocirc; hấp v&igrave; thế đ&acirc;y l&agrave; cơ quan đầu ti&ecirc;n tr&ecirc;n cơ thể phản ứng với những thay đổi thất thường của thời tiết hoặc t&aacute;c nh&acirc;n từ m&ocirc;i trường. Khi <strong>kh&ocirc;ng kh&iacute; bị &ocirc; nhiễm</strong> k&eacute;o d&agrave;i v&agrave; mức độ <em>&ocirc; nhiễm</em> ng&agrave;y c&agrave;ng gia tăng, những bệnh li&ecirc;n quan đến đường h&ocirc; hấp rất dễ mắc phải.</p>\r\n\r\n<p>C&aacute;c đ&ocirc; thị c&oacute; chỉ số chất lượng kh&ocirc;ng kh&iacute; cao, c&oacute; tỷ lệ người mắc c&aacute;c bệnh về đường h&ocirc; hấp cao gấp nhiều lần so với c&aacute;c đ&ocirc; thị kh&aacute;c. C&aacute;c chất độc c&oacute; trong kh&ocirc;ng kh&iacute; khi x&acirc;m nhập v&agrave;o cơ thể ch&iacute;nh l&agrave; t&aacute;c nh&acirc;n g&acirc;y ung thư phổi, v&ograve;m họng, mũi.</p>\r\n\r\n<h3>Về tim mạch</h3>\r\n\r\n<p>C&aacute;c chất &ocirc; nhiễm sẽ l&agrave;m tăng độc tố trong m&aacute;u, độc tố ngấm trong m&aacute;u g&acirc;y xơ vữa động mạch, cao huyết &aacute;p, từ đ&oacute; g&acirc;y n&ecirc;n c&aacute;c hệ lụy nguy hiểm kh&aacute;c như đột quỵ, suy tim,&hellip;</p>\r\n\r\n<p>C&aacute;c chất &ocirc; nhiễm n&agrave;y l&agrave; những chất độc t&iacute;nh xuy&ecirc;n qua m&agrave;ng lọc của phổi, đi v&agrave;o trong m&aacute;u, v&agrave;o cơ thể, ngấm v&agrave;o c&aacute;c th&agrave;nh mạch g&acirc;y n&ecirc;n t&igrave;nh trạng xơ vữa. Ch&uacute;ng c&oacute; thể t&aacute;c động g&acirc;y bệnh tức thời như vi&ecirc;m phổi, vi&ecirc;m mũi, hen suyễn, phế quản. Về l&acirc;u d&agrave;i, ch&uacute;ng sẽ lấp đầy trong phổi, xơ cứng phổi, 5-10 năm sau mới ph&aacute;t bệnh.</p>\r\n\r\n<h3>C&aacute;c bệnh về da</h3>\r\n\r\n<p>Bụi c&oacute; trong kh&ocirc;ng kh&iacute; l&agrave; t&aacute;c nh&acirc;n g&acirc;y c&aacute;c bệnh về da liễu như mụn, dị ứng, vi&ecirc;m da&hellip;. Ch&uacute;ng l&agrave; nơi chứa nhiều mầm bệnh, t&aacute;c nh&acirc;n mang vi khuẩn, virus, nấm mốc v&agrave;o cơ thể người nếu tiếp x&uacute;c l&acirc;u d&agrave;i v&agrave; t&ugrave;y theo cơ địa của từng người sẽ c&oacute; c&aacute;c bệnh l&yacute; kh&aacute;c nhau.</p>\r\n\r\n<h3>Bệnh về mắt</h3>\r\n\r\n<p>Trong c&aacute;c bộ phận, mắt l&agrave; nơi tiếp x&uacute;c trực tiếp v&agrave; đầu ti&ecirc;n với bụi bặm ngo&agrave;i m&ocirc;i trường. Ch&uacute;ng l&agrave; t&aacute;c nh&acirc;n khiến mắt tiết nước g&acirc;y vi&ecirc;m nhiễm đồng thời bụi c&oacute; thể g&acirc;y cộm, kh&oacute; chịu, thậm ch&iacute; trầy xước gi&aacute;c mạc nếu c&oacute; g&oacute;c cạnh.</p>\r\n\r\n<h2>Bảo vệ sức khỏe trước t&igrave;nh trạng &ocirc; nhiễm kh&ocirc;ng kh&iacute;</h2>\r\n\r\n<p>Kiểm tra dự b&aacute;o &ocirc; nhiễm kh&ocirc;ng kh&iacute; h&agrave;ng ng&agrave;y trong khu vực của bạn. C&aacute;c dự b&aacute;o được m&atilde; h&oacute;a m&agrave;u c&oacute; thể cho bạn biết khi kh&ocirc;ng kh&iacute; kh&ocirc;ng l&agrave;nh mạnh nơi bạn đang sống. C&aacute;c nguồn bao gồm b&aacute;o c&aacute;o thời tiết tr&ecirc;n đ&agrave;i ph&aacute;t thanh, truyền h&igrave;nh, b&aacute;o v&agrave; c&aacute;c trang mạng trực tuyến.</p>\r\n\r\n<p>Tr&aacute;nh tập thể dục ngo&agrave;i trời khi mức độ &ocirc; nhiễm cao. Khi kh&ocirc;ng kh&iacute; xấu, h&atilde;y đi bộ trong nh&agrave; trong trung t&acirc;m mua sắm hoặc ph&ograve;ng tập thể dục hoặc sử dụng m&aacute;y tập thể dục. Hạn chế thời gian con bạn d&agrave;nh cho chơi ngo&agrave;i trời nếu chất lượng kh&ocirc;ng kh&iacute; xấu.</p>\r\n\r\n<p>Lu&ocirc;n lu&ocirc;n tr&aacute;nh tập thể dục gần c&aacute;c khu vực giao th&ocirc;ng cao. Ngay cả khi dự b&aacute;o chất lượng kh&ocirc;ng kh&iacute; c&oacute; m&agrave;u xanh l&aacute; c&acirc;y. C&aacute;c phương tiện giao th&ocirc;ng c&oacute; thể tạo ra mức độ &ocirc; nhiễm cao cho khu vực đ&oacute;.</p>\r\n\r\n<p>Sử dụng &iacute;t năng lượng trong nh&agrave; của bạn. Bằng c&aacute;ch giảm sử dụng năng lượng, bạn c&oacute; thể gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; v&agrave; tiết kiệm tiền.</p>\r\n\r\n<p>Kh&ocirc;ng đốt rơm rạ hoặc r&aacute;c. Rơm rạ v&agrave; r&aacute;c l&agrave; một trong những nguồn g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; ch&iacute;nh ở nhiều nơi tr&ecirc;n cả nước.</p>\r\n\r\n<p>Kh&ocirc;ng h&uacute;t thuốc l&aacute; trong nh&agrave; v&agrave; c&aacute;c nơi c&ocirc;ng cộng.</p>\r\n\r\n<p>Đeo khẩu trang hoạt t&iacute;nh, k&iacute;nh chắn bụi mỗi khi ra đường v&agrave; tho&aacute;t khỏi những khu vực &ocirc; nhiễm.</p>\r\n\r\n<p>Thực phẩm gi&agrave;u chất chống oxy h&oacute;a như tr&aacute;i c&acirc;y v&agrave; rau quả cũng c&oacute; thể gi&uacute;p bảo vệ cơ thể bạn</p>\r\n\r\n<p>Cuối c&ugrave;ng, đừng qu&ecirc;n rằng kh&ocirc;ng gian trong nh&agrave; cũng c&oacute; thể bị &ocirc; nhiễm. Để hạn chế, bạn n&ecirc;n sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute;, trồng c&aacute;c loại c&acirc;y c&oacute; chức năng lọc kh&ocirc;ng kh&iacute; trong nh&agrave;, dọn dẹp nh&agrave; cửa để lau rửa sạch bụi bẩn v&agrave; nấm mốc,&hellip;</p>\r\n', '', '', '', '', '', 0, 'en-o-nhiem-khong-khi-va-nhung-thong-tin-nong', 'Ô nhiễm không khí và những thông tin nóng', '', ''),
(217, 109, 'vn', 'Khẩu Trang :Bạn có biết cách lựa chọn khẩu trang chống bụi PM2.5?', '', '<blockquote>\r\n<hr /></blockquote>\r\n\r\n<p><strong>T&igrave;nh trạng kh&ocirc;ng kh&iacute; &ocirc; nhiễm tăng cao, H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh đang l&agrave; hai th&agrave;nh phố c&oacute; độ &ocirc; nhiễm ở mức b&aacute;o động. Ch&uacute;ng ta cần tự bảo vệ sức khỏe của bản th&acirc;n bằng việc trang bị cho m&igrave;nh khẩu trang mỗi khi ra ngo&agrave;i. Tuy nhi&ecirc;n, việc lựa chọn loại khẩu trang như thế n&agrave;o hay khẩu trang chống bụi mịn ra sao lại l&agrave; điều kh&ocirc;ng phải ai cũng biết.</strong></p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; đ&aacute;ng b&aacute;o động tại Việt Nam</h2>\r\n\r\n<p>Hiện nay, thực trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> đang l&agrave; vấn đề n&oacute;ng được quan t&acirc;m mỗi ng&agrave;y ở Việt Nam. Những th&agrave;nh phố lớn như H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh li&ecirc;n tục đứng đầu danh s&aacute;ch c&aacute;c th&agrave;nh phố c&oacute; chỉ số <strong>&ocirc; nhiễm cao nhất thế giới</strong>. C&aacute;c kh&aacute;i niệm về <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;, bụi mịn</strong> đều được người d&acirc;n đặc biệt quan t&acirc;m.</p>\r\n\r\n<p>Những ng&agrave;y gần đ&acirc;y, tại một số khu vực ở H&agrave; Nội <strong>chỉ số AQI</strong> đạt tr&ecirc;n mức 200 ( đ&acirc;y l&agrave; mức rất nguy hại đến sức khỏe ) theo ứng dụng AirVisual ng&agrave;y 14/12/2019. Điều đ&aacute;ng lưu &yacute; l&agrave; mức độ tiếp x&uacute;c&nbsp;<strong>bụi PM2.5</strong> ở trong nh&agrave; v&agrave; ngo&agrave;i trời đều vượt mức cho ph&eacute;p. C&aacute;c chỉ số n&agrave;y c&oacute; dấu hiệu tăng dần về đ&ecirc;m v&agrave; rạng s&aacute;ng.</p>\r\n\r\n<p>Theo Tổ chức Y tế&nbsp;Thế giới&nbsp;(WHO), cơ chế tự bảo vệ của cơ thể con người chỉ c&oacute; t&aacute;c dụng đối với bụi hạt c&oacute; đường k&iacute;nh lớn hơn 10 micromet. Đối với c&aacute;c hạt bụi k&iacute;ch cỡ từ 0,01 đến 5 micromet, ch&uacute;ng sẽ bị giữ lại trong kh&iacute; quản v&agrave; phế nang. Bụi mịn PM2.5 (c&oacute; đường k&iacute;nh nhỏ hơn 2,5 micromet) c&oacute; thể th&acirc;m nhập cơ thể người do c&oacute; k&iacute;ch thước si&ecirc;u nhỏ, g&acirc;y ảnh hưởng tới sức khỏe hơn bất kỳ chất g&acirc;y &ocirc; nhiễm n&agrave;o kh&aacute;c, ngay cả khi ở nồng độ thấp. Những người trong nh&oacute;m nhạy cảm, người gi&agrave;, trẻ nhỏ v&agrave; phụ nữ mang thai cần đặc biệt ch&uacute; &yacute; bảo vệ sức khỏe khi đi ra ngo&agrave;i.</p>\r\n\r\n<h2>Nếu kh&ocirc;ng đeo khẩu trang ra ngo&agrave;i, bạn sẽ đối mặt với những điều g&igrave;?</h2>\r\n\r\n<p>Kh&ocirc;ng kh&iacute; &ocirc; nhiễm chứa nhiều bụi, bụi mịn v&agrave; c&aacute;c chất độc hại. Việc kh&ocirc;ng đeo khẩu trang khi ra ngo&agrave;i kh&ocirc;ng kh&aacute;c g&igrave; mở cửa để bụi v&agrave; vi khuẩn x&acirc;m nhập một c&aacute;ch tự do v&agrave;o cơ thể ch&uacute;ng ta.</p>\r\n\r\n<h3><strong>Bụi mịn PM2.5</strong></h3>\r\n\r\n<p>Bụi mịn PM2.5 l&agrave; những hạt c&oacute; đường k&iacute;nh nhỏ hơn 2.5 &mu;m, bằng với k&iacute;ch thước của c&aacute;c loại vi khuẩn. Khi ch&uacute;ng ta h&iacute;t v&agrave;o, <strong>bụi PM2.5</strong> sẽ x&acirc;m nhập v&agrave;o phổi rồi v&agrave;o m&aacute;u v&agrave; tim. Lớp <strong>bụi</strong> n&agrave;y cứ từng ng&agrave;y đ&oacute;ng lại cho đến khi lớp <strong>bụi</strong> đủ lớn sẽ g&acirc;y ra tử vong. Những người thuộc nh&oacute;m nhạy cảm, trẻ em, phụ nữ, người lớn tuổi, người c&oacute; tiền sử bệnh h&ocirc; hấp v&agrave; tim mạch l&agrave; những người chịu nhiều t&aacute;c hại nhất.</p>\r\n\r\n<h3><strong>Bụi mịn</strong></h3>\r\n\r\n<p>Bụi mịn ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y nhiễm độc m&aacute;u, m&aacute;u kh&oacute; đ&ocirc;ng khiến cho hệ tuần ho&agrave;n bị ảnh hưởng, hệ thần kinh điều khiển hoạt động của cơ tim bị suy nhược g&acirc;y ra c&aacute;c bệnh l&yacute; về tim mạch. Khi ch&uacute;ng đi v&agrave;o phổi khiến m&aacute;u kh&ocirc;ng c&oacute; oxy đi nu&ocirc;i cơ thể, dẫn đến sự xuất hiện của c&aacute;c triệu chứng như đau đầu, mệt mỏi, ch&oacute;ng mặt. Nếu t&igrave;nh trạng n&agrave;y k&eacute;o d&agrave;i, hệ h&ocirc; hấp của ch&uacute;ng ta sẽ bị nhiễm độc, hệ miễn dịch bị ph&aacute; hủy, ch&uacute;ng x&acirc;m lấn v&agrave;o tế b&agrave;o v&agrave; cản trở c&aacute;c hoạt động của cơ thể.</p>\r\n\r\n<p>Đặc biệt l&agrave; đối với những&nbsp;phụ nữ đang mang thai nếu h&iacute;t phải <strong>bụi mịn</strong> do <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong> c&oacute; thể khiến cho thai nhi chậm ph&aacute;t triển. Trẻ sinh ra bị&nbsp;thiếu c&acirc;n,&nbsp;suy nhược thần kinh&nbsp;v&agrave;&nbsp;tự kỷ.</p>\r\n\r\n<p>Với hệ miễn dịch chưa được ph&aacute;t triển to&agrave;n diện, đầy đủ, trẻ em ch&iacute;nh l&agrave; đối tượng bị t&aacute;c động nhiều nhất do &ocirc; nhiễm kh&ocirc;ng kh&iacute;, c&ugrave;ng một nồng độ kh&iacute; bị &ocirc; nhiễm nhưng khi đi v&agrave;o cơ thể trẻ c&oacute; thể cao gấp 2 lần so với người lớn.</p>\r\n\r\n<h2>Ti&ecirc;u ch&iacute; chọn khẩu trang chống bụi mịn</h2>\r\n\r\n<p>Một chiếc <strong>khẩu trang</strong> ph&ugrave; hợp d&ugrave;ng để bảo vệ bạn v&agrave; gia đ&igrave;nh cần phải đảm bảo chống được bụi PM2.5, vi khuẩn, virus v&agrave; những chất độc c&oacute; trong kh&ocirc;ng kh&iacute;. Ngo&agrave;i ra, khẩu trang cần được thiết kế để đảm bảo tho&aacute;ng kh&iacute;, ngăn ngừa hấp hơi mờ k&iacute;nh, tạo cảm gi&aacute;c dễ chịu v&agrave; kh&ocirc;ng g&acirc;y tổn thương da v&agrave; tai.</p>\r\n\r\n<p>C&aacute;c loại như <strong>khẩu trang vải, khẩu trang y tế</strong> kh&ocirc;ng c&oacute; t&aacute;c dụng bảo vệ bạn khỏi <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong>.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n sử dụng <strong>khẩu trang vải</strong> v&igrave; kh&ocirc;ng c&oacute; khả năng lọc c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại trong <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong>. Khẩu trang loại n&agrave;y chỉ c&oacute; thể lọc được c&aacute;c <strong>hạt bụi</strong> c&oacute; k&iacute;ch thước lớn. Ngo&agrave;i ra, khẩu trang vải kh&ocirc;ng tho&aacute;t kh&iacute; l&acirc;u ng&agrave;y sẽ trở th&agrave;nh m&ocirc;i trường l&yacute; tưởng cho virus v&agrave; vi khuẩn sinh s&ocirc;i nảy nở, g&acirc;y hại nhiều hơn cho cơ thể.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n sử dụng <strong>khẩu trang y tế</strong> v&igrave; loại sản phẩm n&agrave;y chỉ c&oacute; thể ngăn ngừa sự x&acirc;m nhập của c&aacute;c loại virus m&agrave; kh&ocirc;ng chống được c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại kh&aacute;c. Hơn nữa khi sử dụng ngo&agrave;i đường phố, kết cấu mỏng manh tạo ra c&aacute;c khe hở khiến <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong> dễ d&agrave;ng hơn x&acirc;m nhập v&agrave;o cơ thể. Ngo&agrave;i m&ocirc;i trường bệnh viện ra, khẩu trang y tế ho&agrave;n to&agrave;n v&ocirc; t&aacute;c dụng khi sử dụng ngo&agrave;i đường.</p>\r\n\r\n<h3><strong>Ch&uacute; &yacute; chất liệu khẩu trang</strong></h3>\r\n\r\n<p>Tr&ecirc;n thị trường c&oacute; nhiều quảng c&aacute;o <strong>khẩu trang lọc bụi si&ecirc;u mịn</strong> ti&ecirc;u chuẩn N95 v&agrave; N99. Đ&acirc;y l&agrave; <strong>khẩu trang</strong> được Trung t&acirc;m kiểm so&aacute;t v&agrave; ph&ograve;ng ngừa dịch bệnh Hoa Kỳ khuyến nghị n&ecirc;n sử dụng ở th&agrave;nh phố &ocirc; nhiễm kh&ocirc;ng kh&iacute;. N95 c&oacute; nghĩa l&agrave; lọc được 95% c&aacute;c loại bụi c&oacute; trong kh&ocirc;ng kh&iacute; kể cả bụi si&ecirc;u mịn. C&ograve;n N99 lọc được 99% c&aacute;c vật chất c&oacute; trong kh&ocirc;ng kh&iacute;, ngăn cản được gần như tuyệt đối c&aacute;c loại vi khuẩn, virus.Tuy nhi&ecirc;n ch&uacute;ng ta n&ecirc;n thận trọng v&igrave; c&ocirc;ng nghệ lọc <strong>bụi si&ecirc;u mịn</strong> PM2.5 kh&aacute; l&agrave; kh&oacute;. Do đ&oacute;, nh&agrave; sản xuất phải c&oacute; uy t&iacute;n, sở hữu c&ocirc;ng nghệ cao v&agrave; đặc biệt phải được chứng nhận của c&aacute;c cơ quan kiểm định uy t&iacute;n tr&ecirc;n thế giới.</p>\r\n\r\n<h3><strong>Kiểu d&aacute;ng &ocirc;m s&aacute;t mặt </strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; ti&ecirc;u ch&iacute; quan trọng nhất v&igrave;&nbsp;gi&uacute;p cho <strong>bụi mịn</strong> kh&ocirc;ng chui v&agrave;o ph&iacute;a trong. <strong>Khẩu trang</strong> &ocirc;m s&aacute;t mặt, cho ph&eacute;p tối đa 5% kh&ocirc;ng kh&iacute; đi qua c&aacute;c khoảng trống.</p>\r\n\r\n<h3><strong>Chọn khẩu trang chống bụi mịn c&oacute; độ tho&aacute;ng cao</strong></h3>\r\n\r\n<p>Sử dụng <strong>khẩu trang</strong> cần c&oacute; độ tho&aacute;ng, gi&uacute;p người d&ugrave;ng thấy thoải m&aacute;i, h&ocirc; hấp b&igrave;nh thường v&agrave; cảm thấy tự tin sẵn s&agrave;ng đeo mọi l&uacute;c mọi nơi.</p>\r\n\r\n<h3><strong>Nguồn gốc xuất xứ&nbsp;</strong></h3>\r\n\r\n<p>Bạn n&ecirc;n lựa chọn <strong>khẩu trang chống bụi mịn</strong> c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng, đảm bảo chất lượng.</p>\r\n\r\n<h3>Thời hạn sử dụng khẩu trang</h3>\r\n\r\n<p>Sử dụng từ 10-15 ng&agrave;y với điều kiện được cất tại nơi tho&aacute;ng m&aacute;t</p>\r\n', '', '', '', '', '', 0, 'khau-trang-ban-co-biet-cach-lua-chon-khau-trang-chong-bui-pm25', 'Khẩu Trang :Bạn có biết cách lựa chọn khẩu trang chống bụi PM2.5?', '', ''),
(218, 109, 'en', 'english version Khẩu Trang :Bạn có biết cách lựa chọn khẩu trang chống bụi PM2.5?', 'english version ', 'english version <blockquote>\r\n<hr /></blockquote>\r\n\r\n<p><strong>T&igrave;nh trạng kh&ocirc;ng kh&iacute; &ocirc; nhiễm tăng cao, H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh đang l&agrave; hai th&agrave;nh phố c&oacute; độ &ocirc; nhiễm ở mức b&aacute;o động. Ch&uacute;ng ta cần tự bảo vệ sức khỏe của bản th&acirc;n bằng việc trang bị cho m&igrave;nh khẩu trang mỗi khi ra ngo&agrave;i. Tuy nhi&ecirc;n, việc lựa chọn loại khẩu trang như thế n&agrave;o hay khẩu trang chống bụi mịn ra sao lại l&agrave; điều kh&ocirc;ng phải ai cũng biết.</strong></p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; đ&aacute;ng b&aacute;o động tại Việt Nam</h2>\r\n\r\n<p>Hiện nay, thực trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> đang l&agrave; vấn đề n&oacute;ng được quan t&acirc;m mỗi ng&agrave;y ở Việt Nam. Những th&agrave;nh phố lớn như H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh li&ecirc;n tục đứng đầu danh s&aacute;ch c&aacute;c th&agrave;nh phố c&oacute; chỉ số <strong>&ocirc; nhiễm cao nhất thế giới</strong>. C&aacute;c kh&aacute;i niệm về <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;, bụi mịn</strong> đều được người d&acirc;n đặc biệt quan t&acirc;m.</p>\r\n\r\n<p>Những ng&agrave;y gần đ&acirc;y, tại một số khu vực ở H&agrave; Nội <strong>chỉ số AQI</strong> đạt tr&ecirc;n mức 200 ( đ&acirc;y l&agrave; mức rất nguy hại đến sức khỏe ) theo ứng dụng AirVisual ng&agrave;y 14/12/2019. Điều đ&aacute;ng lưu &yacute; l&agrave; mức độ tiếp x&uacute;c&nbsp;<strong>bụi PM2.5</strong> ở trong nh&agrave; v&agrave; ngo&agrave;i trời đều vượt mức cho ph&eacute;p. C&aacute;c chỉ số n&agrave;y c&oacute; dấu hiệu tăng dần về đ&ecirc;m v&agrave; rạng s&aacute;ng.</p>\r\n\r\n<p>Theo Tổ chức Y tế&nbsp;Thế giới&nbsp;(WHO), cơ chế tự bảo vệ của cơ thể con người chỉ c&oacute; t&aacute;c dụng đối với bụi hạt c&oacute; đường k&iacute;nh lớn hơn 10 micromet. Đối với c&aacute;c hạt bụi k&iacute;ch cỡ từ 0,01 đến 5 micromet, ch&uacute;ng sẽ bị giữ lại trong kh&iacute; quản v&agrave; phế nang. Bụi mịn PM2.5 (c&oacute; đường k&iacute;nh nhỏ hơn 2,5 micromet) c&oacute; thể th&acirc;m nhập cơ thể người do c&oacute; k&iacute;ch thước si&ecirc;u nhỏ, g&acirc;y ảnh hưởng tới sức khỏe hơn bất kỳ chất g&acirc;y &ocirc; nhiễm n&agrave;o kh&aacute;c, ngay cả khi ở nồng độ thấp. Những người trong nh&oacute;m nhạy cảm, người gi&agrave;, trẻ nhỏ v&agrave; phụ nữ mang thai cần đặc biệt ch&uacute; &yacute; bảo vệ sức khỏe khi đi ra ngo&agrave;i.</p>\r\n\r\n<h2>Nếu kh&ocirc;ng đeo khẩu trang ra ngo&agrave;i, bạn sẽ đối mặt với những điều g&igrave;?</h2>\r\n\r\n<p>Kh&ocirc;ng kh&iacute; &ocirc; nhiễm chứa nhiều bụi, bụi mịn v&agrave; c&aacute;c chất độc hại. Việc kh&ocirc;ng đeo khẩu trang khi ra ngo&agrave;i kh&ocirc;ng kh&aacute;c g&igrave; mở cửa để bụi v&agrave; vi khuẩn x&acirc;m nhập một c&aacute;ch tự do v&agrave;o cơ thể ch&uacute;ng ta.</p>\r\n\r\n<h3><strong>Bụi mịn PM2.5</strong></h3>\r\n\r\n<p>Bụi mịn PM2.5 l&agrave; những hạt c&oacute; đường k&iacute;nh nhỏ hơn 2.5 &mu;m, bằng với k&iacute;ch thước của c&aacute;c loại vi khuẩn. Khi ch&uacute;ng ta h&iacute;t v&agrave;o, <strong>bụi PM2.5</strong> sẽ x&acirc;m nhập v&agrave;o phổi rồi v&agrave;o m&aacute;u v&agrave; tim. Lớp <strong>bụi</strong> n&agrave;y cứ từng ng&agrave;y đ&oacute;ng lại cho đến khi lớp <strong>bụi</strong> đủ lớn sẽ g&acirc;y ra tử vong. Những người thuộc nh&oacute;m nhạy cảm, trẻ em, phụ nữ, người lớn tuổi, người c&oacute; tiền sử bệnh h&ocirc; hấp v&agrave; tim mạch l&agrave; những người chịu nhiều t&aacute;c hại nhất.</p>\r\n\r\n<h3><strong>Bụi mịn</strong></h3>\r\n\r\n<p>Bụi mịn ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y nhiễm độc m&aacute;u, m&aacute;u kh&oacute; đ&ocirc;ng khiến cho hệ tuần ho&agrave;n bị ảnh hưởng, hệ thần kinh điều khiển hoạt động của cơ tim bị suy nhược g&acirc;y ra c&aacute;c bệnh l&yacute; về tim mạch. Khi ch&uacute;ng đi v&agrave;o phổi khiến m&aacute;u kh&ocirc;ng c&oacute; oxy đi nu&ocirc;i cơ thể, dẫn đến sự xuất hiện của c&aacute;c triệu chứng như đau đầu, mệt mỏi, ch&oacute;ng mặt. Nếu t&igrave;nh trạng n&agrave;y k&eacute;o d&agrave;i, hệ h&ocirc; hấp của ch&uacute;ng ta sẽ bị nhiễm độc, hệ miễn dịch bị ph&aacute; hủy, ch&uacute;ng x&acirc;m lấn v&agrave;o tế b&agrave;o v&agrave; cản trở c&aacute;c hoạt động của cơ thể.</p>\r\n\r\n<p>Đặc biệt l&agrave; đối với những&nbsp;phụ nữ đang mang thai nếu h&iacute;t phải <strong>bụi mịn</strong> do <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong> c&oacute; thể khiến cho thai nhi chậm ph&aacute;t triển. Trẻ sinh ra bị&nbsp;thiếu c&acirc;n,&nbsp;suy nhược thần kinh&nbsp;v&agrave;&nbsp;tự kỷ.</p>\r\n\r\n<p>Với hệ miễn dịch chưa được ph&aacute;t triển to&agrave;n diện, đầy đủ, trẻ em ch&iacute;nh l&agrave; đối tượng bị t&aacute;c động nhiều nhất do &ocirc; nhiễm kh&ocirc;ng kh&iacute;, c&ugrave;ng một nồng độ kh&iacute; bị &ocirc; nhiễm nhưng khi đi v&agrave;o cơ thể trẻ c&oacute; thể cao gấp 2 lần so với người lớn.</p>\r\n\r\n<h2>Ti&ecirc;u ch&iacute; chọn khẩu trang chống bụi mịn</h2>\r\n\r\n<p>Một chiếc <strong>khẩu trang</strong> ph&ugrave; hợp d&ugrave;ng để bảo vệ bạn v&agrave; gia đ&igrave;nh cần phải đảm bảo chống được bụi PM2.5, vi khuẩn, virus v&agrave; những chất độc c&oacute; trong kh&ocirc;ng kh&iacute;. Ngo&agrave;i ra, khẩu trang cần được thiết kế để đảm bảo tho&aacute;ng kh&iacute;, ngăn ngừa hấp hơi mờ k&iacute;nh, tạo cảm gi&aacute;c dễ chịu v&agrave; kh&ocirc;ng g&acirc;y tổn thương da v&agrave; tai.</p>\r\n\r\n<p>C&aacute;c loại như <strong>khẩu trang vải, khẩu trang y tế</strong> kh&ocirc;ng c&oacute; t&aacute;c dụng bảo vệ bạn khỏi <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong>.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n sử dụng <strong>khẩu trang vải</strong> v&igrave; kh&ocirc;ng c&oacute; khả năng lọc c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại trong <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong>. Khẩu trang loại n&agrave;y chỉ c&oacute; thể lọc được c&aacute;c <strong>hạt bụi</strong> c&oacute; k&iacute;ch thước lớn. Ngo&agrave;i ra, khẩu trang vải kh&ocirc;ng tho&aacute;t kh&iacute; l&acirc;u ng&agrave;y sẽ trở th&agrave;nh m&ocirc;i trường l&yacute; tưởng cho virus v&agrave; vi khuẩn sinh s&ocirc;i nảy nở, g&acirc;y hại nhiều hơn cho cơ thể.</p>\r\n\r\n<p>Kh&ocirc;ng n&ecirc;n sử dụng <strong>khẩu trang y tế</strong> v&igrave; loại sản phẩm n&agrave;y chỉ c&oacute; thể ngăn ngừa sự x&acirc;m nhập của c&aacute;c loại virus m&agrave; kh&ocirc;ng chống được c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại kh&aacute;c. Hơn nữa khi sử dụng ngo&agrave;i đường phố, kết cấu mỏng manh tạo ra c&aacute;c khe hở khiến <strong>kh&ocirc;ng kh&iacute; &ocirc; nhiễm</strong> dễ d&agrave;ng hơn x&acirc;m nhập v&agrave;o cơ thể. Ngo&agrave;i m&ocirc;i trường bệnh viện ra, khẩu trang y tế ho&agrave;n to&agrave;n v&ocirc; t&aacute;c dụng khi sử dụng ngo&agrave;i đường.</p>\r\n\r\n<h3><strong>Ch&uacute; &yacute; chất liệu khẩu trang</strong></h3>\r\n\r\n<p>Tr&ecirc;n thị trường c&oacute; nhiều quảng c&aacute;o <strong>khẩu trang lọc bụi si&ecirc;u mịn</strong> ti&ecirc;u chuẩn N95 v&agrave; N99. Đ&acirc;y l&agrave; <strong>khẩu trang</strong> được Trung t&acirc;m kiểm so&aacute;t v&agrave; ph&ograve;ng ngừa dịch bệnh Hoa Kỳ khuyến nghị n&ecirc;n sử dụng ở th&agrave;nh phố &ocirc; nhiễm kh&ocirc;ng kh&iacute;. N95 c&oacute; nghĩa l&agrave; lọc được 95% c&aacute;c loại bụi c&oacute; trong kh&ocirc;ng kh&iacute; kể cả bụi si&ecirc;u mịn. C&ograve;n N99 lọc được 99% c&aacute;c vật chất c&oacute; trong kh&ocirc;ng kh&iacute;, ngăn cản được gần như tuyệt đối c&aacute;c loại vi khuẩn, virus.Tuy nhi&ecirc;n ch&uacute;ng ta n&ecirc;n thận trọng v&igrave; c&ocirc;ng nghệ lọc <strong>bụi si&ecirc;u mịn</strong> PM2.5 kh&aacute; l&agrave; kh&oacute;. Do đ&oacute;, nh&agrave; sản xuất phải c&oacute; uy t&iacute;n, sở hữu c&ocirc;ng nghệ cao v&agrave; đặc biệt phải được chứng nhận của c&aacute;c cơ quan kiểm định uy t&iacute;n tr&ecirc;n thế giới.</p>\r\n\r\n<h3><strong>Kiểu d&aacute;ng &ocirc;m s&aacute;t mặt </strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; ti&ecirc;u ch&iacute; quan trọng nhất v&igrave;&nbsp;gi&uacute;p cho <strong>bụi mịn</strong> kh&ocirc;ng chui v&agrave;o ph&iacute;a trong. <strong>Khẩu trang</strong> &ocirc;m s&aacute;t mặt, cho ph&eacute;p tối đa 5% kh&ocirc;ng kh&iacute; đi qua c&aacute;c khoảng trống.</p>\r\n\r\n<h3><strong>Chọn khẩu trang chống bụi mịn c&oacute; độ tho&aacute;ng cao</strong></h3>\r\n\r\n<p>Sử dụng <strong>khẩu trang</strong> cần c&oacute; độ tho&aacute;ng, gi&uacute;p người d&ugrave;ng thấy thoải m&aacute;i, h&ocirc; hấp b&igrave;nh thường v&agrave; cảm thấy tự tin sẵn s&agrave;ng đeo mọi l&uacute;c mọi nơi.</p>\r\n\r\n<h3><strong>Nguồn gốc xuất xứ&nbsp;</strong></h3>\r\n\r\n<p>Bạn n&ecirc;n lựa chọn <strong>khẩu trang chống bụi mịn</strong> c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng, đảm bảo chất lượng.</p>\r\n\r\n<h3>Thời hạn sử dụng khẩu trang</h3>\r\n\r\n<p>Sử dụng từ 10-15 ng&agrave;y với điều kiện được cất tại nơi tho&aacute;ng m&aacute;t</p>\r\n', '', '', '', '', '', 0, 'en-khau-trang-ban-co-biet-cach-lua-chon-khau-trang-chong-bui-pm25', 'Khẩu Trang :Bạn có biết cách lựa chọn khẩu trang chống bụi PM2.5?', '', '');
INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(219, 110, 'vn', 'Bụi Mịn nguy hiểm như thế nào đối với tính mạng con người', '', '<blockquote>\r\n<p><strong>Những ng&agrave;y gần đ&acirc;y, c&aacute;c tin tức về &ocirc; nhiễm kh&ocirc;ng kh&iacute; thường xuy&ecirc;n xuất hiện tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin. C&aacute;c b&agrave;i b&aacute;o hay nhắc tới c&aacute;c cụm từ như bụi mịn, bụi si&ecirc;u mịn, bụi PM 2.5, bụi PM 10. Vậy những cụm từ n&agrave;y c&oacute; &yacute; nghĩa như thế n&agrave;o? T&aacute;c hại của bụi mịn v&agrave; c&aacute;ch ph&ograve;ng tr&aacute;nh ra sao sẽ được đề cập trong b&agrave;i viết dưới đ&acirc;y.</strong></p>\r\n</blockquote>\r\n\r\n<h2>Bụi mịn l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Bụi</strong> hay hợp chất c&oacute; trong <strong>bụi</strong> được gọi chung l&agrave; <strong>Particulate Matter</strong>, viết tắt l&agrave; <strong>PM</strong> . Hỗn hợp phức tạp chứa c&aacute;c hạt v&ocirc; cơ v&agrave; hữu cơ ở dạng<em> rắn v&agrave; dạng lỏng, lơ lửng trong kh&ocirc;ng kh&iacute; gọi chung l&agrave; bụi.</em></p>\r\n\r\n<p><strong>Chỉ số PM</strong> thường được d&ugrave;ng để đề cập đến c&aacute;c hạt bụi rất nhỏ m&agrave; để đo lường k&iacute;ch thước của ch&uacute;ng người ta phải sử dụng đơn vị t&iacute;nh &mu;m (micromet ) 1&mu;m = 0.001mm . Những hạt n&agrave;y thường được gọi chung l&agrave; <strong>bụi mịn, bụi si&ecirc;u mịn</strong>. C&aacute;c hạt bụi mịn c&oacute; k&iacute;ch thước si&ecirc;u vi được biết đến nhiều nhất l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>PM10 &ndash; C&aacute;c hạt bụi c&oacute; k&iacute;ch thước đường k&iacute;nh từ 2.5 tới 10 &micro;m</li>\r\n	<li>PM2.5 &ndash; C&aacute;c hạt bụi c&oacute; k&iacute;ch thước đường k&iacute;nh nhỏ hơn hoặc bằng 2,5 &micro;m</li>\r\n</ul>\r\n\r\n<p>Bạn sẽ ngạc nhi&ecirc;n khi biết k&iacute;ch thước <strong>hạt bụi si&ecirc;u mịn PM2.5</strong> chỉ bằng 1/28 sợi t&oacute;c người, tương đương với k&iacute;ch thước của một con virus.</p>\r\n\r\n<h2>Bụi mịn đến từ đ&acirc;u?</h2>\r\n\r\n<p><strong>Bụi mịn</strong> đến từ 2 nguồn ch&iacute;nh l&agrave;&nbsp;nguồn sơ cấp&nbsp;v&agrave;&nbsp;nguồn thứ cấp.</p>\r\n\r\n<p><strong><em>Nguồn sơ cấp</em> </strong>l&agrave; những nguồn ph&aacute;t sinh trực tiếp ra m&ocirc;i trường, bao gồm:</p>\r\n\r\n<p>Bụi thi&ecirc;n nhi&ecirc;n: sa mạc, đất c&aacute;t, phun tr&agrave;o n&uacute;i lửa</p>\r\n\r\n<p>Sản xuất c&ocirc;ng nghiệp: kh&oacute;i thải từ nh&agrave; m&aacute;y, xưởng sản xuất, khu c&ocirc;ng nghiệp</p>\r\n\r\n<p>Giao th&ocirc;ng vận tải: kh&oacute;i thải từ c&aacute;c phương tiện c&aacute; nh&acirc;n, c&aacute;t bụi cuốn theo trong qu&aacute; tr&igrave;nh di chuyển, c&aacute;t bụi sinh ra do b&agrave;o m&ograve;n bề mặt đường</p>\r\n\r\n<p>Sinh hoạt: kh&oacute;i thải nấu nướng bằng bếp than, bếp củi, dầu</p>\r\n\r\n<p>R&aacute;c thải: r&aacute;c sinh hoạt, r&aacute;c c&ocirc;ng nghiệp</p>\r\n\r\n<p>N&ocirc;ng nghiệp: vận chuyển, đốt rơm rạ</p>\r\n\r\n<p>X&acirc;y dựng: bụi từ qu&aacute; tr&igrave;nh x&acirc;y dựng chung cư, cao ốc, cầu đường</p>\r\n\r\n<p><em><strong>Nguồn thứ cấp</strong></em>: khi nguồn sơ cấp lơ lửng trong kh&ocirc;ng kh&iacute;, một trong số ch&uacute;ng phản ứng ho&aacute; học với tự nhi&ecirc;n, tạo ra một chất mới, những chất ng&agrave;y l&agrave; nguồn thứ cấp.</p>\r\n\r\n<h2>T&aacute;c hại của Bụi Mịn PM 2.5, PM 10</h2>\r\n\r\n<p><strong>Bụi PM 2.5, PM 10</strong> kh&ocirc;ng chừa một ai. Trong đ&oacute; những người thuộc nh&oacute;m nhạy cảm l&agrave; trẻ em, phụ nữ, người lớn tuổi, người c&oacute; thể trạng yếu v&agrave; những người c&oacute; tiền sử bệnh h&ocirc; hấp v&agrave; tim mạch l&agrave; những người chịu nhiều t&aacute;c hại nhất.</p>\r\n\r\n<p>Ch&uacute;ng ta thường bỏ qua hoặc kh&ocirc;ng nhận thấy t&aacute;c hại của bụi PM 2.5 cũng như c&aacute;ch m&agrave; ch&uacute;ng x&acirc;m nhập v&agrave; g&acirc;y hại cho cơ thể. V&igrave; qu&aacute; tr&igrave;nh x&acirc;m nhập thường &acirc;m thầm, kh&ocirc;ng c&oacute; triệu chứng r&otilde; r&agrave;ng cho đến khi lượng bụi t&iacute;ch tụ đủ lớn.</p>\r\n\r\n<h4><em><strong>G&acirc;y dị ứng</strong></em>:</h4>\r\n\r\n<p>Ở mức độ nhẹ nhất, bụi PM 2.5 mang theo vi khuẩn b&aacute;m v&agrave;o bề mặt của cơ thể g&acirc;y cảm gi&aacute;c ngứa ng&aacute;y, kh&oacute; chịu, dị ứng. Nặng hơn g&acirc;y đau mắt, vi&ecirc;m mũi, c&aacute;c bệnh về tai mũi họng.</p>\r\n\r\n<h4><em><strong>G&acirc;y suy giảm hệ miễn dịch</strong></em>:</h4>\r\n\r\n<p>Sau khi bụi PM 2.5 hấp thụ chất độc, mang theo vi khuẩn, virus ngo&agrave;i m&ocirc;i trường x&acirc;m nhập v&agrave;o cơ thể con người. Ch&uacute;ng thải độc tố ngấm v&agrave;o cơ thể v&agrave; l&agrave;m suy giảm hệ miễn dịch.</p>\r\n\r\n<h4><em><strong>G&acirc;y vi&ecirc;m phổi, tắc nghẽn phổi m&atilde;n t&iacute;nh</strong></em>:</h4>\r\n\r\n<p>Bụi PM 2.5 v&agrave; PM 10 x&acirc;m nhập v&agrave;o cơ thể người th&ocirc;ng qua hoạt động h&iacute;t thở. Ch&uacute;ng theo đường dẫn kh&iacute;, b&aacute;m v&agrave; t&iacute;ch tụ v&agrave;o kh&iacute; quản v&agrave; bề mặt phổi. Theo thời gian, lượng bụi n&agrave;y t&iacute;ch tụ c&agrave;ng nhiều, g&acirc;y ảnh hưởng c&agrave;ng lớn.</p>\r\n\r\n<p><strong>Hạt PM 10</strong> v&agrave; <strong>PM 2.5</strong> x&acirc;m nhập v&agrave;o kh&iacute; quản v&agrave; phổi ban đầu g&acirc;y c&aacute;c cảm gi&aacute;c kh&oacute; chịu như khan tiếng, hắt hơi, ho, kh&oacute; thở. Theo thời gian ch&uacute;ng c&oacute; thể g&acirc;y ra c&aacute;c bệnh như hen suyễn, tim mạch.</p>\r\n\r\n<p>Đặc biệt <strong>PM 2.5</strong> c&oacute; k&iacute;ch thước si&ecirc;u nhỏ c&oacute; thể x&acirc;m nhập s&acirc;u, l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y ra tắc nghẽn phổi m&atilde;n t&iacute;nh. Khi lượng bụi t&iacute;ch tụ đủ lớn sẽ c&oacute; thể dẫn đến tử vong.</p>\r\n\r\n<p><strong>Bụi PM 2.5</strong> c&ograve;n nguy hiểm hơn <strong>PM 10</strong>, với đường k&iacute;nh si&ecirc;u nhỏ ch&uacute;ng c&oacute; khả năng luồn l&aacute;ch v&agrave;o c&aacute;c t&uacute;i phổi v&agrave; tĩnh mạch phổi, x&acirc;m nhập v&agrave;o m&aacute;u g&acirc;y ra những bệnh chết người. Ngo&agrave;i ra, ch&uacute;ng sẽ thẩm thấu v&agrave;o phế nang, ảnh hưởng đến chức năng trao đổi kh&iacute; của phế nang. Sau khi v&agrave;o phế nang, ch&uacute;ng c&oacute; thể vượt qua&nbsp;v&aacute;ch ngăn kh&iacute;-m&aacute;u&nbsp;để đi v&agrave;o hệ tuần ho&agrave;n v&agrave; g&acirc;y bệnh, thậm ch&iacute; ch&uacute;ng c&ograve;n c&oacute; thể ảnh hưởng đến hệ thống thần kinh.</p>\r\n\r\n<h4><em><strong>G&acirc;y nhồi m&aacute;u cơ tim:</strong></em></h4>\r\n\r\n<p><strong>Bụi PM 2.5</strong> v&agrave; <strong>PM 10</strong> trong khoảng thời gian ngắn c&oacute; thể khiến chỗ tắc mạch m&aacute;u b&igrave;nh thường kh&ocirc;ng nghi&ecirc;m trọng đột nhi&ecirc;n bị vỡ, tạo ra nghẽn mạch, g&acirc;y n&ecirc;n nhồi m&aacute;u cơ tim cấp t&iacute;nh</p>\r\n\r\n<h4><em><strong>L&agrave;m tăng tỷ lệ chết v&igrave; bệnh tim v&agrave; cao huyết &aacute;p:</strong></em></h4>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Đại học Harvard đ&atilde;, c&aacute;c nh&agrave; khoa học đ&atilde; chứng minh những chất độc hại c&oacute; trong bụi kh&ocirc;ng chỉ g&acirc;y nhồi m&aacute;u cơ tim m&agrave; c&ograve;n dẫn đến&nbsp;thiếu m&aacute;u hoặc tổn thương cơ tim. Kết quả khảo s&aacute;t 25.000 người bị bệnh tim hoặc tim kh&ocirc;ng khỏe v&agrave; ph&aacute;t hiện ra sau khi <strong>PM 2.5</strong> tăng l&ecirc;n 10 &micro;g/m<sup>3</sup>&nbsp;th&igrave; tỉ lệ thiệt mạng của người bệnh sẽ tăng 10% &ndash; 27%.</p>\r\n\r\n<h4><em><strong>G&acirc;y ung thư v&agrave; biến đổi gen</strong></em>:</h4>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện<strong> PM 2.5</strong> chứa kim loại l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ung thư v&agrave; khủng khiếp hơn l&agrave; biến đổi gen ở người. Đ&acirc;y l&agrave; một trong những điều đ&aacute;ng lo ngại nhất m&agrave; tất cả ch&uacute;ng ta đang phải đối mặt.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'bui-min-nguy-hiem-nhu-the-nao-doi-voi-tinh-mang-con-nguoi', 'Bụi Mịn nguy hiểm như thế nào đối với tính mạng con người', '', ''),
(220, 110, 'en', 'english version Bụi Mịn nguy hiểm như thế nào đối với tính mạng con người', 'english version ', 'english version <blockquote>\r\n<p><strong>Những ng&agrave;y gần đ&acirc;y, c&aacute;c tin tức về &ocirc; nhiễm kh&ocirc;ng kh&iacute; thường xuy&ecirc;n xuất hiện tr&ecirc;n c&aacute;c phương tiện th&ocirc;ng tin. C&aacute;c b&agrave;i b&aacute;o hay nhắc tới c&aacute;c cụm từ như bụi mịn, bụi si&ecirc;u mịn, bụi PM 2.5, bụi PM 10. Vậy những cụm từ n&agrave;y c&oacute; &yacute; nghĩa như thế n&agrave;o? T&aacute;c hại của bụi mịn v&agrave; c&aacute;ch ph&ograve;ng tr&aacute;nh ra sao sẽ được đề cập trong b&agrave;i viết dưới đ&acirc;y.</strong></p>\r\n</blockquote>\r\n\r\n<h2>Bụi mịn l&agrave; g&igrave;?</h2>\r\n\r\n<p><strong>Bụi</strong> hay hợp chất c&oacute; trong <strong>bụi</strong> được gọi chung l&agrave; <strong>Particulate Matter</strong>, viết tắt l&agrave; <strong>PM</strong> . Hỗn hợp phức tạp chứa c&aacute;c hạt v&ocirc; cơ v&agrave; hữu cơ ở dạng<em> rắn v&agrave; dạng lỏng, lơ lửng trong kh&ocirc;ng kh&iacute; gọi chung l&agrave; bụi.</em></p>\r\n\r\n<p><strong>Chỉ số PM</strong> thường được d&ugrave;ng để đề cập đến c&aacute;c hạt bụi rất nhỏ m&agrave; để đo lường k&iacute;ch thước của ch&uacute;ng người ta phải sử dụng đơn vị t&iacute;nh &mu;m (micromet ) 1&mu;m = 0.001mm . Những hạt n&agrave;y thường được gọi chung l&agrave; <strong>bụi mịn, bụi si&ecirc;u mịn</strong>. C&aacute;c hạt bụi mịn c&oacute; k&iacute;ch thước si&ecirc;u vi được biết đến nhiều nhất l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>PM10 &ndash; C&aacute;c hạt bụi c&oacute; k&iacute;ch thước đường k&iacute;nh từ 2.5 tới 10 &micro;m</li>\r\n	<li>PM2.5 &ndash; C&aacute;c hạt bụi c&oacute; k&iacute;ch thước đường k&iacute;nh nhỏ hơn hoặc bằng 2,5 &micro;m</li>\r\n</ul>\r\n\r\n<p>Bạn sẽ ngạc nhi&ecirc;n khi biết k&iacute;ch thước <strong>hạt bụi si&ecirc;u mịn PM2.5</strong> chỉ bằng 1/28 sợi t&oacute;c người, tương đương với k&iacute;ch thước của một con virus.</p>\r\n\r\n<h2>Bụi mịn đến từ đ&acirc;u?</h2>\r\n\r\n<p><strong>Bụi mịn</strong> đến từ 2 nguồn ch&iacute;nh l&agrave;&nbsp;nguồn sơ cấp&nbsp;v&agrave;&nbsp;nguồn thứ cấp.</p>\r\n\r\n<p><strong><em>Nguồn sơ cấp</em> </strong>l&agrave; những nguồn ph&aacute;t sinh trực tiếp ra m&ocirc;i trường, bao gồm:</p>\r\n\r\n<p>Bụi thi&ecirc;n nhi&ecirc;n: sa mạc, đất c&aacute;t, phun tr&agrave;o n&uacute;i lửa</p>\r\n\r\n<p>Sản xuất c&ocirc;ng nghiệp: kh&oacute;i thải từ nh&agrave; m&aacute;y, xưởng sản xuất, khu c&ocirc;ng nghiệp</p>\r\n\r\n<p>Giao th&ocirc;ng vận tải: kh&oacute;i thải từ c&aacute;c phương tiện c&aacute; nh&acirc;n, c&aacute;t bụi cuốn theo trong qu&aacute; tr&igrave;nh di chuyển, c&aacute;t bụi sinh ra do b&agrave;o m&ograve;n bề mặt đường</p>\r\n\r\n<p>Sinh hoạt: kh&oacute;i thải nấu nướng bằng bếp than, bếp củi, dầu</p>\r\n\r\n<p>R&aacute;c thải: r&aacute;c sinh hoạt, r&aacute;c c&ocirc;ng nghiệp</p>\r\n\r\n<p>N&ocirc;ng nghiệp: vận chuyển, đốt rơm rạ</p>\r\n\r\n<p>X&acirc;y dựng: bụi từ qu&aacute; tr&igrave;nh x&acirc;y dựng chung cư, cao ốc, cầu đường</p>\r\n\r\n<p><em><strong>Nguồn thứ cấp</strong></em>: khi nguồn sơ cấp lơ lửng trong kh&ocirc;ng kh&iacute;, một trong số ch&uacute;ng phản ứng ho&aacute; học với tự nhi&ecirc;n, tạo ra một chất mới, những chất ng&agrave;y l&agrave; nguồn thứ cấp.</p>\r\n\r\n<h2>T&aacute;c hại của Bụi Mịn PM 2.5, PM 10</h2>\r\n\r\n<p><strong>Bụi PM 2.5, PM 10</strong> kh&ocirc;ng chừa một ai. Trong đ&oacute; những người thuộc nh&oacute;m nhạy cảm l&agrave; trẻ em, phụ nữ, người lớn tuổi, người c&oacute; thể trạng yếu v&agrave; những người c&oacute; tiền sử bệnh h&ocirc; hấp v&agrave; tim mạch l&agrave; những người chịu nhiều t&aacute;c hại nhất.</p>\r\n\r\n<p>Ch&uacute;ng ta thường bỏ qua hoặc kh&ocirc;ng nhận thấy t&aacute;c hại của bụi PM 2.5 cũng như c&aacute;ch m&agrave; ch&uacute;ng x&acirc;m nhập v&agrave; g&acirc;y hại cho cơ thể. V&igrave; qu&aacute; tr&igrave;nh x&acirc;m nhập thường &acirc;m thầm, kh&ocirc;ng c&oacute; triệu chứng r&otilde; r&agrave;ng cho đến khi lượng bụi t&iacute;ch tụ đủ lớn.</p>\r\n\r\n<h4><em><strong>G&acirc;y dị ứng</strong></em>:</h4>\r\n\r\n<p>Ở mức độ nhẹ nhất, bụi PM 2.5 mang theo vi khuẩn b&aacute;m v&agrave;o bề mặt của cơ thể g&acirc;y cảm gi&aacute;c ngứa ng&aacute;y, kh&oacute; chịu, dị ứng. Nặng hơn g&acirc;y đau mắt, vi&ecirc;m mũi, c&aacute;c bệnh về tai mũi họng.</p>\r\n\r\n<h4><em><strong>G&acirc;y suy giảm hệ miễn dịch</strong></em>:</h4>\r\n\r\n<p>Sau khi bụi PM 2.5 hấp thụ chất độc, mang theo vi khuẩn, virus ngo&agrave;i m&ocirc;i trường x&acirc;m nhập v&agrave;o cơ thể con người. Ch&uacute;ng thải độc tố ngấm v&agrave;o cơ thể v&agrave; l&agrave;m suy giảm hệ miễn dịch.</p>\r\n\r\n<h4><em><strong>G&acirc;y vi&ecirc;m phổi, tắc nghẽn phổi m&atilde;n t&iacute;nh</strong></em>:</h4>\r\n\r\n<p>Bụi PM 2.5 v&agrave; PM 10 x&acirc;m nhập v&agrave;o cơ thể người th&ocirc;ng qua hoạt động h&iacute;t thở. Ch&uacute;ng theo đường dẫn kh&iacute;, b&aacute;m v&agrave; t&iacute;ch tụ v&agrave;o kh&iacute; quản v&agrave; bề mặt phổi. Theo thời gian, lượng bụi n&agrave;y t&iacute;ch tụ c&agrave;ng nhiều, g&acirc;y ảnh hưởng c&agrave;ng lớn.</p>\r\n\r\n<p><strong>Hạt PM 10</strong> v&agrave; <strong>PM 2.5</strong> x&acirc;m nhập v&agrave;o kh&iacute; quản v&agrave; phổi ban đầu g&acirc;y c&aacute;c cảm gi&aacute;c kh&oacute; chịu như khan tiếng, hắt hơi, ho, kh&oacute; thở. Theo thời gian ch&uacute;ng c&oacute; thể g&acirc;y ra c&aacute;c bệnh như hen suyễn, tim mạch.</p>\r\n\r\n<p>Đặc biệt <strong>PM 2.5</strong> c&oacute; k&iacute;ch thước si&ecirc;u nhỏ c&oacute; thể x&acirc;m nhập s&acirc;u, l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y ra tắc nghẽn phổi m&atilde;n t&iacute;nh. Khi lượng bụi t&iacute;ch tụ đủ lớn sẽ c&oacute; thể dẫn đến tử vong.</p>\r\n\r\n<p><strong>Bụi PM 2.5</strong> c&ograve;n nguy hiểm hơn <strong>PM 10</strong>, với đường k&iacute;nh si&ecirc;u nhỏ ch&uacute;ng c&oacute; khả năng luồn l&aacute;ch v&agrave;o c&aacute;c t&uacute;i phổi v&agrave; tĩnh mạch phổi, x&acirc;m nhập v&agrave;o m&aacute;u g&acirc;y ra những bệnh chết người. Ngo&agrave;i ra, ch&uacute;ng sẽ thẩm thấu v&agrave;o phế nang, ảnh hưởng đến chức năng trao đổi kh&iacute; của phế nang. Sau khi v&agrave;o phế nang, ch&uacute;ng c&oacute; thể vượt qua&nbsp;v&aacute;ch ngăn kh&iacute;-m&aacute;u&nbsp;để đi v&agrave;o hệ tuần ho&agrave;n v&agrave; g&acirc;y bệnh, thậm ch&iacute; ch&uacute;ng c&ograve;n c&oacute; thể ảnh hưởng đến hệ thống thần kinh.</p>\r\n\r\n<h4><em><strong>G&acirc;y nhồi m&aacute;u cơ tim:</strong></em></h4>\r\n\r\n<p><strong>Bụi PM 2.5</strong> v&agrave; <strong>PM 10</strong> trong khoảng thời gian ngắn c&oacute; thể khiến chỗ tắc mạch m&aacute;u b&igrave;nh thường kh&ocirc;ng nghi&ecirc;m trọng đột nhi&ecirc;n bị vỡ, tạo ra nghẽn mạch, g&acirc;y n&ecirc;n nhồi m&aacute;u cơ tim cấp t&iacute;nh</p>\r\n\r\n<h4><em><strong>L&agrave;m tăng tỷ lệ chết v&igrave; bệnh tim v&agrave; cao huyết &aacute;p:</strong></em></h4>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Đại học Harvard đ&atilde;, c&aacute;c nh&agrave; khoa học đ&atilde; chứng minh những chất độc hại c&oacute; trong bụi kh&ocirc;ng chỉ g&acirc;y nhồi m&aacute;u cơ tim m&agrave; c&ograve;n dẫn đến&nbsp;thiếu m&aacute;u hoặc tổn thương cơ tim. Kết quả khảo s&aacute;t 25.000 người bị bệnh tim hoặc tim kh&ocirc;ng khỏe v&agrave; ph&aacute;t hiện ra sau khi <strong>PM 2.5</strong> tăng l&ecirc;n 10 &micro;g/m<sup>3</sup>&nbsp;th&igrave; tỉ lệ thiệt mạng của người bệnh sẽ tăng 10% &ndash; 27%.</p>\r\n\r\n<h4><em><strong>G&acirc;y ung thư v&agrave; biến đổi gen</strong></em>:</h4>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học đ&atilde; ph&aacute;t hiện<strong> PM 2.5</strong> chứa kim loại l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ung thư v&agrave; khủng khiếp hơn l&agrave; biến đổi gen ở người. Đ&acirc;y l&agrave; một trong những điều đ&aacute;ng lo ngại nhất m&agrave; tất cả ch&uacute;ng ta đang phải đối mặt.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-bui-min-nguy-hiem-nhu-the-nao-doi-voi-tinh-mang-con-nguoi', 'Bụi Mịn nguy hiểm như thế nào đối với tính mạng con người', '', ''),
(221, 111, 'vn', 'Khẩu trang phủ muối có thể ngăn chặn virus corona?', '', '<p>Tại Việt Nam, bạn sẽ thấy rất nhiều người đeo khẩu trang để tự bảo vệ m&igrave;nh khỏi virus corona. Một nh&agrave; khoa học người Canada tuy&ecirc;n bố rằng: &ldquo;những chiếc khẩu trang như vậy thực sự c&oacute; thể g&acirc;y bệnh nhiều hơn l&agrave; ph&ograve;ng bệnh. Nguy&ecirc;n nh&acirc;n l&agrave; do người đeo li&ecirc;n tục di chuyển, th&aacute;o ra v&agrave; đeo ch&uacute;ng trở lại. Tất cả những h&agrave;nh động đ&oacute; c&oacute; thể gi&uacute;p virus tr&ecirc;n bề mặt dễ d&agrave;ng x&acirc;m nhập v&agrave;o cơ thể cơ thể&rdquo;. Gi&aacute;o sư Hyo-Jick Choi n&oacute;i rằng vấn đề ch&iacute;nh khi sử dụng khẩu trang để chống lại virus corona.</p>\r\n\r\n<p>[caption id=&quot;attachment_909&quot; align=&quot;alignnone&quot; width=&quot;1300&quot;]<img alt=\"Hyo-Jick Choi (phải) và đồng nghiêp\" height=\"975\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Hyo-Jick-Choi-phải-và-Ilaria-Rubin-trái.jpg\" width=\"1300\" /> Hyo-Jick Choi (phải) v&agrave; đồng nghi&ecirc;p[/caption]</p>\r\n\r\n<p>Virus corna c&oacute; trong kh&ocirc;ng kh&iacute; th&ocirc;ng qua nước bọt, đờm do ho, hắt hơi của người bệnh hoặc tr&ecirc;n bề mặt khẩu trang sau khi tiếp x&uacute;c với người bệnh.</p>\r\n\r\n<p>Th&aacute;ch thức lớn nhất của c&aacute;c loại khẩu trang (đạt chuẩn N95/N99), hiện nay l&agrave; ch&uacute;ng kh&ocirc;ng thể ti&ecirc;u diệt virus c&oacute; tr&ecirc;n bề mặt, điều n&agrave;y l&agrave;m tăng cơ hội l&acirc;y truyền tiếp x&uacute;c. V&igrave; vậy &ocirc;ng đ&atilde; tạo ra một lớp phủ c&oacute; thể thay đổi điều đ&oacute;.</p>\r\n\r\n<p>[caption id=&quot;attachment_911&quot; align=&quot;aligncenter&quot; width=&quot;700&quot;]<img alt=\"Khẩu trang đạt chuẩn N95/N99\" height=\"525\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Mặt-nạ-được-nhìn-thấy-tại-một-cửa-hàng-ở-East-Palo-Alto-California-vào-ngày-26-tháng-1-năm-2020.jpg\" width=\"700\" /> Khẩu trang đạt chuẩn N95/N99[/caption]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute;o sư Hyo-Jick Choi, của trường Đại học Alberta - Canada, đ&atilde; tạo ra một giải ph&aacute;p c&oacute; thể thay đổi điều đ&oacute;. Một chiếc khẩu trang c&oacute; thể ti&ecirc;u diệt virus c&oacute; hại, thay v&igrave; ngăn chặn ch&uacute;ng.&nbsp;V&agrave; th&agrave;nh chủ yếu từ natri clorua v&agrave; kali clorua.</p>\r\n\r\n<p>Khi một giọt c&oacute; k&iacute;ch thước bất kỳ tiếp x&uacute;c với lớp phủ, muối sẽ h&ograve;a tan v&agrave;o n&oacute;. Sau khi nước bay hơi, muối h&ograve;a tan trong n&oacute; được kết tinh lại, c&aacute;c cạnh sắc nhọn của c&aacute;c tinh thể sẽ cắt xuy&ecirc;n qua virus v&agrave; v&ocirc; hiệu h&oacute;a ch&uacute;ng.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i đ&atilde; thử nghiệm tr&ecirc;n ba loại virus c&uacute;m kh&aacute;c nhau v&agrave; ba loại virus tr&ecirc;n bề mặt của khẩu trang bị nhiễm bẩn kh&ocirc;ng hoạt động trong v&ograve;ng năm ph&uacute;t v&agrave; bị v&ocirc; hiệu h&oacute;a ho&agrave;n to&agrave;n trong v&ograve;ng 30 ph&uacute;t&quot;, &ocirc;ng Choi n&oacute;i. &Ocirc;ng tin rằng thử nghiệm n&agrave;y sẽ c&oacute; hiệu quả tương đương với virus corona.</p>\r\n\r\n<p>[caption id=&quot;attachment_910&quot; align=&quot;aligncenter&quot; width=&quot;700&quot;]<img alt=\"Hyo-Jick Choi và đồng nghiệp tại Đại học Alberta\" height=\"525\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Hyo-Jick-Choi-và-Ilaria-Rubin-tại-Đại-học-Alberta.jpg\" width=\"700\" /> Hyo-Jick Choi v&agrave; đồng nghiệp tại Đại học Alberta[/caption]</p>\r\n\r\n<p>Trường Đại học Alberta hiện đang ph&aacute;t triển một lớp m&agrave;ng muối v&agrave; &aacute;p dụng n&oacute; l&ecirc;n tr&ecirc;n bề mặt khẩu trang, với hy vọng sản phẩm sẽ c&oacute; mặt tr&ecirc;n thị trường trong v&ograve;ng 12 đến 18 th&aacute;ng. Trong khi đ&oacute;, gi&aacute;o sư Choi khuy&ecirc;n người ti&ecirc;u d&ugrave;ng kh&ocirc;ng n&ecirc;n chạm v&agrave;o bề mặt, lu&ocirc;n rửa tay trước v&agrave; sau khi đeo, kh&ocirc;ng bao giờ cất ở những nơi như t&uacute;i v&agrave; thay mới sau mỗi lần sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'khau-trang-phu-muoi-co-the-ngan-chan-virus-corona', 'Khẩu trang phủ muối có thể ngăn chặn virus corona?', '', ''),
(222, 111, 'en', 'english version Khẩu trang phủ muối có thể ngăn chặn virus corona?', 'english version ', 'english version <p>Tại Việt Nam, bạn sẽ thấy rất nhiều người đeo khẩu trang để tự bảo vệ m&igrave;nh khỏi virus corona. Một nh&agrave; khoa học người Canada tuy&ecirc;n bố rằng: &ldquo;những chiếc khẩu trang như vậy thực sự c&oacute; thể g&acirc;y bệnh nhiều hơn l&agrave; ph&ograve;ng bệnh. Nguy&ecirc;n nh&acirc;n l&agrave; do người đeo li&ecirc;n tục di chuyển, th&aacute;o ra v&agrave; đeo ch&uacute;ng trở lại. Tất cả những h&agrave;nh động đ&oacute; c&oacute; thể gi&uacute;p virus tr&ecirc;n bề mặt dễ d&agrave;ng x&acirc;m nhập v&agrave;o cơ thể cơ thể&rdquo;. Gi&aacute;o sư Hyo-Jick Choi n&oacute;i rằng vấn đề ch&iacute;nh khi sử dụng khẩu trang để chống lại virus corona.</p>\r\n\r\n<p>[caption id=&quot;attachment_909&quot; align=&quot;alignnone&quot; width=&quot;1300&quot;]<img alt=\"Hyo-Jick Choi (phải) và đồng nghiêp\" height=\"975\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Hyo-Jick-Choi-phải-và-Ilaria-Rubin-trái.jpg\" width=\"1300\" /> Hyo-Jick Choi (phải) v&agrave; đồng nghi&ecirc;p[/caption]</p>\r\n\r\n<p>Virus corna c&oacute; trong kh&ocirc;ng kh&iacute; th&ocirc;ng qua nước bọt, đờm do ho, hắt hơi của người bệnh hoặc tr&ecirc;n bề mặt khẩu trang sau khi tiếp x&uacute;c với người bệnh.</p>\r\n\r\n<p>Th&aacute;ch thức lớn nhất của c&aacute;c loại khẩu trang (đạt chuẩn N95/N99), hiện nay l&agrave; ch&uacute;ng kh&ocirc;ng thể ti&ecirc;u diệt virus c&oacute; tr&ecirc;n bề mặt, điều n&agrave;y l&agrave;m tăng cơ hội l&acirc;y truyền tiếp x&uacute;c. V&igrave; vậy &ocirc;ng đ&atilde; tạo ra một lớp phủ c&oacute; thể thay đổi điều đ&oacute;.</p>\r\n\r\n<p>[caption id=&quot;attachment_911&quot; align=&quot;aligncenter&quot; width=&quot;700&quot;]<img alt=\"Khẩu trang đạt chuẩn N95/N99\" height=\"525\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Mặt-nạ-được-nhìn-thấy-tại-một-cửa-hàng-ở-East-Palo-Alto-California-vào-ngày-26-tháng-1-năm-2020.jpg\" width=\"700\" /> Khẩu trang đạt chuẩn N95/N99[/caption]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute;o sư Hyo-Jick Choi, của trường Đại học Alberta - Canada, đ&atilde; tạo ra một giải ph&aacute;p c&oacute; thể thay đổi điều đ&oacute;. Một chiếc khẩu trang c&oacute; thể ti&ecirc;u diệt virus c&oacute; hại, thay v&igrave; ngăn chặn ch&uacute;ng.&nbsp;V&agrave; th&agrave;nh chủ yếu từ natri clorua v&agrave; kali clorua.</p>\r\n\r\n<p>Khi một giọt c&oacute; k&iacute;ch thước bất kỳ tiếp x&uacute;c với lớp phủ, muối sẽ h&ograve;a tan v&agrave;o n&oacute;. Sau khi nước bay hơi, muối h&ograve;a tan trong n&oacute; được kết tinh lại, c&aacute;c cạnh sắc nhọn của c&aacute;c tinh thể sẽ cắt xuy&ecirc;n qua virus v&agrave; v&ocirc; hiệu h&oacute;a ch&uacute;ng.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i đ&atilde; thử nghiệm tr&ecirc;n ba loại virus c&uacute;m kh&aacute;c nhau v&agrave; ba loại virus tr&ecirc;n bề mặt của khẩu trang bị nhiễm bẩn kh&ocirc;ng hoạt động trong v&ograve;ng năm ph&uacute;t v&agrave; bị v&ocirc; hiệu h&oacute;a ho&agrave;n to&agrave;n trong v&ograve;ng 30 ph&uacute;t&quot;, &ocirc;ng Choi n&oacute;i. &Ocirc;ng tin rằng thử nghiệm n&agrave;y sẽ c&oacute; hiệu quả tương đương với virus corona.</p>\r\n\r\n<p>[caption id=&quot;attachment_910&quot; align=&quot;aligncenter&quot; width=&quot;700&quot;]<img alt=\"Hyo-Jick Choi và đồng nghiệp tại Đại học Alberta\" height=\"525\" src=\"https://maxair.vn/wp-content/uploads/2020/02/Hyo-Jick-Choi-và-Ilaria-Rubin-tại-Đại-học-Alberta.jpg\" width=\"700\" /> Hyo-Jick Choi v&agrave; đồng nghiệp tại Đại học Alberta[/caption]</p>\r\n\r\n<p>Trường Đại học Alberta hiện đang ph&aacute;t triển một lớp m&agrave;ng muối v&agrave; &aacute;p dụng n&oacute; l&ecirc;n tr&ecirc;n bề mặt khẩu trang, với hy vọng sản phẩm sẽ c&oacute; mặt tr&ecirc;n thị trường trong v&ograve;ng 12 đến 18 th&aacute;ng. Trong khi đ&oacute;, gi&aacute;o sư Choi khuy&ecirc;n người ti&ecirc;u d&ugrave;ng kh&ocirc;ng n&ecirc;n chạm v&agrave;o bề mặt, lu&ocirc;n rửa tay trước v&agrave; sau khi đeo, kh&ocirc;ng bao giờ cất ở những nơi như t&uacute;i v&agrave; thay mới sau mỗi lần sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 0, 'en-khau-trang-phu-muoi-co-the-ngan-chan-virus-corona', 'Khẩu trang phủ muối có thể ngăn chặn virus corona?', '', ''),
(223, 112, 'vn', 'Ô nhiễm không khí trong nhà cao gấp 8 lần ô nhiễm không khí ngoài trời', '', '<p><strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong>&nbsp;ngo&agrave;i trời gia tăng với c&aacute;c yếu tố như kh&iacute; thải xe cộ, đốt nhi&ecirc;n liệu h&oacute;a thạch v&agrave; kh&iacute; thải c&ocirc;ng nghiệp, điều đ&oacute; khiến bạn muốn ở trong nh&agrave; c&agrave;ng nhiều c&agrave;ng tốt. Nhưng thực tế, theo Cơ quan Bảo vệ M&ocirc;i trường ở Hoa Kỳ ước t&iacute;nh t&igrave;nh trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> c&oacute; thể cao gấp 8 lần<strong> &ocirc; nhiễm kh&ocirc;ng kh&iacute; ngo&agrave;i trời</strong>. Nơi m&agrave; người gi&agrave;, trẻ nhỏ, phụ nữ mang thai d&agrave;nh phần lớn thời gian trong ng&agrave;y để sinh hoạt. Vậy để bảo vệ sức khỏe cho gia đ&igrave;nh, ch&uacute;ng ta cần cải thiện <strong>chất lượng kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>, nơi ta đang sinh sống.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Theo t&agrave;i liệu từ Bộ M&ocirc;i Trường &Yacute; năm 1991, <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> được định nghĩa l&agrave;&nbsp;<em>sự &ocirc; nhiễm khi &ldquo;c&oacute; sự hiện diện của <strong>c&aacute;c chất &ocirc; nhiễm</strong> c&oacute; t&iacute;nh chất vật l&yacute;, h&oacute;a học hoặc sinh học trong kh&ocirc;ng kh&iacute; của c&aacute;c m&ocirc;i trường bị giới hạn, m&agrave; c&aacute;c chất n&agrave;y kh&ocirc;ng hiện diện một c&aacute;ch tự nhi&ecirc;n với số lượng lớn trong <strong>kh&ocirc;ng kh&iacute;</strong> ngo&agrave;i trời của hệ sinh th&aacute;i&quot;.</em></p>\r\n\r\n<p>N&oacute;i một c&aacute;c đơn giản,&nbsp;<strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>&nbsp;l&agrave; l&agrave; sự gia tăng c&aacute;c t&aacute;c nh&acirc;n vật l&iacute;, h&oacute;a học, sinh học trong ng&ocirc;i nh&agrave;, cao hơn mức b&igrave;nh thường v&agrave; c&oacute; t&aacute;c động bất lợi đến <strong>sức khỏe</strong>.</p>\r\n\r\n<p><strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> l&agrave; một trong những nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y n&ecirc;n <strong>c&aacute;c loại bệnh về đường h&ocirc; hấp</strong>, mỗi năm cướp đi sinh mạng của h&agrave;ng triệu người tr&ecirc;n thế giới. Tuy nhi&ecirc;n, một c&ocirc;ng bố của c&aacute;c nh&agrave; khoa học Mỹ cũng khiến kh&ocirc;ng &iacute;t người giật m&igrave;nh đ&oacute; l&agrave; &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; c&ograve;n cao gấp 8 lần ngo&agrave;i trời.</p>\r\n\r\n<p>Theo khảo s&aacute;t mới đ&acirc;y tại Mỹ cho thấy, cứ 6 ph&ograve;ng trong ng&ocirc;i nh&agrave; (tổng diện t&iacute;ch khoảng 450m2) sẽ &ldquo;thu&rdquo; được tới 18kg bụi/năm.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đến từ đ&acirc;u?</h2>\r\n\r\n<p><strong>C&aacute;c chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> ph&aacute;t sinh từ nhiều nguồn, c&oacute; <strong>những t&aacute;c nh&acirc;n g&acirc;y &ocirc; nhiễm</strong> từ b&ecirc;n ngo&agrave;i lọt v&agrave;o như virus, vi khuẩn... đeo b&aacute;m khi bạn tiếp x&uacute;c với những vật dụng nơi c&ocirc;ng cộng. C&aacute;c t&aacute;c nh&acirc;n h&oacute;a học nguy hiểm g&acirc;y &ocirc; nhiễm ẩn nấp trong nhiều loại sản phẩm kh&aacute;c nhau. Nhiều chất nằm trong danh s&aacute;ch c&aacute;c chất g&acirc;y ung thư của WHO như <strong>benzen</strong>, <strong>trichloroethylene</strong>, <strong>xylene</strong>, <strong>ammonia</strong> v&agrave; <strong>fomaldehyde</strong>.</p>\r\n\r\n<p><strong>Ben zen</strong> c&oacute; trong nhựa, sợi tổng hợp, kh&oacute;i thuốc l&aacute;, sơn, thuốc nhuộm,&hellip;</p>\r\n\r\n<p><strong>Xylene</strong> c&oacute; trong kh&oacute;i thuốc l&aacute;, kh&iacute; thải xe, giấy in, cao su,&hellip;</p>\r\n\r\n<p><strong>Trichloroethylene</strong> c&oacute; trong chất tẩy rửa, sơn tường, v&eacute;c ni đ&aacute;nh b&oacute;ng,&hellip;</p>\r\n\r\n<p><strong>Ammonia</strong> c&oacute; trong nước lau k&iacute;nh, ph&acirc;n b&oacute;n,&hellip;</p>\r\n\r\n<p><strong>Fomaldehyde</strong> c&oacute; trong giấy vệ sinh, vải tổng hợp, sơn tường, keo xịt t&oacute;c,&hellip;</p>\r\n\r\n<p>Một số t&aacute;c nh&acirc;n lại c&oacute; nguồn gốc sinh học như phấn hoa, c&aacute;c loại nấm mốc v&agrave; c&aacute;c chất g&acirc;y dị ứng ph&aacute;t ra từ c&aacute;c loại vật nu&ocirc;i, s&acirc;u bọ, gi&aacute;n...</p>\r\n\r\n<p>Ngo&agrave;i ra, <strong>kh&ocirc;ng kh&iacute;</strong> kh&ocirc;ng được lưu th&ocirc;ng khiến c&aacute;c chất g&acirc;y&nbsp;dị ứng&nbsp;v&agrave; &ocirc; nhiễm bị t&ugrave; đọng,&nbsp;nhiệt độ&nbsp;v&agrave; độ ẩm cao, sống gần đường đ&ocirc;ng đ&uacute;c cũng c&oacute; thể ảnh hưởng đến <strong>chất lượng kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>.</p>\r\n\r\n<h2>C&aacute;c bệnh thường gặp</h2>\r\n\r\n<p><strong>Ben Zen</strong></p>\r\n\r\n<p>Nếu sống ở nơi c&oacute; nhiều vật dụng chứa <strong>benzene</strong> c&oacute; thể bị tổn thương n&atilde;o, nhức đầu kinh ni&ecirc;n hay ngất xỉu. Với phụ nữ, nhiễm <strong>benzene</strong> c&oacute; thể g&acirc;y teo buồng trứng v&agrave; hậu quả l&agrave; v&ocirc; sinh, g&acirc;y rối loạn kinh nguyệt. Với đ&agrave;n &ocirc;ng c&oacute; thể l&agrave;m biến dạng hoặc giảm chất lượng tinh tr&ugrave;ng.</p>\r\n\r\n<p><strong>Ammonia</strong></p>\r\n\r\n<p>Tiếp x&uacute;c với nồng độ cao <strong>ammonia</strong> trong kh&ocirc;ng kh&iacute; g&acirc;y bỏng ni&ecirc;m mạc mũi v&agrave; suy h&ocirc; hấp. Nếu tiếp x&uacute;c với <strong>ammonia</strong> đậm đặc, da, mắt, họng, phổi c&oacute; thể bị bỏng rất nặng. Những vết bỏng c&oacute; thể g&acirc;y m&ugrave; vĩnh viễn, bệnh phổi, hoặc tử vong.</p>\r\n\r\n<p><strong>Formaldehyde</strong></p>\r\n\r\n<p><strong>Formaldehyde</strong> c&oacute; thể g&acirc;y ung thư. Đối với phụ nữ c&oacute; thai, <strong>formaldehyde</strong> c&oacute; thể g&acirc;y sai lệch v&agrave; biến dị c&aacute;c nhiễm sắc thể ảnh hưởng đến sự ph&aacute;t triển của b&agrave;o thai. Do ph&acirc;n tử của <strong>formaldehyde</strong> rất nhỏ n&ecirc;n c&oacute; thể len lỏi v&agrave;o da v&agrave; m&aacute;u g&acirc;y nguy hại cho tế b&agrave;o, g&acirc;y ung thư v&agrave; th&uacute;c đẩy c&aacute;c tế b&agrave;o ung thư ph&aacute;t triển. Điều đ&aacute;ng n&oacute;i l&agrave;&nbsp;cơ thể người kh&ocirc;ng c&oacute; cơ chế đ&agrave;o thải <strong>formaldehyde.</strong></p>\r\n\r\n<p><strong>Xylene</strong></p>\r\n\r\n<p><strong>Xylene</strong> l&agrave; chất c&oacute; g&acirc;y hại cho sức khỏe của con người.&nbsp;Hơi <strong>Xylene</strong> rất nguy hiểm, g&acirc;y k&iacute;ch ứng mạnh với da v&agrave; mắt. Nếu người khỏe mạnh h&iacute;t phải hơi <strong>Xylene</strong> sẽ g&acirc;y n&ecirc;n những tổn thương nghi&ecirc;m trọng cho&nbsp;tế b&agrave;o phổi, tế b&agrave;o gan, thận v&agrave; hệ thần kinh trung ương.</p>\r\n\r\n<p><strong>Trichloroethylene</strong></p>\r\n\r\n<p>Khi h&iacute;t phải <strong>Trichloroethylene</strong> sẽ dẫn tới c&aacute;c hiện tượng như g&acirc;y&nbsp;ức chế&nbsp;hệ thần kinh trung ương, đau đầu, n&ocirc;n mửa,... Việc <strong>trichloroethylene</strong> bị nhiễm v&agrave;o cơ thể sẽ g&acirc;y độc hại ở gan v&agrave; thận, dẫn tới ung thư.</p>\r\n\r\n<h2>Cần l&agrave;m g&igrave; để đối ph&oacute; với &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</h2>\r\n\r\n<h3><strong>Dọn dẹp cải thiện m&ocirc;i trường sống xung quanh</strong></h3>\r\n\r\n<p>Bắt đầu từ những việc l&agrave;m nhỏ nhất, mỗi một c&aacute; nh&acirc;n h&atilde;y tự <strong>cải thiện m&ocirc;i trường sống</strong> xung quanh m&igrave;nh thật sạch sẽ. Dọn sạch r&aacute;c thải, trồng thật nhiều c&acirc;y xanh, t&iacute;ch cực x&acirc;y dựng lối sống xanh.</p>\r\n\r\n<h3><strong>Sử dụng c&aacute;c m&aacute;y lọc kh&ocirc;ng kh&iacute; trong nh&agrave;, nơi l&agrave;m việc</strong></h3>\r\n\r\n<p>Một m&ocirc;i trường sống v&agrave; l&agrave;m việc sạch tho&aacute;ng sẽ bảo vệ sức khỏe của c&aacute;c bạn lu&ocirc;n an to&agrave;n, chất lượng cuộc sống nhờ đ&oacute; cũng được n&acirc;ng cao.&nbsp;Sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute;&nbsp;tại nơi ở v&agrave; chỗ l&agrave;m sẽ tạo cho bạn một kh&ocirc;ng gian tho&aacute;ng m&aacute;t, sạch sẽ, an to&agrave;n.</p>\r\n\r\n<h3><strong>Kiểm tra sức khỏe định kỳ</strong></h3>\r\n\r\n<p>H&atilde;y tự bảo vệ sức khỏe của bản th&acirc;n bằng c&aacute;ch x&acirc;y dựng một lối sống xanh, trang bị c&aacute;c thiết bị bảo vệ sức khỏe trước c&aacute;c t&aacute;c nh&acirc;n g&acirc;y bệnh. Hậu quả chủ yếu của &ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; kh&ocirc;n lường v&igrave; vậy h&atilde;y thường xuy&ecirc;n đi kiểm tra sức khỏe định kỳ.</p>\r\n', '', '', '', '', '', 0, 'o-nhiem-khong-khi-trong-nha-cao-gap-8-lan-o-nhiem-khong-khi-ngoai-troi', 'Ô nhiễm không khí trong nhà cao gấp 8 lần ô nhiễm không khí ngoài trời', '', ''),
(224, 112, 'en', 'english version Ô nhiễm không khí trong nhà cao gấp 8 lần ô nhiễm không khí ngoài trời', 'english version ', 'english version <p><strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong>&nbsp;ngo&agrave;i trời gia tăng với c&aacute;c yếu tố như kh&iacute; thải xe cộ, đốt nhi&ecirc;n liệu h&oacute;a thạch v&agrave; kh&iacute; thải c&ocirc;ng nghiệp, điều đ&oacute; khiến bạn muốn ở trong nh&agrave; c&agrave;ng nhiều c&agrave;ng tốt. Nhưng thực tế, theo Cơ quan Bảo vệ M&ocirc;i trường ở Hoa Kỳ ước t&iacute;nh t&igrave;nh trạng <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> c&oacute; thể cao gấp 8 lần<strong> &ocirc; nhiễm kh&ocirc;ng kh&iacute; ngo&agrave;i trời</strong>. Nơi m&agrave; người gi&agrave;, trẻ nhỏ, phụ nữ mang thai d&agrave;nh phần lớn thời gian trong ng&agrave;y để sinh hoạt. Vậy để bảo vệ sức khỏe cho gia đ&igrave;nh, ch&uacute;ng ta cần cải thiện <strong>chất lượng kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>, nơi ta đang sinh sống.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; l&agrave; g&igrave;?</h2>\r\n\r\n<p>Theo t&agrave;i liệu từ Bộ M&ocirc;i Trường &Yacute; năm 1991, <strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> được định nghĩa l&agrave;&nbsp;<em>sự &ocirc; nhiễm khi &ldquo;c&oacute; sự hiện diện của <strong>c&aacute;c chất &ocirc; nhiễm</strong> c&oacute; t&iacute;nh chất vật l&yacute;, h&oacute;a học hoặc sinh học trong kh&ocirc;ng kh&iacute; của c&aacute;c m&ocirc;i trường bị giới hạn, m&agrave; c&aacute;c chất n&agrave;y kh&ocirc;ng hiện diện một c&aacute;ch tự nhi&ecirc;n với số lượng lớn trong <strong>kh&ocirc;ng kh&iacute;</strong> ngo&agrave;i trời của hệ sinh th&aacute;i&quot;.</em></p>\r\n\r\n<p>N&oacute;i một c&aacute;c đơn giản,&nbsp;<strong>&ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>&nbsp;l&agrave; l&agrave; sự gia tăng c&aacute;c t&aacute;c nh&acirc;n vật l&iacute;, h&oacute;a học, sinh học trong ng&ocirc;i nh&agrave;, cao hơn mức b&igrave;nh thường v&agrave; c&oacute; t&aacute;c động bất lợi đến <strong>sức khỏe</strong>.</p>\r\n\r\n<p><strong>&Ocirc; nhiễm kh&ocirc;ng kh&iacute;</strong> l&agrave; một trong những nguy&ecirc;n nh&acirc;n h&agrave;ng đầu g&acirc;y n&ecirc;n <strong>c&aacute;c loại bệnh về đường h&ocirc; hấp</strong>, mỗi năm cướp đi sinh mạng của h&agrave;ng triệu người tr&ecirc;n thế giới. Tuy nhi&ecirc;n, một c&ocirc;ng bố của c&aacute;c nh&agrave; khoa học Mỹ cũng khiến kh&ocirc;ng &iacute;t người giật m&igrave;nh đ&oacute; l&agrave; &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; c&ograve;n cao gấp 8 lần ngo&agrave;i trời.</p>\r\n\r\n<p>Theo khảo s&aacute;t mới đ&acirc;y tại Mỹ cho thấy, cứ 6 ph&ograve;ng trong ng&ocirc;i nh&agrave; (tổng diện t&iacute;ch khoảng 450m2) sẽ &ldquo;thu&rdquo; được tới 18kg bụi/năm.</p>\r\n\r\n<h2>&Ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave; đến từ đ&acirc;u?</h2>\r\n\r\n<p><strong>C&aacute;c chất g&acirc;y &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</strong> ph&aacute;t sinh từ nhiều nguồn, c&oacute; <strong>những t&aacute;c nh&acirc;n g&acirc;y &ocirc; nhiễm</strong> từ b&ecirc;n ngo&agrave;i lọt v&agrave;o như virus, vi khuẩn... đeo b&aacute;m khi bạn tiếp x&uacute;c với những vật dụng nơi c&ocirc;ng cộng. C&aacute;c t&aacute;c nh&acirc;n h&oacute;a học nguy hiểm g&acirc;y &ocirc; nhiễm ẩn nấp trong nhiều loại sản phẩm kh&aacute;c nhau. Nhiều chất nằm trong danh s&aacute;ch c&aacute;c chất g&acirc;y ung thư của WHO như <strong>benzen</strong>, <strong>trichloroethylene</strong>, <strong>xylene</strong>, <strong>ammonia</strong> v&agrave; <strong>fomaldehyde</strong>.</p>\r\n\r\n<p><strong>Ben zen</strong> c&oacute; trong nhựa, sợi tổng hợp, kh&oacute;i thuốc l&aacute;, sơn, thuốc nhuộm,&hellip;</p>\r\n\r\n<p><strong>Xylene</strong> c&oacute; trong kh&oacute;i thuốc l&aacute;, kh&iacute; thải xe, giấy in, cao su,&hellip;</p>\r\n\r\n<p><strong>Trichloroethylene</strong> c&oacute; trong chất tẩy rửa, sơn tường, v&eacute;c ni đ&aacute;nh b&oacute;ng,&hellip;</p>\r\n\r\n<p><strong>Ammonia</strong> c&oacute; trong nước lau k&iacute;nh, ph&acirc;n b&oacute;n,&hellip;</p>\r\n\r\n<p><strong>Fomaldehyde</strong> c&oacute; trong giấy vệ sinh, vải tổng hợp, sơn tường, keo xịt t&oacute;c,&hellip;</p>\r\n\r\n<p>Một số t&aacute;c nh&acirc;n lại c&oacute; nguồn gốc sinh học như phấn hoa, c&aacute;c loại nấm mốc v&agrave; c&aacute;c chất g&acirc;y dị ứng ph&aacute;t ra từ c&aacute;c loại vật nu&ocirc;i, s&acirc;u bọ, gi&aacute;n...</p>\r\n\r\n<p>Ngo&agrave;i ra, <strong>kh&ocirc;ng kh&iacute;</strong> kh&ocirc;ng được lưu th&ocirc;ng khiến c&aacute;c chất g&acirc;y&nbsp;dị ứng&nbsp;v&agrave; &ocirc; nhiễm bị t&ugrave; đọng,&nbsp;nhiệt độ&nbsp;v&agrave; độ ẩm cao, sống gần đường đ&ocirc;ng đ&uacute;c cũng c&oacute; thể ảnh hưởng đến <strong>chất lượng kh&ocirc;ng kh&iacute; trong nh&agrave;</strong>.</p>\r\n\r\n<h2>C&aacute;c bệnh thường gặp</h2>\r\n\r\n<p><strong>Ben Zen</strong></p>\r\n\r\n<p>Nếu sống ở nơi c&oacute; nhiều vật dụng chứa <strong>benzene</strong> c&oacute; thể bị tổn thương n&atilde;o, nhức đầu kinh ni&ecirc;n hay ngất xỉu. Với phụ nữ, nhiễm <strong>benzene</strong> c&oacute; thể g&acirc;y teo buồng trứng v&agrave; hậu quả l&agrave; v&ocirc; sinh, g&acirc;y rối loạn kinh nguyệt. Với đ&agrave;n &ocirc;ng c&oacute; thể l&agrave;m biến dạng hoặc giảm chất lượng tinh tr&ugrave;ng.</p>\r\n\r\n<p><strong>Ammonia</strong></p>\r\n\r\n<p>Tiếp x&uacute;c với nồng độ cao <strong>ammonia</strong> trong kh&ocirc;ng kh&iacute; g&acirc;y bỏng ni&ecirc;m mạc mũi v&agrave; suy h&ocirc; hấp. Nếu tiếp x&uacute;c với <strong>ammonia</strong> đậm đặc, da, mắt, họng, phổi c&oacute; thể bị bỏng rất nặng. Những vết bỏng c&oacute; thể g&acirc;y m&ugrave; vĩnh viễn, bệnh phổi, hoặc tử vong.</p>\r\n\r\n<p><strong>Formaldehyde</strong></p>\r\n\r\n<p><strong>Formaldehyde</strong> c&oacute; thể g&acirc;y ung thư. Đối với phụ nữ c&oacute; thai, <strong>formaldehyde</strong> c&oacute; thể g&acirc;y sai lệch v&agrave; biến dị c&aacute;c nhiễm sắc thể ảnh hưởng đến sự ph&aacute;t triển của b&agrave;o thai. Do ph&acirc;n tử của <strong>formaldehyde</strong> rất nhỏ n&ecirc;n c&oacute; thể len lỏi v&agrave;o da v&agrave; m&aacute;u g&acirc;y nguy hại cho tế b&agrave;o, g&acirc;y ung thư v&agrave; th&uacute;c đẩy c&aacute;c tế b&agrave;o ung thư ph&aacute;t triển. Điều đ&aacute;ng n&oacute;i l&agrave;&nbsp;cơ thể người kh&ocirc;ng c&oacute; cơ chế đ&agrave;o thải <strong>formaldehyde.</strong></p>\r\n\r\n<p><strong>Xylene</strong></p>\r\n\r\n<p><strong>Xylene</strong> l&agrave; chất c&oacute; g&acirc;y hại cho sức khỏe của con người.&nbsp;Hơi <strong>Xylene</strong> rất nguy hiểm, g&acirc;y k&iacute;ch ứng mạnh với da v&agrave; mắt. Nếu người khỏe mạnh h&iacute;t phải hơi <strong>Xylene</strong> sẽ g&acirc;y n&ecirc;n những tổn thương nghi&ecirc;m trọng cho&nbsp;tế b&agrave;o phổi, tế b&agrave;o gan, thận v&agrave; hệ thần kinh trung ương.</p>\r\n\r\n<p><strong>Trichloroethylene</strong></p>\r\n\r\n<p>Khi h&iacute;t phải <strong>Trichloroethylene</strong> sẽ dẫn tới c&aacute;c hiện tượng như g&acirc;y&nbsp;ức chế&nbsp;hệ thần kinh trung ương, đau đầu, n&ocirc;n mửa,... Việc <strong>trichloroethylene</strong> bị nhiễm v&agrave;o cơ thể sẽ g&acirc;y độc hại ở gan v&agrave; thận, dẫn tới ung thư.</p>\r\n\r\n<h2>Cần l&agrave;m g&igrave; để đối ph&oacute; với &ocirc; nhiễm kh&ocirc;ng kh&iacute; trong nh&agrave;</h2>\r\n\r\n<h3><strong>Dọn dẹp cải thiện m&ocirc;i trường sống xung quanh</strong></h3>\r\n\r\n<p>Bắt đầu từ những việc l&agrave;m nhỏ nhất, mỗi một c&aacute; nh&acirc;n h&atilde;y tự <strong>cải thiện m&ocirc;i trường sống</strong> xung quanh m&igrave;nh thật sạch sẽ. Dọn sạch r&aacute;c thải, trồng thật nhiều c&acirc;y xanh, t&iacute;ch cực x&acirc;y dựng lối sống xanh.</p>\r\n\r\n<h3><strong>Sử dụng c&aacute;c m&aacute;y lọc kh&ocirc;ng kh&iacute; trong nh&agrave;, nơi l&agrave;m việc</strong></h3>\r\n\r\n<p>Một m&ocirc;i trường sống v&agrave; l&agrave;m việc sạch tho&aacute;ng sẽ bảo vệ sức khỏe của c&aacute;c bạn lu&ocirc;n an to&agrave;n, chất lượng cuộc sống nhờ đ&oacute; cũng được n&acirc;ng cao.&nbsp;Sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute;&nbsp;tại nơi ở v&agrave; chỗ l&agrave;m sẽ tạo cho bạn một kh&ocirc;ng gian tho&aacute;ng m&aacute;t, sạch sẽ, an to&agrave;n.</p>\r\n\r\n<h3><strong>Kiểm tra sức khỏe định kỳ</strong></h3>\r\n\r\n<p>H&atilde;y tự bảo vệ sức khỏe của bản th&acirc;n bằng c&aacute;ch x&acirc;y dựng một lối sống xanh, trang bị c&aacute;c thiết bị bảo vệ sức khỏe trước c&aacute;c t&aacute;c nh&acirc;n g&acirc;y bệnh. Hậu quả chủ yếu của &ocirc; nhiễm kh&ocirc;ng kh&iacute; l&agrave; kh&ocirc;n lường v&igrave; vậy h&atilde;y thường xuy&ecirc;n đi kiểm tra sức khỏe định kỳ.</p>\r\n', '', '', '', '', '', 0, 'en-o-nhiem-khong-khi-trong-nha-cao-gap-8-lan-o-nhiem-khong-khi-ngoai-troi', 'Ô nhiễm không khí trong nhà cao gấp 8 lần ô nhiễm không khí ngoài trời', '', ''),
(225, 113, 'vn', 'test 004', '', '<p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(2).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'test-004', 'test 004', '', ''),
(226, 113, 'en', 'english version test 004', 'english version ', 'english version <p><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(2).jpg\" width=\"600\" /></p>\r\n', '', '', '', '', '', 0, 'en-test-004', 'test 004', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci,
  `orders_receiver_email` text COLLATE utf8_unicode_ci,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci,
  `orders_receiver_address` text COLLATE utf8_unicode_ci,
  `orders_receiver_note` text COLLATE utf8_unicode_ci,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `product_name` text COLLATE utf8_unicode_ci,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci,
  `page_des` text COLLATE utf8_unicode_ci,
  `page_content` text COLLATE utf8_unicode_ci,
  `page_img` text COLLATE utf8_unicode_ci,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `page_sub_info1` text COLLATE utf8_unicode_ci,
  `page_sub_info2` text COLLATE utf8_unicode_ci,
  `page_sub_info3` text COLLATE utf8_unicode_ci,
  `page_sub_info4` text COLLATE utf8_unicode_ci,
  `page_sub_info5` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(35, 'Giới thiệu vn', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<p>C&ocirc;ng ty cổ phần DP GREEN- PHAR được th&agrave;nh lập bởi Dược sĩ Đai học Dược H&agrave; Nội Trần Kh&aacute;nh H&ograve;a từ 2015. Trải qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu &amp; tư vấn điều trị bệnh ngo&agrave;i c&ocirc;ng đồng, DP GREEN- PHAR được th&agrave;nh lập với mục ti&ecirc;u:</p>\r\n\r\n<p>DP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nƯu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch h&agrave;ng l&agrave; số 1.<br />\r\nKết hợp với đội ngũ Dược Sĩ của nh&agrave; m&aacute;y Armephaco 12- x&iacute; nghiệp dược phẩm 120- Qu&acirc;n đội, nghi&ecirc;n cứu đưa ra những sản phẩm, giải ph&aacute;p chất lượng cao: HIỆU QUẢ- AN TO&Agrave;N với người sử dụng.</p>\r\n\r\n<h2>Th&ocirc;ng tin c&ocirc;ng ty:</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐược cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/04/2015, c&oacute; trụ sở ch&iacute;nh đặt tại số 19, ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội</p>\r\n\r\n<h2>C&aacute;c lĩnh vực hoạt động</h2>\r\n\r\n<p>Tư vấn &amp; t&igrave;m giải ph&aacute;p cho c&aacute;c bệnh tại c&ocirc;ng đồng<br />\r\nTham gia nghi&ecirc;n cứu c&ugrave;ng Armephaco 120, t&igrave;m ra c&aacute;c sản phẩm c&oacute; hiệu quả cao, an to&agrave;n với người sử dụng.<br />\r\nTrồng &amp; ph&aacute;t triển v&ugrave;ng dược liệu</p>\r\n\r\n<h2>Sau hơn 2 năm nghi&ecirc;n cứu &amp; s&agrave;ng lọc DP GREEN- PHAR đ&atilde; c&oacute; giải ph&aacute;p cho c&aacute;c vấn đề:</h2>\r\n\r\n<p>Bệnh trĩ, đi cầu ra m&aacute;u, bệnh trĩ sau sinh, Suy gi&atilde;n tĩnh mạch.<br />\r\nTiền đ&igrave;nh, đau đầu, ch&oacute;ng mặt, ngủ kh&ocirc;ng ngon.<br />\r\nBệnh đại tr&agrave;ng cấp, m&atilde;n &amp; đại tr&agrave;ng co thắt.<br />\r\nBệnh vi&ecirc;m gan, tăng men gan do rượu. chức năng gan suy giảm do thuốc, h&oacute;a chất...<br />\r\nC&aacute;c sản phẩm bổ sung yếu tố vi lượng: Ca++, Mg ++, Spirulina, men vi sinh...<br />\r\nĐến với DP GREEN- PHAR qu&yacute; kh&aacute;ch h&agrave;ng sẽ được đội ngũ B&aacute;c sĩ, Dược sĩ Đại học Dược H&agrave; Nội tư vấn &amp; t&igrave;m giải ph&aacute;p cho vấn đề sức khỏe của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>Đội ngũ bao gồm:</h2>\r\n\r\n<p>B&aacute;c Sĩ, Thạc Sĩ: Nguyễn Văn Quyết.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Trần Kh&aacute;nh H&ograve;a.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Đo&agrave;n Xu&acirc;n Phan.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Thị Đĩnh.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Quang H&ograve;a.<br />\r\nC&aacute;c dược sĩ kh&aacute;c: Nguyễn th&igrave; Dơn, L&ecirc; Thị Gi&aacute;ng Hương, L&ecirc; Thị Th&uacute;y, Nguyễn Thị Nh&agrave;n.<br />\r\nVới mục ti&ecirc;u ưu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch l&agrave; số 1, DP GREEN-PHAR đ&atilde; v&agrave; đang l&agrave;m tốt. Ch&uacute;ng t&ocirc;i cam kết lu&ocirc;n lu&ocirc;n cố gắng nghi&ecirc;n cứu, ho&agrave;n thiện ch&iacute;nh m&igrave;nh để đem lại những sản phẩm, dịch vụ v&agrave; giải ph&aacute;p tốt nhất cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>C&aacute;c chứng chỉ c&ocirc;ng ty đ&atilde; đạt được do bộ y tế cấp.</h2>\r\n\r\n<p>Nh&agrave; m&aacute;y Armepharco 120: GMP- WHO ( Thực h&agrave;nh sản xuất tốt).<br />\r\nDP GREEN- PHAR: GSP- WHO ( Thực h&agrave;nh bảo quản tốt).<br />\r\nDP GREEN &ndash; PHAR: GDP &ndash; WHO ( Thực h&agrave;nh ph&acirc;n phối tốt.<br />\r\nCảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng dịch vụ của ch&uacute;ng t&ocirc;i, DP GREEN- PHAR cam kết sẽ lu&ocirc;n đưa ra c&aacute;c sản phẩm, dịch vụ v&agrave; giải ph&aacute;p hiệu quả, an to&agrave;n cho qu&yacute; kh&aacute;ch.</p>\r\n', 'pa5.jpg', '2017-05-11 16:05:22', '2019-12-19 11:12:03', 1, '', '', '', '', '', 'Goldbridge Việt Nam', 'Giới thiệu', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '123', 1),
(36, 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', 'pa4.jpg', '2017-05-11 16:05:03', '2018-04-07 11:04:55', 1, '', '', '', '', '', 'báo giá dịch vụ', 'Báo giá', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"', 'chuyen-giao-cong-nghe', 1),
(37, 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', 'pa3.jpg', '2017-05-18 02:05:05', '2017-12-03 17:12:45', 1, '', '', '', '', '', 'tuyên cộng tác viên', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', 'tuyen-cong-tac-vien', 1),
(39, 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', 'pa2.jpg', '2017-07-10 15:07:50', '2017-12-03 17:12:33', 1, '', '', '', '', '', '', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế', 'cau-hoi-thuong-gap', 1),
(40, 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', 'pa1.jpg', '2017-07-10 22:07:44', '2017-12-03 17:12:20', 1, '', '', '', '', '', '', 'Chính sách bảo mật', '', 'chinh-sach-bao-mat', 1),
(41, 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', 'pa5.jpg', '2017-07-10 22:07:03', '2017-12-03 17:12:06', 1, '', '', '', '', '', '', 'Chính sách đổi - trả', '', 'chinh-sach-doi-tra', 1),
(42, 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', 'pa4.jpg', '2017-07-10 22:07:22', '2017-12-03 17:12:52', 1, '', '', '', '', '', '', 'Hệ thống nhà thuốc', '', 'he-thong-nha-thuoc', 1),
(43, 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', 'pa3.jpg', '2017-07-10 22:07:41', '2017-12-03 17:12:42', 1, '', '', '', '', '', '', 'Hình thức giao hàng', '', 'hinh-thuc-giao-hang', 1),
(44, 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', 'pa2.jpg', '2017-07-10 22:07:55', '2017-12-03 17:12:31', 1, '', '', '', '', '', '', 'Hình thức thanh toán', '', 'hinh-thuc-thanh-toan', 1),
(45, 'ƯU đãi mới nhất', '', '<p><span style=\"font-size:16px\">Ch&agrave;o xu&acirc;n 2020, Max Air c&oacute; chương tr&igrave;nh khuyến m&atilde;i cực sốc, đừng bỏ qua.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\">Đến ngay Max air&nbsp;để sở hữu ngay những sản phẩm điện m&aacute;y ch&iacute;nh h&atilde;ng gi&aacute; tốt, khuyến m&atilde;i ngập tr&agrave;n nhưng kh&ocirc;ng cần lo lắng về việc thanh to&aacute;n v&igrave; đ&atilde; c&oacute; trả g&oacute;p l&atilde;i suất 0% m&agrave; kh&ocirc;ng cần trả trước. Đ&oacute;n h&egrave; mua sắm khỏe re c&ugrave;ng Max Air&nbsp;n&agrave;o.</span></h2>\r\n', 'pa1.jpg', '2017-07-10 22:07:51', '2020-01-04 02:01:09', 1, '', '', '', '', '', '', 'Điều khoản sử dụng', '', 'dieu-khoan-dieu-kien', 1),
(54, 'Chính sách riêng tư', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n', NULL, '2017-12-08 14:12:56', '2019-12-02 16:12:12', 1, '', '', '', '', '', '', 'Chính sách riêng tư', '', 'chinh-sach-rieng-tu', 1),
(55, 'Hướng dẫn mua hàng', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n', NULL, '2017-12-08 14:12:06', '2020-01-06 20:01:19', 1, '', '', '', '', '', '', 'Hướng dẫn mua hàng', '', 'huongdan', 1),
(56, 'Thỏa thuận người dùng ', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n', NULL, '2017-12-08 14:12:15', '2019-12-31 20:12:17', 1, '', '', '', '', '', '', 'Thỏa thuận người dùng', '', 'thoa-thuan-nguoi-dung', 1),
(57, 'Thoả thuận người bán', '', '<p>Gfchfvhfdcgfbgfdrhbvffcrdg</p>\r\n', '', '2020-01-03 20:01:54', NULL, 1, '', '', '', '', '', '', 'Thoả thuận người bán', '', 'thoa-thuan-nguoi-ban', 1),
(59, 'Thông tin popup', '', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy</p>\r\n', NULL, '2020-02-26 15:02:09', '2020-02-26 15:02:04', 1, '', '', '', '', '', '', 'Thông tin popup', '', 'thong-tin-popup', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci,
  `lang_page_des` text COLLATE utf8_unicode_ci,
  `lang_page_content` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(35, 35, 'vn', 'Giới thiệu vn', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..', '<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<p>C&ocirc;ng ty cổ phần DP GREEN- PHAR được th&agrave;nh lập bởi Dược sĩ Đai học Dược H&agrave; Nội Trần Kh&aacute;nh H&ograve;a từ 2015. Trải qua qu&aacute; tr&igrave;nh nghi&ecirc;n cứu &amp; tư vấn điều trị bệnh ngo&agrave;i c&ocirc;ng đồng, DP GREEN- PHAR được th&agrave;nh lập với mục ti&ecirc;u:</p>\r\n\r\n<p>DP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nƯu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch h&agrave;ng l&agrave; số 1.<br />\r\nKết hợp với đội ngũ Dược Sĩ của nh&agrave; m&aacute;y Armephaco 12- x&iacute; nghiệp dược phẩm 120- Qu&acirc;n đội, nghi&ecirc;n cứu đưa ra những sản phẩm, giải ph&aacute;p chất lượng cao: HIỆU QUẢ- AN TO&Agrave;N với người sử dụng.</p>\r\n\r\n<h2>Th&ocirc;ng tin c&ocirc;ng ty:</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐược cấp giấy chứng nhận ĐKKD số 0106800687 do Sở Kế Hoạch v&agrave; Đầu Tư H&agrave; Nội cấp ng&agrave;y 25/04/2015, c&oacute; trụ sở ch&iacute;nh đặt tại số 19, ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội</p>\r\n\r\n<h2>C&aacute;c lĩnh vực hoạt động</h2>\r\n\r\n<p>Tư vấn &amp; t&igrave;m giải ph&aacute;p cho c&aacute;c bệnh tại c&ocirc;ng đồng<br />\r\nTham gia nghi&ecirc;n cứu c&ugrave;ng Armephaco 120, t&igrave;m ra c&aacute;c sản phẩm c&oacute; hiệu quả cao, an to&agrave;n với người sử dụng.<br />\r\nTrồng &amp; ph&aacute;t triển v&ugrave;ng dược liệu</p>\r\n\r\n<h2>Sau hơn 2 năm nghi&ecirc;n cứu &amp; s&agrave;ng lọc DP GREEN- PHAR đ&atilde; c&oacute; giải ph&aacute;p cho c&aacute;c vấn đề:</h2>\r\n\r\n<p>Bệnh trĩ, đi cầu ra m&aacute;u, bệnh trĩ sau sinh, Suy gi&atilde;n tĩnh mạch.<br />\r\nTiền đ&igrave;nh, đau đầu, ch&oacute;ng mặt, ngủ kh&ocirc;ng ngon.<br />\r\nBệnh đại tr&agrave;ng cấp, m&atilde;n &amp; đại tr&agrave;ng co thắt.<br />\r\nBệnh vi&ecirc;m gan, tăng men gan do rượu. chức năng gan suy giảm do thuốc, h&oacute;a chất...<br />\r\nC&aacute;c sản phẩm bổ sung yếu tố vi lượng: Ca++, Mg ++, Spirulina, men vi sinh...<br />\r\nĐến với DP GREEN- PHAR qu&yacute; kh&aacute;ch h&agrave;ng sẽ được đội ngũ B&aacute;c sĩ, Dược sĩ Đại học Dược H&agrave; Nội tư vấn &amp; t&igrave;m giải ph&aacute;p cho vấn đề sức khỏe của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>Đội ngũ bao gồm:</h2>\r\n\r\n<p>B&aacute;c Sĩ, Thạc Sĩ: Nguyễn Văn Quyết.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Trần Kh&aacute;nh H&ograve;a.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: Đo&agrave;n Xu&acirc;n Phan.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Thị Đĩnh.<br />\r\nDược sĩ Đại Học Dược H&agrave; Nội: L&ecirc; Quang H&ograve;a.<br />\r\nC&aacute;c dược sĩ kh&aacute;c: Nguyễn th&igrave; Dơn, L&ecirc; Thị Gi&aacute;ng Hương, L&ecirc; Thị Th&uacute;y, Nguyễn Thị Nh&agrave;n.<br />\r\nVới mục ti&ecirc;u ưu ti&ecirc;n giải quyết c&aacute;c vấn đề về sức khỏe cho qu&yacute; kh&aacute;ch l&agrave; số 1, DP GREEN-PHAR đ&atilde; v&agrave; đang l&agrave;m tốt. Ch&uacute;ng t&ocirc;i cam kết lu&ocirc;n lu&ocirc;n cố gắng nghi&ecirc;n cứu, ho&agrave;n thiện ch&iacute;nh m&igrave;nh để đem lại những sản phẩm, dịch vụ v&agrave; giải ph&aacute;p tốt nhất cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<h2>C&aacute;c chứng chỉ c&ocirc;ng ty đ&atilde; đạt được do bộ y tế cấp.</h2>\r\n\r\n<p>Nh&agrave; m&aacute;y Armepharco 120: GMP- WHO ( Thực h&agrave;nh sản xuất tốt).<br />\r\nDP GREEN- PHAR: GSP- WHO ( Thực h&agrave;nh bảo quản tốt).<br />\r\nDP GREEN &ndash; PHAR: GDP &ndash; WHO ( Thực h&agrave;nh ph&acirc;n phối tốt.<br />\r\nCảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng dịch vụ của ch&uacute;ng t&ocirc;i, DP GREEN- PHAR cam kết sẽ lu&ocirc;n đưa ra c&aacute;c sản phẩm, dịch vụ v&agrave; giải ph&aacute;p hiệu quả, an to&agrave;n cho qu&yacute; kh&aacute;ch.</p>\r\n', '', '', '', '', '', 1, '123', 'Giới thiệu', 'Goldbridge Việt Nam', 'Lĩnh vực hoạt động: Marketing Online toàn diện - quảng cáo, seo, thiết kế website, email marketing, thiết kế đồ họa, quản trị mạng xã hội, quản trị website,…..'),
(36, 35, 'en', 'Giới thiệu en', 'Giới thiệu công ty. Được thành lập vào năm 1993, Công ty Cổ Phần Kỹ Thuật Toàn Thắng được biết đến như một nhà cung cấp chuyên nghiệp các giải pháp ...', '<p>Được th&agrave;nh lập v&agrave;o năm 1993, C&ocirc;ng ty Cổ Phần Kỹ Thuật To&agrave;n Thắng được biết đến như một&nbsp; nh&agrave; cung cấp chuy&ecirc;n nghiệp c&aacute;c giải ph&aacute;p thiết bị v&agrave; dịch vụ kỹ thuật chất lượng cao, c&ocirc;ng nghệ ti&ecirc;n tiến&nbsp;cho kh&aacute;ch h&agrave;ng ng&agrave;nh dầu kh&iacute;, điện lực v&agrave; một số ng&agrave;nh c&ocirc;ng nghiệp nặng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng ty c&oacute; văn ph&ograve;ng ch&iacute;nh tại TP. Hồ Ch&iacute; Minh v&agrave; một c&ocirc;ng ty con tại TP. Vũng T&agrave;u. Với đội ngũ chuy&ecirc;n gia, kỹ sư được đ&agrave;o tạo chuy&ecirc;n s&acirc;u, chuy&ecirc;n tr&aacute;ch từng mảng sản phẩm, ch&uacute;ng t&ocirc;i lu&ocirc;n đem đến cho kh&aacute;ch h&agrave;ng những giải ph&aacute;p kỹ thuật, thương mại đa dạng, đ&aacute;p ứng tốt nhu cầu ng&agrave;y c&agrave;ng cao của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"\" height=\"564\" src=\"/image/images/670px-conceptualmapfloss(1).png\" style=\"float:right\" width=\"670\" /></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cũng đảm nhận cung cấp c&aacute;c dịch vụ sau b&aacute;n h&agrave;ng như: Bảo tr&igrave;, đại tu, sửa chữa, đ&agrave;o tạo, hướng dẫn sử dụng, dịch vụ quản l&yacute; t&agrave;i sản &amp; hợp đồng v&agrave; c&aacute;c dịch vụ kh&aacute;c tại c&ocirc;ng trường cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', '', '', '', 1, 'gioi-thieu-en', 'Giới thiệu', '', 'Mô tả cho bài viết giới thiệu'),
(37, 36, 'vn', 'Chuyển giao công nghệ', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe', 'Báo giá', 'báo giá dịch vụ', '\"Làm kế toán phải có Tâm với Doanh nghiệp. Đang Tư vấn Miễn Phí. Tìm hiểu ngay!\r\nBảo hành trọn đời · Bảo vệ Doanh Nghiệp\"'),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" height=\"800\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" width=\"1600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 1, 'chuyen-giao-cong-nghe-en', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá'),
(39, 37, 'vn', 'Tuyển Cộng Tác Viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(40, 37, 'en', 'Tuyển Cộng Tác Viên ', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!', '<p>1. Nội dung c&ocirc;ng việc :<br />\r\n<br />\r\n. Triển khai c&aacute;c bản vẽ nội thất để sản xuất : tủ, giường, b&agrave;n, ghế.... bằng phần mềm autocad<br />\r\n<br />\r\n. Hỗ trợ kiểm tra đối chiếu bản vẽ với b&ecirc;n sản xuất hoặc tại c&ocirc;ng tr&igrave;nh<br />\r\n<br />\r\n2. Y&ecirc;u cầu :<br />\r\n<br />\r\n. Nam/ nữ c&oacute; kinh nghiệm tối thiểu 1 năm về họa vi&ecirc;n autocad cho c&aacute;c xưởng sản xuất nội thất<br />\r\n<br />\r\n. C&oacute; hiểu biết về kết cấu , kỹ thuật sản phẩm, thao t&aacute;c nhanh tr&ecirc;n phần mềm Autocad<br />\r\n<br />\r\n. C&oacute; phương tiện đi lại<br />\r\n<br />\r\n. C&oacute; thể đi c&ocirc;ng t&aacute;c ngắn hạn.<br />\r\n<br />\r\n. C&oacute; thể tăng ca theo y&ecirc;u cầu<br />\r\n<br />\r\n3. Chế độ :<br />\r\n<br />\r\n. Lương : 6.000.000 VND / th&aacute;ng hoặc thỏa thuận<br />\r\n<br />\r\n. L&agrave;m việc tại showroom 233B B&ugrave;i Thị Xu&acirc;n T&acirc;n B&igrave;nh HCM<br />\r\n<br />\r\n. Lương th&aacute;ng 13. ph&eacute;p năm, thưởng chuy&ecirc;n cần. thưởng lễ tết<br />\r\n<br />\r\n4. Th&ocirc;ng tin kh&aacute;c:<br />\r\n<br />\r\n. Nộp hồ sơ trực tiếp hoặc trực tuyến<br />\r\n<br />\r\n. Hồ sơ c&oacute; c&aacute;c bản vẽ đ&atilde; từng thực hiện<br />\r\n<br />\r\n. Tham khảo th&ecirc;m th&ocirc;ng tin c&ocirc;ng ty tại : www.zenhomes.vn<br />\r\n<br />\r\nLoại h&igrave;nh c&ocirc;ng việc: To&agrave;n thời gian<br />\r\n<br />\r\nLương: ₫6.000.000 /th&aacute;ng<br />\r\n<br />\r\nKinh nghiệm y&ecirc;u cầu:<br />\r\n<br />\r\nkhai triển autocad nội thất: 1 năm</p>\r\n', '', '', '', '', '', 0, 'tuyen-cong-tac-vien', 'Tuyển Cộng Tác Viên ', 'tuyên cộng tác viên', 'Việc làm Cộng Tác Viên tại Hà Nội - Hàng nghìn thông tin tuyển dụng Cộng Tác Viên tại Hà Nội từ những nhà tuyển dụng uy tín. Ứng tuyển ngay!'),
(43, 39, 'vn', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h1>Ti&ecirc;u đề tin tức</h1>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">M&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết, m&ocirc; tả ngắn của b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/slide1.jpg\" /></p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<h2>Thẻ h2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n\r\n<p><img alt=\"\" src=\"../image/formImgCate.jpg\" /></p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(44, 39, 'en', 'Câu hỏi thường gặp', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết', '<h2>THẺ H2</h2>\r\n\r\n<p>Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết. Nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết, nội dung b&agrave;i viết</p>\r\n', '', '', '', '', '', 0, 'cau-hoi-thuong-gap', 'Câu hỏi thường gặp', '', 'Mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viết, mô tả ngắn của bài viế'),
(45, 40, 'vn', 'Chính sách bảo mật', '', '<h2>DP GREEN-PHAR cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của tất cả kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p>Cảm ơn bạn đ&atilde; truy cập website: www.greenphar.com<br />\r\nCh&uacute;ng t&ocirc;i hiểu r&otilde; tầm quan trọng của sự ri&ecirc;ng tư v&agrave; sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản để biết những thay đổi.</p>\r\n\r\n<h2>Điều 1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin</h2>\r\n\r\n<h3>1.1. Mục đ&iacute;ch thu thập th&ocirc;ng tin:</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i thực hiện việc thu thập th&ocirc;ng tin của bạn th&ocirc;ng qua website n&agrave;y nhằm:<br />\r\nDP GREEN-PHAR trung t&acirc;m tư vấn &amp; t&igrave;m giải ph&aacute;p xử l&yacute; c&aacute;c bệnh ngo&agrave;i cộng đồng.<br />\r\nGiải đ&aacute;p thắc mắc của bạn về vấn đề c&aacute;c bệnh m&agrave; bạn thắc mắc v&agrave; quan t&acirc;m.<br />\r\nGiới thiệu c&aacute;c h&agrave;ng h&oacute;a v&agrave; dịch vụ c&oacute; thể ph&ugrave; hợp với c&aacute;c nhu cầu v&agrave; sở th&iacute;ch của bạn.<br />\r\nCung cấp những th&ocirc;ng tin mới nhất của website.<br />\r\nXem x&eacute;t v&agrave; n&acirc;ng cấp nội dung, giao diện của website.<br />\r\nThực hiện hoạt động khảo s&aacute;t kh&aacute;ch h&agrave;ng.<br />\r\nThực hiện c&aacute;c hoạt động quảng b&aacute; sản phẩm v&agrave; giới thiệu những chương tr&igrave;nh khuyến m&atilde;i.<br />\r\nGiải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website.<br />\r\nCh&uacute;ng t&ocirc;i bảo lưu quyền từ chối tr&aacute;ch nhiệm về bất kỳ thiệt hại n&agrave;o ph&aacute;t sinh nếu th&ocirc;ng tin c&aacute; nh&acirc;n của bạn bị đ&aacute;nh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ c&aacute;ch n&agrave;o kh&aacute;c.</p>\r\n\r\n<h3>1.2. Phạm vi thu thập th&ocirc;ng tin c&aacute; nh&acirc;n:</h3>\r\n\r\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; ch&uacute;ng t&ocirc;i thu thập của bạn khi bạn gửi thắc mắc về cho ch&uacute;ng t&ocirc;i, bao gồm:<br />\r\nHọ, t&ecirc;n, Năm sinh.<br />\r\nĐịa chỉ li&ecirc;n hệ.<br />\r\nĐiện thoại li&ecirc;n hệ.<br />\r\nEmail.<br />\r\nTh&ocirc;ng tin bệnh l&yacute; v&agrave; những thắc mắc về bệnh học li&ecirc;n quan.</p>\r\n\r\n<h2>Điều 2. Phạm vi sử dụng th&ocirc;ng tin</h2>\r\n\r\n<p>Th&ocirc;ng tin của bạn được sử dụng để ch&uacute;ng t&ocirc;i hoặc c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan kh&aacute;c c&oacute; thể thực hiện c&aacute;c y&ecirc;u cầu của bạn.<br />\r\nCh&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n hệ với bạn hoặc giới thiệu bạn đến c&aacute;c cuộc nghi&ecirc;n cứu bao gồm nghi&ecirc;n cứu sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng, thị trường, nội dung c&aacute; nh&acirc;n kh&aacute;c, hoặc c&oacute; li&ecirc;n quan đến một số giao dịch nhất định.<br />\r\nCh&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin về truy cập website của bạn gồm những th&ocirc;ng tin c&oacute; thể nhận biết v&agrave; kh&ocirc;ng thể nhận biết để ph&acirc;n t&iacute;ch (v&iacute; dụ: dữ liệu ph&acirc;n t&iacute;ch việc truy cập website, &hellip;).<br />\r\nTh&ocirc;ng tin của bạn được sử dụng để gi&uacute;p cung cấp cho c&aacute;c dịch vụ của ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i c&oacute; thể cung cấp th&ocirc;ng tin cho c&aacute;c c&ocirc;ng ty đại diện ch&uacute;ng t&ocirc;i. Những c&ocirc;ng ty n&agrave;y cũng chịu sự r&agrave;ng buộc nghi&ecirc;m ngặt bởi Ch&iacute;nh s&aacute;ch Bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<h2>Điều 3. Thời gian lưu trữ th&ocirc;ng tin</h2>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i sẽ lưu trữ c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n do kh&aacute;ch h&agrave;ng cung cấp tr&ecirc;n c&aacute;c hệ thống quản l&yacute;, lưu trữ dữ liệu của ch&uacute;ng t&ocirc;i hoặc ch&uacute;ng t&ocirc;i thu&ecirc; trong qu&aacute; tr&igrave;nh cung cấp dịch vụ cho kh&aacute;ch h&agrave;ng cho đến khi ho&agrave;n th&agrave;nh mục đ&iacute;ch thu thập hoặc khi bạn c&oacute; y&ecirc;u cầu hủy c&aacute;c th&ocirc;ng tin đ&atilde; cung cấp.</p>\r\n\r\n<h2>Điều 4. Địa chỉ của đơn vị thu thập v&agrave; quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<p><strong>C&Ocirc;NG TY CỔ PHẦN DP GREEN-PHAR</strong><br />\r\nĐịa chỉ: Số 19, Ng&otilde; 4, phố Văn La, H&agrave; Đ&ocirc;ng, H&agrave; Nội.<br />\r\nĐiện thoại: (024) 6262.7731<br />\r\nEmail: dpgreenphar@gmail.com</p>\r\n\r\n<h2>Điều 5. Phương tiện v&agrave; c&ocirc;ng cụ để người d&ugrave;ng tiếp cận v&agrave; chỉnh sửa dữ liệu c&aacute; nh&acirc;n của m&igrave;nh.</h2>\r\n\r\n<p>Bạn c&oacute; thể tự đăng nhập v&agrave;o website qua link www.greenphar.com &nbsp;v&agrave; chỉnh sửa c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n như: t&ecirc;n, số điện thoại, địa chỉ giao-nhận h&agrave;ng, ...<br />\r\nNếu bạn kh&ocirc;ng quan t&acirc;m hoặc kh&ocirc;ng muốn nhận tin tức, th&ocirc;ng tin, bạn c&oacute; thể thay đổi th&ocirc;ng tin của bạn v&agrave;o bất kỳ l&uacute;c n&agrave;o bằng c&aacute;ch gửi email về cho ch&uacute;ng t&ocirc;i qua địa chỉ email: cskh@greenphar.com</p>\r\n\r\n<h2>Điều 6. Cam kết bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;ch h&agrave;ng</h2>\r\n\r\n<p>Ngo&agrave;i việc sử dụng c&aacute;c th&ocirc;ng tin của bạn v&agrave;o c&aacute;c mục đ&iacute;ch n&ecirc;u tại Khoản 1.1 Điều 1 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y v&agrave; phạm vi n&ecirc;u tại Điều 2 của Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y, Ch&uacute;ng t&ocirc;i sẽ giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.&nbsp;Xin vui l&ograve;ng đọc bản Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y v&agrave; hiểu c&aacute;c h&agrave;nh động li&ecirc;n quan về th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&iacute;nh s&aacute;ch bảo mật th&ocirc;ng tin n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng th&ocirc;ng b&aacute;o trước, do đ&oacute; bạn vui l&ograve;ng thường xuy&ecirc;n r&agrave; so&aacute;t, cập nhật c&aacute;c điều khoản n&agrave;y để biết những thay đổi.<br />\r\n<strong>Ch&iacute;nh s&aacute;ch bảo mật tại DP GREEN- PHAR</strong><br />\r\n- DP GREEN-PHAR c&oacute; thể thay đổi ch&iacute;nh s&aacute;ch bảo mật v&agrave; mọi thay đổi sẽ được c&ocirc;ng khai tr&ecirc;n website www.greenphar.com<br />\r\n- Tất cả c&aacute;c thay đổi về ch&iacute;nh s&aacute;ch bảo mật ch&uacute;ng t&ocirc;i đều tu&acirc;n thủ theo quy định của Ph&aacute;p Luật Nh&agrave; Nước hiện h&agrave;nh.<br />\r\n- Mọi &yacute; kiến thắc mắc, khiếu nại v&agrave; tranh chấp vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262. 7731</strong><br />\r\n<br />\r\nTr&acirc;n trọng,<br />\r\n<strong>DP GREEN- PHAR: Chu Đ&aacute;o, Tin Cậy!</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(46, 40, 'en', 'Chính sách bảo mật', '', 'DP GREEN-PHAR CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN CỦA TẤT CẢ KHÁCH HÀNG. Cảm ơn bạn đã truy cập website: www.greenphar.com\r\nChúng tôi hiểu rõ tầm quan trọng của sự riêng tư và sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản để biết những thay đổi. ĐIỀU 1. MỤC ĐÍCH VÀ PHẠM VI THU THẬP THÔNG TIN1.1. Mục đích thu thập thông tin:Chúng tôi thực hiện việc thu thập thông tin của bạn thông qua website này nhằm:\r\nDP GREEN-PHAR trung tâm tư vấn & tìm giải pháp xử lý các bệnh ngoài cộng đồng.\r\nGiải đáp thắc mắc của bạn về vấn đề các bệnh mà bạn thắc mắc và quan tâm.\r\nGiới thiệu các hàng hóa và dịch vụ có thể phù hợp với các nhu cầu và sở thích của bạn.\r\nCung cấp những thông tin mới nhất của website.\r\nXem xét và nâng cấp nội dung, giao diện của website.\r\nThực hiện hoạt động khảo sát khách hàng.\r\nThực hiện các hoạt động quảng bá sản phẩm và giới thiệu những chương trình khuyến mãi.\r\nGiải quyết các vấn đề, tranh chấp phát sinh liên quan đến việc sử dụng website.\r\nChúng tôi bảo lưu quyền từ chối trách nhiệm về bất kỳ thiệt hại nào phát sinh nếu thông tin cá nhân của bạn bị đánh cắp, bị mất hoặc bị thiệt hại do sự cố hoặc bằng bất kỳ cách nào khác. 1.2. Phạm vi thu thập thông tin cá nhân:Thông tin cá nhân mà chúng tôi thu thập của bạn khi bạn gửi thắc mắc về cho chúng tôi, bao gồm:\r\nHọ, tên, Năm sinh.\r\nĐịa chỉ liên hệ.\r\nĐiện thoại liên hệ.\r\nEmail.\r\nThông tin bệnh lý và những thắc mắc về bệnh học liên quan. ĐIỀU 2. PHẠM VI SỬ DỤNG THÔNG TINThông tin của bạn được sử dụng để chúng tôi hoặc các bên có liên quan khác có thể thực hiện các yêu cầu của bạn.\r\nChúng tôi có thể liên hệ với bạn hoặc giới thiệu bạn đến các cuộc nghiên cứu bao gồm nghiên cứu sự hài lòng của khách hàng, thị trường, nội dung cá nhân khác, hoặc có liên quan đến một số giao dịch nhất định.\r\nChúng tôi thu thập thông tin về truy cập website của bạn gồm những thông tin có thể nhận biết và không thể nhận biết để phân tích (ví dụ: dữ liệu phân tích việc truy cập website, …).\r\nThông tin của bạn được sử dụng để giúp cung cấp cho các dịch vụ của chúng tôi và chúng tôi có thể cung cấp thông tin cho các công ty đại diện chúng tôi. Những công ty này cũng chịu sự ràng buộc nghiêm ngặt bởi Chính sách Bảo mật của chúng tôi. ĐIỀU 3. THỜI GIAN LƯU TRỮ THÔNG TINChúng tôi sẽ lưu trữ các thông tin cá nhân do khách hàng cung cấp trên các hệ thống quản lý, lưu trữ dữ liệu của chúng tôi hoặc chúng tôi thuê trong quá trình cung cấp dịch vụ cho khách hàng cho đến khi hoàn thành mục đích thu thập hoặc khi bạn có yêu cầu hủy các thông tin đã cung cấp.ĐIỀU 4. ĐỊA CHỈ CỦA ĐƠN VỊ THU THẬP VÀ QUẢN LÝ THÔNG TIN CÁ NHÂNCÔNG TY CỔ PHẦN DP GREEN-PHAR\r\nĐịa chỉ: Số 19, Ngõ 4, phố Văn La, Hà Đông, Hà Nội.\r\nĐiện thoại: (024) 6262.7731\r\nEmail: dpgreenphar@gmail.com ĐIỀU 5. PHƯƠNG TIỆN VÀ CÔNG CỤ ĐỂ NGƯỜI DÙNG TIẾP CẬN VÀ CHỈNH SỬA DỮ LIỆU CÁ NHÂN CỦA MÌNH.Bạn có thể tự đăng nhập vào website qua link www.greenphar.com  và chỉnh sửa các thông tin cá nhân như: tên, số điện thoại, địa chỉ giao-nhận hàng, ...\r\nNếu bạn không quan tâm hoặc không muốn nhận tin tức, thông tin, bạn có thể thay đổi thông tin của bạn vào bất kỳ lúc nào bằng cách gửi email về cho chúng tôi qua địa chỉ email: cskh@greenphar.comĐIỀU 6. CAM KẾT BẢO MẬT THÔNG TIN CÁ NHÂN KHÁCH HÀNGNgoài việc sử dụng các thông tin của bạn vào các mục đích nêu tại Khoản 1.1 Điều 1 của Chính sách bảo mật này và phạm vi nêu tại Điều 2 của Chính sách bảo mật này, Chúng tôi sẽ giữ bí mật thông tin cá nhân của bạn. Xin vui lòng đọc bản Chính sách bảo mật thông tin này và hiểu các hành động liên quan về thông tin cá nhân của bạn. Chính sách bảo mật thông tin này có thể thay đổi mà không thông báo trước, do đó bạn vui lòng thường xuyên rà soát, cập nhật các điều khoản này để biết những thay đổi.\r\nChính sách bảo mật tại DP GREEN- PHAR\r\n- DP GREEN-PHAR có thể thay đổi chính sách bảo mật và mọi thay đổi sẽ được công khai trên website www.greenphar.com\r\n- Tất cả các thay đổi về chính sách bảo mật chúng tôi đều tuân thủ theo quy định của Pháp Luật Nhà Nước hiện hành.\r\n- Mọi ý kiến thắc mắc, khiếu nại và tranh chấp vui lòng liên hệ với chúng tôi qua hotline Chăm sóc khách hàng: (024) 6262. 7731\r\n\r\nTrân trọng,\r\nDP GREEN- PHAR: Chu Đáo, Tin Cậy!', '', '', '', '', '', 0, 'chinh-sach-bao-mat', 'Chính sách bảo mật', '', ''),
(47, 41, 'vn', 'Chính sách đổi - trả', '', '<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng chắc chắn rằng sản phẩm y&ecirc;u cầu đổi (trả) thỏa m&atilde;n điều kiện đổi trả h&agrave;ng của DP GREEN- PHAR tại ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng h&oacute;a như sau:<br />\r\n<strong><em>C&aacute;c trường hợp được quyền đổi - trả sản phẩm:</em></strong><br />\r\nĐổi - trả do đơn h&agrave;ng sai hoặc thiếu sản phẩm so với th&ocirc;ng tin đặt h&agrave;ng.<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi do qu&aacute; tr&igrave;nh vận chuyển (hộp thuốc bị bể, ẩm mốc,&hellip;).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền sản phẩm lỗi sản xuất (nh&atilde;n m&aacute;c kh&ocirc;ng r&otilde; chữ, th&ocirc;ng tin tr&ecirc;n bao b&igrave; sản phẩm kh&ocirc;ng ch&iacute;nh x&aacute;c, sản phẩm đ&atilde; bị mở trước khi đến tay kh&aacute;ch h&agrave;ng...).<br />\r\nTrả h&agrave;ng - ho&agrave;n tiền do lỗi giao h&agrave;ng sản phẩm hết hạn sử dụng.<br />\r\n<strong><em>Điều kiện bắt buộc:</em></strong><br />\r\nSản phẩm kh&ocirc;ng c&oacute; dấu hiệu đ&atilde; qua sử dụng, c&ograve;n nguy&ecirc;n hộp, tem, m&aacute;c, seal (seal vỏ hộp v&agrave; seal chai thuốc).<br />\r\nTrong trường hợp Kh&aacute;ch h&agrave;ng đ&atilde; khui seal vỏ hộp v&agrave; ph&aacute;t hiện chai thuốc c&oacute; lỗi sản xuất, vui l&ograve;ng chụp h&igrave;nh v&agrave; gọi Hotline để BP CSKH hướng dẫn th&ecirc;m.<br />\r\nĐối với c&aacute;c sản phẩm đ&atilde; khui seal chai thuốc, DP GREEN- PHAR xin được từ chối đổi trả.<br />\r\nQu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN- PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<h2>Thời hạn đổi trả h&agrave;ng</h2>\r\n\r\n<p>Sau khi nhận được sản phẩm của kh&aacute;ch h&agrave;ng gửi trả, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng sẽ tiến h&agrave;nh kiểm tra chất lượng sản phẩm ngay lập tức. Quy tr&igrave;nh kiểm tra h&agrave;ng đổi trả được thực hiện trong v&ograve;ng từ 1-3 ng&agrave;y l&agrave;m việc, kết quả kiểm tra sẽ được th&ocirc;ng b&aacute;o đến kh&aacute;ch h&agrave;ng qua email v&agrave; tin nhắn điện thoại sau khi ho&agrave;n tất.<br />\r\nSau khi nhận được email hoặc tin nhắn th&ocirc;ng b&aacute;o từ DP GREEN- PHAR, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra t&igrave;nh trạng đổi trả hoặc ho&agrave;n tiền th&ocirc;ng qua c&ocirc;ng cụ kiểm tra đơn h&agrave;ng của&nbsp;<strong>DP GREEN-PHAR</strong>.</p>\r\n\r\n<h2>Phương thức đổi trả h&agrave;ng đ&atilde; mua</h2>\r\n\r\n<p><strong><em>Bước 1:</em></strong> Đăng k&iacute;<br />\r\nKh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng của DP GREEN-PHAR qua hotline (024) 6262.7731 hoặc truy cập trang web: WWW.GREENPHAR.COM &nbsp;v&agrave; cung cấp th&ocirc;ng tin chi tiết về sản phẩm lỗi gồm:<br />\r\n- T&ecirc;n sản phẩm<br />\r\n- M&atilde; số đơn h&agrave;ng, l&ocirc; sản xuất, hạn sử dụng<br />\r\n- Lỗi sản phẩm (m&ocirc; tả chi tiết v&agrave; k&egrave;m ảnh chụp)<br />\r\n<strong><em>Bước 2:</em></strong> Nhận tin nhắn x&aacute;c nhận đ&atilde; đăng k&yacute; đổi/trả th&agrave;nh c&ocirc;ng v&agrave; email hướng dẫn đ&oacute;ng g&oacute;i sản phẩm ho&agrave;n trả.<br />\r\nSau khi y&ecirc;u cầu đổi/trả được chấp nhận, DP GREEN-PHAR sẽ gửi đến qu&yacute; kh&aacute;ch một tin nhắn v&agrave; email hướng dẫn c&aacute;ch gửi trả sản phẩm.<br />\r\n<strong><em>Bước 3:</em></strong> Đ&oacute;ng g&oacute;i theo hướng dẫn v&agrave; mang sản phẩm đến Bưu Điện<br />\r\n<strong><em>Bước 4:</em></strong> Gửi trả sản phẩm về DP GREEN-PHAR<br />\r\nKh&aacute;ch h&agrave;ng vui l&ograve;ng gửi sản phẩm qua đường Bưu Điện về DP GREEN-PHAR trong v&ograve;ng 3 ng&agrave;y l&agrave;m việc kể từ khi th&ocirc;ng b&aacute;o với bộ phận Chăm S&oacute;c Kh&aacute;ch H&agrave;ng v&agrave; gửi k&egrave;m:<br />\r\n- H&oacute;a đơn mua h&agrave;ng hoặc đ&iacute;nh k&egrave;m giấy ghi ch&uacute; c&oacute; m&atilde; đơn h&agrave;ng<br />\r\n- H&oacute;a đơn gi&aacute; trị gia tăng (nếu c&oacute;)<br />\r\n- Phụ kiện đi k&egrave;m sản phẩm v&agrave; tặng khuyến m&atilde;i k&egrave;m theo (nếu c&oacute;)<br />\r\n<strong><em>Một số lưu &yacute; khi gửi h&agrave;ng đến bưu điện:</em></strong><br />\r\n- Kh&ocirc;ng ni&ecirc;m phong bề mặt th&ugrave;ng ​trước khi ho&agrave;n tất qu&aacute; tr&igrave;nh gửi h&agrave;ng ​v&igrave; c&oacute; thể bưu điện cần kiểm tra trước khi nhận h&agrave;ng. Đ&oacute;ng g&oacute;i, ch&egrave;n l&oacute;t sản phẩm như ban đầu.<br />\r\n- Cung cấp cho nh&acirc;n vi&ecirc;n bưu điện m&atilde; đơn h&agrave;ng v&agrave; m&atilde; gửi h&agrave;ng b&ecirc;n DP GREEN-PHAR đ&atilde; cung cấp. - Lưu &yacute; kh&ocirc;ng d&aacute;n băng keo trực tiếp l&ecirc;n hộp sản phẩm v&igrave; y&ecirc;u cầu đổi/trả c&oacute; thể sẽ bị từ chối nếu hộp sản phẩm bị hư hỏng.<br />\r\n- Vui l&ograve;ng li&ecirc;n hệ Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR &nbsp;(024) 6262. 7731&nbsp;khi c&oacute; bất cứ kh&oacute; khăn xảy ra trong qu&aacute; tr&igrave;nh l&agrave;m việc với bưu điện.<br />\r\n- Điền th&ocirc;ng tin m&atilde; số đơn h&agrave;ng l&ecirc;n th&ugrave;ng h&agrave;ng v&agrave; gửi về DP GREEN- PHAR theo địa chỉ nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng đ&atilde; cung cấp.<br />\r\n<strong>Note:</strong>&nbsp;<em>Trong trường hợp kh&ocirc;ng nhớ th&ocirc;ng tin ở bước số 4, qu&yacute; kh&aacute;ch c&oacute; thể xuất tr&igrave;nh tin nhắn hoặc email nhận được từ DP GREEN- PHAR đ&atilde; gửi (ở bước 2) cho nh&acirc;n vi&ecirc;n bưu điện v&agrave; l&agrave;m theo hướng dẫn.</em><br />\r\n<span style=\"color:#cc0000\">Lưu &yacute;:</span> Kh&aacute;ch h&agrave;ng trong qu&aacute; tr&igrave;nh gửi trả sản phẩm về DP GREEN-PHAR sẽ chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm về trạng th&aacute;i nguy&ecirc;n vẹn của sản phẩm.<br />\r\nSau khi nhận được sản phẩm kh&aacute;ch h&agrave;ng gửi trả về, DP GREEN- PHAR sẽ phản hồi v&agrave; cập nhật th&ocirc;ng tin tr&ecirc;n từng giai đoạn xử l&yacute; đến kh&aacute;ch h&agrave;ng qua email hoặc sms.</p>\r\n\r\n<h2>C&aacute;ch thức nhận lại tiền khi mua h&agrave;ng online</h2>\r\n\r\n<h3>Kh&aacute;ch h&agrave;ng sẽ nhận được số tiền ho&agrave;n trả sau bao l&acirc;u?</h3>\r\n\r\n<p>DP GREEN- PHAR sẽ ho&agrave;n tiền cho kh&aacute;ch h&agrave;ng trong trường hợp kh&aacute;ch h&agrave;ng trả hay hủy đơn h&agrave;ng.<br />\r\nPhương thức ho&agrave;n tiền bằng c&aacute;ch chuyển khoản ng&acirc;n h&agrave;ng.<br />\r\nTh&ocirc;ng tin sẽ được cập nhật đến cho qu&yacute; kh&aacute;ch bằng email hoặc SMS khi thủ tục ho&agrave;n tiền được tiến h&agrave;nh.<br />\r\n<strong>Phương thức ho&agrave;n tiền:</strong> Chuyển khoản ng&acirc;n h&agrave;ng<br />\r\n<strong>Thời gian ho&agrave;n tiền:</strong> 3 - 5 ng&agrave;y l&agrave;m việc<br />\r\nTrong trường hợp đ&atilde; vượt qu&aacute; c&aacute;c khoảng thời gian ho&agrave;n tiền tr&ecirc;n nhưng kh&aacute;ch h&agrave;ng vẫn chưa nhận được tiền, xin vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng để được hỗ trợ hoặc Tổng đ&agrave;i Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN-PHAR&nbsp;<strong>(024) 6262.7731</strong></p>\r\n\r\n<h3>Chi ph&iacute; cho việc đổi trả h&agrave;ng</h3>\r\n\r\n<p>Qu&yacute; Kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n tiền ph&iacute; vận chuyển khi Kh&aacute;ch h&agrave;ng thực hiện gửi h&agrave;ng tại bưu điện. DP GREEN- PHAR sẽ kh&ocirc;ng ho&agrave;n trả chi ph&iacute; n&agrave;y. Tuy nhi&ecirc;n sẽ giao h&agrave;ng miễn ph&iacute; đối với những đơn h&agrave;ng thuộc nh&oacute;m &ldquo;Đổi h&agrave;ng&quot;. Nếu c&oacute; bất k&igrave; vấn đề g&igrave; ph&aacute;t sinh, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ với bộ phận CSKH của DP GREEN-PHAR theo Hotline&nbsp;<strong>(024) 6262.7731</strong></p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(48, 41, 'en', 'Chính sách đổi - trả', '', '<p>Nội dung Ch&iacute;nh s&aacute;ch đổi - trả</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-doi-tra', 'Chính sách đổi - trả', '', ''),
(49, 42, 'vn', 'Hệ thống nhà thuốc', '', '<p>T&acirc;t cả c&aacute;c sản phẩm của DP GREEN-PHAR&nbsp;đ&atilde; được ph&acirc;n phối tại hơn 1000 nh&agrave; thuốc tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n khắp miền bắc<br />\r\nVui l&ograve;ng li&ecirc;n hệ tổng đ&agrave;i CSKH: <em><strong>024. 6262.7731</strong></em> để biết địa chỉ nh&agrave; thuốc gần nhất nơi bạn ở.<br />\r\nXin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin d&ugrave;ng sản phẩm của <strong>DP GREEN-PHAR</strong>.</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(50, 42, 'en', 'Hệ thống nhà thuốc', '', '<p>Nội dung&nbsp;Hệ thống nh&agrave; thuốc</p>\r\n', '', '', '', '', '', 0, 'he-thong-nha-thuoc', 'Hệ thống nhà thuốc', '', ''),
(51, 43, 'vn', 'Hình thức giao hàng', '', '<p>Sau khi đặt h&agrave;ng th&agrave;nh c&ocirc;ng, Bộ phận Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của DP GREEN- PHAR sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch để x&aacute;c nhận v&agrave; gửi email/sms về th&ocirc;ng tin đơn h&agrave;ng trong thời gian sớm nhất. Hiện tại DP GREEN-PHAR hợp t&aacute;c với ViettelPost - đơn vị chuyển ph&aacute;t h&agrave;ng đầu tại Việt Nam để thực hiện chuyển ph&aacute;t c&aacute;c sản phẩm tới Qu&yacute; kh&aacute;ch h&agrave;ng.<br />\r\nSau khi x&aacute;c nhận th&agrave;nh c&ocirc;ng, đơn h&agrave;ng sẽ được giao đến Qu&yacute; kh&aacute;ch trong khoảng thời gian sau đ&acirc;y: <strong>Tại Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội:</strong> Giao h&agrave;ng sau 1 - 4h l&agrave;m việc<br />\r\n<strong>C&aacute;c khu vực tỉnh, th&agrave;nh c&ograve;n lại:</strong> Giao h&agrave;ng sau 1 - 2 ng&agrave;y l&agrave;m việc<br />\r\n<em>*Lưu &yacute;: thời gian giao h&agrave;ng dự kiến ở tr&ecirc;n chỉ &aacute;p dụng cho c&aacute;c đơn h&agrave;ng trong nước.</em> Tất cả c&aacute;c đơn h&agrave;ng từ khắp cả nước sẽ được chia l&agrave;m 2 khu vực v&agrave; ph&iacute; vận chuyển &aacute;p dụng cho tất cả c&aacute;c đơn h&agrave;ng của Qu&yacute; kh&aacute;ch (trong đ&oacute;, DP GREEN-PHAR đ&atilde; hỗ trợ 50-70% chi ph&iacute; giao h&agrave;ng v&agrave; ph&iacute; thu tiền hộ):<br />\r\n<strong>Khu vực 1:</strong>&nbsp;Th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; H&agrave; Nội l&agrave; 10.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>Khu vực 2:</strong>&nbsp;C&aacute;c tỉnh, th&agrave;nh phố c&ograve;n lại tr&ecirc;n to&agrave;n quốc l&agrave; 20.000đ/đơn h&agrave;ng bất kỳ<br />\r\n<strong>FREE SHIP NẾU ĐƠN H&Agrave;NG TR&Ecirc;N 600.000 VNĐ.</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng lưu &yacute; lu&ocirc;n lu&ocirc;n kiểm tra kĩ t&igrave;nh trạng sản phẩm sau khi nhận được ngay tại thời điểm nhận h&agrave;ng v&agrave; c&oacute; sự chứng kiến của nh&acirc;n vi&ecirc;n giao h&agrave;ng. C&aacute;c vấn đề như bể vỡ, vỏ hộp chai thuốc bị r&aacute;ch n&aacute;t hoặc seal đ&atilde; bị mở, &hellip; Tất cả những sự cố n&agrave;y sẽ chỉ được đổi trả nếu do lỗi từ ph&iacute;a nh&acirc;n vi&ecirc;n của DP GREEN-PHAR v&agrave; đơn vị vận chuyển ViettelPost.</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh giao h&agrave;ng c&oacute; thể ph&aacute;t sinh những vấn đề ngo&agrave;i &yacute; muốn về ph&iacute;a Kh&aacute;ch h&agrave;ng khiến việc giao h&agrave;ng bị chậm trễ. DP GREEN-PHAR sẽ linh động giải quyết cho Kh&aacute;ch h&agrave;ng trong từng trường hợp như sau:<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cung cấp ch&iacute;nh x&aacute;c v&agrave; đầy đủ địa chỉ giao h&agrave;ng v&agrave; số điện thoại li&ecirc;n lạc.<br />\r\n- Kh&aacute;ch h&agrave;ng kh&ocirc;ng sẵn s&agrave;ng để nhận h&agrave;ng v&agrave;o thời điểm giao h&agrave;ng.<br />\r\n- DP GREEN- PHAR đ&atilde; giao h&agrave;ng đ&uacute;ng hẹn theo th&ocirc;ng tin giao h&agrave;ng nhưng kh&ocirc;ng li&ecirc;n lạc được với Kh&aacute;ch h&agrave;ng v&agrave; chờ tại địa điểm giao h&agrave;ng qu&aacute; 15 ph&uacute;t, mọi nỗ lực của nh&acirc;n vi&ecirc;n giao h&agrave;ng nhằm li&ecirc;n hệ với Kh&aacute;ch h&agrave;ng đều kh&ocirc;ng th&agrave;nh c&ocirc;ng.<br />\r\n- Những trường hợp bất khả kh&aacute;ng như thi&ecirc;n tai, tai nạn giao th&ocirc;ng, gi&aacute;n đoạn mạng lưới giao th&ocirc;ng, đứt c&aacute;p, hệ thống bị tấn c&ocirc;ng.<br />\r\nC&aacute;c trường hợp kh&aacute;c: Trong trường hợp xảy ra sự cố phức tạp hơn, DP GREEN- PHAR bảo đảm quyền lợi lớn nhất thuộc về Kh&aacute;ch h&agrave;ng.</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', ''),
(52, 43, 'en', 'Hình thức giao hàng', '', '<p>Nội dung H&igrave;nh thức giao h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-giao-hang', 'Hình thức giao hàng', '', '');
INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(53, 44, 'vn', 'Hình thức thanh toán', '', '<h2>DP GREEN- PHAR hỗ trợ 4 phương thức thanh to&aacute;n cho tất cả c&aacute;c đơn h&agrave;ng tr&ecirc;n hệ thống.</h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n khi nhận h&agrave;ng (COD): </strong>Qu&yacute; kh&aacute;ch sẽ thanh to&aacute;n tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng ngay sau khi nhận được h&agrave;ng.<br />\r\n<strong>2. Thanh to&aacute;n bằng Internet Banking:</strong> Thẻ/t&agrave;i khoản ATM của qu&yacute; kh&aacute;ch c&oacute; đăng k&iacute; sử dụng dịch vụ internet banking, DP GREEN- PHAR hiện hỗ trợ thanh to&aacute;n cho phần lớn c&aacute;c ng&acirc;n h&agrave;ng tại Việt Nam:<br />\r\n<img alt=\"\" src=\"../image/pay.jpg\" /> <strong>3. Thanh to&aacute;n bằng thẻ quốc tế Visa, Master Card:</strong>&nbsp;Ph&iacute; thanh to&aacute;n t&ugrave;y thuộc v&agrave;o từng loại thẻ qu&yacute; kh&aacute;ch d&ugrave;ng v&agrave; ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ. Vui l&ograve;ng li&ecirc;n hệ với ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ để biết r&otilde; ph&iacute; thanh to&aacute;n ph&aacute;t sinh.<br />\r\n<strong>4. Chuyển khoản trực tiếp tại ng&acirc;n h&agrave;ng:<br />\r\nCHỦ T&Agrave;I KHOẢN: CT CỔ PHẦN DP GREEN PHAR<br />\r\nSTK: 0691000342789<br />\r\nchi nh&aacute;nh h&agrave; t&acirc;y, Vietcombank.</strong><br />\r\n&quot;T&ecirc;n người mua h&agrave;ng, Tỉnh/th&agrave;nh phố&quot; chuyển tiền cho đơn h&agrave;ng ng&agrave;y ... th&aacute;ng ... năm ...<br />\r\n<em>Mọi thắc mắc v&agrave; g&oacute;p &yacute; vui l&ograve;ng li&ecirc;n hệ Hotline Chăm s&oacute;c kh&aacute;ch h&agrave;ng:&nbsp;<strong>(024) 6262.7731</strong></em></p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(54, 44, 'en', 'Hình thức thanh toán', '', '<p>Nội dung&nbsp;H&igrave;nh thức thanh to&aacute;n</p>\r\n', '', '', '', '', '', 0, 'hinh-thuc-thanh-toan', 'Hình thức thanh toán', '', ''),
(55, 45, 'vn', 'ƯU đãi mới nhất', '', '<p><span style=\"font-size:16px\">Ch&agrave;o xu&acirc;n 2020, Max Air c&oacute; chương tr&igrave;nh khuyến m&atilde;i cực sốc, đừng bỏ qua.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\">Đến ngay Max air&nbsp;để sở hữu ngay những sản phẩm điện m&aacute;y ch&iacute;nh h&atilde;ng gi&aacute; tốt, khuyến m&atilde;i ngập tr&agrave;n nhưng kh&ocirc;ng cần lo lắng về việc thanh to&aacute;n v&igrave; đ&atilde; c&oacute; trả g&oacute;p l&atilde;i suất 0% m&agrave; kh&ocirc;ng cần trả trước. Đ&oacute;n h&egrave; mua sắm khỏe re c&ugrave;ng Max Air&nbsp;n&agrave;o.</span></h2>\r\n', '', '', '', '', '', 1, 'dieu-khoan-dieu-kien', 'Điều khoản sử dụng', '', ''),
(56, 45, 'en', 'Điều khoản sử dụng', '', '<p>Nội dung&nbsp;Điều khoản sử dụng</p>\r\n', '', '', '', '', '', 1, 'dieu-khoan-su-dung', 'Điều khoản sử dụng', '', ''),
(73, 54, 'vn', 'Chính sách riêng tư', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n', '', '', '', '', '', 0, 'chinh-sach-rieng-tu', 'Chính sách riêng tư', '', ''),
(74, 54, 'en', 'page test 9', '', '', '', '', '', '', '', 0, 'page-test-9', 'page test 9', '', ''),
(75, 55, 'vn', 'Hướng dẫn mua hàng', '', '<h4 style=\"margin-left:0px; margin-right:0px; text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#444444\"><span style=\"background-color:#ffffff\">Hướng dẫn mua h&agrave;ng</span></span></span></h4>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px; text-align:start\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n', '', '', '', '', '', 0, 'huongdan', 'Hướng dẫn mua hàng', '', ''),
(76, 55, 'en', 'page test 10', '', '', '', '', '', '', '', 0, 'page-test-10', 'page test 10', '', ''),
(77, 56, 'vn', 'Thỏa thuận người dùng ', '', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n', '', '', '', '', '', 1, 'thoa-thuan-nguoi-dung', 'Thỏa thuận người dùng', '', ''),
(78, 56, 'en', 'page test 11', '', '<p>2</p>\r\n', '', '', '', '', '', 1, 'page-test-11', 'page test 11', '', ''),
(79, 57, 'vn', 'Thoả thuận người bán', '', '<p>Gfchfvhfdcgfbgfdrhbvffcrdg</p>\r\n', '', '', '', '', '', 0, 'thoa-thuan-nguoi-ban', 'Thoả thuận người bán', '', ''),
(80, 57, 'en', 'english version Thoả thuận người bán', 'english version ', 'english version <p>Gfchfvhfdcgfbgfdrhbvffcrdg</p>\r\n', '', '', '', '', '', 0, 'en-thoa-thuan-nguoi-ban', 'Thoả thuận người bán', '', ''),
(83, 59, 'vn', 'Thông tin popup', '', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy</p>\r\n', '', '', '', '', '', 0, 'thong-tin-popup', 'Thông tin popup', '', ''),
(84, 59, 'en', 'english version Thông tin popup', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thong-tin-popup', 'Thông tin popup', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `alias` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `product_des` text COLLATE utf8_unicode_ci,
  `product_des2` text COLLATE utf8_unicode_ci,
  `product_des3` text COLLATE utf8_unicode_ci,
  `product_content` text COLLATE utf8_unicode_ci,
  `product_content2` text COLLATE utf8_unicode_ci,
  `product_content3` text COLLATE utf8_unicode_ci,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci,
  `product_sub_img` text COLLATE utf8_unicode_ci,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT '0',
  `product_new` int(11) DEFAULT '0',
  `product_sale` int(11) DEFAULT '0',
  `product_code` text COLLATE utf8_unicode_ci,
  `product_original` text COLLATE utf8_unicode_ci,
  `product_size` text COLLATE utf8_unicode_ci,
  `product_package` text COLLATE utf8_unicode_ci,
  `product_delivery` text COLLATE utf8_unicode_ci,
  `product_delivery_time` text COLLATE utf8_unicode_ci,
  `product_payment` text COLLATE utf8_unicode_ci,
  `product_payment_type` text COLLATE utf8_unicode_ci,
  `product_sub_info1` text COLLATE utf8_unicode_ci,
  `product_sub_info2` text COLLATE utf8_unicode_ci,
  `product_sub_info3` text COLLATE utf8_unicode_ci,
  `product_sub_info4` text COLLATE utf8_unicode_ci,
  `product_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci,
  `productcat_ar` text COLLATE utf8_unicode_ci,
  `producttag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `product_price_down` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `alias`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `producttag_arr`, `product_price_down`) VALUES
(44, 'Máy lọc không khí Max Air MA025', '', '<p><strong>- M&agrave;n h&igrave;nh OLED hiển thị chỉ số PM2.5<br />\r\n- Hi&ecirc;n thị tốc độ lọc<br />\r\n- Hiển thị chế độ lọc<br />\r\n- Đ&egrave;n LED đổi m&agrave;u cảnh b&aacute;o chất lượng kh&ocirc;ng kh&iacute;<br />\r\n- Chế độ đ&egrave;n ngủ<br />\r\n- Chế độ cảm biến AUTO tốc độ lọc<br />\r\n- Chế độ ban đ&ecirc;m</strong></p>\r\n', '', '', '<p dir=\"ltr\"><strong><span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Chống bụi mịn Max Air MA-025 l&agrave; sản phẩm gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; trong khu vực sản xuất, nơi cư d&acirc;n sinh sống gần nh&agrave; m&aacute;y sản xuất, trong c&aacute;c c&ocirc;ng ty, trường học, bệnh viện v&agrave; đặc biệt trong c&aacute;c gia đ&igrave;nh.</span></strong><br />\r\n<br />\r\n<span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">Chỉ từ 10 ph&uacute;t sau khi sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 c&oacute; thể lọc sạch 100% bụi mịn PM2.5 trong ph&ograve;ng.<br />\r\nM&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 hữu &iacute;ch trong việc lọc phấn hoa, vi khuẩn, b&agrave;o tử nấm, l&ocirc;ng th&uacute;, kh&oacute;i thuốc l&aacute; v&agrave; những loại hạt c&oacute; khả năng g&acirc;y hen suyễn, dị ứng h&ocirc; hấp cho con người.<br />\r\nM&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 ph&ugrave; hợp với diện t&iacute;ch ph&ograve;ng 15m&sup2; đến 27m&sup2;. Sản phẩm c&oacute; khả năng lọc bụi bẩn l&ecirc;n đến 99,95% theo chuẩn Ch&acirc;u &Acirc;u, hoặc 99,97% theo ti&ecirc;u chuẩn Hoa Kỳ.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(1).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(2).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(3).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"750\" src=\"/image/images/THONGSOKYTHUAT-MA025(1).jpg\" width=\"1000\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n', '', '', 2290000, 20, 0, 'MA-025 (1).png', '[\"{\\\"image\\\":\\\"MA-025 (5).jpg\\\"}\",\"{\\\"image\\\":\\\"MA-025 (1).jpg\\\"}\",\"{\\\"image\\\":\\\"MA-025 (3).jpg\\\"}\",\"{\\\"image\\\":\\\"MA-025 (2).jpg\\\"}\"]', '2019-11-22 12:11:17', '2020-01-10 13:01:54', 0, 1, 1, 0, 'MA-025', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Máy lọc không khí Max Air MA025', '234', 'may-loc-khong-khi-max-air-ma025', '', NULL, 'Made in China', 'Hình trụ tròn', 'MAXAIR', NULL, NULL, '237,233,233', '', 223000),
(47, 'Máy lọc không khí Max Air MA060', '', '<p><strong>- M&agrave;n h&igrave;nh OLED hiển thị chỉ số PM2.5<br />\r\n- Hi&ecirc;n thị tốc độ lọc<br />\r\n- Hiển thị chế độ lọc<br />\r\n- Đ&egrave;n LED đổi m&agrave;u cảnh b&aacute;o chất lượng kh&ocirc;ng kh&iacute;<br />\r\n- Chế độ đ&egrave;n ngủ<br />\r\n- Chế độ cảm biến AUTO tốc độ lọc<br />\r\n- Chế độ ban đ&ecirc;m</strong></p>\r\n', '', '', '<p dir=\"ltr\"><strong>I) T&Iacute;NH NĂNG SẢN PHẨM:</strong><br />\r\n<br />\r\n<span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Chống bụi mịn Max Air MA-025 l&agrave; sản phẩm gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; trong khu vực sản xuất, nơi cư d&acirc;n sinh sống gần nh&agrave; m&aacute;y sản xuất, trong c&aacute;c c&ocirc;ng ty, trường học, bệnh viện v&agrave; đặc biệt trong c&aacute;c gia đ&igrave;nh.</span><br />\r\n<br />\r\n<span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 ph&ugrave; hợp với diện t&iacute;ch ph&ograve;ng 15m&sup2; đến 27m&sup2;. Sản phẩm c&oacute; khả năng lọc bụi bẩn l&ecirc;n đến 99,95% theo chuẩn Ch&acirc;u &Acirc;u, hoặc 99,97% theo ti&ecirc;u chuẩn Hoa Kỳ.</span></p>\r\n\r\n<p dir=\"ltr\"><span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 hữu &iacute;ch trong việc lọc phấn hoa, vi khuẩn, b&agrave;o tử nấm, l&ocirc;ng th&uacute;, kh&oacute;i thuốc l&aacute; v&agrave; những loại hạt c&oacute; khả năng g&acirc;y hen suyễn, dị ứng h&ocirc; hấp cho con người.</span></p>\r\n\r\n<p dir=\"ltr\"><span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">Chỉ từ 10 ph&uacute;t sau khi sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 c&oacute; thể lọc sạch 100% bụi mịn PM2.5 trong ph&ograve;ng.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 4199000, 45, 0, 'MA-060 (3).png', '[\"{\\\"image\\\":\\\"MA-060 (1).jpg\\\"}\",\"{\\\"image\\\":\\\"MA-060 (2).jpg\\\"}\",\"{\\\"image\\\":\\\"MA-060 (4).jpg\\\"}\",\"{\\\"image\\\":\\\"MA-060 (5).jpg\\\"}\"]', '2019-12-17 20:12:05', '2020-02-22 15:02:29', 0, 1, 1, 0, 'MA-060', '', '', '50', '', '', '', '', '', '', '', '', '', 1, 'Máy lọc không khí Max Air MA060', '123', 'may-loc-khong-khi-max-air-ma060', '', 1, 'Made in China', 'Hình trụ vuông', 'MAXAIR', NULL, NULL, '237,233,233', '', 134000),
(48, 'Lõi lọc thay thế máy lọc MA025', '', '<p>- LỌC BỤI BẨN<br />\r\n- LỌC PHẤN HOA<br />\r\n- LỌC VI KHUẨN<br />\r\n- LỌC NẤM MỐC<br />\r\n- LỌC L&Ocirc;NG TH&Uacute;<br />\r\n- LỌC KH&Oacute;I THUỐC<br />\r\n- NGỪA HẸN SUYỄN<br />\r\n- NGĂN DỊ ỨNG H&Ocirc; HẤP</p>\r\n', '', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"488\" src=\"/image/images/LOILOC%20MA025.jpg\" width=\"650\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 600000, 20, 0, 'LOILOC.png', '[\"{\\\"image\\\":\\\"LOILOC.png\\\"}\",\"{\\\"image\\\":\\\"LOILOC1.jpg\\\"}\"]', '2019-12-17 22:12:32', '2020-01-10 13:01:39', 0, 1, 1, 0, 'LL-025', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Lõi lọc thay thế máy lọc MA025', '', 'loi-loc-thay-the-may-loc-ma025', '', 1, 'Made in China', 'Hình trụ tròn', 'MAXAIR', NULL, NULL, '237,233,233', '', 234000),
(49, 'Lõi lọc thay thế máy lọc MA060', '', '<p>- LỌC BỤI BẨN<br />\r\n- LỌC PHẤN HOA<br />\r\n- LỌC VI KHUẨN<br />\r\n- LỌC NẤM MỐC<br />\r\n- LỌC L&Ocirc;NG TH&Uacute;<br />\r\n- LỌC KH&Oacute;I THUỐC<br />\r\n- NGỪA HẸN SUYỄN<br />\r\n- NGĂN DỊ ỨNG H&Ocirc; HẤP</p>\r\n\r\n<p>- NGĂN BỤI PM 2.5</p>\r\n', '', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/LOILOC%20MA060.jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 1000000, 30, 0, 'LOILOC2.png', '[\"{\\\"image\\\":\\\"LOILOC.jpg\\\"}\",\"{\\\"image\\\":\\\"LOILOC1.jpg\\\"}\"]', '2019-12-17 22:12:43', '2020-01-10 13:01:29', 0, 1, 1, 0, 'LL-MA060', '', '', '2', '', '', '06', '', '', '', '', '', '', 1, 'Lõi lọc thay thế máy lọc MA060', '', 'loi-loc-thay-the-may-loc-ma060', '', 1, 'Made in China', 'Hình trụ tròn', 'MAXAIR', NULL, NULL, '237,233,233', '', 300000),
(53, 'Samsung Galaxy Note 10+', '', '', '', '', '', '', '', 26990000, 0, 0, 'samsung-galaxy-note-10-plus-blue-400x460.png', '[\"{\\\"image\\\":\\\"samsung-galaxy-note-10-plus-blue-400x460.png\\\"}\"]', '2020-02-10 19:02:35', NULL, 0, 1, 1, 0, 'Samsung Galaxy Note 10+', '', '', '', '', '', '1', '', '', '', '', '', '', 1, 'Samsung Galaxy Note 10+', '', 'samsung-galaxy-note-10', '', 1, 'Trung Quốc', 'hình chữ nhật', 'Samsung', NULL, NULL, '237,233,233', '', 26990000),
(55, 'iPhone Xs 256GB', '', '', '', '', '', '', '', 24990000, 0, 0, 'iphone-xs-256gb-white-400x460.png', '[]', '2020-02-10 20:02:56', NULL, 0, 1, 1, 0, 'iPhone Xs 256GB', '', '', '', '', '', '1', '', '', '', '', '', '', 1, 'iPhone Xs 256GB', '', 'iphone-xs-256gb', '', 1, 'Trung Quốc', 'hình chữ nhật', 'iPhone', NULL, NULL, '237,233,233', '', 24990000),
(56, 'iPhone 11 128GB', '', '', '', '', '', '', '', 23990000, 0, 0, 'iphone-11-128gb-green-400x460.png', '[]', '2020-02-10 20:02:51', NULL, 0, 1, 1, 0, 'iPhone 11 128GB', '', '', '', '', '', '1', '', '', '', '', '', '', 1, 'iPhone 11 128GB', '', 'iphone-11-128gb', '', 1, 'Trung Quốc', 'hình chữ nhật', 'iPhone', NULL, NULL, '237,233,233', '', 23990000),
(57, 'Tai nghe Earpods Apple MNHF2', '', '', '', '', '', '', '', 790000, 0, 0, 'tai-nghe-earpods-apple-md827fea-1-600x600.jpg', '[]', '2020-02-10 20:02:50', NULL, 0, 1, 1, 0, 'Tai nghe Earpods Apple MNHF2', '', '', '', '', '', '6', '', '', '', '', '', '', 1, 'Tai nghe Earpods Apple MNHF2', '', 'tai-nghe-earpods-apple-mnhf2', '', 1, 'Trung Quốc', '', 'iPhone', NULL, NULL, '237,233,233', '', 790000),
(58, 'Tai nghe nhét trong Samsung EG920B', '', '', '', '', '', '', '', 280000, 0, 0, 'tai-nghe-nhet-trong-samsung-eg920b-2-1-600x600.jpg', '[]', '2020-02-10 20:02:06', NULL, 0, 1, 1, 0, 'Tai nghe nhét trong Samsung EG920B', '', '', '', '', '', '6', '', '', '', '', '', '', 1, 'Tai nghe nhét trong Samsung EG920B', '', 'tai-nghe-nhet-trong-samsung-eg920b', '', 1, 'Trung Quốc', '', 'Samsung', NULL, NULL, '237,233,233', '', 280000),
(59, 'iPhone Xs Max 64GB', '', '', '', '', '', '', '', 27990000, 0, 0, 'iphone-xs-max-gold-400x460.png', '[]', '2020-02-10 20:02:07', NULL, 0, 1, 1, 0, 'iPhone Xs Max 64GB', '', '', '', '', '', '1', '', '', '', '', '', '', 1, 'iPhone Xs Max 64GB', '', 'iphone-xs-max-64gb', '', 1, 'Trung Quốc', 'hình chữ nhật', 'iPhone', NULL, NULL, '237,233,233', '', 27990000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci,
  `productcat_des` text COLLATE utf8_unicode_ci,
  `productcat_content` text COLLATE utf8_unicode_ci,
  `productcat_parent` int(11) NOT NULL DEFAULT '0',
  `productcat_sort_order` int(11) NOT NULL DEFAULT '0',
  `productcat_img` text COLLATE utf8_unicode_ci,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0',
  `title_seo` text COLLATE utf8_unicode_ci,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(233, 'Sản phảm flash sale', '', '', 0, 0, NULL, '2020-01-07 16:01:05', NULL, '', '', '', '', '', 1, 'Sản phảm flash sale', '', 'san-pham-flash-sale', '', NULL),
(237, 'Sản phẩm header', '', '', 0, 0, NULL, '2020-01-04 11:01:48', NULL, '', '', '', '', '', 1, 'Sản phẩm header', '', 'san-pham-header', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci,
  `lang_productcat_content` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(451, 233, 'Sản phảm flash sale', 'vn', '', '', '', '', '', '', '', 0, 'san-pham-flash-sale', '', 'Sản phảm flash sale', ''),
(452, 233, 'english version Sale 9:00', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-sale-900', '', 'Sale 9:00', ''),
(459, 237, 'Sản phẩm header', 'vn', '', '', '', '', '', '', '', 0, 'san-pham-header', '', 'Sản phẩm header', ''),
(460, 237, 'english version Sản phẩm chính', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-san-pham-chinh', '', 'Sản phẩm chính', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag`
--

CREATE TABLE `producttag` (
  `producttag_id` int(11) NOT NULL,
  `producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sort_order` int(11) NOT NULL,
  `producttag_img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_created_date` datetime NOT NULL,
  `producttag_update_date` datetime NOT NULL,
  `producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `title_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag`
--

INSERT INTO `producttag` (`producttag_id`, `producttag_name`, `producttag_des`, `producttag_content`, `producttag_sort_order`, `producttag_img`, `producttag_created_date`, `producttag_update_date`, `producttag_sub_info1`, `producttag_sub_info2`, `producttag_sub_info3`, `producttag_sub_info4`, `producttag_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(5, 'đỏ', '<p>des</p>\r\n', '<p>content1</p>\r\n', 0, '', '2017-12-12 19:12:53', '2017-12-13 12:12:30', '', '', '', '', '', 1, 'đỏ', 'a1', 'do', 'a1', 1),
(7, 'Xanh', '', '', 0, '', '2017-12-13 12:12:49', '2017-12-13 12:12:49', '', '', '', '', '', 1, 'Xanh', '', 'xanh', '', 1),
(8, 'Vàng', '', '', 0, '', '2017-12-13 12:12:04', '2017-12-13 17:12:26', '', '', '', '', '', 1, 'Vàng', '', 'vang', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttag_languages`
--

CREATE TABLE `producttag_languages` (
  `id` int(11) NOT NULL,
  `producttag_id` int(11) NOT NULL,
  `lang_producttag_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `languages_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_producttag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edit_state` int(11) NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `producttag_languages`
--

INSERT INTO `producttag_languages` (`id`, `producttag_id`, `lang_producttag_name`, `languages_code`, `lang_producttag_des`, `lang_producttag_content`, `lang_producttag_sub_info1`, `lang_producttag_sub_info2`, `lang_producttag_sub_info3`, `lang_producttag_sub_info4`, `lang_producttag_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(2, 5, 'đỏ', 'vn', '<p>des</p>\r\n', '<p>content1</p>\r\n', '', '', '', '', '', 1, 'do', 'a1', 'đỏ', 'a1'),
(3, 5, 'tag produnt', 'en', '<p>des</p>\r\n', '<p>content</p>\r\n', '', '', '', '', '', 1, 'tag-produnt', 'a', 'tag produnt', 'a'),
(6, 7, 'Xanh', 'vn', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(7, 7, 'Xanh', 'en', '', '', '', '', '', '', '', 1, 'xanh', '', 'Xanh', ''),
(8, 8, 'Vàng', 'vn', '<p>1</p>\r\n', '<p>1</p>\r\n', '', '', '', '', '', 1, 'vang', '', 'Vàng', ''),
(9, 8, 'yellow', 'en', '', '', '', '', '', '', '', 1, 'vang', '', 'Vàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci,
  `lang_product_des` text COLLATE utf8_unicode_ci,
  `lang_product_des2` text COLLATE utf8_unicode_ci,
  `lang_product_des3` text COLLATE utf8_unicode_ci,
  `lang_product_content` text COLLATE utf8_unicode_ci,
  `lang_product_content2` text COLLATE utf8_unicode_ci,
  `lang_product_content3` text COLLATE utf8_unicode_ci,
  `lang_product_code` text COLLATE utf8_unicode_ci,
  `lang_product_original` text COLLATE utf8_unicode_ci,
  `lang_product_size` text COLLATE utf8_unicode_ci,
  `lang_product_package` text COLLATE utf8_unicode_ci,
  `lang_product_delivery` text COLLATE utf8_unicode_ci,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci,
  `lang_product_payment` text COLLATE utf8_unicode_ci,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci,
  `edit_state` int(11) NOT NULL DEFAULT '0',
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `keyword` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(75, 44, 'vn', 'Máy lọc không khí Max Air MA025', '<p><strong>- M&agrave;n h&igrave;nh OLED hiển thị chỉ số PM2.5<br />\r\n- Hi&ecirc;n thị tốc độ lọc<br />\r\n- Hiển thị chế độ lọc<br />\r\n- Đ&egrave;n LED đổi m&agrave;u cảnh b&aacute;o chất lượng kh&ocirc;ng kh&iacute;<br />\r\n- Chế độ đ&egrave;n ngủ<br />\r\n- Chế độ cảm biến AUTO tốc độ lọc<br />\r\n- Chế độ ban đ&ecirc;m</strong></p>\r\n', '', '', '<p dir=\"ltr\"><strong><span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Chống bụi mịn Max Air MA-025 l&agrave; sản phẩm gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; trong khu vực sản xuất, nơi cư d&acirc;n sinh sống gần nh&agrave; m&aacute;y sản xuất, trong c&aacute;c c&ocirc;ng ty, trường học, bệnh viện v&agrave; đặc biệt trong c&aacute;c gia đ&igrave;nh.</span></strong><br />\r\n<br />\r\n<span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">Chỉ từ 10 ph&uacute;t sau khi sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 c&oacute; thể lọc sạch 100% bụi mịn PM2.5 trong ph&ograve;ng.<br />\r\nM&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 hữu &iacute;ch trong việc lọc phấn hoa, vi khuẩn, b&agrave;o tử nấm, l&ocirc;ng th&uacute;, kh&oacute;i thuốc l&aacute; v&agrave; những loại hạt c&oacute; khả năng g&acirc;y hen suyễn, dị ứng h&ocirc; hấp cho con người.<br />\r\nM&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 ph&ugrave; hợp với diện t&iacute;ch ph&ograve;ng 15m&sup2; đến 27m&sup2;. Sản phẩm c&oacute; khả năng lọc bụi bẩn l&ecirc;n đến 99,95% theo chuẩn Ch&acirc;u &Acirc;u, hoặc 99,97% theo ti&ecirc;u chuẩn Hoa Kỳ.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(1).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(2).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA025%20(3).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"750\" src=\"/image/images/THONGSOKYTHUAT-MA025(1).jpg\" width=\"1000\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n', '', '', 'MA-025', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'may-loc-khong-khi-max-air-ma025', 'Máy lọc không khí Max Air MA025', '234', ''),
(76, 44, 'en', 'english version Máy lọc không khí và tạo ẩm', 'english version <p>- Cung cấp độ ẩm gi&uacute;p l&agrave;n da lu&ocirc;n mịn m&agrave;ng.<br />\r\n- Thiết kế sang trọng ph&ugrave; hợp cho ph&ograve;ng họp, ph&ograve;ng kh&aacute;ch<br />\r\n- C&ocirc;ng nghệ nanoe&lt;sup&gt;TM&lt;/sup&gt; diệt 99,9% vi khuẩn, virus v&agrave; bụi bẩn .<br />\r\n- Khử 90% m&ugrave;i (m&ugrave;i thuốc l&aacute;) trong 30 ph&uacute;t.<br />\r\n- Chế độ ECONAVI tiết kiệm điện tới 60%.<br />\r\n- C&ocirc;ng ngh&ecirc; MEGACATCHER d&agrave;nh ri&ecirc;ng cho trẻ nhỏ.<br />\r\n- Tuổi thọ m&agrave;n lọc HEPA v&agrave; m&agrave;n tạo ẩm l&ecirc;n đến 10 năm.<br />\r\n- 5 chế độ cảm biến: Bụi, M&ugrave;i, Độ ẩm, &Aacute;nh s&aacute;ng v&agrave; Chuyển động<br />\r\n- Diện t&iacute;ch sử dụng: 52m&gt;2<br />\r\n- M&agrave;u sắc: Trắng.</p>\r\n', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-may-loc-khong-khi-va-tao-am', 'Máy lọc không khí và tạo ẩm', '', ''),
(81, 47, 'vn', 'Máy lọc không khí Max Air MA060', '<p><strong>- M&agrave;n h&igrave;nh OLED hiển thị chỉ số PM2.5<br />\r\n- Hi&ecirc;n thị tốc độ lọc<br />\r\n- Hiển thị chế độ lọc<br />\r\n- Đ&egrave;n LED đổi m&agrave;u cảnh b&aacute;o chất lượng kh&ocirc;ng kh&iacute;<br />\r\n- Chế độ đ&egrave;n ngủ<br />\r\n- Chế độ cảm biến AUTO tốc độ lọc<br />\r\n- Chế độ ban đ&ecirc;m</strong></p>\r\n', '', '', '<p dir=\"ltr\"><strong>I) T&Iacute;NH NĂNG SẢN PHẨM:</strong><br />\r\n<br />\r\n<span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Chống bụi mịn Max Air MA-025 l&agrave; sản phẩm gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; trong khu vực sản xuất, nơi cư d&acirc;n sinh sống gần nh&agrave; m&aacute;y sản xuất, trong c&aacute;c c&ocirc;ng ty, trường học, bệnh viện v&agrave; đặc biệt trong c&aacute;c gia đ&igrave;nh.</span><br />\r\n<br />\r\n<span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 ph&ugrave; hợp với diện t&iacute;ch ph&ograve;ng 15m&sup2; đến 27m&sup2;. Sản phẩm c&oacute; khả năng lọc bụi bẩn l&ecirc;n đến 99,95% theo chuẩn Ch&acirc;u &Acirc;u, hoặc 99,97% theo ti&ecirc;u chuẩn Hoa Kỳ.</span></p>\r\n\r\n<p dir=\"ltr\"><span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 hữu &iacute;ch trong việc lọc phấn hoa, vi khuẩn, b&agrave;o tử nấm, l&ocirc;ng th&uacute;, kh&oacute;i thuốc l&aacute; v&agrave; những loại hạt c&oacute; khả năng g&acirc;y hen suyễn, dị ứng h&ocirc; hấp cho con người.</span></p>\r\n\r\n<p dir=\"ltr\"><span data-darkreader-inline-bgcolor=\"\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-bgcolor:transparent; --darkreader-inline-color:#e8e6e3; background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">Chỉ từ 10 ph&uacute;t sau khi sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 c&oacute; thể lọc sạch 100% bụi mịn PM2.5 trong ph&ograve;ng.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'MA-060', '', '', '50', '', '', '', '', '', '', '', '', '', 0, 'may-loc-khong-khi-max-air-ma060', 'Máy lọc không khí Max Air MA060', '123', ''),
(82, 47, 'en', 'english version Máy lọc không khí Max Air MA060', 'english version <p dir=\"ltr\"><strong><span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">- M&agrave;n h&igrave;nh OLED hiển thị chỉ số PM2.5</span><br />\r\n<span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">- Hi&ecirc;n thị tốc độ lọc<br />\r\n- Hiển thị chế độ lọc<br />\r\n- Đ&egrave;n LED đổi m&agrave;u cảnh b&aacute;o chất lượng kh&ocirc;ng kh&iacute;<br />\r\n- Chế độ đ&egrave;n ngủ<br />\r\n- Chế độ cảm biến AUTO tốc độ lọc<br />\r\n- Chế độ ban đ&ecirc;m</span></strong></p>\r\n', '', '', 'english version <p dir=\"ltr\"><strong>I) T&Iacute;NH NĂNG SẢN PHẨM:</strong><br />\r\n<br />\r\n<span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Chống bụi mịn Max Air MA-025 l&agrave; sản phẩm gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; trong khu vực sản xuất, nơi cư d&acirc;n sinh sống gần nh&agrave; m&aacute;y sản xuất, trong c&aacute;c c&ocirc;ng ty, trường học, bệnh viện v&agrave; đặc biệt trong c&aacute;c gia đ&igrave;nh.</span><br />\r\n<br />\r\n<span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 ph&ugrave; hợp với diện t&iacute;ch ph&ograve;ng 15m&sup2; đến 27m&sup2;. Sản phẩm c&oacute; khả năng lọc bụi bẩn l&ecirc;n đến 99,95% theo chuẩn Ch&acirc;u &Acirc;u, hoặc 99,97% theo ti&ecirc;u chuẩn Hoa Kỳ.</span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">M&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 hữu &iacute;ch trong việc lọc phấn hoa, vi khuẩn, b&agrave;o tử nấm, l&ocirc;ng th&uacute;, kh&oacute;i thuốc l&aacute; v&agrave; những loại hạt c&oacute; khả năng g&acirc;y hen suyễn, dị ứng h&ocirc; hấp cho con người.</span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"background-color:transparent; color:#000000; font-family:Arial; font-size:11pt\">Chỉ từ 10 ph&uacute;t sau khi sử dụng m&aacute;y lọc kh&ocirc;ng kh&iacute; Max Air MA-025 c&oacute; thể lọc sạch 100% bụi mịn PM2.5 trong ph&ograve;ng.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(1).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(2).jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/TINHNANG-MA060%20(3).jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;<img alt=\"\" height=\"750\" src=\"/image/images/THONGSOKYTHUAT-MA060.jpg\" width=\"1000\" /></p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-may-loc-khong-khi-max-air-ma060', 'Máy lọc không khí Max Air MA060', '', ''),
(83, 48, 'vn', 'Lõi lọc thay thế máy lọc MA025', '<p>- LỌC BỤI BẨN<br />\r\n- LỌC PHẤN HOA<br />\r\n- LỌC VI KHUẨN<br />\r\n- LỌC NẤM MỐC<br />\r\n- LỌC L&Ocirc;NG TH&Uacute;<br />\r\n- LỌC KH&Oacute;I THUỐC<br />\r\n- NGỪA HẸN SUYỄN<br />\r\n- NGĂN DỊ ỨNG H&Ocirc; HẤP</p>\r\n', '', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"488\" src=\"/image/images/LOILOC%20MA025.jpg\" width=\"650\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'LL-025', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'loi-loc-thay-the-may-loc-ma025', 'Lõi lọc thay thế máy lọc MA025', '', ''),
(84, 48, 'en', 'english version Lõi lọc thay thế máy lọc MA025', 'english version <p>- LỌC BỤI BẨN<br />\r\n- LỌC PHẤN HOA<br />\r\n- LỌC VI KHUẨN<br />\r\n- LỌC NẤM MỐC<br />\r\n- LỌC L&Ocirc;NG TH&Uacute;<br />\r\n- LỌC KH&Oacute;I THUỐC<br />\r\n- NGỪA HẸN SUYỄN<br />\r\n- NGĂN DỊ ỨNG H&Ocirc; HẤP</p>\r\n', '', '', 'english version <p style=\"text-align:center\"><img alt=\"\" height=\"488\" src=\"/image/images/LOILOC%20MA025.jpg\" width=\"650\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'LL-025', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-loi-loc-thay-the-may-loc-ma025', 'Lõi lọc thay thế máy lọc MA025', '', ''),
(85, 49, 'vn', 'Lõi lọc thay thế máy lọc MA060', '<p>- LỌC BỤI BẨN<br />\r\n- LỌC PHẤN HOA<br />\r\n- LỌC VI KHUẨN<br />\r\n- LỌC NẤM MỐC<br />\r\n- LỌC L&Ocirc;NG TH&Uacute;<br />\r\n- LỌC KH&Oacute;I THUỐC<br />\r\n- NGỪA HẸN SUYỄN<br />\r\n- NGĂN DỊ ỨNG H&Ocirc; HẤP</p>\r\n\r\n<p>- NGĂN BỤI PM 2.5</p>\r\n', '', '', '<p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/LOILOC%20MA060.jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'LL-MA060', '', '', '2', '', '', '06', '', '', '', '', '', '', 0, 'loi-loc-thay-the-may-loc-ma060', 'Lõi lọc thay thế máy lọc MA060', '', ''),
(86, 49, 'en', 'english version Lõi lọc thay thế máy lọc MA025', 'english version <p>- LỌC BỤI BẨN<br />\r\n- LỌC PHẤN HOA<br />\r\n- LỌC VI KHUẨN<br />\r\n- LỌC NẤM MỐC<br />\r\n- LỌC L&Ocirc;NG TH&Uacute;<br />\r\n- LỌC KH&Oacute;I THUỐC<br />\r\n- NGỪA HẸN SUYỄN<br />\r\n- NGĂN DỊ ỨNG H&Ocirc; HẤP</p>\r\n', '', '', 'english version <p style=\"text-align:center\"><img alt=\"\" height=\"450\" src=\"/image/images/LOILOC%20MA060.jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '', 'LL-060', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-loi-loc-thay-the-may-loc-ma025-1', 'Lõi lọc thay thế máy lọc MA025', '', ''),
(93, 53, 'vn', 'Samsung Galaxy Note 10+', '', '', '', '', '', '', 'Samsung Galaxy Note 10+', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'samsung-galaxy-note-10', 'Samsung Galaxy Note 10+', '', ''),
(94, 53, 'en', 'english version Samsung Galaxy Note 10+', 'english version ', '', '', 'english version ', '', '', 'Samsung Galaxy Note 10+', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'en-samsung-galaxy-note-10', 'Samsung Galaxy Note 10+', '', ''),
(97, 55, 'vn', 'iPhone Xs 256GB', '', '', '', '', '', '', 'iPhone Xs 256GB', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'iphone-xs-256gb', 'iPhone Xs 256GB', '', ''),
(98, 55, 'en', 'english version iPhone Xs 256GB', 'english version ', '', '', 'english version ', '', '', 'iPhone Xs 256GB', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'en-iphone-xs-256gb', 'iPhone Xs 256GB', '', ''),
(99, 56, 'vn', 'iPhone 11 128GB', '', '', '', '', '', '', 'iPhone 11 128GB', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'iphone-11-128gb', 'iPhone 11 128GB', '', ''),
(100, 56, 'en', 'english version iPhone 11 128GB', 'english version ', '', '', 'english version ', '', '', 'iPhone 11 128GB', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'en-iphone-11-128gb', 'iPhone 11 128GB', '', ''),
(101, 57, 'vn', 'Tai nghe Earpods Apple MNHF2', '', '', '', '', '', '', 'Tai nghe Earpods Apple MNHF2', '', '', '', '', '', '6', '', '', '', '', '', '', 0, 'tai-nghe-earpods-apple-mnhf2', 'Tai nghe Earpods Apple MNHF2', '', ''),
(102, 57, 'en', 'english version Tai nghe Earpods Apple MNHF2', 'english version ', '', '', 'english version ', '', '', 'Tai nghe Earpods Apple MNHF2', '', '', '', '', '', '6', '', '', '', '', '', '', 0, 'en-tai-nghe-earpods-apple-mnhf2', 'Tai nghe Earpods Apple MNHF2', '', ''),
(103, 58, 'vn', 'Tai nghe nhét trong Samsung EG920B', '', '', '', '', '', '', 'Tai nghe nhét trong Samsung EG920B', '', '', '', '', '', '6', '', '', '', '', '', '', 0, 'tai-nghe-nhet-trong-samsung-eg920b', 'Tai nghe nhét trong Samsung EG920B', '', ''),
(104, 58, 'en', 'english version Tai nghe nhét trong Samsung EG920B', 'english version ', '', '', 'english version ', '', '', 'Tai nghe nhét trong Samsung EG920B', '', '', '', '', '', '6', '', '', '', '', '', '', 0, 'en-tai-nghe-nhet-trong-samsung-eg920b', 'Tai nghe nhét trong Samsung EG920B', '', ''),
(105, 59, 'vn', 'iPhone Xs Max 64GB', '', '', '', '', '', '', 'iPhone Xs Max 64GB', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'iphone-xs-max-64gb', 'iPhone Xs Max 64GB', '', ''),
(106, 59, 'en', 'english version iPhone Xs Max 64GB', 'english version ', '', '', 'english version ', '', '', 'iPhone Xs Max 64GB', '', '', '', '', '', '1', '', '', '', '', '', '', 0, 'en-iphone-xs-max-64gb', 'iPhone Xs Max 64GB', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT '1',
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT '1',
  `regInfor_answer2` int(11) DEFAULT '1',
  `regInfor_answer3` int(11) DEFAULT '1',
  `regInfor_answer4` int(11) DEFAULT '1',
  `regInfor_answer5` int(11) DEFAULT '1',
  `regInfor_answer6` int(11) DEFAULT '1',
  `regInfor_answer7` int(11) DEFAULT '1',
  `regInfor_answer8` int(11) DEFAULT '1',
  `regInfor_answer9` int(11) DEFAULT '1',
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`, `state`) VALUES
(12, 'xvdfg', '2017-07-16', 0),
(14, 'viethung95cute@gmail.com', '2018-05-28', 0),
(15, 'tuan@gmail.com', '2019-12-02', 0),
(16, 'anh@gmail.com', '2019-12-02', 0),
(17, 'lucifer23011990@gmail.com', '2019-12-18', 0),
(18, 'dotuan.photographer@gmail.com', '2019-12-19', 0),
(19, 'huyennt62@wru.vn', '2019-12-21', 0),
(20, 'huyennt62@wru.vn', '2019-12-21', 0),
(21, 'huyennt62@wru.vn', '2019-12-21', 0),
(22, 'huyennt62@wru.vn', '2019-12-21', 0),
(23, 'huyennt62@wru.vn', '2019-12-21', 0),
(24, 'huyennt62@wru.vn', '2019-12-21', 0),
(25, 'huyennt62@wru.vn', '2019-12-21', 0),
(27, 'huyennt62@wru.vn', '2019-12-21', 0),
(28, 'huyennt62@wru.vn', '2019-12-21', 0),
(29, 'tuan@gmail.com', '2020-01-10', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci,
  `service_content` text COLLATE utf8_unicode_ci,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `servicetag_arr` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `service_hot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `servicetag_arr`, `service_hot`) VALUES
(57, 'Tắm trắng & làm đẹp', 'Phương thức tắm trắng không lột tẩy, không bong tróc, vừa giúp làm da mặt trắng hồng tươi sáng, vừa se khít lỗ chân lông, đồng thời loại bỏ mụn cám và đầu đen.', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', '5.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Tắm trắng & làm đẹp', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'tam-trang-lam-dep', 'Thi công rèm', NULL, '', 0),
(58, 'Massage Đá Nóng', 'Đây là phương pháp tác động từ bên ngoài vào sâu bên trong cơ thể, các dây thần kinh giúp lưu thông khí huyết và giải phóng năng lượng qua các huyệt đạo, tốt cho hệ tiêu hóa.', '', '2.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Massage Đá Nóng', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'massage-da-nong', 'Thi công rèm', NULL, '', 0),
(59, 'Liệu pháp thảo dược', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…Các loại thảo dược này không những kết hợp tạo mùi hương dễ chịu mà còn có tác dụng rất tốt .', '', '3.jpg', '354', 3, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Liệu pháp thảo dược', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'lieu-phap-thao-duoc', 'Thi công rèm', NULL, '', 0),
(60, 'Triệt lông công nghệ cao', 'Dịch vụ triệt lông tay, triệt lông chân, triệt lông nách, triệt lông mặt và vùng kín của Galaxy Spa sử dụng công nghệ triệt lông IPL 2016 của Hoa Kỳ, giúp chị em thoải mái tự tin khoe đôi chân và đôi cánh tay mịn màng, trắng đẹp với những bộ cánh thời trang gợi cảm mà không phải lo lắng vì lông sẽ mọc rậm trở lại.', '', 'tay-long-nach-nhu-the-nao-6.jpg', '354', 4, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Triệt lông công nghệ cao', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'triet-long-cong-nghe-cao', 'Thi công rèm', NULL, '', 0),
(61, 'Giảm mỡ bụng hiệu quả', 'Béo phì, béo bụng, nhiều ngấn mỡ, không còn trẻ đẹp, bệnh tật, xấu xí, mặc cảm, khiến nhiều chị em mặc cảm, phiền muộn, thiếu tự tin. Cách giảm mỡ bụng hiệu quả với liệu trình khoa học bằng công nghệ Thụy Sỹ kết hợp liệu pháp ấn huyệt cổ truyền của Nhật Bản tại Galaxy Spa Ngân Hà sẽ mang lại kết quả mỹ mãn cho vòng eo của bạn mà không cần phẫu thuật rút mỡ cắt mỡ nguy hiểm.', '', 'cach-giam-mo-bung.png', '354', 4, 'Minh Công', '2017-05-22', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Giảm mỡ bụng hiệu quả', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'giam-mo-bung-hieu-qua', 'Thi công rèm', NULL, '', 0),
(62, 'Điều trị nám và tàn nhang', 'Điều trị nám tàn nhang chuyên sâu với mặt nạ đánh thức giác quan và da chai sạn, giúp làm sạch chuyển hóa trao đổi chất tốt, hấp thụ nhanh sản phẩm và đưa dưỡng chất vào sâu tận trong da, ức chế sự hội tụ melanin dưới da, đem lại cho da một làn da trắng sáng.', '', '64.jpg', '0', 0, '', '2018-05-03', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Điều trị nám và tàn nhang', '', 'dieu-tri-nam-va-tan-nhang', '', 1, '', 0),
(63, 'Massage với tinh dầu', 'Massage với tinh dầu là dùng tinh dầu nguyên chất để massage tạo cảm giác thư giãn.', '', '06edcc35ce92c28c378f69a7c74623a6.jpg', '0', 0, '', '2018-05-03', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Massage với tinh dầu', '', 'massage-voi-tinh-dau', '', 1, '', 0),
(64, 'Massage với thảo dược', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', '', '0635362844765573395.jpg', '0', 5, '', '2018-05-03', '2018-05-03', 1, NULL, NULL, NULL, NULL, NULL, 'Massage với thảo dược', '', 'massage-voi-thao-duoc', '', 1, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci,
  `servicecat_content` text COLLATE utf8_unicode_ci,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Danh mục dịch vụ 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', '', 0, 0, '2017-12-03', NULL, 1, 'sv2.jpg', NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 1', '', 'danh-muc-dich-vu-1', '', 1),
(4, 'Danh mục dịch vụ 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '', 0, 0, '2018-03-29', NULL, 1, 'sv1.jpg', NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 2', '', 'danh-muc-dich-vu-2', '', 1),
(5, 'Massage Trị Liệu', '', '', 0, 0, '2018-05-03', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Massage Trị Liệu', '', 'massage-tri-lieu', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT '1',
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Danh mục dịch vụ 1', '<p>M&ocirc; tả Danh mục dịch vụ 1</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Danh mục dịch vụ 1', '', 'danh-muc-dich-vu-1', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Danh mục dịch vụ 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', NULL, 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'danh-muc-dich-vu-2', '', NULL, 'vn', 4),
(8, 'category service 2', '<p>M&ocirc; tả Danh mục dịch vụ 2</p>\r\n', '1', 1, '', '', '', '', '', 'Danh mục dịch vụ 2', '', 'category-service-2', '', NULL, 'en', 4),
(9, 'Massage Trị Liệu', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Massage Trị Liệu', '', 'massage-tri-lieu', '', NULL, 'vn', 5),
(10, 'english version Massage Trị Liệu', 'english version ', 'english version ', 1, NULL, NULL, NULL, NULL, NULL, 'Massage Trị Liệu', '', 'en-massage-tri-lieu', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag`
--

CREATE TABLE `servicetag` (
  `servicetag_id` int(11) NOT NULL,
  `servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sort_order` int(11) NOT NULL,
  `servicetag_created_date` datetime NOT NULL,
  `servicetag_update_date` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `servicetag_img` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicttag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag`
--

INSERT INTO `servicetag` (`servicetag_id`, `servicetag_name`, `servicetag_des`, `servicetag_content`, `servicetag_sort_order`, `servicetag_created_date`, `servicetag_update_date`, `state`, `servicetag_img`, `servicetag_sub_info1`, `servicetag_sub_info2`, `servicttag_sub_info3`, `servicetag_sub_info4`, `servicetag_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(4, 'hot', '', '', 0, '2017-12-13 15:12:00', '2017-12-13 15:12:00', 1, '', '', '', '', '', '', 'hot', '', 'hot', '', 1),
(5, 'sale', '', '', 0, '2017-12-13 15:12:12', '2017-12-13 15:12:12', 1, '', '', '', '', '', '', 'sale', '', 'sale', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicetag_languages`
--

CREATE TABLE `servicetag_languages` (
  `id` int(11) NOT NULL,
  `servicetag_id` int(11) NOT NULL,
  `languages_code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_servicetag_sub_info5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title_seo` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `des_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `friendly_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `servicetag_languages`
--

INSERT INTO `servicetag_languages` (`id`, `servicetag_id`, `languages_code`, `lang_servicetag_name`, `lang_servicetag_des`, `lang_servicetag_content`, `lang_servicetag_sub_info1`, `lang_servicetag_sub_info2`, `lang_servicetag_sub_info3`, `lang_servicetag_sub_info4`, `lang_servicetag_sub_info5`, `title_seo`, `des_seo`, `keyword`, `friendly_url`, `state`) VALUES
(4, 4, 'vn', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(5, 4, 'en', 'hot', '', '', '', '', '', '', '', 'hot', '', 'keyword', 'hot', 1),
(6, 5, 'vn', 'sale', '<p>1</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1),
(7, 5, 'en', 'sale', '<p>2</p>\r\n', '', '', '', '', '', '', 'sale', '', 'keyword', 'sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci,
  `lang_service_content` text COLLATE utf8_unicode_ci,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `service_sub_infor1` text COLLATE utf8_unicode_ci,
  `service_sub_infor2` text COLLATE utf8_unicode_ci,
  `service_sub_infor3` text COLLATE utf8_unicode_ci,
  `service_sub_infor4` text COLLATE utf8_unicode_ci,
  `service_sub_infor5` text COLLATE utf8_unicode_ci,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(69, 'vn', 'Tắm trắng & làm đẹp', 'Phương thức tắm trắng không lột tẩy, không bong tróc, vừa giúp làm da mặt trắng hồng tươi sáng, vừa se khít lỗ chân lông, đồng thời loại bỏ mụn cám và đầu đen.', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Automotive Aftermarket Business Division is responsible for our replacement parts business worldwide and delivers innovative repair solutions in original-equipment quality. With our four brands LuK, INA, FAG, and Ruville, we offer clutch and release systems, engine and transmission applications, as well as chassis applications. All components are optimally tuned to work together and allow for fast and professional replacement.</p>\r\n\r\n<p><img alt=\"\" height=\"563\" src=\"/image/images/Ubuntu_wall_4_by_RPMan_Art.png\" style=\"float:left\" width=\"900\" /></p>\r\n\r\n<p>What&rsquo;s more, our REPXPERT brand focuses on comprehensive services for garages, such as conducting practical-oriented training courses, providing support for repair with our hotline, our online garage portal and developing special tools</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Tắm trắng & làm đẹp', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'tam-trang-lam-dep', 'Thi công rèm', NULL, 57),
(70, 'en', 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Roal City', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-roal-city', 'Thi công rèm', NULL, 57),
(71, 'vn', 'Massage Đá Nóng', 'Đây là phương pháp tác động từ bên ngoài vào sâu bên trong cơ thể, các dây thần kinh giúp lưu thông khí huyết và giải phóng năng lượng qua các huyệt đạo, tốt cho hệ tiêu hóa.', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage Đá Nóng', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'massage-da-nong', 'Thi công rèm', NULL, 58),
(72, 'en', 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm chung cư Vimcom Bà Triệu', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-vimcom-ba-trieu', 'Thi công rèm', NULL, 58),
(73, 'vn', 'Liệu pháp thảo dược', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng…Các loại thảo dược này không những kết hợp tạo mùi hương dễ chịu mà còn có tác dụng rất tốt .', '', NULL, 1, '', '', '', '', '', 'Liệu pháp thảo dược', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'lieu-phap-thao-duoc', 'Thi công rèm', NULL, 59),
(74, 'en', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm khu đô thị Ecopark', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khu-do-thi-ecopark', 'Thi công rèm', NULL, 59),
(75, 'vn', 'Triệt lông công nghệ cao', 'Dịch vụ triệt lông tay, triệt lông chân, triệt lông nách, triệt lông mặt và vùng kín của Galaxy Spa sử dụng công nghệ triệt lông IPL 2016 của Hoa Kỳ, giúp chị em thoải mái tự tin khoe đôi chân và đôi cánh tay mịn màng, trắng đẹp với những bộ cánh thời trang gợi cảm mà không phải lo lắng vì lông sẽ mọc rậm trở lại.', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Triệt lông công nghệ cao', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'triet-long-cong-nghe-cao', 'Thi công rèm', NULL, 60),
(76, 'en', 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ &Aacute;N</h3>\r\n\r\n<p>Địa chỉ:&nbsp;số 72A Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thi công rèm khách sạn Thắng Lợi', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-khach-san-thang-loi', 'Thi công rèm', NULL, 60),
(77, 'vn', 'Giảm mỡ bụng hiệu quả', 'Béo phì, béo bụng, nhiều ngấn mỡ, không còn trẻ đẹp, bệnh tật, xấu xí, mặc cảm, khiến nhiều chị em mặc cảm, phiền muộn, thiếu tự tin. Cách giảm mỡ bụng hiệu quả với liệu trình khoa học bằng công nghệ Thụy Sỹ kết hợp liệu pháp ấn huyệt cổ truyền của Nhật Bản tại Galaxy Spa Ngân Hà sẽ mang lại kết quả mỹ mãn cho vòng eo của bạn mà không cần phẫu thuật rút mỡ cắt mỡ nguy hiểm.', '', NULL, 1, '', '', '', '', '', 'Giảm mỡ bụng hiệu quả', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'giam-mo-bung-hieu-qua', 'Thi công rèm', NULL, 61),
(78, 'en', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', '<h3>CHI TIẾT DỰ ÁN</h3>\r\n\r\n<p>Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội</p>\r\n', NULL, 1, '', '', '', '', '', 'Thi công rèm chung cư Keangnam', 'Địa chỉ: số 72A Nguyễn Trãi, Thanh Xuân, Hà Nội', 'thi-cong-rem-chung-cu-keangnam', 'Thi công rèm', NULL, 61),
(79, 'vn', 'Điều trị nám và tàn nhang', 'Điều trị nám tàn nhang chuyên sâu với mặt nạ đánh thức giác quan và da chai sạn, giúp làm sạch chuyển hóa trao đổi chất tốt, hấp thụ nhanh sản phẩm và đưa dưỡng chất vào sâu tận trong da, ức chế sự hội tụ melanin dưới da, đem lại cho da một làn da trắng sáng.', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Điều trị nám và tàn nhang', '', 'dieu-tri-nam-va-tan-nhang', '', NULL, 62),
(80, 'en', 'english version Điều trị nám và tàn nhang', 'english version Điều trị nám tàn nhang chuyên sâu với mặt nạ đánh thức giác quan và da chai sạn, giúp làm sạch chuyển hóa trao đổi chất tốt, hấp thụ nhanh sản phẩm và đưa dưỡng chất vào sâu tận trong da, ức chế sự hội tụ melanin dưới da, đem lại cho da một làn da trắng sáng.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Điều trị nám và tàn nhang', '', 'en-dieu-tri-nam-va-tan-nhang', '', NULL, 62),
(81, 'vn', 'Massage với tinh dầu', 'Massage với tinh dầu là dùng tinh dầu nguyên chất để massage tạo cảm giác thư giãn.', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với tinh dầu', '', 'massage-voi-tinh-dau', '', NULL, 63),
(82, 'en', 'english version Massage với tinh dầu', 'english version Massage với tinh dầu là dùng tinh dầu nguyên chất để massage tạo cảm giác thư giãn.', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với tinh dầu', '', 'en-massage-voi-tinh-dau', '', NULL, 63),
(83, 'vn', 'Massage với thảo dược', 'Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với thảo dược', '', 'massage-voi-thao-duoc', '', NULL, 64),
(84, 'en', 'english version Massage với thảo dược', 'english version Với mùi hương dễ chịu của các loại thảo dược như: ngải cứu, sả, gừng, bạch đàn hương…', 'english version ', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Massage với thảo dược', '', 'en-massage-voi-thao-duoc', '', NULL, 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci,
  `user_password` text COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `time` date NOT NULL,
  `ask` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_identify` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_token` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `village` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`, `time`, `ask`, `remember_me_identify`, `remember_me_token`, `ngaysinh`, `city`, `district`, `village`) VALUES
(13, 'Trương quang Tuấn', 'tuan@gmail.com', '012341', 'lâm gia trang12', '$2y$10$NE0jDH6E/M2bYQmUr0s/Tuj0txb/gpwPdUSycgLcB3AzDDL.tqL7y', NULL, 2, '2019-12-07', '$2y$10$4hfJK0JlxX7GOHAGvdum7ub8hBP2OkOFCI1vflQWezbLuxYzHQMhW', 'qzYS4nWLnvcBDEbZS6lp', 'oTusFaYIQyd2RtRFoUsERWaEB76tiP', '1983-10-30', 2, 0, 0),
(58, 'nguyen', 'huyennt3098@gmail.com', '0352612682', NULL, '$2y$10$oOssaEcdC0Oabba8tipd1uumGHQWZi4mV4mXgOlkHYqkQOfkVHia2', NULL, 1, '2020-02-13', '$2y$10$6ZGTs7BSzLmDl4Hvn80UteOyEc6ozVlAazC3v7bgW1pa2q0swfy3e', '', '', '0000-00-00', 0, 0, 0),
(64, 'Phan Hoàng', 'dvn.tungnguyen@gmail.com', '0965252789', '27 Phương Mai', '$2y$10$uPA5R9F4fY9C5pf31lycSO8Tk/6SSIDx0lo9oVHzVmfFGKAGDjYAe', NULL, 2, '2020-02-15', '$2y$10$HOFmSWQXRQ.JtIrfjmfX..HvSA30vbVz4AeNXWxRsBDTx2GHDfJ2a', '', '', '1974-01-01', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `village`
--

CREATE TABLE `village` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `village`
--

INSERT INTO `village` (`id`, `district_id`, `name`) VALUES
(1, 1, 'Kim Mã'),
(2, 1, 'Giảng Võ'),
(5, 5, 'bb'),
(6, 6, 'E');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `city2`
--
ALTER TABLE `city2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `count_down`
--
ALTER TABLE `count_down`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `dai_ly`
--
ALTER TABLE `dai_ly`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district2`
--
ALTER TABLE `district2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `newstag`
--
ALTER TABLE `newstag`
  ADD PRIMARY KEY (`newstag_id`);

--
-- Chỉ mục cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`producttag_id`);

--
-- Chỉ mục cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  ADD PRIMARY KEY (`servicetag_id`);

--
-- Chỉ mục cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT cho bảng `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `city2`
--
ALTER TABLE `city2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `count_down`
--
ALTER TABLE `count_down`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dai_ly`
--
ALTER TABLE `dai_ly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `district2`
--
ALTER TABLE `district2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `newstag`
--
ALTER TABLE `newstag`
  MODIFY `newstag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `newstag_languages`
--
ALTER TABLE `newstag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT cho bảng `producttag`
--
ALTER TABLE `producttag`
  MODIFY `producttag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `producttag_languages`
--
ALTER TABLE `producttag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `servicetag`
--
ALTER TABLE `servicetag`
  MODIFY `servicetag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicetag_languages`
--
ALTER TABLE `servicetag_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `village`
--
ALTER TABLE `village`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
