-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 19, 2019 lúc 10:31 AM
-- Phiên bản máy phục vụ: 5.6.44-cll-lve
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptoptoanquoc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminid` int(11) NOT NULL,
  `adminname` varchar(255) NOT NULL,
  `adminemail` varchar(150) NOT NULL,
  `adminuser` varchar(255) NOT NULL,
  `adminpass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminid`, `adminname`, `adminemail`, `adminuser`, `adminpass`, `level`) VALUES
(1, 'dat', 'dat@gmail.com', 'admindat', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandID` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandID`, `brandName`) VALUES
(4, 'DELL'),
(5, 'HP'),
(6, 'LENOVO'),
(9, 'VAIO'),
(10, 'ACER'),
(11, 'ASUS'),
(12, 'TOSHIBA'),
(13, 'PANASONIC'),
(14, 'KhÃ¡c'),
(15, 'NEC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `ssID` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(200) NOT NULL,
  `soluong` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartID`, `productID`, `ssID`, `productName`, `price`, `soluong`, `image`) VALUES
(1, 29, 'n5oj3uh74hso5ebjpia2ia6jfo', ' THINKPAD E560                                                                                                                                                      ', '5500000', 5, '78a4064724.jpg'),
(2, 31, 'n5oj3uh74hso5ebjpia2ia6jfo', 'THINKPAD E560', '5500000', 10, '9095c551ec.jpg'),
(3, 31, 'n5oj3uh74hso5ebjpia2ia6jfo', 'THINKPAD E560', '5500000', 10, '9095c551ec.jpg'),
(4, 30, 'n5oj3uh74hso5ebjpia2ia6jfo', 'DELL VOSTRO 3560', '3000000', 2, '0d6a626c09.jpg'),
(5, 29, 'n5oj3uh74hso5ebjpia2ia6jfo', ' THINKPAD E560                                                                                                                                                      ', '5500000', 4, '78a4064724.jpg'),
(6, 45, 'gp28ufaa2konfa4r5ltkun9ee9', 'Thinkpad E130', '3000000', 1, '80f4e819e2.jpg'),
(7, 45, 'gp28ufaa2konfa4r5ltkun9ee9', 'Thinkpad E130', '3000000', 1, '80f4e819e2.jpg'),
(8, 45, 'gp28ufaa2konfa4r5ltkun9ee9', 'Thinkpad E130', '3000000', 1, '80f4e819e2.jpg'),
(9, 45, 'gp28ufaa2konfa4r5ltkun9ee9', 'Thinkpad E130', '3000000', 1, '80f4e819e2.jpg'),
(10, 44, 'gp28ufaa2konfa4r5ltkun9ee9', 'ELITEBOOK 840 G2', '4900000', 1, '40f9cad3ae.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catID` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catID`, `catName`) VALUES
(15, 'Tá»« 3 -  5 triá»‡u'),
(16, 'DÆ°á»›i 3 triá»‡u'),
(17, 'Tá»« 5 - 7 triá»‡u'),
(18, 'Tá»« 7 - 10 triá»‡u'),
(19, 'TrÃªn 10 triá»‡u');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_images`
--

CREATE TABLE `tbl_images` (
  `imgID` int(11) NOT NULL,
  `imgName` varchar(255) NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_images`
--

INSERT INTO `tbl_images` (`imgID`, `imgName`, `productID`) VALUES
(560, '11569342086.jpg', 198),
(561, '21569342086.jpg', 198),
(562, '31569342086.jpg', 198),
(563, '11569342394.jpg', 197),
(564, '31569342394.jpg', 197),
(565, '41569342394.jpg', 197),
(566, '11569342442.jpg', 196),
(567, '31569342442.jpg', 196),
(568, '41569342442.jpg', 196),
(569, '11569342472.jpg', 195),
(570, '21569342472.jpg', 195),
(571, '41569342472.jpg', 195),
(572, '11569342501.jpg', 194),
(573, '21569342501.jpg', 194),
(574, '31569342501.jpg', 194),
(575, '71ee17613e9ad9c4808b1569342555.jpg', 193),
(576, '794602f02b0bcc55951a1569342555.jpg', 193),
(577, 'e5efa15d88a66ff836b71569342555.jpg', 193),
(578, '21569342587.jpg', 192),
(579, '31569342587.jpg', 192),
(580, '51569342587.jpg', 192),
(581, '11569342645.jpg', 191),
(582, '21569342645.jpg', 191),
(583, '31569342645.jpg', 191),
(584, '21569342684.jpg', 190),
(585, '31569342684.jpg', 190),
(586, '41569342684.jpg', 190),
(587, '21569342753.jpg', 189),
(588, '31569342753.jpg', 189),
(589, '41569342753.jpg', 189),
(590, '41569342896.jpg', 188),
(591, '51569342896.jpg', 188),
(592, '61569342896.jpg', 188),
(593, '21569342952.jpg', 187),
(594, '31569342952.jpg', 187),
(595, '41569342952.jpg', 187),
(596, '21569343000.jpg', 186),
(597, '31569343000.jpg', 186),
(598, '41569343000.jpg', 186),
(599, '21569343060.jpg', 185),
(600, '81569343060.jpg', 185),
(601, '91569343060.jpg', 185),
(602, '11569343128.jpg', 184),
(603, '31569343128.jpg', 184),
(604, '51569343128.jpg', 184),
(605, '21569343299.jpg', 183),
(606, '31569343299.jpg', 183),
(607, '41569343299.jpg', 183),
(608, '21569343352.jpg', 182),
(609, '31569343352.jpg', 182),
(610, '41569343352.jpg', 182),
(611, '11569343386.jpg', 181),
(612, '21569343386.jpg', 181),
(613, '31569343386.jpg', 181),
(614, '31569343455.jpg', 180),
(615, '61569343455.jpg', 180),
(616, '71569343455.jpg', 180),
(617, '11569343509.jpg', 179),
(618, '21569343509.jpg', 179),
(619, '31569343509.jpg', 179),
(620, '21569343602.jpg', 178),
(621, '31569343602.jpg', 178),
(622, '41569343602.jpg', 178),
(626, '21569343694.jpg', 176),
(627, '31569343694.jpg', 176),
(628, '41569343694.jpg', 176),
(629, '21569343721.jpg', 175),
(630, '31569343721.jpg', 175),
(631, '21569343832.jpg', 174),
(632, '31569343832.jpg', 174),
(633, '41569343832.jpg', 174),
(634, '11569343865.jpg', 173),
(635, '21569343865.jpg', 173),
(636, '31569343865.jpg', 173),
(637, '11569343936.jpg', 171),
(638, '21569343936.jpg', 171),
(639, '31569343936.jpg', 171),
(640, '11569343970.jpg', 169),
(641, '21569343970.jpg', 169),
(642, '41569343970.jpg', 169),
(643, '21569344002.jpg', 168),
(644, '31569344002.jpg', 168),
(645, '41569344002.jpg', 168),
(646, '21569344108.jpg', 164),
(647, '31569344108.jpg', 164),
(648, '41569344108.jpg', 164),
(649, '11569344149.jpg', 162),
(650, '21569344149.jpg', 162),
(651, '41569344149.jpg', 162),
(652, '21569344182.jpg', 161),
(653, '31569344182.jpg', 161),
(654, '41569344182.jpg', 161),
(655, '11569344310.jpg', 160),
(656, '21569344310.jpg', 160),
(657, '31569344310.jpg', 160),
(658, '11569344365.jpg', 159),
(659, '21569344365.jpg', 159),
(660, '31569344365.jpg', 159),
(661, '41569344365.jpg', 159),
(662, '11569344398.jpg', 158),
(663, '21569344398.jpg', 158),
(664, '31569344398.jpg', 158),
(665, '21569344474.jpg', 157),
(666, '31569344474.jpg', 157),
(667, '41569344474.jpg', 157),
(668, '11569344533.jpg', 156),
(669, '21569344533.jpg', 156),
(670, '31569344533.jpg', 156),
(671, '31569344565.jpg', 155),
(672, '51569344565.jpg', 155),
(673, '71569344565.jpg', 155),
(674, '11569344596.jpg', 154),
(675, '21569344596.jpg', 154),
(676, '31569344596.jpg', 154),
(677, '21569344625.jpg', 153),
(678, '31569344625.jpg', 153),
(679, '41569344625.jpg', 153),
(680, '51569344625.jpg', 153),
(681, '11569344655.jpg', 152),
(682, '31569344655.jpg', 152),
(683, '41569344655.jpg', 152),
(684, '21569344693.jpg', 151),
(685, '31569344693.jpg', 151),
(686, '41569344693.jpg', 151),
(687, '21569344814.jpg', 150),
(688, '31569344814.jpg', 150),
(689, '41569344814.jpg', 150),
(690, '21569344881.jpg', 146),
(691, '31569344881.jpg', 146),
(692, '41569344881.jpg', 146),
(693, '21569344940.jpg', 139),
(694, '31569344940.jpg', 139),
(695, '41569344940.jpg', 139),
(696, '21569345006.jpg', 138),
(697, '31569345006.jpg', 138),
(698, '41569345006.jpg', 138),
(699, '11569345070.jpg', 134),
(700, '21569345070.jpg', 134),
(701, '41569345070.jpg', 134),
(702, '21569345101.jpg', 132),
(703, '31569345101.jpg', 132),
(704, '41569345101.jpg', 132),
(705, '21569345163.jpg', 127),
(706, '31569345163.jpg', 127),
(707, '41569345163.jpg', 127),
(708, '21569345194.jpg', 126),
(709, '31569345194.jpg', 126),
(710, '41569345194.jpg', 126),
(711, '21569345249.jpg', 124),
(712, '31569345249.jpg', 124),
(713, '41569345249.jpg', 124),
(714, '21569345273.jpg', 123),
(715, '31569345273.jpg', 123),
(716, '41569345273.jpg', 123),
(717, '11569345311.jpg', 122),
(718, '31569345311.jpg', 122),
(719, '41569345311.jpg', 122),
(720, '21569345347.jpg', 120),
(721, '31569345347.jpg', 120),
(722, '71569345347.jpg', 120),
(723, '21569345380.jpg', 119),
(724, '31569345380.jpg', 119),
(725, '41569345380.jpg', 119),
(726, '21569345423.jpg', 118),
(727, '31569345423.jpg', 118),
(728, '41569345423.jpg', 118),
(729, '21569345454.jpg', 116),
(730, '31569345454.jpg', 116),
(731, '41569345454.jpg', 116),
(732, '21569345500.jpg', 114),
(733, '31569345500.jpg', 114),
(734, '11569345541.jpg', 113),
(735, '41569345541.jpg', 113),
(736, '71569345541.jpg', 113),
(737, '11569345578.jpg', 110),
(738, '21569345578.jpg', 110),
(739, '31569345578.jpg', 110),
(740, '21569345664.jpg', 108),
(741, '31569345664.jpg', 108),
(742, '41569345664.jpg', 108),
(743, '11569345729.jpg', 99),
(744, '21569345729.jpg', 99),
(745, '11569347290.jpg', 203),
(746, '21569347290.jpg', 203),
(747, '31569347290.jpg', 203),
(748, '11569347302.jpg', 202),
(749, '21569347302.jpg', 202),
(750, '41569347302.jpg', 202),
(751, '21569347313.jpg', 201),
(752, '31569347313.jpg', 201),
(753, '41569347313.jpg', 201),
(754, '11569347325.jpg', 200),
(755, '21569347325.jpg', 200),
(756, '31569347325.jpg', 200),
(757, '11569348106.jpg', 177),
(758, '21569348106.jpg', 177),
(759, '31569348106.jpg', 177),
(760, '11569426861.jpg', 204),
(761, '21569426861.jpg', 204),
(762, '31569426861.jpg', 204),
(763, '21569427073.jpg', 205),
(764, '31569427073.jpg', 205),
(765, '41569427073.jpg', 205),
(766, '21569427265.jpg', 206),
(767, '31569427265.jpg', 206),
(768, '41569427265.jpg', 206),
(769, '21569427546.jpg', 207),
(770, '31569427546.jpg', 207),
(771, '41569427546.jpg', 207),
(772, '11569427778.jpg', 208),
(773, '31569427778.jpg', 208),
(774, '41569427778.jpg', 208),
(775, '21569477405.jpg', 209),
(776, '31569477405.jpg', 209),
(777, '41569477405.jpg', 209),
(778, '21569498883.jpg', 210),
(779, '31569498883.jpg', 210),
(780, '41569498883.jpg', 210),
(781, '21569590484.jpg', 211),
(782, '31569590484.jpg', 211),
(783, '41569590484.jpg', 211),
(787, '21569591009.jpg', 212),
(788, '31569591009.jpg', 212),
(789, '41569591009.jpg', 212),
(790, '21569591078.jpg', 213),
(791, '31569591078.jpg', 213),
(792, '41569591078.jpg', 213),
(793, '21569679054.jpg', 214),
(794, '31569679054.jpg', 214),
(795, '41569679054.jpg', 214),
(796, '21569763074.jpg', 215),
(797, '31569763074.jpg', 215),
(798, '41569763074.jpg', 215),
(799, '21569928703.jpg', 216),
(800, '31569928703.jpg', 216),
(801, '41569928703.jpg', 216),
(802, '21569928898.jpg', 217),
(803, '31569928898.jpg', 217),
(804, '41569928898.jpg', 217),
(805, '21570099350.jpg', 218),
(806, '31570099350.jpg', 218),
(807, '41570099350.jpg', 218),
(808, '21570099411.jpg', 219),
(809, '31570099411.jpg', 219),
(810, '41570099411.jpg', 219),
(811, '21570358884.jpg', 220),
(812, '31570358884.jpg', 220),
(813, '41570358884.jpg', 220),
(814, '21570359152.jpg', 221),
(815, '31570359152.jpg', 221),
(816, '41570359152.jpg', 221),
(817, '21570359400.jpg', 223),
(818, '31570359400.jpg', 223),
(819, '41570359400.jpg', 223),
(820, '51570359400.jpg', 223),
(821, '21570509438.jpg', 224),
(822, '31570509438.jpg', 224),
(823, '41570509438.jpg', 224),
(825, '31570666390.jpg', 226),
(826, '41570666390.jpg', 226),
(827, '11570666460.jpg', 226),
(828, '1326c28cb9fb5fa506ea1570698943.jpg', 227),
(829, 'ac72a2cdd9ba3fe466ab1570698943.jpg', 227),
(830, 'd3dae0589b2f7d71243e1570698943.jpg', 227),
(831, '9d513d275051b60fef401570705677.jpg', 228),
(832, '59ac88c7e5b103ef5aa01570705677.jpg', 228),
(833, '69995ee8339ed5c08c8f1570705677.jpg', 228),
(834, '291af96669108f4ed6011570709258.jpg', 229),
(835, '418af9ca69bc8fe2d6ad1570709258.jpg', 229),
(836, 'b72f0c559c237a7d23321570709260.jpg', 229),
(837, '21570719443.jpg', 230),
(838, '31570719443.jpg', 230),
(839, '41570719443.jpg', 230),
(840, '21570811171.jpg', 231),
(841, '31570811171.jpg', 231),
(842, '41570811171.jpg', 231),
(843, '21571242765.jpg', 233),
(844, '31571242765.jpg', 233),
(845, '41571242765.jpg', 233),
(846, '21571242811.jpg', 234),
(847, '31571242811.jpg', 234),
(848, '41571242811.jpg', 234),
(849, '21571583198.jpg', 236),
(850, '31571583198.jpg', 236),
(851, '41571583198.jpg', 236),
(852, '21571583210.jpg', 235),
(853, '31571583210.jpg', 235),
(854, '41571583210.jpg', 235),
(855, '21571653797.jpg', 237),
(856, '31571653797.jpg', 237),
(857, '41571653797.jpg', 237),
(858, '21571761661.jpg', 238),
(859, '31571761661.jpg', 238),
(860, '41571761661.jpg', 238),
(861, '21571846599.jpg', 239),
(862, '31571846599.jpg', 239),
(863, '51571846599.jpg', 239),
(864, '21572278526.jpg', 240),
(865, '31572278526.jpg', 240),
(866, '41572278526.jpg', 240),
(867, '21572278712.jpg', 241),
(868, '31572278712.jpg', 241),
(869, '41572278712.jpg', 241),
(870, '21572341066.jpg', 242),
(871, '31572341066.jpg', 242),
(872, '21572526821.jpg', 243),
(873, '31572526821.jpg', 243),
(874, '21572527075.jpg', 244),
(875, '31572527075.jpg', 244),
(876, '21572527286.jpg', 245),
(877, '31572527286.jpg', 245),
(878, '61572527514.jpg', 246),
(879, '71572527514.jpg', 246),
(880, '61572527707.jpg', 247),
(881, '71572527707.jpg', 247),
(882, '61572620402.jpg', 248),
(883, '71572620402.jpg', 248),
(884, '61572883952.jpg', 249),
(885, '71572883952.jpg', 249),
(886, '21572884130.jpg', 250),
(887, '31572884130.jpg', 250),
(888, '21572956258.jpg', 251),
(889, '31572956258.jpg', 251),
(890, '21573231141.jpg', 252),
(891, '31573231141.jpg', 252),
(892, '21573315589.jpg', 253),
(893, '31573315589.jpg', 253),
(894, '21573477151.jpg', 254),
(895, '31573477151.jpg', 254),
(896, '41573477151.jpg', 254),
(897, '21573477486.jpg', 255),
(898, '31573477486.jpg', 255),
(899, '21573477753.jpg', 256),
(900, '31573477753.jpg', 256),
(901, '21573477978.jpg', 257),
(902, '31573477978.jpg', 257),
(903, '51573478244.jpg', 258),
(904, '71573478244.jpg', 258),
(905, '21573478414.jpg', 259),
(906, '31573478414.jpg', 259),
(907, '51573478640.jpg', 260),
(908, '61573478640.jpg', 260),
(909, '21573567836.jpg', 261),
(910, '31573567836.jpg', 261),
(911, '21573660250.jpg', 262),
(912, '31573660250.jpg', 262),
(913, '61573660542.jpg', 263),
(914, '71573660542.jpg', 263),
(915, '61573737517.jpg', 264),
(916, '71573737517.jpg', 264),
(917, '21573833302.jpg', 265),
(918, '31573833302.jpg', 265),
(919, '21573933462.jpg', 266),
(920, '31573933462.jpg', 266),
(921, '61573933824.jpg', 267),
(922, '71573933824.jpg', 267),
(923, '21573934057.jpg', 268),
(924, '31573934057.jpg', 268),
(925, '21574091982.jpg', 269),
(926, '31574091982.jpg', 269),
(927, '21574092158.jpg', 270),
(928, '31574092158.jpg', 270),
(929, '21574092338.jpg', 271),
(930, '41574092338.jpg', 271),
(931, '51574092338.jpg', 271),
(932, '51574093016.jpg', 272),
(933, '61574093016.jpg', 272),
(934, '21574186929.jpg', 273),
(935, '31574186929.jpg', 273),
(936, '21574187470.jpg', 274),
(937, '31574187470.jpg', 274),
(938, '51574268464.jpg', 275),
(939, '61574268464.jpg', 275),
(940, '21574347067.jpg', 276),
(941, '31574347067.jpg', 276),
(942, '41574347067.jpg', 276),
(943, '51574347067.jpg', 276),
(944, '51574347289.jpg', 277),
(945, '71574347289.jpg', 277),
(946, '21574347595.jpg', 278),
(947, '31574347595.jpg', 278),
(948, '21574516099.jpg', 279),
(949, '31574516099.jpg', 279),
(950, '21574516383.jpg', 280),
(951, '31574516383.jpg', 280),
(952, '21574875274.jpg', 281),
(953, '31574875274.jpg', 281),
(954, '21575094003.jpg', 282),
(955, '31575094003.jpg', 282),
(956, '21575300791.jpg', 284),
(957, '31575300791.jpg', 284),
(958, '41575300791.jpg', 284),
(959, '71575444979.jpg', 285),
(960, '81575444979.jpg', 285),
(961, '21575643859.jpg', 286),
(962, '31575643860.jpg', 286),
(963, '41575643860.jpg', 286),
(964, '61575644140.jpg', 287),
(965, '71575644140.jpg', 287),
(966, '51575987357.jpg', 289),
(967, '61575987357.jpg', 289);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catID` int(11) NOT NULL,
  `brandID` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `price_old` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `ghiChu` varchar(255) NOT NULL,
  `moTaNgan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productID`, `productName`, `catID`, `brandID`, `product_desc`, `type`, `price`, `price_old`, `image`, `ghiChu`, `moTaNgan`) VALUES
(108, 'Dell Latitude E5540', 15, 4, '<p>- M&agrave;n h&igrave;nh 15.6 IN HD</p>\r\n<p>- INTEL CORE I3 4010U</p>\r\n<p>- RAM 4 GB DRR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320G (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#dell #latitude #e5540&nbsp;</p>', 0, '4200000', '4400000', '4aac05db62.jpg', '', '<p><span>15.6\" CORE I3 4010U RAM 4G HDD 320G</span></p>'),
(110, 'Dell Vostro 2520', 15, 4, '<p>- M&agrave;n h&igrave;nh 15.6 inch HD</p>\r\n<p>- Intel Core i5 3210M</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 &ndash; 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #dell #vostro #dell2520 #v2520 #laptopdell #vostro2520 #laptopgi&aacute;ráº» #laptopcÅ© #laptopcÆ¡báº£n #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p</p>', 1, '3600000', '3800000', 'bb1eb0e03b.jpg', '', '<p><span>15.6\" CORE I5 3210M RAM 4G HDD 320G</span></p>'),
(113, 'Lenovo ThinkPad X240', 15, 6, '<p>- M&agrave;n h&igrave;nh 12.5 inch HD</p>\r\n<p>- Intel Core i5 4210U</p>\r\n<p>- Ram 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 500 GB</p>\r\n<p>- Pin tá»« 2 &ndash; 4 giá», Khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#lenovo #thinkpad #x240</p>', 1, '4300000', '4500000', '4a77f305e9.jpg', '', '<p><span>12.5\" CORE I5 4300U 4G HDD 500G</span></p>'),
(118, 'DELL Precision M4500', 15, 4, '<p>- M&agrave;n h&igrave;nh 15.6 inch FULL HD</p>\r\n<p>- Intel Core i7 Q840</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- NVIDIA Quadro FX 880M</p>\r\n<p>- Pin tá»« 1 &ndash; 2 giá», khá»‘i lÆ°á»£ng 2.7 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #dell #dellm4500 #m4500 #precision #dellworkstation #laptopgi&aacute;ráº» #laptopcÅ© #laptopdoanhnghiá»‡p #m&aacute;ytráº¡m #workstation</p>', 1, '4700000', '', 'c1bcda28e6.jpg', '', '<p><span>15.6\" FHD CORE I7 Q840 4G SSD 128G CARD QUADRO FX 880M</span></p>'),
(119, 'HP ProBook 4540S', 15, 5, '<p>- M&agrave;n h&igrave;nh 15.6 inch HD</p>\r\n<p>- Intel Core i5 3230M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 &ndash; 3 giá», khá»‘i lÆ°á»£ng 2.5 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #hp #hp4540s #4540s #probook #probook4540s #laptopgi&aacute;ráº» #laptopcÅ© #laptopvÄƒnph&ograve;ng</p>', 1, '3800000', '', '03217cc30b.jpg', '', '<p><span>15.6\" CORE I5 3230M RAM 4G HDD 320G</span></p>'),
(122, 'Dell Latitude E5550', 15, 4, '<p>- M&agrave;n h&igrave;nh 15.6&rdquo; HD</p>\r\n<p>- Intel CORE i3 5010U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng 500 GB HDD</p>\r\n<p>- PIN tá»« 1 &ndash; 4 giá», khá»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #dell #laptope5550 #e5550 #latitude #laptopgi&aacute;ráº» #laptopcÅ© #laptopcÆ¡báº£n #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p #laptopdoanhnh&acirc;n</p>', 1, '5000000', '', '39e4251bf4.jpg', '', '<p><span>15.6\" HD CORE I3 5010U RAM 4G HDD 500G</span></p>'),
(123, 'Dell Latitude E5530', 15, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- CORE I5 3320M</p>\r\n<p>- RAM 4 GB DRR3</p>\r\n<p>- á»” cá»©ng HDD 320G</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>', 1, '3800000', '', 'd7bceb270c.jpg', '', '<p><span>15.6\" CORE I5 3320M RAM 4G HDD 320G</span></p>'),
(124, 'HP ProBook 6560B', 15, 5, '<p>- M&agrave;n h&igrave;nh 15.6&rdquo; HD</p>\r\n<p>- CORE I5 2540M</p>\r\n<p>- RAM 4 GB</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 &ndash; 3 giá», khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #hp #hp6570b #6570b #probook #probook6570b #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p #laptopcÆ¡báº£n #laptopgi&aacute;ráº»</p>', 1, '3500000', '', 'caa44824a7.jpg', '', '<p><span>15.6\" CORE I5 2540M RAM 4G HDD 320G</span></p>'),
(126, 'HP ProBook 450 G1', 15, 5, '<p>- M&agrave;n h&igrave;nh 15.6&rdquo; HD</p>\r\n<p>- Intel CORE I5 4200M</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1- 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>', 1, '4800000', '', 'a6868ab1ff.jpg', '', '<p><span>15.6\" CORE I5 4200M RAM 4G HDD 320G</span></p>'),
(127, 'Dell Latitude E7240', 15, 4, '<p>- M&agrave;n h&igrave;nh 12.5 inch HD</p>\r\n<p>- Intel Core i5 4300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 128G</p>\r\n<p>- Pin tá»« 2 &ndash; 4 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #dell #latitude #laptope7240 #e7240 #laptopdell #latitude7240 #laptopgi&aacute;ráº» #laptopcÅ© #laptopcÆ¡báº£n #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p #laptopdoanhnh&acirc;n</p>', 1, '4900000', '', 'd8f1d861fc.jpg', '', '<p><span>12.5\" CORE I5 4300U 4G SSD 128G</span></p>'),
(132, 'Lenovo ThinkPad X250', 17, 6, '<p>- M&agrave;n h&igrave;nh 12.5&rdquo; HD</p>\r\n<p>- Intel Core i5 5300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 500 GB</p>\r\n<p>- Pin tá»« 2 &ndash; 4 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#lenovo #x250 #thinkpad</p>', 0, '5200000', '5500000', '9c937b0f70.jpg', '', '<p><span>12.5\" CORE I5 5300U RAM 4G HDD 500G</span></p>'),
(134, 'Panasonic CF-NX4', 17, 13, '<p>- M&agrave;n h&igrave;nh 12.5&rdquo; HD PLUS</p>\r\n<p>- Intel Core i5 5300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320</p>\r\n<p>- Pin sá»­ dá»¥ng 4 - 6 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>', 1, '5500000', '', '8e152316d9.jpg', '', '<p><span>12.5\" HD PLUS CORE I5 5300U RAM 4G HDD 320G</span></p>'),
(138, 'HP EliteBook 820 G3', 17, 6, '<p>- M&agrave;n h&igrave;nh 12.5 inch HD</p>\r\n<p>- Intel Core i5 6200U</p>\r\n<p>- RAM 4 GB DDR4</p>\r\n<p>- á»” cá»©ng HDD 500 GB</p>\r\n<p>- Pin tá»« 2 &ndash; 5 giá», khá»‘i lÆ°á»£ng 1.3kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #hp #hp820g3 #820g3 #elitebook #elitebook820g3 #laptopgi&aacute;ráº» #laptopcÅ© #laptopvÄƒnph&ograve;ng</p>', 0, '6900000', '7200000', '69880217e0.jpg', '', '<p><span>12.5\" CORE I5 6200U RAM 4G HDD 320G</span></p>'),
(139, 'HP EliteBook 840 G2', 17, 5, '<p>- M&agrave;n h&igrave;nh 14&rdquo; HD PLUS</p>\r\n<p>- Intel Core i5 5300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 &ndash; 4 giá», khá»‘i lÆ°á»£ng 1.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #hp #hp840g2 #830g2 #elitebook #elitebook840g2 #laptopgi&aacute;ráº» #laptopcÅ© #laptopvÄƒnph&ograve;ng</p>', 1, '5700000', '', 'ed07c4e960.jpg', '', '<p><span>14\" HD PLUS CORE I5 5300U 4G HDD 320G KEY ENG</span></p>'),
(146, 'Toshiba Portege Z30-C ', 17, 12, '<p>- M&agrave;n h&igrave;nh h&igrave;nh 13.3 inch HD</p>\r\n<p>- Intel Core i5 6300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin tá»« 3 &ndash; 6 giá», khá»‘i lÆ°á»£ng 1.2 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #toshiba #toshibaz30 #z30c #portege #portegez30 #laptopgi&aacute;ráº» #laptopcÅ© #laptopcÆ¡báº£n #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p #laptopdoanhnh&acirc;n</p>', 0, '6700000', '7000000', 'f75d37d979.jpg', '', '<p>13.3&rdquo; Core i5 6300U 4G SSD 128G</p>'),
(150, 'Lenovo ThinkPad X260', 18, 6, '<p>- M&agrave;n h&igrave;nh 12.5 inch HD</p>\r\n<p>- Intel Core i5 6300U</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng HDD 500 GB</p>\r\n<p>- Pin tá»« 2 &ndash; 6 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #lenovo #laptopX260 #X260 #thinkpad #thinkpadX260 #thinkpad #laptopgi&aacute;ráº» #laptopcÅ© #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p</p>', 0, '7500000', '', '65b6271ca4.jpg', '', '<p><span>12.5\" CORE I5 6300U 8G HDD 500G</span></p>'),
(151, 'HP ZBook 14 G2', 18, 5, '<p>- M&agrave;n h&igrave;nh 14\" IPS FHD</p>\r\n<p>- CORE I7 5600U</p>\r\n<p>- RAM 8 GB</p>\r\n<p>- á»” cá»©ng SSD 120G</p>\r\n<p>- Pin tá»« 1 - 4 giá», khá»‘i lÆ°á»£ng 1.7 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>', 0, '7700000', '8500000', '122b0c4ac9.jpg', '', '<p><span>14\" IPS FHD CORE I7 5600U 8G SSD 120G FIREPRO M4150</span></p>'),
(152, 'Panasonic CF-MX4', 18, 13, '<p>- M&agrave;n h&igrave;nh 12.5\" IPS TOUCH FHD</p>\r\n<p>- Intel Core i5 5300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin sá»­ dá»¥ng 2 &ndash; 4 giá», khá»‘i lÆ°á»£ng 1.7 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>', 1, '7900000', '', 'd12d4bebdd.jpg', '', '<p><span>12.5\" IPS FHD TOUCH CORE I5 5300U 4G SSD 128G</span></p>'),
(153, 'Lenovo ThinkPad P50', 19, 6, '<p>- M&agrave;n h&igrave;nh 15.6&rdquo; IPS FHD</p>\r\n<p>- Intel Core i7 6700HQ</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 500 GB</p>\r\n<p>- CARD QUADRO M1000M</p>\r\n<p>- Khá»‘i lÆ°á»£ng 2.7 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #lenovo #laptopP50 #P50 #thinkpad #laptopgi&aacute;ráº» #laptopcÅ© #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p #laptopÄ‘á»“há»a #workstation</p>', 1, '21000000', '', '042ec7813e.jpg', 'Like New', '<p><span>15.6\" IPS FHD CORE I7 6700HQ 8G SSD 500G CARD QUADRO M1000M</span></p>'),
(156, 'Dell Precsion 7510', 19, 4, '<p>- M&agrave;n h&igrave;nh 15.6&rdquo; IPS FULL HD</p>\r\n<p>- Intel Core i7 6820HQ</p>\r\n<p>- RAM 16G DDR4</p>\r\n<p>- á»” cá»©ng SSD 512G</p>\r\n<p>- Card rá»i QUADRO M1000M</p>\r\n<p>- Khá»‘i lÆ°á»£ng 2.8 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #dell #laptop7510 #precision7510 #precision #laptopm&aacute;ytráº¡m #laptopcÅ© #laptopÄ‘á»“há»a #laptopvÄƒnph&ograve;ng</p>', 1, '18200000', '18500000', '9d0b67d8fd.jpg', '', '<p><span>15.6\" IPS FHD CORE I7 6820HQ 16G SSD 512G CARD QUADRO M1000M</span></p>'),
(157, 'Dell Latitude E5570', 18, 4, '<p>- M&agrave;n h&igrave;nh 15.6 IN HD</p>\r\n<p>- Intel CORE i5 6300U</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin tá»« 1 &ndash; 4 giá», Kká»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #dell #laptope5570 #e5570 #latitude #latitude5570 #laptopgi&aacute;ráº» #laptopcÅ© #laptopcÆ¡báº£n #laptopvÄƒnph&ograve;ng</p>', 0, '8600000', '8900000', '69b2a30e25.jpg', '', '<p><span>15.6\" CORE I5 6300U RAM 8G SSD 128G</span></p>'),
(158, 'Lenovo ThinkPad L580', 19, 6, '<p>- M&agrave;n h&igrave;nh 15.6&rdquo; IPS FULL HD</p>\r\n<p>- Intel Core i5 8250U</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Khá»‘i lÆ°á»£ng 2.0 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #lenovo #laptopL580 #L580 #thinkpad #laptopgi&aacute;ráº» #laptopcÅ© #laptopvÄƒnph&ograve;ng #laptopdoanhnghiá»‡p</p>', 1, '12500000', '12900000', 'f40fcd8422.jpg', '', '<p><span>15.6&rdquo; IPS FHD CORE I5 8250U 8G SSD 256G</span></p>'),
(159, 'HP ZBook Studio 15 G3', 19, 5, '<p>- M&agrave;n h&igrave;nh 15.6&rdquo; 4K DreamColor</p>\r\n<p>- Intel Core i7 6820HQ (2.7 &ndash; up to 3.6 GHz)</p>\r\n<p>- RAM 16 GB DDR4 (max 64 GB)</p>\r\n<p>- á»” cá»©ng SSD M.2 256 GB</p>\r\n<p>- Card rá»i NVIDIA Quadro M1000M</p>\r\n<p>- Khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #hp #hpzbookg3 #zbook15g3 #zbook #laptopgi&aacute;ráº» #laptopcÅ© #m&aacute;ytráº¡m #workstation #laptopÄ‘á»“há»a #laptopdoanhnghiá»‡p #hpstudio</p>', 1, '21500000', '', 'cca170d7bd.jpg', '', '<p><span>15.6\" IPS 4K CORE I7 6820HQ RAM 16G SSD 256G CARD QUADRO M1000</span></p>'),
(161, 'Lenovo ThinkPad X270', 19, 6, '<p>- M&agrave;n h&igrave;nh 12.5 inch HD</p>\r\n<p>- Intel Core i5 7300U</p>\r\n<p>- RAM 8 GB DDR4 (N&Acirc;NG Cáº¤P 150K/GB)</p>\r\n<p>- á»” cá»©ng HDD 500 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 &ndash; 6 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#lenovo #thinkpad #x270</p>', 0, '11700000', '12000000', 'd69aa9b483.jpg', '', '<p><span>12.5\" CORE I5 7300U RAM 8G HDD 500G</span></p>'),
(162, 'HP ZBook 15 G2', 19, 5, '<p>- M&agrave;n h&igrave;nh 15.6 inch IPS FULL HD</p>\r\n<p>- Intel Core i7 4710MQ</p>\r\n<p>- RAM 16 GB DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng SSD 256 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Card rá»i NVIDIA Quadro K1100M</p>\r\n<p>- Khá»‘i lÆ°á»£ng 2.9 kg, Pin tá»« 1 &ndash; 2 giá»</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#hp #zbook #15g2</p>', 1, '10500000', '', '2a03f56302.jpg', '', '<p><span>15.6\" IPS FHD CORE I7 4710MQ RAM 16G SSD 256G CARD QUADRO K1100M</span></p>'),
(168, 'Nec VesaPro VB-G', 15, 15, '<p>- M&agrave;n h&igrave;nh 12.1 inch HD</p>\r\n<p>- Intel Core i5 3230M</p>\r\n<p>- RAM 4 GB RAM DDR3</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- LÆ°u &yacute;: HÆ° pin</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>', 2, '3200000', '3400000', 'dea8ece693.jpg', 'Xáº£ HÃ ng', '<p><span>12.5\" HD CORE I5 3320M 4G SSD 128G</span></p>'),
(169, 'Dell Latitude E7270', 18, 4, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- Intel CORE I5 6300U</p>\r\n<p>- RAM 4 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 128G</p>\r\n<p>- Pin tá»« 2 &ndash; 5 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------</p>\r\n<p>#laptop #dell #latitude #laptope7270 #e7270 #laptopdell #latitude7270 #laptopgi&aacute;ráº» #laptopcÅ© #laptopcÆ¡báº£n #laptopvÄƒnph&ograve;ng</p>', 0, '7200000', '7500000', '4c47a99c47.jpg', '', '<p><span>12.5\" CORE I5 6300U RAM 4G SSD 128G</span></p>'),
(173, 'Dell Latitude E7480 ', 19, 4, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- Intel Core i7 7600U</p>\r\n<p>- RAM 8G DDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Pin c&ograve;n nhÆ° má»›i, khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#latitude #e7280 #laptope7280 #laptopdoanhnghiá»‡p #delle7280</p>', 1, '12500000', '', 'af3ad02ffd.jpg', '', '<p>14\" CORE I7 7600U RAM 8G SSD 256G&nbsp;</p>'),
(174, 'HP ZBook 15 G1', 19, 5, '<p>- M&agrave;n h&igrave;nh 15.6\" FHD</p>\r\n<p>- Intel Core i7 4800MQ</p>\r\n<p>- RAM 8G DDR3L</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- CARD QUADRO K2100M</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.9 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>', 1, '10200000', '', '3ca597b73f.jpg', '', '<p>15.6\" FHD CORE I7 4800MQ 8G SSD 128G CARD QUADRO K2100M</p>'),
(176, 'HP ZBook 14 G1 ', 18, 5, '<p>- M&agrave;n h&igrave;nh 14\" IPS FHD</p>\r\n<p>- Intel Core i7 4600U</p>\r\n<p>- RAM 8G DDR3L</p>\r\n<p>- á»” cá»©ng SSD 360 GB</p>\r\n<p>- Card rá»i FIREPRO M4100</p>\r\n<p>- Pin 2 - 4 giá», khá»‘i lÆ°á»£ng 1.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #zbook #zbook14g1</p>', 1, '8500000', '', '2ce8e5fd8e.jpg', '', '<p>14\" IPS FHD CORE I7 4600U RAM 8G SSD 360G FIREPRO M4100&nbsp;</p>'),
(177, 'Dell Latitude E7450', 17, 4, '<p>- M&agrave;n h&igrave;nh 14 IN HD</p>\r\n<p>- Intel Core i5 5300U</p>\r\n<p>- RAM 4G DDR3L</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 1.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #latitude #e7450</p>', 2, '6200000', '6500000', 'af44029e43.jpg', '', '<p>14\" CORE I5 5300U RAM 4G SSD 128G</p>'),
(179, 'Dell Latitude E6540 ', 17, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- Intel Core i5 4300M</p>\r\n<p>- RAM 4G DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 3.0 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #latitude #e6540</p>', 1, '5500000', '', '16e21240f1.jpg', '', '<p>15.6\" CORE I5 4300M RAM 4G HDD 320G&nbsp;</p>'),
(180, 'Lenovo ThinkPad E540 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- Intel Core i3 4000M</p>\r\n<p>- RAM 4G DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #e540</p>', 1, '4400000', '', '52f8b6daeb.jpg', '', '<p>15.6\" CORE I3 4000M RAM 4G HDD 320G KEY JP</p>'),
(181, 'Lenovo ThinkPad T430 ', 17, 6, '<p>- M&agrave;n h&igrave;nh 14\" HD PLUS</p>\r\n<p>- Intel Core i7 3720QM</p>\r\n<p>- RAM 8G DDR3</p>\r\n<p>- á»” cá»©ng SSD 120 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.2 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>#lenovo #thinkpad #T430</p>', 1, '6500000', '', 'b0e28af614.jpg', '', '<p>14\" HD PLUS CORE I7 3720MQ 8G SSD 120G NVS 5400</p>'),
(182, 'Lenovo ThinkPad T550 ', 17, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- Intel Core i5 5300U</p>\r\n<p>- RAM 4G DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 500 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin 2 - 4 giá», khá»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #T550</p>', 0, '6500000', '7000000', '65ace65f8b.jpg', '', '<p>15.6\" CORE I5 5300U RAM 4G HDD 500G&nbsp;</p>'),
(183, 'Panasonic CF-LX5 ', 18, 13, '<p>- M&agrave;n h&igrave;nh 14\" IPS FHD</p>\r\n<p>- Intel Core i5 6200U</p>\r\n<p>- RAM 4G</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 3 - 5 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#panasonic #cflx5</p>', 1, '8500000', '8900000', '92545c4806.jpg', '', '<p>14\" IPS FHD CORE I5 6200U RAM 4G HDD 320G&nbsp;</p>'),
(184, 'Dell Precision M4800 ', 19, 4, '<p><strong>- M&agrave;n h&igrave;nh 15.6\" FHD</strong></p>\r\n<p><strong>- Intel Core i7 4700MQ</strong></p>\r\n<p><strong>- RAM 8G DDR3L</strong></p>\r\n<p><strong>- á»” cá»©ng SSD 256 GB</strong></p>\r\n<p><strong>- Card rá»i QUADRO K1100M</strong></p>\r\n<p><strong>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.9 kg</strong></p>\r\n<p><strong>#dell #precision #M4800</strong></p>', 0, '11000000', '11800000', 'fb57599a46.jpg', '', '<p><strong>15.6 FHD CORE I7 4700MQ RAM 8G SSD 256G QUADRO K1100M&nbsp;</strong></p>'),
(186, 'Lenovo ThinkPad X240s ', 17, 6, '<p>- M&agrave;n h&igrave;nh 12.5\" IPS TOUCH</p>\r\n<p>- Intel Core i5 4210U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 2 - 3 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #x240s #touch</p>', 1, '5500000', '', '491c48205b.jpg', '', '<p>12.5\" IPS TOUCH CORE I5 4210U 4G HDD 320G&nbsp;</p>'),
(187, 'HP ProBook 450 G2 ', 15, 5, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- Intel Core i5 4210U</p>\r\n<p><span>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB) </span></p>\r\n<p><span>- á»” cá»©ng HDD 500 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</span></p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #probook #450g2</p>', 0, '4500000', '5000000', 'f4f5a9ecdf.jpg', '', '<p>15.6\" CORE I5 4210U RAM 4G HDD 500G&nbsp;</p>'),
(188, 'Dell Vostro 3560 ', 15, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- Intel Core i5 3210M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #vostro3560</p>', 0, '3600000', '3800000', 'fd2971a025.jpg', '', '<p>15.6\" CORE I5 3210M RAM 4G HDD 320G&nbsp;</p>'),
(189, 'HP ProBook 650 G1 ', 17, 5, '<p>- M&agrave;n h&igrave;nh 15.6\" FHD</p>\r\n<p>- Intel Core i5 4300MM</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.5 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #probook #650g1</p>', 1, '5100000', '', '60ced26fcc.jpg', '', '<p>15.6\" FHD CORE I5 4300M RAM 4G HDD 320G&nbsp;</p>'),
(190, 'Acer TravelMate P453 ', 15, 10, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- Intel Core i5 3230M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#acer #travelmate #p453</p>', 0, '3600000', '3800000', 'ae3525b790.jpg', '', '<p>15.6\" CORE I5 3230M RAM 4G HDD 320G&nbsp;</p>'),
(191, 'Dell Latitude E3340 ', 15, 4, '<p>- M&agrave;n h&igrave;nh 13.3\" HD</p>\r\n<p>- Intel Core i5 4210U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 1.8 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #latitude #e3340</p>\r\n<p>&nbsp;</p>', 1, '4700000', '', '4bb7655e36.jpg', '', '<p>13.3\" CORE I5 4210U RAM 4G HDD 320G&nbsp;</p>'),
(192, 'HP ProBook 4740S ', 15, 5, '<p>- M&agrave;n h&igrave;nh 17.3\" HD PLUS</p>\r\n<p>- Intel Core i5 3210M</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Card rá»i AMD 7650M</p>\r\n<p>- Pin 1 - 2 giá», khá»‘i lÆ°á»£ng 3.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #probook #4740s</p>', 1, '4500000', '', '5af4a7a20a.jpg', '', '<p>17.3\" HD PLUS CORE I5 3210M RAM 4G HDD 320G AMD 7650M&nbsp;</p>'),
(194, 'Dell Latitude E7440 ', 17, 4, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- Intel Core i5 4310U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 500 GB</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 1.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #latitude #e7440</p>', 1, '5400000', '', '9b6a8c3699.jpg', '', '<p>14\" CORE I5 4310U RAM 4G HDD 500G&nbsp;</p>'),
(195, 'Panasonic CF-MX3 ', 15, 13, '<p>- M&agrave;n h&igrave;nh 12.5\" IPS FHD</p>\r\n<p>- Intel Core i5 4310U</p>\r\n<p>- RAM 8 GB</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Pin 2 - 4 giá», khá»‘i lÆ°á»£ng 1.2 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#panasonic #cfmx3</p>', 1, '5800000', '', '740b4d1398.jpg', '', '<p>12.5\" IPS FHD CORE I5 4310U RAM 8G SSD 256G</p>'),
(197, 'HP EliteBook 2170p', 15, 5, '<p>- M&agrave;n h&igrave;nh 11.6\" HD<br />- Intel Core i7 3667U<br />- RAM 4 GB DDR3L<br />- á»” cá»©ng SSD 120 GB<br />- Pin 1 giá», khá»‘i lÆ°á»£ng 1.4 kg<br />- Windows báº£n quyá»n theo m&aacute;y<br />#hp #elitebook #2170p</p>', 1, '4500000', '', '2c380ad6ef.jpg', '', '<p>11.6\" CORE I7 3667U RAM 4G SSD 120G</p>'),
(198, 'Lenovo G500 ', 16, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- CELERON 1005M</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin 1 - 2 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #g500</p>', 0, '2800000', '3000000', 'ef54b90bfc.jpg', '', '<p>15.6\" CELERON 1005M RAM 4G HDD 320G&nbsp;</p>'),
(201, 'HP EliteBook 2570P ', 15, 5, '<p>- M&agrave;n h&igrave;nh 12.5 inch HD</p>\r\n<p>- Intel Core i3 3110M</p>\r\n<p>- RAM 4G DDR3 <span>(N&Acirc;NG Cáº¤P RAM 100K/GB)</span></p>\r\n<p>- á»” cá»©ng HDD 320G (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin 1 &ndash; 2 giá», khá»‘i lÆ°á»£ng 1.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>#hp #elitebook #2570p</p>', 0, '3200000', '3400000', '4f78e1ca52.jpg', '', '<p>12.5\" CORE I3 3110M RAM 4G HDD 320G&nbsp;</p>'),
(202, 'Lenovo B590 ', 16, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- CELERON 1000M&nbsp;</p>\r\n<p>- Ram 2 GB DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng SSD 120 GB (N&Acirc;NG Cáº¤P THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.5 kg</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>--------------</p>\r\n<p>#lenovo #b590</p>', 0, '2800000', '', '9a88d931c4.jpg', '', '<p>15.6\" CELERON 1000M 2G SSD 120G</p>'),
(204, 'Dell Latitude E7250 ', 17, 4, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I5 5300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 120 GB</p>\r\n<p>- Pin 2 - 4 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>----------------------------------------------</p>\r\n<p>#dell #latitude #e7250</p>', 0, '5500000', '5800000', '6f847d4fef.jpg', '', '<p>12.5\" CORE I5 5300U RAM 4G SSD 128G&nbsp;</p>'),
(205, 'Dell Latitude E3540 ', 17, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" HD<br />- INTEL CORE I5 4200U<br />- RAM 4 GB DDR3L<br />- á»” cá»©ng HDD 320 GB<br />- CARD AMD 8850M<br />- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg<br />- Windows báº£n quyá»n theo m&aacute;y<br />#dell #latitude #e3540</p>', 1, '5500000', '', '1f790da39b.jpg', '', '<p>15.6\" CORE I5 4200U RAM 4G HDD 320G CARD AMD 8850M&nbsp;</p>'),
(208, 'Dell Latitde E5550 ', 17, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" FHD</p>\r\n<p>- INTEL CORE I5 5300U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>-----------------------------------------</p>\r\n<p>#dell #latitude #e5550</p>', 1, '6500000', '', '68ab1a1925.jpg', '', '<p>15.6\" FHD CORE I5 5300U RAM 4G HDD 320G&nbsp;</p>'),
(209, 'Lenovo ThinkPad E130 ', 16, 6, '<p>- M&agrave;n h&igrave;nh 11.6 IN HD</p>\r\n<p>- INTEL CORE I3 3227U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin 2 - 4 giá», khá»‘i lÆ°á»£ng 1.5 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>---------------------------------------------</p>\r\n<p>#lenovo #thinkpad #e130</p>', 1, '3000000', '3200000', '7c55d6a1fe.jpg', '', '<p>11.6\" CORE I3 3227U RAM 4G HDD 320G</p>'),
(211, 'Dell Latitude E6440 ', 15, 4, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 4300M</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin 1 - 3 giá», khá»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>------------------------------------------</p>\r\n<p>#dell #latitude #e6440</p>', 1, '4900000', '', '889554e1c8.jpg', '', '<p>14\" CORE I5 4300MU RAM 4G HDD 320G&nbsp;</p>'),
(212, 'Acer Aspire V5-171 ', 15, 10, '<p>- M&agrave;n h&igrave;nh 11.6\" HD</p>\r\n<p>- INTEL CORE I5 3337U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tr&ecirc;n 2 - 3 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------</p>\r\n<p>#acer #aspire #v5171</p>', 1, '3300000', '', 'f067facdfc.jpg', '', '<p>11.6\" CORE I5 3337U RAM 4G HDD 320G</p>'),
(214, 'Lenovo ThinkPad 13 Gen 1', 18, 6, '<p>- M&agrave;n h&igrave;nh 13.3\" HD</p>\r\n<p>- INTEL CORE I5 6300U</p>\r\n<p>- RAM 8 GB DDR4 (N&Acirc;NG Cáº¤P 150K/1GB)</p>\r\n<p>- á»” cá»©ng SSD 256 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>--------------------------------------------</p>\r\n<p>#lenovo #thinkpad #13gen1</p>', 0, '7700000', '8000000', '2a119310c2.jpg', '', '<p>13.3\" CORE I5 6300U RAM 8G SSD 256G</p>'),
(215, 'Dell Latitude E7280', 19, 4, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I5 7300U</p>\r\n<p>- RAM 4 GB DDR4 (N&Acirc;NG Cáº¤P 150K/1GB)</p>\r\n<p>- á»” cá»©ng SSD 128 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 5 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>#dell #latitude #e7280</p>', 0, '10200000', '11000000', 'd60f751288.jpg', '', '<p><span>12.5\" CORE I5 7300U RAM 4G SSD 128G</span></p>'),
(217, 'Lenovo ThinkPad E430 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I3 3110M</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.2 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>#lenovo #thinkpad #E430</p>', 1, '3500000', '', '76d10117ec.jpg', '', '<p>14\" CORE I3 3110M RAM 4G HDD 320G&nbsp;</p>'),
(218, 'Lenovo ThinkPad T450', 17, 6, '<p>- M&agrave;n h&igrave;nh 14\" HD PLUS</p>\r\n<p>- INTEL CORE I5 5300U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 500 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 1.8 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------</p>\r\n<p>#lenovo #thinkpad #T450</p>', 0, '6000000', '6500000', 'e94c5342cb.jpg', '', '<p>14\" HD PLUS CORE I5 5300U RAM 4G HDD 500G&nbsp;</p>'),
(220, 'Panasonic CF-LX3 ', 15, 13, '<p>- M&agrave;n h&igrave;nh 14\" HD PLUS</p>\r\n<p>- INTEL CORE I5 4300U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 250 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 5 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c zin, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>--------------------------------------------------------</p>\r\n<p>#panasonic #toughbook #CFLX3</p>', 2, '4300000', '4500000', '49dc0650da.jpg', '', '<p>14\" HD PLUS CORE I5 4300U RAM 4G HDD 250G&nbsp;</p>'),
(221, 'DELL LATITUDE E5440 ', 15, 4, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 4300U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/1GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.0 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>--------------------------------------------------------</p>\r\n<p>#dell #latitude #e5440</p>', 1, '4400000', '4800000', 'df16cb151d.jpg', '', '<p>14\" CORE I5 4300U RAM 4G HDD 320G&nbsp;</p>'),
(223, 'Dell XPS L321X', 15, 4, '<p>- M&agrave;n h&igrave;nh 13.3\" HD</p>\r\n<p>- INTEL CORE I5 2467M</p>\r\n<p>- RAM 4 GB</p>\r\n<p>- á»” cá»©ng SSD 128 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>----------------------------------------</p>\r\n<p>#dell #xps #l321x</p>', 2, '4800000', '', '53990a90d5.jpg', '', '<p>13.3\" CORE I5 2467M RAM 4G SSD 128G&nbsp;</p>'),
(227, 'Lenovo ThinkPad L540', 15, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD<br />- INTEL CORE I5 4210M<br />- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P RAM 100K/GB)<br />- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)<br />- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.5 kg<br />- Windows báº£n quyá»n theo m&aacute;y<br />- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c<br />#lenovo #thinkpad #L540</p>', 1, '4800000', '', 'fcd72774b0.jpg', '', '<p>15.6\" CORE I5 4210M RAM 4G HDD 320G</p>'),
(228, 'Lenovo ThinkPad X1 Carbon Gen 4', 19, 6, '<p>- M&agrave;n h&igrave;nh 14\" IPS FHD<br />- INTEL CORE I5 6200U<br />- RAM 4 GB LPDDR3<br />- á»” cá»©ng SSD 128 GB<br />- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.2 kg<br />- Windows báº£n quyá»n theo m&aacute;y<br />- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c<br />#lenovo #thinkpad #X1 #carbon #gen4</p>', 1, '11700000', '12000000', '67149cb60e.jpg', '', '<p>14\" IPS FHD CORE I5 6200U RAM 4G SSD 128G</p>'),
(229, 'Lenovo ThinkPad Yoga Gen 1', 19, 6, '<p>- M&agrave;n h&igrave;nh 14\" IPS FHD</p>\r\n<p>- INTEL CORE I7 7600U</p>\r\n<p>- RAM 8 GB SDDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.5 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>------------------------------------</p>\r\n<p>#lenovo #thinkpad #yoga #gen 1</p>', 2, '17600000', '17900000', '933ee65bc9.jpg', '', '<p>&nbsp;14\" IPS FHD CORE I7 6600U RAM 16G SSD 256G</p>'),
(233, 'Lenovo ThinkPad X1 Carbon Gen 5 ', 19, 6, '<p>- M&agrave;n h&igrave;nh 14\" IPS FHD</p>\r\n<p>- INTEL CORE I5 7300U</p>\r\n<p>- RAM 8 GB SDDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------</p>\r\n<p>#lenovo #thinkpad #carbon #gen5</p>', 2, '12700000', '13000000', 'c7cf3b2bf0.jpg', '', '<p>14\" IPS FHD CORE I5 7300U 8G SSD 256G</p>'),
(234, 'Lenovo ThinkPad X280 ', 19, 6, '<p>- M&agrave;n h&igrave;nh 12.5\" IPS FHD</p>\r\n<p>- INTEL CORE I5 8350U</p>\r\n<p>- RAM 8 GB SDDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------------------</p>\r\n<p>#lenovo #thinkpad #X280</p>', 0, '15700000', '16000000', '3f76557033.jpg', '', '<p>12.5\" IPS FHD CORE I5 8350U RAM 8G SSD 256G&nbsp;</p>'),
(235, 'Dell Latitude E3550 ', 17, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I5 5200U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.2 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>-------------------------------------------</p>\r\n<p>#dell #latitude #e3550</p>', 0, '5900000', '5600000', 'f0842d3987.jpg', '', '<p>15.6\" CORE I5 5200U RAM 4G HDD 320G&nbsp;</p>'),
(237, 'HP EliteBook 8470p ', 15, 5, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 3320M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>----------------------------------------------</p>\r\n<p>#hp #elitebook #8470p</p>', 1, '3800000', '', 'f6f5c645ab.jpg', '', '<p>- 14\" CORE I5 3320M RAM 4G HDD 320G</p>'),
(238, 'Dell Latitude E6520 ', 16, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I3 2330M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>--------------------------------------</p>\r\n<p>#dell #latitude #e6520</p>', 1, '3000000', '', 'cb9857791a.jpg', '', '<p>15.6\" HD PLUS CORE I3 2330M RAM 4G HDD 320G&nbsp;</p>'),
(239, 'HP ProBook 430 G2 ', 15, 5, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 4210U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.5 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------------</p>\r\n<p>#hp #probook #430g2</p>', 1, '4500000', '', 'e36e8e6da7.jpg', '', '<p>14\" CORE I5 4210U 4G HDD 320G</p>'),
(240, 'Lenovo ThinkPad T440P ', 17, 6, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I7 4600M</p>\r\n<p>- RAM 8 GB (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 500G (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>-----------------------------------------</p>\r\n<p>#lenovo #thinkpad #T440p</p>', 1, '6200000', '6500000', '2a5ac70877.jpg', '', '<p>14\" CORE I7 4600M RAM 8G HDD 500G</p>'),
(242, 'Lenovo ThinkPad L420 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 2520M</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------</p>\r\n<p>#lenovo #thinkpad #L420</p>', 1, '3400000', '', 'd38a7d44cc.jpg', '', '<p>14\" CORE I5 2520M RAM 4G HDD 320G&nbsp;</p>'),
(244, 'Lenovo ThinkPad E40', 16, 6, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 M520</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 2.2 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>---------------------------------------------</p>\r\n<p>#lenovo #thinkpad #E40</p>', 1, '2800000', '', '51cf153ee5.jpg', '', '<p>14\" CORE I5 M520 RAM 4G HDD 320G&nbsp;</p>'),
(248, 'Dell Latitude E7270 ', 18, 4, '<p>- M&agrave;n h&igrave;nh 12.5\" IPS FHD</p>\r\n<p>- INTEL CORE I5 6300U</p>\r\n<p>- RAM 8 GB DDR4 (N&Acirc;NG Cáº¤P 150K/GB)</p>\r\n<p>- á»” cá»©ng SSD 128 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>--------------------------------</p>\r\n<p>#dell #latitude #e7270</p>', 1, '8700000', '9000000', 'ca62257334.jpg', '', '<p>12.5\" IPS FHD CORE I5 6300U 8G SSD 128G&nbsp;</p>'),
(249, 'Lenovo ThinkPad E530C ', 15, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I3 3110M (N&Acirc;NG Cáº¤P I5 +500K)</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.5 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>----------------------------------------------</p>\r\n<p>#lenovo #thinkpad #e530c</p>', 0, '3200000', '3400000', '3a36bc31e8.jpg', '', '<p>15.6\" CORE I3 3110M RAM 4G HDD 320G&nbsp;</p>'),
(250, 'Lenovo ThinkPad L520 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I3 2328M</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>-----------------------------------------------------</p>\r\n<p>#lenovo #thinkpad #L520</p>', 1, '3000000', '', '833f076e79.jpg', '', '<p>15.6\" CORE I3 2328M RAM 4G HDD 320G&nbsp;</p>'),
(251, 'Acer Aspire V5-473G ', 15, 10, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I3 4010U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 1.8 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>----------------------------------</p>\r\n<p>#acer #aspire #v5473g</p>', 1, '4600000', '4800000', '028cf8eaad.jpg', '', '<p>14\" CORE I3 4010U RAM 4G HDD 320G CARD GEFORCE GT 740&nbsp;</p>'),
(252, 'Lenovo ThinkPad T540p ', 17, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I5 4300M</p>\r\n<p>- RAM 8 GB DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng SSD 128 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Card rá»i GT 730M</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.5 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------------</p>\r\n<p>#lenovo #thinkpad #T540P</p>', 1, '6000000', '', 'a010c76173.jpg', '', '<p>15.6\" CORE I5 4300M 8G SSD 128G GT 730M&nbsp;</p>'),
(255, 'Dell Latitude E7470 ', 18, 4, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 6300U</p>\r\n<p>- RAM 8 GB DDR4 (N&Acirc;NG Cáº¤P 150K/GB)</p>\r\n<p>- á»” cá»©ng SSD 256 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>-----------------------------------------</p>\r\n<p>#dell #latitude #e7470</p>', 0, '8200000', '8500000', 'f2b872b388.jpg', '', '<p>14\" CORE I5 6300U RAM 8G SSD 256G&nbsp;</p>'),
(256, 'Dell Latitude E3570 ', 18, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" FHD</p>\r\n<p>- INTEL CORE I5 6300U</p>\r\n<p>- RAM 8 GB DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>&nbsp;- á»” cá»©ng SSD 256 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 2.0 kg - Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>---------------------------------------</p>\r\n<p>#dell #latitude #e3570</p>', 0, '7700000', '8000000', 'c5de793a43.jpg', '', '<p><span>15.6\" FHD CORE I5 6300U RAM 8G SSD 256G</span></p>'),
(257, 'Dell Vostro 5568 ', 18, 4, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I5 7200U</p>\r\n<p>- RAM 8 GB DDR4 (N&Acirc;NG Cáº¤P 150K/GB)</p>\r\n<p>- á»” cá»©ng SSD 120 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 2.0 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>---------------------------------------------</p>\r\n<p>#dell #vostro #dell5568</p>', 0, '8200000', '8500000', '6a90c926b3.jpg', '', '<p><span>15.6\" CORE I5 7200U RAM 8G SSD 120G&nbsp;</span></p>'),
(258, 'Lenovo ThinkPad T510 ', 16, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I3 M330</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 giá», khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>-------------------------------------------------------</p>\r\n<p>#lenovo #thinkpad #T510</p>', 1, '2500000', '2700000', '5ee625ce21.jpg', '', '<p>15.6\" CORE I3 M330 RAM 4G HDD 320G&nbsp;</p>'),
(259, 'HP EliteBook 725 G3 ', 15, 5, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- AMD PRO A8-8600B</p>\r\n<p>- RAM 4 GB DDR4 (N&Acirc;NG Cáº¤P 150K/GB)</p>\r\n<p>- á»” cá»©ng SSD 128 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>-------------------------------</p>\r\n<p>#hp #elitebook #725g3</p>', 1, '4800000', '5000000', '2ac6019993.jpg', '', '<p>12.5\" AMD A8-8600B RAM 4G SSD 128G&nbsp;</p>'),
(260, 'Lenovo ThinkPad X1 Carbon Gen 3 ', 18, 6, '<p>- M&agrave;n h&igrave;nh 14\" FHD</p>\r\n<p>- INTEL CORE I5 5200U</p>\r\n<p>- RAM 4 GB SDDR3</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>--------------------------------------------------</p>\r\n<p>#lenovo #thinkpad #x1 #carbon #gen3</p>', 0, '7200000', '7500000', '49041f1c47.jpg', '', '<p><span>14\" FHD CORE I5 5200U RAM 4G SSD 128G&nbsp;</span></p>'),
(261, 'Lenovo ThinkPad L530 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I5 3210M</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>---------------------------------</p>\r\n<p>#lenovo #thinkpad #l530</p>', 0, '3600000', '3800000', 'c213b38fd3.jpg', '', '<p>15.6\" CORE I5 3210M RAM 4G HDD 320G&nbsp;</p>'),
(262, 'Sony Vaio VGN-NW242F ', 16, 9, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE 2 DUO T6600</p>\r\n<p>- RAM 4 GB</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>-----------------------</p>\r\n<p>#sony #vaio #vgn</p>', 1, '1800000', '2000000', 'c5572705e4.jpg', '', '<p>15.6 CORE 2 DUO RAM 4G HDD 320G&nbsp;</p>'),
(263, 'HP EliteBook 820 G3', 17, 5, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I3 6100U</p>\r\n<p>- RAM 4 GB DDR4 (N&Acirc;NG Cáº¤P 150K/GB)</p>\r\n<p>- á»” cá»©ng SSD 128 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------</p>\r\n<p>#hp #elitebook #820g3</p>', 0, '5500000', '6000000', 'c3166e1394.jpg', '', '<p>12.5\" CORE I3 6100U RAM 4G HDD 500G&nbsp;</p>'),
(264, 'HP ProBook 4230s ', 16, 5, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I3 2310M (N&Acirc;NG Cáº¤P I5 +500K)</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.6 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>----------------------------</p>\r\n<p>#hp #probook #4230s</p>', 1, '2800000', '3000000', '5981612bec.jpg', '', '<p>12.5\" CORE I3 2310M RAM 4G HDD 320G&nbsp;</p>'),
(265, 'Dell Vostro 3458 ', 15, 4, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I3 5005U</p>\r\n<p>- RAM 4 GB DDR3L (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 500 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.9 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------</p>\r\n<p>#dell #vostro #dell3458</p>', 0, '4500000', '5000000', 'aeabbe460d.jpg', '', '<p>14\" CORE I3 5005U RAM 4G HDD 500G</p>'),
(266, 'Lenovo ThinkPad X230 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I3 3110M</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>---------------------------------</p>\r\n<p>#lenovo #thinkpad #x230</p>', 1, '3200000', '3400000', '6eea6ce462.jpg', '', '<p>12.5\" CORE I3 3110M 4G HDD 320G&nbsp;</p>');
INSERT INTO `tbl_product` (`productID`, `productName`, `catID`, `brandID`, `product_desc`, `type`, `price`, `price_old`, `image`, `ghiChu`, `moTaNgan`) VALUES
(267, 'Lenovo ThinkPad T530 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 15.6\" HD</p>\r\n<p>- INTEL CORE I5 3320M</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.5 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>------------------------------------</p>\r\n<p>#lenovo #thinkpad #T530</p>', 0, '3600000', '4200000', '5366c4f09c.jpg', '', '<p>15.6\" CORE I5 3320M RAM 4G HDD 320G</p>'),
(268, 'HP ProBook 4340s ', 15, 5, '<p>- M&agrave;n h&igrave;nh 13.3\" HD</p>\r\n<p>- INTEL CORE I3 3120M (N&Acirc;NG Cáº¤P I5 +500K)</p>\r\n<p>- RAM 4 GB DDR3 (N&Acirc;NG Cáº¤P 100K/GB)</p>\r\n<p>- á»” cá»©ng HDD 320 GB (N&Acirc;NG Cáº¤P SSD THEO THá»œI GI&Aacute;)</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 2.0 kg</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>- M&aacute;y k&egrave;m sáº¡c, kh&ocirc;ng k&egrave;m qu&agrave; táº·ng kh&aacute;c</p>\r\n<p>-----------------------------</p>\r\n<p>#hp #probook #4340S</p>', 1, '3400000', '', '4c06977f27.jpg', '', '<p>12.5\" CORE I3 3120M RAM 4G HDD 320G&nbsp;</p>'),
(269, 'Lenovo ThinkPad E420 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 2520M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #e420</p>', 1, '3200000', '3400000', '3730050e9a.jpg', '', '<p>14\" CORE I5 2520M RAM 4G HDD 320G</p>'),
(270, 'Lenovo ThinkPad X1 Carbon Gen 1 ', 15, 9, '<p>- M&agrave;n h&igrave;nh 14\" HD</p>\r\n<p>- INTEL CORE I5 3317U</p>\r\n<p>- RAM 4 GB SDDR3</p>\r\n<p>- á»” cá»©ng SSD 120 GB</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #carbon #x1 #gen1</p>', 1, '5000000', '', '571c2c8705.jpg', '', '<p>14\" CORE I5 3317U RAM 4G SSD 120G&nbsp;</p>'),
(271, 'HP ZBook 14 G2 ', 18, 5, '<p>- M&agrave;n h&igrave;nh 14\" IPS FHD</p>\r\n<p>- INTEL CORE I7 5600U</p>\r\n<p>- RAM 8 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 120 GB</p>\r\n<p>- Card rá»i AMD FirePro M4150</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 1.7 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #zbook #14g2</p>', 0, '7500000', '8000000', 'c86955e7e0.jpg', '', '<p><span>14\" IPS FHD CORE I7 5600U RAM 8G SSD 120G CARD FIREPRO M4150&nbsp;</span></p>'),
(273, 'Sony Vaio SVT141A11N ', 15, 9, '<p>- M&agrave;n h&igrave;nh 14 IN HD</p>\r\n<p>- INTEL CORE I5 3317U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 32 GB &amp; HDD 320 GB</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 1.6 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#sony #vaio #svt141a11n</p>', 1, '4300000', '4500000', 'f5f1c6476d.jpg', '', '<p>14\" CORE I5 3317U RAM 4G SSD 32G &amp; HDD 320G&nbsp;</p>'),
(274, 'Dell Precision M4600 ', 17, 4, '<p>- M&agrave;n h&igrave;nh 15.6 IN FHD</p>\r\n<p>- INTEL CORE I7 2620M</p>\r\n<p>- RAM 8 GB DDR3</p>\r\n<p>- á»” cá»©ng SSD 120 GB</p>\r\n<p>- CARD QUADRO 1000M</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 2.8 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #precision #m4600</p>', 0, '6700000', '7000000', 'a180c36357.jpg', '', '<p>15.6\" FHD CORE I7 2620M RAM 8G SSD 128G CARD QUADRO 1000M&nbsp;</p>'),
(275, 'Pavilion 15 Notebook ', 17, 14, '<p>- M&agrave;n h&igrave;nh 15.6 IN HD</p>\r\n<p>- INTEL CORE I5 6200U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 2.2 kg</p>\r\n<p>- Xuáº¥t xá»© Nháº­t Báº£n, m&aacute;y k&egrave;m sáº¡c</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #pavilion #notebook</p>', 0, '6900000', '7200000', '3e9b3a47c0.jpg', '', '<p><span>15.6\" CORE I5 6200U RAM 4G SSD 128G&nbsp;</span></p>'),
(276, 'Lenovo ThinkPad X1 Yoga Gen 2 ', 19, 6, '<p>- M&agrave;n h&igrave;nh 14\" 2K TOUCH</p>\r\n<p>- INTEL CORE I7 7600U</p>\r\n<p>- RAM 16 GB LPDDR3 SDRAM</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.4 kg</p>\r\n<p>- Xuáº¥t xá»© Nháº­t Báº£n, m&aacute;y k&egrave;m sáº¡c</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #yoga #gen2 #2in1</p>', 0, '19600000', '19900000', '2b50df269c.jpg', '', '<p>14\" 2K TOUCH CORE I7 7600U RAM 16G SSD 256G&nbsp;</p>'),
(277, 'Lenovo ThinkPad L570 ', 18, 6, '<p>- M&agrave;n h&igrave;nh 14 IN HD</p>\r\n<p>- INTEL CORE I7 7200U</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng HDD 500 GB</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- Xuáº¥t xá»© Nháº­t Báº£n, m&aacute;y k&egrave;m sáº¡c</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #L570</p>', 0, '8200000', '8500000', '8ba5dda089.jpg', '', '<p><span>15.6\" CORE I5 7200U RAM 8G HDD 500G&nbsp;</span></p>'),
(278, 'Lenovo Thinkpad T440 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 14 IN HD PLUS TOUCH</p>\r\n<p>- INTEL CORE I5 4300U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 120 GB</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 2.2 kg</p>\r\n<p>- Xuáº¥t xá»© Nháº­t Báº£n, m&aacute;y k&egrave;m sáº¡c</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #T440 #touch</p>', 2, '4500000', '5000000', 'dcdb246c53.jpg', '', '<p>14\" HD PLUS TOUCH CORE I5 4300U RAM 4G SSD 120G&nbsp;</p>'),
(279, 'Lenovo G50 ', 15, 6, '<p>- M&agrave;n h&igrave;nh 15.6 IN</p>\r\n<p>- INTEL CORE I3 5005U</p>\r\n<p>- RAM 4 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 120 GB</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.5 kg</p>\r\n<p>- Xuáº¥t xá»© Nháº­t Báº£n, m&aacute;y k&egrave;m sáº¡c</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #g50</p>', 0, '4500000', '', 'a291b173fb.jpg', '', '<p>15.6\" CORE I3 5005U RAM 4G SSD 120G&nbsp;</p>'),
(280, 'HP ProBook 450 G5 ', 18, 5, '<p>- M&agrave;n h&igrave;nh 15.6 IN FHD</p>\r\n<p>- INTEL CORE I5 7200U</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Pin tá»« 1 - 3 giá», khá»‘i lÆ°á»£ng 2.1 kg</p>\r\n<p>- Xuáº¥t xá»© Nháº­t Báº£n, m&aacute;y k&egrave;m sáº¡c</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #probook #450g5</p>', 1, '8500000', '', '0bc75fbfd8.jpg', '', '<p><span>15.6\" FHD CORE I5 7200U RAM 8G SSD 256G&nbsp;</span></p>'),
(281, 'Dell Latitude E5490 ', 19, 4, '<p>- M&agrave;n h&igrave;nh 14 IN FHD</p>\r\n<p>- INTEL CORE I5 8250U</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin tá»« 2 - 4 giá», khá»‘i lÆ°á»£ng 1.8 kg</p>\r\n<p>- Xuáº¥t xá»© Nháº­t Báº£n, m&aacute;y k&egrave;m sáº¡c</p>\r\n<p>- Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #laittude #e5470</p>', 0, '11000000', '12000000', 'ef101a0569.jpg', '', '<p>14\" FHD CORE I5 8250U RAM 8G SSD 128G&nbsp;</p>'),
(282, 'Lenovo  Thinkpad X220 ', 16, 6, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I3 2310M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#lenovo #thinkpad #x220</p>', 0, '2800000', '', '4f2d8ce617.jpg', '', '<p>12.5\" CORE I3 2310M RAM 4G HDD 320G&nbsp;</p>'),
(283, 'Dell Latitude E7280 ', 0, 0, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I5 6300U</p>\r\n<p>- RAM 4 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #latitude #e7280</p>', 0, '8200000', '', '52c2259c08.jpg', '', '<p><span>12.5\" CORE I5 6300U RAM 4G SSD 128G&nbsp;</span></p>'),
(284, 'Dell Latitude E7280 ', 18, 4, '<p>- M&agrave;n h&igrave;nh 12.5\" HD</p>\r\n<p>- INTEL CORE I5 6300U</p>\r\n<p>- RAM 4 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 128 GB</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 1.3 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #latitude #e7280</p>', 0, '8200000', '', '27ef0f4132.jpg', '', '<p><span>12.5\" CORE I5 6300U RAM 4G SSD 128G&nbsp;</span></p>'),
(285, 'HP ZBook 15 G3 ', 19, 5, '<p>- M&agrave;n h&igrave;nh 15.6 IPS FHD</p>\r\n<p>- INTEL CORE I5 6700HQ</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 240 GB</p>\r\n<p>- Card rá»i Quadro M1000M</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 2.6 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#hp #zbook #15g3</p>', 0, '14500000', '15000000', '62dcb37f87.jpg', '', '<p>15.6\" IPS FHD CORE I7 6700HQ RAM 8G SSD 240G CARD QUADRO M1000M</p>'),
(286, 'Dell XPS L502X ', 15, 4, '<p>- M&agrave;n h&igrave;nh 15.6 IN HD</p>\r\n<p>- INTEL CORE I5 2430M</p>\r\n<p>- RAM 4 GB DDR3</p>\r\n<p>- á»” cá»©ng HDD 320 GB</p>\r\n<p>- Card rá»i GT 525M</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 3.0 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #xps #l502x</p>', 0, '4200000', '', '059a735f23.jpg', '', '<p>15.6\" CORE I5 2430M RAM 4G HDD 320G CARD GT 525M&nbsp;</p>'),
(287, 'Dell Precision M6800 ', 19, 4, '<p>- M&agrave;n h&igrave;nh 17.3 IN FHD</p>\r\n<p>- INTEL CORE I7 4700MQ</p>\r\n<p>- RAM 8 GB DDR3L</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Card rá»i Quadro K3100M</p>\r\n<p>- Pin tá»« 1 - 2 giá», khá»‘i lÆ°á»£ng 3.8 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #precision #m6800</p>', 0, '12000000', '', '0c6b526b7f.jpg', '', '<p>17.3\" FHD CORE I7 4700MQ RAM 8G SSD 256G CARD QUADRO K3100M&nbsp;</p>'),
(288, 'Dell Precision 3520', 19, 0, '<p>- M&agrave;n h&igrave;nh 15.6 IN IPS FHD</p>\r\n<p>- INTEL CORE I5 7300HQ</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Card rá»i Quadro M620</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #precision #m3520</p>', 0, '14000000', '', 'f10ecb8d46.jpg', '', '<p>15.6\" IPS FHD CORE I7 7300HQ RAM 8G SSD 256G CARD QUADRO M620&nbsp;</p>'),
(289, 'Dell Precision 3520 ', 19, 4, '<p>- M&agrave;n h&igrave;nh 15.6 IN IPS FHD</p>\r\n<p>- INTEL CORE I5 7300HQ</p>\r\n<p>- RAM 8 GB DDR4</p>\r\n<p>- á»” cá»©ng SSD 256 GB</p>\r\n<p>- Card rá»i Quadro M620</p>\r\n<p>- Pin tá»« 2 - 3 giá», khá»‘i lÆ°á»£ng 2.4 kg</p>\r\n<p>- K&egrave;m sáº¡c, Windows báº£n quyá»n theo m&aacute;y</p>\r\n<p>#dell #precision #m3520</p>', 0, '14000000', '', 'b5d75c5f7f.jpg', '', '<p>15.6\" IPS FHD CORE I7 7300HQ RAM 8G SSD 256G CARD QUADRO M620&nbsp;</p>');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandID`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartID`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catID`),
  ADD KEY `catID` (`catID`);

--
-- Chỉ mục cho bảng `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`imgID`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `imgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=968;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
