/*
 Navicat Premium Data Transfer

 Source Server         : LOCALHOST
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : toko_komputer

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 11/01/2023 20:40:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artikel
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NOT NULL,
  `users_updated` int(11) NOT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artikel
-- ----------------------------
INSERT INTO `artikel` VALUES (4, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (5, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (6, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (7, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (8, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (9, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (10, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (11, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (12, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');
INSERT INTO `artikel` VALUES (13, 'RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS', '<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\" style=\"height:880px; width:1565px\" /></p>\r\n\r\n<p><strong>Sponsored</strong>:&nbsp;<a href=\"http://enterkomputer.com/\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia</a></p>\r\n\r\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.</p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\" style=\"height:882px; width:1568px\" /></p>\r\n\r\n<p><img src=\"https://drive.google.com/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\" style=\"height:872px; width:1555px\" /></p>\r\n', '[{\"file_name\":\"Iwv8VPyq0eXI8eTG.jpg\",\"file_size\":83.78,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Iwv8VPyq0eXI8eTG.jpg\"}]', '2023-01-11 19:20:51', '2023-01-11 19:22:55', 1, 1, '0');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NOT NULL,
  `users_updated` int(11) NOT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 'Acer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (2, 'Apple', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (3, 'Asus', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (4, 'Dell', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (5, 'HP', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (6, 'Huawei', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (7, 'Lenovo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (8, 'MSI', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (9, '1STPLAYER', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (10, 'AIGO', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (11, 'Adata', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (12, 'Agile', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (13, 'Amber', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (14, 'Apple', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (15, 'Arctic', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (16, 'Asus', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (17, 'Aten', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (18, 'Bafo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (19, 'Bitfenix', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (20, 'Bizebra', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (21, 'Chronos', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (22, 'Cliptec', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (23, 'Cooler Master', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (24, 'Corsair', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (25, 'Cryorig', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (26, 'Cubegaming', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (27, 'D-Link', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (28, 'DBE', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (29, 'Deepcool', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (30, 'Digital Alliance', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (31, 'Elgato', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (32, 'Fantech', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (33, 'Fingerspot', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (34, 'Gadmei', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (35, 'Gaintech', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (36, 'Galax', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (37, 'GameMax', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (38, 'Gelid', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (39, 'Genius', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (40, 'GoPro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (41, 'Grand', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (42, 'HDMI', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (43, 'HINEIGHT', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (44, 'HIS', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (45, 'Hippo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (46, 'Honeywell', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (47, 'Imperion', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (48, 'J5 Create', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (49, 'Jonsbo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (50, 'KANA', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (51, 'KIWIK', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (52, 'KontrolFreek', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (53, 'Lexar', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (54, 'Lian-Li', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (55, 'Logitech', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (56, 'MSI', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (57, 'Maiwo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (58, 'Maxhub', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (59, 'Micropack', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (60, 'Microsoft', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (61, 'Mino', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (62, 'NYK', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (63, 'NZXT', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (64, 'Nathlock', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (65, 'Netac', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (66, 'Netline', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (67, 'Next Level Racing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (68, 'Noctua', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (69, 'Orico', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (70, 'Orvibo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (71, 'Others', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (72, 'PCMCIA', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (73, 'PQI', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (74, 'Paradox', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (75, 'Pisen', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (76, 'Posiflex', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (77, 'Powerlogic', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (78, 'Prime Gaming', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (79, 'Prolink', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (80, 'Pulsar', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (81, 'RVTech', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (82, 'Raidmax', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (83, 'Raijintek', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (84, 'Rapoo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (85, 'Razer', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (86, 'Redragon', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (87, 'Rexus', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (88, 'Robot', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (89, 'S-Pro', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (90, 'SJCam', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (91, 'SUNIX', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (92, 'Scythe', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (93, 'Silicon', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (94, 'Silicon Power', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (95, 'Silverstone', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (96, 'Solution', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (97, 'SteelSeries', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (98, 'Streamplify', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (99, 'TP-Link', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (100, 'Targus', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (101, 'Team', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (102, 'Tecware', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (103, 'Thermaltake', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (104, 'Thrustmaster', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (105, 'Toshiba', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (106, 'TotoLink', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (107, 'Transcend', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (108, 'Unitek', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (109, 'V-GEN', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (110, 'Vidonn', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (111, 'Vivan', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (112, 'Xiaomi', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (113, 'ZQ', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (114, 'be quiet!', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (115, 'iKey', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (118, 'Apple', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (119, 'Asrock', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (120, 'Asus', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (121, 'Dell', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (122, 'ECS', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (123, 'HP', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (124, 'Intel', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (125, 'Lenovo', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (126, 'MSI', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (127, 'N Computing', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `brand` VALUES (128, 'tes2', NULL, '2023-01-10 10:14:30', '2023-01-10 10:38:30', 1, 1, '0');
INSERT INTO `brand` VALUES (129, 'bbbbbbbb', '[{\"file_name\":\"logo_mondial.png\",\"file_size\":7910,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/logo_mondial.png\"}]', '2023-01-10 10:23:17', '2023-01-10 10:24:35', 1, 1, '1');
INSERT INTO `brand` VALUES (130, 'enter', NULL, '2023-01-10 10:39:20', '2023-01-10 10:40:54', 1, 1, '1');
INSERT INTO `brand` VALUES (131, 'tes', '[{\"file_name\":\"logo_pemerintah.png\",\"file_size\":7914,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/logo_pemerintah.png\"}]', '2023-01-10 10:39:48', '2023-01-10 10:40:24', 1, 1, '0');

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` varchar(128) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf32 COLLATE utf32_general_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  INDEX `ci_sessions_timestamp`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf32 COLLATE = utf32_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('bvj1bukvg1dgukrqj51geifv1jkgtrnj', '::1', 1673427740, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333432373734303B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303232313232313131323430312E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B);
INSERT INTO `ci_sessions` VALUES ('34lbbl53i4unmahc848rbj6pe1dkjsjn', '::1', 1673427439, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333432373433393B);
INSERT INTO `ci_sessions` VALUES ('hpa3fivqvhl00ounjkm9vcldj2s21pnf', '::1', 1673428192, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333432383139323B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B);
INSERT INTO `ci_sessions` VALUES ('l02fniuliusuotd6dhe6odm2pl0pmn2m', '::1', 1673428636, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333432383633363B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B);
INSERT INTO `ci_sessions` VALUES ('8sk6gke80p3ptc0bp130pngcmon916dn', '::1', 1673428953, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333432383935333B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303232313232313131323430312E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('ukmftkgd00kstso7gm0ami14bsp1qsq9', '::1', 1673429257, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333432393235373B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303232313232313131323430312E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('us0aa6ac1f7f03snul1i3hvstbjvne5h', '::1', 1673429641, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333432393634313B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303232313232313131323430312E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('gki0djkqtaug1asai49jf4bjffro8b9g', '::1', 1673430038, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433303033383B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303232313232313131323430312E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('do28f6341bpk390rkjk8j8rgek1n6dg0', '::1', 1673430371, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433303337313B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('2j3u6q81el7g0jsg272opcij5cap6lsg', '::1', 1673432786, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433323738363B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('bta9l5mj8cjlpe7gbq4hhev05has07jk', '::1', 1673430408, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433303430383B);
INSERT INTO `ci_sessions` VALUES ('ht21urfg12gv9jcoecjnodh6bp22qm1p', '::1', 1673430410, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433303431303B);
INSERT INTO `ci_sessions` VALUES ('ctnnc79km62d682clmt8j28i81cknfbl', '::1', 1673433112, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333131323B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('57htlo4bs65t6m8qkls00au65d5us268', '::1', 1673432814, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433323831343B);
INSERT INTO `ci_sessions` VALUES ('kef85sd704uhsriqcafjjq1i8m7cojdn', '::1', 1673432930, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433323933303B);
INSERT INTO `ci_sessions` VALUES ('dh1csjba8n4ol2mtvknls8r5114ee6uh', '::1', 1673432964, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433323936343B);
INSERT INTO `ci_sessions` VALUES ('6sobsvrdsfn4sgjj4tljb172mlpa4vrc', '::1', 1673433014, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333031343B);
INSERT INTO `ci_sessions` VALUES ('sobonhi7pdo868q2fqrjothq81mgrgju', '::1', 1673433039, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333033393B);
INSERT INTO `ci_sessions` VALUES ('q3i624hc0j4pnv7jf7f0jf5nuj43bm77', '::1', 1673433044, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333034343B);
INSERT INTO `ci_sessions` VALUES ('muv8pab0r7rsforjsp31ro2vkuf2u599', '::1', 1673433426, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333432363B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('hlb8s90kst78tjd933uebffoileo1j34', '::1', 1673433113, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333131333B);
INSERT INTO `ci_sessions` VALUES ('i4ll2q38ot0nhuoktqrf5a6g7ve7l2tn', '::1', 1673433143, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333134333B);
INSERT INTO `ci_sessions` VALUES ('mpqis2pvqkqjh6i3iv29vb6misltrqs6', '::1', 1673433205, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333230353B);
INSERT INTO `ci_sessions` VALUES ('64nub8mm4fejh4snrgiaca0ucjh0ak67', '::1', 1673433220, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333232303B);
INSERT INTO `ci_sessions` VALUES ('3695johtqe23j808aktp1vatmgcn7cqq', '::1', 1673433245, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333234353B);
INSERT INTO `ci_sessions` VALUES ('qovvlg7jqd251vp8dl9quvnbmup45ei7', '::1', 1673433314, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333331343B);
INSERT INTO `ci_sessions` VALUES ('tmsiltukqf8mtoo6kug8mgrqlc1qfl5j', '::1', 1673433350, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333335303B);
INSERT INTO `ci_sessions` VALUES ('opf4107i7ucf5thq36c8u01egopvg4hm', '::1', 1673433359, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333335393B);
INSERT INTO `ci_sessions` VALUES ('37aj3gp4ao2h8fa8p8vn55bhhh2hqusu', '::1', 1673433412, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333431323B);
INSERT INTO `ci_sessions` VALUES ('erduo8o0ei68fksagredj5rmjlesurbc', '::1', 1673433768, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333736383B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('kbbv51bmj13s9of7sf431jkvcf0ur6mh', '::1', 1673433428, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333432383B);
INSERT INTO `ci_sessions` VALUES ('qs9qrabvmbfg64n6g8fvb9716kl84h4n', '::1', 1673433474, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333437343B);
INSERT INTO `ci_sessions` VALUES ('9h90dmqlf6llrr5ermf0k7f75a1cc958', '::1', 1673433503, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333530333B);
INSERT INTO `ci_sessions` VALUES ('562e35p424o6itpuivb679r3ch3pu6nb', '::1', 1673433569, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333536393B);
INSERT INTO `ci_sessions` VALUES ('l6pjrjlrp14og2ell6f3h0q0unnpg2kh', '::1', 1673433647, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333634373B);
INSERT INTO `ci_sessions` VALUES ('s15m57g7tfevvddfa1n06mq4rgj7c2kg', '::1', 1673433650, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333635303B);
INSERT INTO `ci_sessions` VALUES ('6a5eu9k4i8eastjk50aidnc9gp2bbubl', '::1', 1673433663, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333636333B);
INSERT INTO `ci_sessions` VALUES ('q3qsgts555lnh78bfj6lmiov0p2hpr3b', '::1', 1673433707, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333730373B);
INSERT INTO `ci_sessions` VALUES ('8sfd4g8uajoep3sqrh13bl8gvbj7eoas', '::1', 1673433713, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333731333B);
INSERT INTO `ci_sessions` VALUES ('edp0bad6dllafh0uja84adtcn75c9g0h', '::1', 1673433717, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333731373B);
INSERT INTO `ci_sessions` VALUES ('6kdv7fjlt2ria8ti83r8vl2a5cttsshn', '::1', 1673434077, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433343037373B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('bvol3vnc4brgp2m2la949nh5ui5ja49v', '::1', 1673433769, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433333736393B);
INSERT INTO `ci_sessions` VALUES ('ha68809dan3ooc418euh603dugr710be', '::1', 1673434443, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433343434333B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('uptctdhtakgdffripi9kjmnad6g886bs', '::1', 1673434750, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433343735303B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('dmlv48drcsng60k7aj0hlefumccnn4u2', '::1', 1673435052, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433353035323B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('3atedi7r8uge07j4kckgvck4fp5sn88i', '::1', 1673435372, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433353337323B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('7jcm9s47ieahtt7fgupkd4oalf1etgmf', '::1', 1673436128, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433363132383B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('rdpdb2revlo3k98dfnstrhfskanavoo5', '::1', 1673436695, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433363639353B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('o2msqua7f9evtd92fh3592epj781lhg7', '::1', 1673437041, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433373034313B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('n0f5tgr2pq37mqgio0fugqia3edgbhe6', '::1', 1673437348, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433373334383B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('75iepl26fmqkste6kjibc7irvm7480l3', '::1', 1673438773, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433383737333B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('ltgk70n8oqvj3lrf33tin8bcjamnsu3c', '::1', 1673439380, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433393338303B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('3rdbldflk5dmrbqmrfi6d1nrk5n8kc2m', '::1', 1673439860, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333433393836303B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('9ot5o94u047ei75uru4ii2ltbqqkm520', '::1', 1673440376, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333434303337363B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('udetl12l170ie5dav618bmvc97c2j5ma', '::1', 1673440712, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333434303731323B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('ror4iekfum6fqcjjoj2lmdhohpdjqujj', '::1', 1673441057, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333434313035373B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('694dnmvt18l6phjf0iluj09fe5ob887o', '::1', 1673441373, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333434313337333B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);
INSERT INTO `ci_sessions` VALUES ('7ih4t5l1v2o3v85tm48cer6a2b5pfqpo', '::1', 1673441614, 0x5F5F63695F6C6173745F726567656E65726174657C693A313637333434313337333B6C616E67756167657C733A373A22456E676C697368223B6C616E67756167655F69647C733A313A2231223B6163746976655F757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2231223B733A383A2267726F75705F6964223B733A313A2231223B733A353A22656D61696C223B4E3B733A343A226E616D65223B733A31333A2241646D696E6973747261746F72223B733A383A22757365726E616D65223B733A31333A2261646D696E6973747261746F72223B733A383A2270617373776F7264223B733A383A223131323233333434223B733A343A22666F746F223B733A31383A2232303233303131313136323035302E706E67223B733A31333A2275736572735F63726561746564223B733A313A2231223B733A31333A2275736572735F75706461746564223B733A313A2231223B733A31303A22637265617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22757064617465645F6174223B733A31393A22323032322D31312D31342031353A32383A3432223B733A31303A22736F667464656C657465223B733A313A2230223B733A31303A2267726F75705F6E616D65223B733A31333A2241646D696E6973747261746F72223B7D);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `view` enum('Yes','No') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'No',
  `create` enum('Yes','No') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'No',
  `update` enum('Yes','No') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'No',
  `delete` enum('Yes','No') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'No',
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, 'Administrator', 'Yes', 'Yes', 'Yes', 'Yes', '2022-10-30 14:54:07', '2022-10-30 14:54:07', 1, 1, '0');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NOT NULL,
  `users_updated` int(11) NOT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Accessories', 'web-assets/frontend/icon/svg/category/accessories.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (2, 'All In One', 'web-assets/frontend/icon/svg/category/aio.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (3, 'Casing', 'web-assets/frontend/icon/svg/category/casing.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (4, 'Cooler', 'web-assets/frontend/icon/svg/category/coolerfan.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (5, 'Drawer', 'web-assets/frontend/icon/svg/category/drawingtablet.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (6, 'Flash Drive', 'web-assets/frontend/icon/svg/category/flashdrive.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (7, 'Gadget', 'web-assets/frontend/icon/svg/category/gadget.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (8, 'Gaming Chair', 'web-assets/frontend/icon/svg/category/gaming-chair.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (9, 'Hard Drive', 'web-assets/frontend/icon/svg/category/harddisk.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (10, 'Headset', 'web-assets/frontend/icon/svg/category/headset.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (11, 'Keyboard', 'web-assets/frontend/icon/svg/category/keyboard.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (12, 'LCD', 'web-assets/frontend/icon/svg/category/lcd.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (13, 'Memory Card', 'web-assets/frontend/icon/svg/category/memorycard.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (14, 'Motherboard', 'web-assets/frontend/icon/svg/category/motherboard.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (15, 'Networking', 'web-assets/frontend/icon/svg/category/networking.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (16, 'Notebook', 'web-assets/frontend/icon/svg/category/notebook.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (17, 'Notebook Accessories', 'web-assets/frontend/icon/svg/category/notebook-accessories.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (18, 'Optical', 'web-assets/frontend/icon/svg/category/optical.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (19, 'Printer', 'web-assets/frontend/icon/svg/category/printer.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (20, 'Processor', 'web-assets/frontend/icon/svg/category/processor.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (21, 'Projector', 'web-assets/frontend/icon/svg/category/projector.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (22, 'PSU', 'web-assets/frontend/icon/svg/category/psu.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (23, 'RAM', 'web-assets/frontend/icon/svg/category/ram.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (24, 'Server', 'web-assets/frontend/icon/svg/category/server.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (25, 'Software', 'web-assets/frontend/icon/svg/category/software.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (26, 'Soundcard', 'web-assets/frontend/icon/svg/category/soundcard.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (27, 'Speaker', 'web-assets/frontend/icon/svg/category/speaker.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (28, 'SSD', 'web-assets/frontend/icon/svg/category/ssd.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (29, 'UPS', 'web-assets/frontend/icon/svg/category/ups.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (30, 'VGA', 'web-assets/frontend/icon/svg/category/vga.svg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `kategori` VALUES (31, 'CCCC', NULL, '2023-01-10 16:49:50', '2023-01-10 16:50:04', 1, 1, '1');

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0',
  `location_id` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES (1, 'English', 1, 1, '2022-12-07 11:22:24', '2022-12-07 11:22:24', '0', 0);
INSERT INTO `languages` VALUES (2, 'Indonesia', 1, 1, '2022-12-07 11:22:24', '2022-12-07 11:22:24', '0', 0);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `waktu` timestamp(0) NULL DEFAULT current_timestamp(0),
  `aktifitas` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `users_id` int(11) NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `note` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `akses` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `url` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 175 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, '::1', '2022-12-14 17:05:03', 'Create', 1, 'administrator', 'Tambah Siswa Kelas', 'Administrator', 'http://localhost/siakadbaru/rombel/tambahkekelas', 1, 1, '2022-12-14 16:05:02', '2022-12-14 16:05:02', '0');
INSERT INTO `log` VALUES (2, '::1', '2022-12-14 17:05:09', 'Update', 1, 'administrator', 'Ubah Data Siswa', 'Administrator', 'http://localhost/siakadbaru/rombel/hapusdarikelas', 1, 1, '2022-12-14 16:05:09', '2022-12-14 16:05:09', '0');
INSERT INTO `log` VALUES (3, '::1', '2022-12-15 13:31:00', 'Delete', 1, 'administrator', 'Hapus Matapelajaran', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/delete', 1, 1, '2022-12-15 12:30:48', '2022-12-15 12:30:48', '0');
INSERT INTO `log` VALUES (4, '::1', '2022-12-15 13:40:15', 'Delete', 1, 'administrator', 'Hapus Matapelajaran', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/delete', 1, 1, '2022-12-15 12:40:03', '2022-12-15 12:40:03', '0');
INSERT INTO `log` VALUES (5, '::1', '2022-12-15 13:40:37', 'Create', 1, 'administrator', 'Tambah Matapelajaran', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/action', 1, 1, '2022-12-15 12:40:25', '2022-12-15 12:40:25', '0');
INSERT INTO `log` VALUES (6, '::1', '2022-12-15 13:42:13', 'Create', 1, 'administrator', 'Tambah Matapelajaran', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/action', 1, 1, '2022-12-15 12:42:01', '2022-12-15 12:42:01', '0');
INSERT INTO `log` VALUES (7, '::1', '2022-12-15 13:44:10', 'Update', 1, 'administrator', 'Ubah Matapelajaran', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/action', 1, 1, '2022-12-15 12:43:57', '2022-12-15 12:43:57', '0');
INSERT INTO `log` VALUES (8, '::1', '2022-12-15 13:45:05', 'Create', 1, 'administrator', 'Tambah Matapelajaran', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/action', 1, 1, '2022-12-15 12:44:52', '2022-12-15 12:44:52', '0');
INSERT INTO `log` VALUES (9, '::1', '2022-12-15 13:52:54', 'Create', 1, 'administrator', 'Tambah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log` VALUES (10, '::1', '2022-12-15 13:52:54', 'Create', 1, 'administrator', 'Tambah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log` VALUES (11, '::1', '2022-12-15 13:52:54', 'Create', 1, 'administrator', 'Tambah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log` VALUES (12, '::1', '2022-12-15 13:52:54', 'Create', 1, 'administrator', 'Tambah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log` VALUES (13, '::1', '2022-12-15 13:53:18', 'Update', 1, 'administrator', 'Ubah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log` VALUES (14, '::1', '2022-12-15 13:53:18', 'Update', 1, 'administrator', 'Ubah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log` VALUES (15, '::1', '2022-12-15 13:53:18', 'Update', 1, 'administrator', 'Ubah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log` VALUES (16, '::1', '2022-12-15 13:53:18', 'Update', 1, 'administrator', 'Ubah Matapelajaran Kompetensi', 'Administrator', 'http://localhost/siakadbaru/matapelajaran/update_kompetensi', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log` VALUES (17, '2001:448a:1021:53eb:7dfb:dc36:1ccd:3e71', '2022-12-20 12:45:46', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-20 11:45:46', '2022-12-20 11:45:46', '0');
INSERT INTO `log` VALUES (18, '2001:448a:1021:53eb:7dfb:dc36:1ccd:3e71', '2022-12-20 12:48:11', 'Create', 1, 'administrator', 'Tambah karyawan Login', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-20 11:48:11', '2022-12-20 11:48:11', '0');
INSERT INTO `log` VALUES (19, '2001:448a:1021:53eb:7dfb:dc36:1ccd:3e71', '2022-12-20 12:48:11', 'Create', 1, 'administrator', 'Tambah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-20 11:48:11', '2022-12-20 11:48:11', '0');
INSERT INTO `log` VALUES (20, '2001:448a:1021:53eb:7dfb:dc36:1ccd:3e71', '2022-12-20 12:48:42', 'Create', 1, 'administrator', 'Tambah karyawan Login', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-20 11:48:42', '2022-12-20 11:48:42', '0');
INSERT INTO `log` VALUES (21, '2001:448a:1021:53eb:7dfb:dc36:1ccd:3e71', '2022-12-20 12:48:42', 'Create', 1, 'administrator', 'Tambah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-20 11:48:42', '2022-12-20 11:48:42', '0');
INSERT INTO `log` VALUES (22, '2001:448a:1021:53eb:7dfb:dc36:1ccd:3e71', '2022-12-20 12:49:08', 'Create', 1, 'administrator', 'Tambah karyawan Login', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-20 11:49:08', '2022-12-20 11:49:08', '0');
INSERT INTO `log` VALUES (23, '2001:448a:1021:53eb:7dfb:dc36:1ccd:3e71', '2022-12-20 12:49:08', 'Create', 1, 'administrator', 'Tambah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-20 11:49:08', '2022-12-20 11:49:08', '0');
INSERT INTO `log` VALUES (24, '43.225.185.227', '2022-12-20 14:23:22', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-20 13:23:22', '2022-12-20 13:23:22', '0');
INSERT INTO `log` VALUES (25, '43.225.185.227', '2022-12-20 14:25:24', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-20 13:25:24', '2022-12-20 13:25:24', '0');
INSERT INTO `log` VALUES (26, '43.225.185.227', '2022-12-20 14:27:20', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-20 13:27:20', '2022-12-20 13:27:20', '0');
INSERT INTO `log` VALUES (27, '43.225.185.227', '2022-12-21 14:22:40', 'Create', 1, 'administrator', 'Tambah karyawan Login', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:22:40', '2022-12-21 13:22:40', '0');
INSERT INTO `log` VALUES (28, '43.225.185.227', '2022-12-21 14:22:40', 'Create', 1, 'administrator', 'Tambah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:22:40', '2022-12-21 13:22:40', '0');
INSERT INTO `log` VALUES (29, '43.225.185.227', '2022-12-21 14:23:14', 'Update', 1, 'administrator', 'Ubah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:23:14', '2022-12-21 13:23:14', '0');
INSERT INTO `log` VALUES (30, '43.225.185.227', '2022-12-21 14:24:02', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-21 13:24:02', '2022-12-21 13:24:02', '0');
INSERT INTO `log` VALUES (31, '43.225.185.227', '2022-12-21 14:24:42', 'Update', 1, 'administrator', 'Ubah Group', 'Administrator', 'https://siakadmondial.cobademo.com/group/action', 1, 1, '2022-12-21 13:24:42', '2022-12-21 13:24:42', '0');
INSERT INTO `log` VALUES (32, '43.225.185.227', '2022-12-21 14:25:53', 'Create', 1, 'administrator', 'Tambah karyawan Login', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:25:53', '2022-12-21 13:25:53', '0');
INSERT INTO `log` VALUES (33, '43.225.185.227', '2022-12-21 14:25:53', 'Create', 1, 'administrator', 'Tambah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:25:53', '2022-12-21 13:25:53', '0');
INSERT INTO `log` VALUES (34, '43.225.185.227', '2022-12-21 14:26:13', 'Update', 1, 'administrator', 'Ubah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:26:13', '2022-12-21 13:26:13', '0');
INSERT INTO `log` VALUES (35, '43.225.185.227', '2022-12-21 14:26:43', 'Update', 1, 'administrator', 'Ubah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:26:43', '2022-12-21 13:26:43', '0');
INSERT INTO `log` VALUES (36, '43.225.185.227', '2022-12-21 14:27:36', 'Create', 1, 'administrator', 'Tambah karyawan Login', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:27:36', '2022-12-21 13:27:36', '0');
INSERT INTO `log` VALUES (37, '43.225.185.227', '2022-12-21 14:27:36', 'Create', 1, 'administrator', 'Tambah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:27:36', '2022-12-21 13:27:36', '0');
INSERT INTO `log` VALUES (38, '43.225.185.227', '2022-12-21 14:32:44', 'Update', 1, 'administrator', 'Ubah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-21 13:32:44', '2022-12-21 13:32:44', '0');
INSERT INTO `log` VALUES (39, '43.225.185.227', '2022-12-21 14:36:09', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-21 13:36:09', '2022-12-21 13:36:09', '0');
INSERT INTO `log` VALUES (40, '43.225.185.227', '2022-12-21 14:36:41', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-21 13:36:41', '2022-12-21 13:36:41', '0');
INSERT INTO `log` VALUES (41, '43.225.185.227', '2022-12-22 10:33:03', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-22 09:33:03', '2022-12-22 09:33:03', '0');
INSERT INTO `log` VALUES (42, '182.2.8.13', '2022-12-23 10:08:35', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-23 09:08:35', '2022-12-23 09:08:35', '0');
INSERT INTO `log` VALUES (43, '182.2.9.17', '2022-12-23 10:09:28', 'Create', 1, 'administrator', 'Tambah Group', 'Administrator', 'https://siakadmondial.cobademo.com/group/action', 1, 1, '2022-12-23 09:09:28', '2022-12-23 09:09:28', '0');
INSERT INTO `log` VALUES (44, '182.2.9.129', '2022-12-23 10:10:26', 'Create', 1, 'administrator', 'Tambah karyawan Login', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-23 09:10:26', '2022-12-23 09:10:26', '0');
INSERT INTO `log` VALUES (45, '182.2.9.129', '2022-12-23 10:10:26', 'Create', 1, 'administrator', 'Tambah karyawan', 'Administrator', 'https://siakadmondial.cobademo.com/karyawan/action', 1, 1, '2022-12-23 09:10:26', '2022-12-23 09:10:26', '0');
INSERT INTO `log` VALUES (46, '182.2.8.25', '2022-12-23 10:16:33', 'Create', 1, 'administrator', 'Tambah Jadwal', 'Administrator', 'https://siakadmondial.cobademo.com/jadwal/action', 1, 1, '2022-12-23 09:16:33', '2022-12-23 09:16:33', '0');
INSERT INTO `log` VALUES (47, '182.2.8.25', '2022-12-23 10:17:25', 'Create', 1, 'administrator', 'Tambah Jadwal', 'Administrator', 'https://siakadmondial.cobademo.com/jadwal/action', 1, 1, '2022-12-23 09:17:25', '2022-12-23 09:17:25', '0');
INSERT INTO `log` VALUES (48, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (49, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (50, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (51, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (52, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (53, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (54, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (55, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (56, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (57, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (58, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (59, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (60, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (61, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (62, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (63, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (64, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (65, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (66, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (67, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (68, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (69, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (70, '182.2.9.5', '2022-12-23 10:27:05', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log` VALUES (71, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (72, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (73, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (74, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (75, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (76, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (77, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (78, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (79, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (80, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (81, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (82, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (83, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (84, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (85, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (86, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (87, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (88, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (89, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (90, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (91, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (92, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (93, '182.2.9.5', '2022-12-23 10:27:13', 'Create', 1, 'administrator', 'Tambah Absensi Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/absensi/simpan_absensi_all', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log` VALUES (94, '182.2.9.5', '2022-12-23 10:27:42', 'Create', 1, 'administrator', 'Tambah Absensi Siswa Rapor', 'Administrator', 'https://siakadmondial.cobademo.com/absensi_rapor/simpan_absensi', 1, 1, '2022-12-23 09:27:42', '2022-12-23 09:27:42', '0');
INSERT INTO `log` VALUES (95, '182.2.8.25', '2022-12-23 10:43:28', 'Update', 1, 'administrator', 'Ubah Tahun Ajaran', 'Administrator', 'https://siakadmondial.cobademo.com/tahun/action', 1, 1, '2022-12-23 09:43:28', '2022-12-23 09:43:28', '0');
INSERT INTO `log` VALUES (96, '43.225.185.227', '2022-12-23 11:33:37', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2022-12-23 10:33:37', '2022-12-23 10:33:37', '0');
INSERT INTO `log` VALUES (97, '::1', '2022-12-23 15:30:49', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:30:48', '2022-12-23 14:30:48', '0');
INSERT INTO `log` VALUES (98, '::1', '2022-12-23 15:36:51', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:36:50', '2022-12-23 14:36:50', '0');
INSERT INTO `log` VALUES (99, '::1', '2022-12-23 15:38:18', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:38:18', '2022-12-23 14:38:18', '0');
INSERT INTO `log` VALUES (100, '::1', '2022-12-23 15:41:25', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:41:25', '2022-12-23 14:41:25', '0');
INSERT INTO `log` VALUES (101, '::1', '2022-12-23 15:42:15', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:42:14', '2022-12-23 14:42:14', '0');
INSERT INTO `log` VALUES (102, '::1', '2022-12-23 15:43:51', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:43:51', '2022-12-23 14:43:51', '0');
INSERT INTO `log` VALUES (103, '::1', '2022-12-23 15:49:45', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:49:45', '2022-12-23 14:49:45', '0');
INSERT INTO `log` VALUES (104, '::1', '2022-12-23 15:49:51', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:49:50', '2022-12-23 14:49:50', '0');
INSERT INTO `log` VALUES (105, '::1', '2022-12-23 15:49:55', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:49:55', '2022-12-23 14:49:55', '0');
INSERT INTO `log` VALUES (106, '::1', '2022-12-23 15:49:56', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/siakadbaru/group', 1, 1, '2022-12-23 14:49:56', '2022-12-23 14:49:56', '0');
INSERT INTO `log` VALUES (107, '2001:448a:1022:1366:1ca9:b98:adab:4035', '2022-12-30 15:39:27', 'Delete', 1, 'administrator', 'Hapus Siswa', 'Administrator', 'https://siakadmondial.cobademo.com/siswa/delete', 1, 1, '2022-12-30 14:39:27', '2022-12-30 14:39:27', '0');
INSERT INTO `log` VALUES (108, '::1', '2023-01-04 11:03:50', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/toko_komputer_admin/group', 1, 1, '2023-01-04 10:03:50', '2023-01-04 10:03:50', '0');
INSERT INTO `log` VALUES (109, '::1', '2023-01-06 11:24:04', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/toko_komputer_admin/group', 1, 1, '2023-01-06 10:24:04', '2023-01-06 10:24:04', '0');
INSERT INTO `log` VALUES (110, '2001:448a:1022:1366:7946:f7fb:ea06:449e', '2023-01-06 11:27:18', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'https://siakadmondial.cobademo.com/group', 1, 1, '2023-01-06 10:27:18', '2023-01-06 10:27:18', '0');
INSERT INTO `log` VALUES (111, '::1', '2023-01-06 10:33:07', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/toko_komputer_admin/group', 1, 1, '2023-01-06 10:33:07', '2023-01-06 10:33:07', '0');
INSERT INTO `log` VALUES (112, '::1', '2023-01-06 10:33:17', 'Delete', 1, 'administrator', 'Hapus Group', 'Administrator', 'http://localhost/toko_komputer_admin/group/delete', 1, 1, '2023-01-06 10:33:17', '2023-01-06 10:33:17', '0');
INSERT INTO `log` VALUES (113, '::1', '2023-01-06 10:33:32', 'Delete', 1, 'administrator', 'Hapus Group', 'Administrator', 'http://localhost/toko_komputer_admin/group/delete', 1, 1, '2023-01-06 10:33:32', '2023-01-06 10:33:32', '0');
INSERT INTO `log` VALUES (114, '::1', '2023-01-06 10:33:36', 'Delete', 1, 'administrator', 'Hapus Group', 'Administrator', 'http://localhost/toko_komputer_admin/group/delete', 1, 1, '2023-01-06 10:33:36', '2023-01-06 10:33:36', '0');
INSERT INTO `log` VALUES (115, '::1', '2023-01-06 10:33:39', 'Delete', 1, 'administrator', 'Hapus Group', 'Administrator', 'http://localhost/toko_komputer_admin/group/delete', 1, 1, '2023-01-06 10:33:39', '2023-01-06 10:33:39', '0');
INSERT INTO `log` VALUES (116, '::1', '2023-01-06 10:33:43', 'Delete', 1, 'administrator', 'Hapus Group', 'Administrator', 'http://localhost/toko_komputer_admin/group/delete', 1, 1, '2023-01-06 10:33:43', '2023-01-06 10:33:43', '0');
INSERT INTO `log` VALUES (117, '::1', '2023-01-06 10:33:48', 'Delete', 1, 'administrator', 'Hapus Group', 'Administrator', 'http://localhost/toko_komputer_admin/group/delete', 1, 1, '2023-01-06 10:33:48', '2023-01-06 10:33:48', '0');
INSERT INTO `log` VALUES (118, '::1', '2023-01-06 10:33:51', 'Delete', 1, 'administrator', 'Hapus Group', 'Administrator', 'http://localhost/toko_komputer_admin/group/delete', 1, 1, '2023-01-06 10:33:51', '2023-01-06 10:33:51', '0');
INSERT INTO `log` VALUES (119, '::1', '2023-01-06 10:35:06', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/toko_komputer_admin/group', 1, 1, '2023-01-06 10:35:06', '2023-01-06 10:35:06', '0');
INSERT INTO `log` VALUES (120, '::1', '2023-01-06 10:40:17', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/toko_komputer_admin/group', 1, 1, '2023-01-06 10:40:17', '2023-01-06 10:40:17', '0');
INSERT INTO `log` VALUES (121, '::1', '2023-01-06 11:41:53', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 11:41:54', '2023-01-06 11:41:54', '0');
INSERT INTO `log` VALUES (122, '::1', '2023-01-06 11:54:40', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 11:54:41', '2023-01-06 11:54:41', '0');
INSERT INTO `log` VALUES (123, '::1', '2023-01-06 11:54:47', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 11:54:48', '2023-01-06 11:54:48', '0');
INSERT INTO `log` VALUES (124, '::1', '2023-01-06 11:57:56', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 11:57:56', '2023-01-06 11:57:56', '0');
INSERT INTO `log` VALUES (125, '::1', '2023-01-06 11:59:41', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 11:59:41', '2023-01-06 11:59:41', '0');
INSERT INTO `log` VALUES (126, '::1', '2023-01-06 12:02:08', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 12:02:08', '2023-01-06 12:02:08', '0');
INSERT INTO `log` VALUES (127, '::1', '2023-01-06 12:09:47', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 12:09:47', '2023-01-06 12:09:47', '0');
INSERT INTO `log` VALUES (128, '::1', '2023-01-06 12:09:54', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 12:09:55', '2023-01-06 12:09:55', '0');
INSERT INTO `log` VALUES (129, '::1', '2023-01-06 12:20:59', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 12:20:59', '2023-01-06 12:20:59', '0');
INSERT INTO `log` VALUES (130, '::1', '2023-01-06 12:45:57', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-06 12:45:58', '2023-01-06 12:45:58', '0');
INSERT INTO `log` VALUES (131, '::1', '2023-01-10 10:14:30', 'Create', 1, 'administrator', 'Tambah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:14:30', '2023-01-10 10:14:30', '0');
INSERT INTO `log` VALUES (132, '::1', '2023-01-10 10:15:40', 'Update', 1, 'administrator', 'Ubah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:15:40', '2023-01-10 10:15:40', '0');
INSERT INTO `log` VALUES (133, '::1', '2023-01-10 10:16:27', 'Update', 1, 'administrator', 'Ubah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:16:27', '2023-01-10 10:16:27', '0');
INSERT INTO `log` VALUES (134, '::1', '2023-01-10 10:23:17', 'Create', 1, 'administrator', 'Tambah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:23:17', '2023-01-10 10:23:17', '0');
INSERT INTO `log` VALUES (135, '::1', '2023-01-10 10:24:16', 'Update', 1, 'administrator', 'Ubah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:24:16', '2023-01-10 10:24:16', '0');
INSERT INTO `log` VALUES (136, '::1', '2023-01-10 10:24:35', 'Delete', 1, 'administrator', 'Hapus Brand', 'Administrator', 'http://localhost/itstorecom/brand/delete', 1, 1, '2023-01-10 10:24:35', '2023-01-10 10:24:35', '0');
INSERT INTO `log` VALUES (137, '::1', '2023-01-10 10:38:30', 'Update', 1, 'administrator', 'Ubah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:38:30', '2023-01-10 10:38:30', '0');
INSERT INTO `log` VALUES (138, '::1', '2023-01-10 10:39:20', 'Create', 1, 'administrator', 'Tambah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:39:20', '2023-01-10 10:39:20', '0');
INSERT INTO `log` VALUES (139, '::1', '2023-01-10 10:39:48', 'Create', 1, 'administrator', 'Tambah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:39:48', '2023-01-10 10:39:48', '0');
INSERT INTO `log` VALUES (140, '::1', '2023-01-10 10:40:24', 'Update', 1, 'administrator', 'Ubah Brand', 'Administrator', 'http://localhost/itstorecom/brand/action', 1, 1, '2023-01-10 10:40:24', '2023-01-10 10:40:24', '0');
INSERT INTO `log` VALUES (141, '::1', '2023-01-10 10:40:54', 'Delete', 1, 'administrator', 'Hapus Brand', 'Administrator', 'http://localhost/itstorecom/brand/delete', 1, 1, '2023-01-10 10:40:54', '2023-01-10 10:40:54', '0');
INSERT INTO `log` VALUES (142, '::1', '2023-01-10 10:57:28', 'Create', 1, 'administrator', 'Tambah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 10:57:27', '2023-01-10 10:57:27', '0');
INSERT INTO `log` VALUES (143, '::1', '2023-01-10 10:58:14', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 10:58:14', '2023-01-10 10:58:14', '0');
INSERT INTO `log` VALUES (144, '::1', '2023-01-10 10:58:52', 'Create', 1, 'administrator', 'Tambah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 10:58:51', '2023-01-10 10:58:51', '0');
INSERT INTO `log` VALUES (145, '::1', '2023-01-10 11:00:17', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 11:00:16', '2023-01-10 11:00:16', '0');
INSERT INTO `log` VALUES (146, '::1', '2023-01-10 11:00:29', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 11:00:28', '2023-01-10 11:00:28', '0');
INSERT INTO `log` VALUES (147, '::1', '2023-01-10 11:00:35', 'Delete', 1, 'administrator', 'Hapus Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/delete', 1, 1, '2023-01-10 11:00:35', '2023-01-10 11:00:35', '0');
INSERT INTO `log` VALUES (148, '::1', '2023-01-10 11:00:43', 'Delete', 1, 'administrator', 'Hapus Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/delete', 1, 1, '2023-01-10 11:00:42', '2023-01-10 11:00:42', '0');
INSERT INTO `log` VALUES (149, '::1', '2023-01-10 11:12:11', 'Create', 1, 'administrator', 'Tambah Official brand', 'Administrator', 'http://localhost/itstorecom/official_brand/action', 1, 1, '2023-01-10 11:12:11', '2023-01-10 11:12:11', '0');
INSERT INTO `log` VALUES (150, '::1', '2023-01-10 11:12:41', 'Delete', 1, 'administrator', 'Hapus Official brand', 'Administrator', 'http://localhost/itstorecom/official_brand/delete', 1, 1, '2023-01-10 11:12:41', '2023-01-10 11:12:41', '0');
INSERT INTO `log` VALUES (151, '::1', '2023-01-10 11:12:51', 'Create', 1, 'administrator', 'Tambah Official brand', 'Administrator', 'http://localhost/itstorecom/official_brand/action', 1, 1, '2023-01-10 11:12:51', '2023-01-10 11:12:51', '0');
INSERT INTO `log` VALUES (152, '::1', '2023-01-10 11:13:04', 'Update', 1, 'administrator', 'Ubah Official brand', 'Administrator', 'http://localhost/itstorecom/official_brand/action', 1, 1, '2023-01-10 11:13:04', '2023-01-10 11:13:04', '0');
INSERT INTO `log` VALUES (153, '::1', '2023-01-10 11:27:42', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 11:27:41', '2023-01-10 11:27:41', '0');
INSERT INTO `log` VALUES (154, '::1', '2023-01-10 11:27:56', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 11:27:56', '2023-01-10 11:27:56', '0');
INSERT INTO `log` VALUES (155, '::1', '2023-01-10 11:28:09', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 11:28:08', '2023-01-10 11:28:08', '0');
INSERT INTO `log` VALUES (156, '::1', '2023-01-10 11:28:21', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 11:28:20', '2023-01-10 11:28:20', '0');
INSERT INTO `log` VALUES (157, '::1', '2023-01-10 11:28:33', 'Update', 1, 'administrator', 'Ubah Sekolah', 'Administrator', 'http://localhost/itstorecom/social_media/action', 1, 1, '2023-01-10 11:28:32', '2023-01-10 11:28:32', '0');
INSERT INTO `log` VALUES (158, '::1', '2023-01-10 13:17:55', 'Create', 1, 'administrator', 'Tambah Articles', 'Administrator', 'http://localhost/itstorecom/articles/action', 1, 1, '2023-01-10 13:17:54', '2023-01-10 13:17:54', '0');
INSERT INTO `log` VALUES (159, '::1', '2023-01-10 13:18:22', 'Delete', 1, 'administrator', 'Hapus Articles', 'Administrator', 'http://localhost/itstorecom/articles/delete', 1, 1, '2023-01-10 13:18:22', '2023-01-10 13:18:22', '0');
INSERT INTO `log` VALUES (160, '::1', '2023-01-10 13:18:28', 'Create', 1, 'administrator', 'Tambah Articles', 'Administrator', 'http://localhost/itstorecom/articles/action', 1, 1, '2023-01-10 13:18:27', '2023-01-10 13:18:27', '0');
INSERT INTO `log` VALUES (161, '::1', '2023-01-10 13:20:28', 'Create', 1, 'administrator', 'Tambah Subcategory', 'Administrator', 'http://localhost/itstorecom/subcategory/action', 1, 1, '2023-01-10 13:20:28', '2023-01-10 13:20:28', '0');
INSERT INTO `log` VALUES (162, '::1', '2023-01-10 15:22:32', 'Create', 1, 'administrator', 'Tambah Product', 'Administrator', 'http://localhost/itstorecom/product/action', 1, 1, '2023-01-10 15:22:32', '2023-01-10 15:22:32', '0');
INSERT INTO `log` VALUES (163, '::1', '2023-01-10 15:32:22', 'Create', 1, 'administrator', 'Tambah Product', 'Administrator', 'http://localhost/itstorecom/product/action', 1, 1, '2023-01-10 15:32:22', '2023-01-10 15:32:22', '0');
INSERT INTO `log` VALUES (164, '::1', '2023-01-10 16:26:05', 'Create', 1, 'administrator', 'Tambah Subcategory', 'Administrator', 'http://localhost/itstorecom/subcategory/action', 1, 1, '2023-01-10 16:26:05', '2023-01-10 16:26:05', '0');
INSERT INTO `log` VALUES (165, '::1', '2023-01-10 16:26:34', 'Update', 1, 'administrator', 'Ubah Subcategory', 'Administrator', 'http://localhost/itstorecom/subcategory/action', 1, 1, '2023-01-10 16:26:34', '2023-01-10 16:26:34', '0');
INSERT INTO `log` VALUES (166, '::1', '2023-01-10 16:26:58', 'Delete', 1, 'administrator', 'Hapus Subcategory', 'Administrator', 'http://localhost/itstorecom/subcategory/delete', 1, 1, '2023-01-10 16:26:58', '2023-01-10 16:26:58', '0');
INSERT INTO `log` VALUES (167, '::1', '2023-01-10 16:27:07', 'Delete', 1, 'administrator', 'Hapus Subcategory', 'Administrator', 'http://localhost/itstorecom/subcategory/delete', 1, 1, '2023-01-10 16:27:07', '2023-01-10 16:27:07', '0');
INSERT INTO `log` VALUES (168, '::1', '2023-01-10 16:30:54', 'Create', 1, 'administrator', 'Tambah Product', 'Administrator', 'http://localhost/itstorecom/product/action', 1, 1, '2023-01-10 16:30:54', '2023-01-10 16:30:54', '0');
INSERT INTO `log` VALUES (169, '::1', '2023-01-10 16:49:51', 'Create', 1, 'administrator', 'Tambah Sekolah', 'Administrator', 'http://localhost/itstorecom/category/action', 1, 1, '2023-01-10 16:49:50', '2023-01-10 16:49:50', '0');
INSERT INTO `log` VALUES (170, '::1', '2023-01-10 16:50:04', 'Delete', 1, 'administrator', 'Hapus Sekolah', 'Administrator', 'http://localhost/itstorecom/category/delete', 1, 1, '2023-01-10 16:50:04', '2023-01-10 16:50:04', '0');
INSERT INTO `log` VALUES (171, '::1', '2023-01-11 18:05:49', 'View', 1, 'administrator', 'Melihat Group', 'Administrator', 'http://localhost/itstorecom/group', 1, 1, '2023-01-11 18:05:49', '2023-01-11 18:05:49', '0');
INSERT INTO `log` VALUES (172, '::1', '2023-01-11 19:07:18', 'Delete', 1, 'administrator', 'Hapus Articles', 'Administrator', 'http://localhost/itstorecom/articles/delete', 1, 1, '2023-01-11 19:07:18', '2023-01-11 19:07:18', '0');
INSERT INTO `log` VALUES (173, '::1', '2023-01-11 19:20:51', 'Create', 1, 'administrator', 'Tambah Articles', 'Administrator', 'http://localhost/itstorecom/articles/action', 1, 1, '2023-01-11 19:20:51', '2023-01-11 19:20:51', '0');
INSERT INTO `log` VALUES (174, '::1', '2023-01-11 19:22:55', 'Update', 1, 'administrator', 'Ubah Articles', 'Administrator', 'http://localhost/itstorecom/articles/action', 1, 1, '2023-01-11 19:22:55', '2023-01-11 19:22:55', '0');

-- ----------------------------
-- Table structure for log_change
-- ----------------------------
DROP TABLE IF EXISTS `log_change`;
CREATE TABLE `log_change`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_id` int(11) NULL DEFAULT NULL,
  `table` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `record_id` int(11) NULL DEFAULT NULL,
  `data` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_change
-- ----------------------------
INSERT INTO `log_change` VALUES (1, 1, 'rombel', 0, '{\"nama_tahun\":\"2021\\/2022\",\"kelas_id\":\"11\",\"siswa_id\":\"45\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-14 16:05:02\",\"updated_at\":\"2022-12-14 16:05:02\",\"softdelete\":\"0\"}', 1, 1, '2022-12-14 16:05:02', '2022-12-14 16:05:02', '0');
INSERT INTO `log_change` VALUES (2, 2, 'siswa', 45, '{\"kelas_id\":0,\"users_updated\":\"1\",\"updated_at\":\"2022-12-14 16:05:08\"}', 1, 1, '2022-12-14 16:05:09', '2022-12-14 16:05:09', '0');
INSERT INTO `log_change` VALUES (3, 3, 'matapelajaran', 75, '{\"softdelete\":\"1\",\"updated_at\":\"2022-12-15 12:30:48\",\"users_updated\":\"1\"}', 1, 1, '2022-12-15 12:30:48', '2022-12-15 12:30:48', '0');
INSERT INTO `log_change` VALUES (4, 4, 'matapelajaran', 81, '{\"softdelete\":\"1\",\"updated_at\":\"2022-12-15 12:40:03\",\"users_updated\":\"1\"}', 1, 1, '2022-12-15 12:40:03', '2022-12-15 12:40:03', '0');
INSERT INTO `log_change` VALUES (5, 5, 'matapelajaran', 199, '{\"semester\":\"Ganjil\",\"sekolah_id\":\"3\",\"kurikulum_id\":\"1\",\"kelompok_matapelajaran_id\":\"1\",\"level_kelas_id\":\"7\",\"kode_matapelajaran\":\"MP13\",\"nama_id\":\"BAHASA MANDARIN ELEMENTARY 1\",\"nama_en\":\"BAHASA MANDARIN ELEMENTARY 1\",\"urut_rapor\":\"0\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:40:25\",\"updated_at\":\"2022-12-15 12:40:25\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:40:25', '2022-12-15 12:40:25', '0');
INSERT INTO `log_change` VALUES (6, 6, 'matapelajaran', 200, '{\"semester\":\"Ganjil\",\"sekolah_id\":\"3\",\"kurikulum_id\":\"1\",\"kelompok_matapelajaran_id\":\"1\",\"level_kelas_id\":\"7\",\"kode_matapelajaran\":\"MP13\",\"nama_id\":\"BAHASA MANDARIN ELEMENTARY 1\",\"nama_en\":\"1\",\"urut_rapor\":\"0\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:42:01\",\"updated_at\":\"2022-12-15 12:42:01\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:42:01', '2022-12-15 12:42:01', '0');
INSERT INTO `log_change` VALUES (7, 7, 'matapelajaran', 87, '{\"semester\":\"Ganjil\",\"sekolah_id\":\"3\",\"kurikulum_id\":\"1\",\"kelompok_matapelajaran_id\":\"1\",\"kode_matapelajaran\":\"MP13\",\"nama_id\":\"BAHASA MANDARIN ELEMENTARY 11\",\"nama_en\":\"11\",\"urut_rapor\":\"0\",\"updated_at\":\"2022-12-15 12:43:57\",\"users_updated\":\"1\"}', 1, 1, '2022-12-15 12:43:57', '2022-12-15 12:43:57', '0');
INSERT INTO `log_change` VALUES (8, 8, 'matapelajaran', 201, '{\"semester\":\"Ganjil\",\"sekolah_id\":\"3\",\"kurikulum_id\":\"1\",\"kelompok_matapelajaran_id\":\"1\",\"level_kelas_id\":\"7\",\"kode_matapelajaran\":\"123\",\"nama_id\":\"123\",\"nama_en\":\"123\",\"urut_rapor\":\"0\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:44:52\",\"updated_at\":\"2022-12-15 12:44:52\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:44:52', '2022-12-15 12:44:52', '0');
INSERT INTO `log_change` VALUES (9, 9, 'matapelajaran_kompetensi', 1, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"A\",\"pengetahuan_id\":\"1\",\"pengetahuan_en\":\"1\",\"keterampilan_id\":\"1\",\"keterampilan_en\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:52:42\",\"updated_at\":\"2022-12-15 12:52:42\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log_change` VALUES (10, 10, 'matapelajaran_kompetensi', 2, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"B\",\"pengetahuan_id\":\"1\",\"pengetahuan_en\":\"1\",\"keterampilan_id\":\"1\",\"keterampilan_en\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:52:42\",\"updated_at\":\"2022-12-15 12:52:42\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log_change` VALUES (11, 11, 'matapelajaran_kompetensi', 3, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"C\",\"pengetahuan_id\":\"1\",\"pengetahuan_en\":\"1\",\"keterampilan_id\":\"1\",\"keterampilan_en\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:52:42\",\"updated_at\":\"2022-12-15 12:52:42\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log_change` VALUES (12, 12, 'matapelajaran_kompetensi', 4, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"D\",\"pengetahuan_id\":\"1\",\"pengetahuan_en\":\"1\",\"keterampilan_id\":\"1\",\"keterampilan_en\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:52:42\",\"updated_at\":\"2022-12-15 12:52:42\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:52:42', '2022-12-15 12:52:42', '0');
INSERT INTO `log_change` VALUES (13, 13, 'matapelajaran_kompetensi', 1, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"A\",\"pengetahuan_id\":\"\",\"pengetahuan_en\":\"\",\"keterampilan_id\":\"\",\"keterampilan_en\":\"\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:53:06\",\"updated_at\":\"2022-12-15 12:53:06\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log_change` VALUES (14, 14, 'matapelajaran_kompetensi', 2, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"B\",\"pengetahuan_id\":\"\",\"pengetahuan_en\":\"\",\"keterampilan_id\":\"\",\"keterampilan_en\":\"\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:53:06\",\"updated_at\":\"2022-12-15 12:53:06\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log_change` VALUES (15, 15, 'matapelajaran_kompetensi', 3, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"C\",\"pengetahuan_id\":\"\",\"pengetahuan_en\":\"\",\"keterampilan_id\":\"\",\"keterampilan_en\":\"\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:53:06\",\"updated_at\":\"2022-12-15 12:53:06\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log_change` VALUES (16, 16, 'matapelajaran_kompetensi', 4, '{\"matapelajaran_id\":\"87\",\"nilai_huruf\":\"D\",\"pengetahuan_id\":\"\",\"pengetahuan_en\":\"\",\"keterampilan_id\":\"\",\"keterampilan_en\":\"\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-15 12:53:06\",\"updated_at\":\"2022-12-15 12:53:06\",\"softdelete\":\"0\"}', 1, 1, '2022-12-15 12:53:06', '2022-12-15 12:53:06', '0');
INSERT INTO `log_change` VALUES (17, 18, 'users', 120, '{\"name\":\"Kepala Sekolah\",\"username\":\"kepalasekolah\",\"password\":\"kepalasekolah\",\"foto\":\"profile.png\",\"group_id\":\"7\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-20 11:48:11\",\"updated_at\":\"2022-12-20 11:48:11\",\"softdelete\":\"0\"}', 1, 1, '2022-12-20 11:48:11', '2022-12-20 11:48:11', '0');
INSERT INTO `log_change` VALUES (18, 19, 'karyawan', 1, '{\"users_id\":120,\"nama\":\"Kepala Sekolah\",\"group_id\":\"7\",\"foto\":\"[]\",\"nip\":\"kepalasekolah\",\"nik\":\"\",\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-20\",\"kelamin\":\"L\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"1\",\"status_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-20 11:48:11\",\"updated_at\":\"2022-12-20 11:48:11\",\"softdelete\":\"0\"}', 1, 1, '2022-12-20 11:48:11', '2022-12-20 11:48:11', '0');
INSERT INTO `log_change` VALUES (19, 20, 'users', 121, '{\"name\":\"Kepegawaian\",\"username\":\"kepegawaian\",\"password\":\"kepegawaian\",\"foto\":\"profile.png\",\"group_id\":\"6\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-20 11:48:42\",\"updated_at\":\"2022-12-20 11:48:42\",\"softdelete\":\"0\"}', 1, 1, '2022-12-20 11:48:42', '2022-12-20 11:48:42', '0');
INSERT INTO `log_change` VALUES (20, 21, 'karyawan', 2, '{\"users_id\":121,\"nama\":\"Kepegawaian\",\"group_id\":\"6\",\"foto\":\"[]\",\"nip\":\"kepegawaian\",\"nik\":\"\",\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-20\",\"kelamin\":\"L\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"1\",\"status_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-20 11:48:42\",\"updated_at\":\"2022-12-20 11:48:42\",\"softdelete\":\"0\"}', 1, 1, '2022-12-20 11:48:42', '2022-12-20 11:48:42', '0');
INSERT INTO `log_change` VALUES (21, 22, 'users', 122, '{\"name\":\"Akademik\",\"username\":\"akademik\",\"password\":\"akademik\",\"foto\":\"profile.png\",\"group_id\":\"5\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-20 11:49:08\",\"updated_at\":\"2022-12-20 11:49:08\",\"softdelete\":\"0\"}', 1, 1, '2022-12-20 11:49:08', '2022-12-20 11:49:08', '0');
INSERT INTO `log_change` VALUES (22, 23, 'karyawan', 3, '{\"users_id\":122,\"nama\":\"Akademik\",\"group_id\":\"5\",\"foto\":\"[]\",\"nip\":\"akademik\",\"nik\":\"\",\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-20\",\"kelamin\":\"L\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"1\",\"status_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-20 11:49:08\",\"updated_at\":\"2022-12-20 11:49:08\",\"softdelete\":\"0\"}', 1, 1, '2022-12-20 11:49:08', '2022-12-20 11:49:08', '0');
INSERT INTO `log_change` VALUES (23, 27, 'users', 123, '{\"name\":\"SISKA AGUSTIRANTI\",\"username\":\"201306090092\",\"password\":\"201306090092\",\"foto\":\"profile.png\",\"group_id\":\"4\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-21 13:22:40\",\"updated_at\":\"2022-12-21 13:22:40\",\"softdelete\":\"0\"}', 1, 1, '2022-12-21 13:22:40', '2022-12-21 13:22:40', '0');
INSERT INTO `log_change` VALUES (24, 28, 'karyawan', 4, '{\"users_id\":123,\"nama\":\"SISKA AGUSTIRANTI\",\"group_id\":\"4\",\"foto\":\"[]\",\"nip\":\"201306090092\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-04\",\"kelamin\":\"P\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"2\",\"status_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-21 13:22:40\",\"updated_at\":\"2022-12-21 13:22:40\",\"softdelete\":\"0\"}', 1, 1, '2022-12-21 13:22:40', '2022-12-21 13:22:40', '0');
INSERT INTO `log_change` VALUES (25, 29, 'karyawan', 4, '{\"nama\":\"Siska Agustiranti\",\"foto\":\"[]\",\"nip\":\"201306090092\",\"group_id\":\"4\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-04\",\"kelamin\":\"P\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"2\",\"status_id\":null,\"updated_at\":\"2022-12-21 13:23:14\",\"users_updated\":\"1\"}', 1, 1, '2022-12-21 13:23:14', '2022-12-21 13:23:14', '0');
INSERT INTO `log_change` VALUES (26, 31, 'groups', 4, '{\"group_name\":\"Akademik Kontrol\",\"view\":\"Yes\",\"create\":\"Yes\",\"update\":\"Yes\",\"delete\":\"No\",\"updated_at\":\"2022-12-21 13:24:42\",\"users_updated\":\"1\"}', 1, 1, '2022-12-21 13:24:42', '2022-12-21 13:24:42', '0');
INSERT INTO `log_change` VALUES (27, 32, 'users', 124, '{\"name\":\"WILUJENG PARAMITHA\",\"username\":\"2015-01-15-0107\",\"password\":\"2015-01-15-0107\",\"foto\":\"profile.png\",\"group_id\":\"4\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-21 13:25:53\",\"updated_at\":\"2022-12-21 13:25:53\",\"softdelete\":\"0\"}', 1, 1, '2022-12-21 13:25:53', '2022-12-21 13:25:53', '0');
INSERT INTO `log_change` VALUES (28, 33, 'karyawan', 5, '{\"users_id\":124,\"nama\":\"WILUJENG PARAMITHA\",\"group_id\":\"4\",\"foto\":\"[]\",\"nip\":\"2015-01-15-0107\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-21\",\"kelamin\":\"P\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"1\",\"status_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-21 13:25:53\",\"updated_at\":\"2022-12-21 13:25:53\",\"softdelete\":\"0\"}', 1, 1, '2022-12-21 13:25:53', '2022-12-21 13:25:53', '0');
INSERT INTO `log_change` VALUES (29, 34, 'karyawan', 4, '{\"nama\":\"Siska Agustiranti\",\"foto\":\"[]\",\"nip\":\"2013-06-09-0092\",\"group_id\":\"4\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-04\",\"kelamin\":\"P\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"2\",\"status_id\":null,\"updated_at\":\"2022-12-21 13:26:13\",\"users_updated\":\"1\"}', 1, 1, '2022-12-21 13:26:13', '2022-12-21 13:26:13', '0');
INSERT INTO `log_change` VALUES (30, 35, 'karyawan', 5, '{\"nama\":\"Wilujeng Paramitha\",\"foto\":\"[]\",\"nip\":\"2015-01-15-0107\",\"group_id\":\"4\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-21\",\"kelamin\":\"P\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"3\",\"status_id\":null,\"updated_at\":\"2022-12-21 13:26:43\",\"users_updated\":\"1\"}', 1, 1, '2022-12-21 13:26:43', '2022-12-21 13:26:43', '0');
INSERT INTO `log_change` VALUES (31, 36, 'users', 125, '{\"name\":\"Eva Susanti\",\"username\":\"2013-06-17-0082\",\"password\":\"2013-06-17-0082\",\"foto\":\"profile.png\",\"group_id\":\"4\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-21 13:27:36\",\"updated_at\":\"2022-12-21 13:27:36\",\"softdelete\":\"0\"}', 1, 1, '2022-12-21 13:27:36', '2022-12-21 13:27:36', '0');
INSERT INTO `log_change` VALUES (32, 37, 'karyawan', 6, '{\"users_id\":125,\"nama\":\"Eva Susanti\",\"group_id\":\"4\",\"foto\":\"[]\",\"nip\":\"2013-06-17-0082\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-21\",\"kelamin\":\"P\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"4\",\"status_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-21 13:27:36\",\"updated_at\":\"2022-12-21 13:27:36\",\"softdelete\":\"0\"}', 1, 1, '2022-12-21 13:27:36', '2022-12-21 13:27:36', '0');
INSERT INTO `log_change` VALUES (33, 38, 'karyawan', 4, '{\"nama\":\"Siska Agustiranti\",\"foto\":\"[]\",\"nip\":\"2013-06-09-0092\",\"group_id\":\"4\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-04\",\"kelamin\":\"P\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"2\",\"status_id\":null,\"updated_at\":\"2022-12-21 13:32:44\",\"users_updated\":\"1\"}', 1, 1, '2022-12-21 13:32:44', '2022-12-21 13:32:44', '0');
INSERT INTO `log_change` VALUES (34, 43, 'groups', 12, '{\"group_name\":\"Front Office\",\"view\":\"Yes\",\"create\":\"No\",\"update\":\"No\",\"delete\":\"No\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:09:28\",\"updated_at\":\"2022-12-23 09:09:28\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:09:28', '2022-12-23 09:09:28', '0');
INSERT INTO `log_change` VALUES (35, 44, 'users', 126, '{\"name\":\"Nova\",\"username\":\"202212230001\",\"password\":\"202212230001\",\"foto\":\"profile.png\",\"group_id\":\"12\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:10:26\",\"updated_at\":\"2022-12-23 09:10:26\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:10:26', '2022-12-23 09:10:26', '0');
INSERT INTO `log_change` VALUES (36, 45, 'karyawan', 7, '{\"users_id\":126,\"nama\":\"Nova\",\"group_id\":\"12\",\"foto\":\"[]\",\"nip\":\"202212230001\",\"nik\":null,\"tempat_lahir\":\"\",\"tanggal_lahir\":\"2022-12-23\",\"kelamin\":\"L\",\"agama\":\"1\",\"alamat\":\"\",\"telepon_rumah\":\"\",\"sekolah_id\":\"4\",\"status_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:10:26\",\"updated_at\":\"2022-12-23 09:10:26\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:10:26', '2022-12-23 09:10:26', '0');
INSERT INTO `log_change` VALUES (37, 46, 'jadwal', 0, '{\"sekolah_id\":\"3\",\"tahun_id\":\"1\",\"semester\":\"Ganjil\",\"matapelajaran_id\":\"155\",\"kelas_id\":\"35\",\"hari_id\":\"1\",\"waktu_id\":\"1\",\"waktu_nama\":\"Sesi 1\",\"ruangan_id\":\"1\",\"pengajaran_tim\":\"No\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:16:33\",\"updated_at\":\"2022-12-23 09:16:33\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:16:33', '2022-12-23 09:16:33', '0');
INSERT INTO `log_change` VALUES (38, 47, 'jadwal', 0, '{\"sekolah_id\":\"3\",\"tahun_id\":\"1\",\"semester\":\"Ganjil\",\"matapelajaran_id\":\"155\",\"kelas_id\":\"35\",\"hari_id\":\"1\",\"waktu_id\":\"1\",\"waktu_nama\":\"Sesi 1\",\"ruangan_id\":\"2\",\"pengajaran_tim\":\"No\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:17:25\",\"updated_at\":\"2022-12-23 09:17:25\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:17:25', '2022-12-23 09:17:25', '0');
INSERT INTO `log_change` VALUES (39, 48, 'absensi_siswa', 1, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"190\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (40, 49, 'absensi_siswa', 2, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"192\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (41, 50, 'absensi_siswa', 3, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"194\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (42, 51, 'absensi_siswa', 4, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"195\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (43, 52, 'absensi_siswa', 5, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"196\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (44, 53, 'absensi_siswa', 6, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"199\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (45, 54, 'absensi_siswa', 7, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"200\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (46, 55, 'absensi_siswa', 8, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"205\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (47, 56, 'absensi_siswa', 9, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"207\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (48, 57, 'absensi_siswa', 10, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"208\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (49, 58, 'absensi_siswa', 11, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"212\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (50, 59, 'absensi_siswa', 12, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"213\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (51, 60, 'absensi_siswa', 13, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"214\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (52, 61, 'absensi_siswa', 14, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"215\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (53, 62, 'absensi_siswa', 15, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"216\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (54, 63, 'absensi_siswa', 16, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"217\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (55, 64, 'absensi_siswa', 17, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"220\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (56, 65, 'absensi_siswa', 18, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"222\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (57, 66, 'absensi_siswa', 19, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"225\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (58, 67, 'absensi_siswa', 20, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"227\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (59, 68, 'absensi_siswa', 21, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"228\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (60, 69, 'absensi_siswa', 22, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"229\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (61, 70, 'absensi_siswa', 23, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-23\",\"siswa_id\":\"232\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:05\",\"updated_at\":\"2022-12-23 09:27:05\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:05', '2022-12-23 09:27:05', '0');
INSERT INTO `log_change` VALUES (62, 71, 'absensi_siswa', 24, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"190\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (63, 72, 'absensi_siswa', 25, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"192\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (64, 73, 'absensi_siswa', 26, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"194\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (65, 74, 'absensi_siswa', 27, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"195\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (66, 75, 'absensi_siswa', 28, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"196\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (67, 76, 'absensi_siswa', 29, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"199\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (68, 77, 'absensi_siswa', 30, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"200\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (69, 78, 'absensi_siswa', 31, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"205\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (70, 79, 'absensi_siswa', 32, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"207\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (71, 80, 'absensi_siswa', 33, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"208\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (72, 81, 'absensi_siswa', 34, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"212\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (73, 82, 'absensi_siswa', 35, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"213\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (74, 83, 'absensi_siswa', 36, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"214\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (75, 84, 'absensi_siswa', 37, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"215\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (76, 85, 'absensi_siswa', 38, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"216\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (77, 86, 'absensi_siswa', 39, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"217\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (78, 87, 'absensi_siswa', 40, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"220\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (79, 88, 'absensi_siswa', 41, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"222\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (80, 89, 'absensi_siswa', 42, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"225\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (81, 90, 'absensi_siswa', 43, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"227\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (82, 91, 'absensi_siswa', 44, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"228\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (83, 92, 'absensi_siswa', 45, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"229\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (84, 93, 'absensi_siswa', 46, '{\"sekolah_id\":\"3\",\"kelas_id\":\"35\",\"tanggal\":\"2022-12-22\",\"siswa_id\":\"232\",\"jenis_absensi_id\":\"4\",\"keterangan\":\"TK\",\"tahun_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:13\",\"updated_at\":\"2022-12-23 09:27:13\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:13', '2022-12-23 09:27:13', '0');
INSERT INTO `log_change` VALUES (85, 94, 'absensi_siswa_rapor', 1, '{\"tahun_id\":\"1\",\"siswa_id\":\"190\",\"jenis_absensi_id\":\"4\",\"total\":\"3\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2022-12-23 09:27:42\",\"updated_at\":\"2022-12-23 09:27:42\",\"softdelete\":\"0\"}', 1, 1, '2022-12-23 09:27:42', '2022-12-23 09:27:42', '0');
INSERT INTO `log_change` VALUES (86, 95, 'tahun', 4, '{\"nama\":\"2022\\/2023\",\"semester_indo\":\"Genap\",\"semester_english\":\"Second\",\"status\":\"Aktif\",\"from_date\":\"2023-01-01\",\"to_date\":\"2023-06-30\",\"updated_at\":\"2022-12-23 09:43:28\",\"users_updated\":\"1\"}', 1, 1, '2022-12-23 09:43:28', '2022-12-23 09:43:28', '0');
INSERT INTO `log_change` VALUES (87, 107, 'siswa', 1, '{\"softdelete\":\"1\",\"updated_at\":\"2022-12-30 14:39:27\",\"users_updated\":\"1\"}', 1, 1, '2022-12-30 14:39:27', '2022-12-30 14:39:27', '0');
INSERT INTO `log_change` VALUES (88, 112, 'groups', 12, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-06 10:33:17\",\"users_updated\":\"1\"}', 1, 1, '2023-01-06 10:33:17', '2023-01-06 10:33:17', '0');
INSERT INTO `log_change` VALUES (89, 113, 'groups', 7, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-06 10:33:32\",\"users_updated\":\"1\"}', 1, 1, '2023-01-06 10:33:32', '2023-01-06 10:33:32', '0');
INSERT INTO `log_change` VALUES (90, 114, 'groups', 6, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-06 10:33:36\",\"users_updated\":\"1\"}', 1, 1, '2023-01-06 10:33:36', '2023-01-06 10:33:36', '0');
INSERT INTO `log_change` VALUES (91, 115, 'groups', 5, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-06 10:33:39\",\"users_updated\":\"1\"}', 1, 1, '2023-01-06 10:33:39', '2023-01-06 10:33:39', '0');
INSERT INTO `log_change` VALUES (92, 116, 'groups', 4, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-06 10:33:43\",\"users_updated\":\"1\"}', 1, 1, '2023-01-06 10:33:43', '2023-01-06 10:33:43', '0');
INSERT INTO `log_change` VALUES (93, 117, 'groups', 3, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-06 10:33:48\",\"users_updated\":\"1\"}', 1, 1, '2023-01-06 10:33:48', '2023-01-06 10:33:48', '0');
INSERT INTO `log_change` VALUES (94, 118, 'groups', 2, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-06 10:33:51\",\"users_updated\":\"1\"}', 1, 1, '2023-01-06 10:33:51', '2023-01-06 10:33:51', '0');
INSERT INTO `log_change` VALUES (95, 131, 'brand', 128, '{\"nama\":\"tes\",\"images\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 10:14:30\",\"updated_at\":\"2023-01-10 10:14:30\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 10:14:30', '2023-01-10 10:14:30', '0');
INSERT INTO `log_change` VALUES (96, 132, 'brand', 128, '{\"nama\":\"tes2\",\"images\":null,\"updated_at\":\"2023-01-10 10:15:40\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:15:40', '2023-01-10 10:15:40', '0');
INSERT INTO `log_change` VALUES (97, 133, 'brand', 128, '{\"nama\":\"tes2\",\"images\":null,\"updated_at\":\"2023-01-10 10:16:27\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:16:27', '2023-01-10 10:16:27', '0');
INSERT INTO `log_change` VALUES (98, 134, 'brand', 129, '{\"nama\":\"aaaa\",\"images\":\"[{\\\"file_name\\\":\\\"logo_pemerintah.png\\\",\\\"file_size\\\":7914,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_pemerintah.png\\\"}]\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 10:23:17\",\"updated_at\":\"2023-01-10 10:23:17\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 10:23:17', '2023-01-10 10:23:17', '0');
INSERT INTO `log_change` VALUES (99, 135, 'brand', 129, '{\"nama\":\"bbbbbbbb\",\"images\":\"[{\\\"file_name\\\":\\\"logo_mondial.png\\\",\\\"file_size\\\":7910,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_mondial.png\\\"}]\",\"updated_at\":\"2023-01-10 10:24:16\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:24:16', '2023-01-10 10:24:16', '0');
INSERT INTO `log_change` VALUES (100, 136, 'brand', 129, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 10:24:35\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:24:35', '2023-01-10 10:24:35', '0');
INSERT INTO `log_change` VALUES (101, 137, 'brand', 128, '{\"nama\":\"tes2\",\"images\":null,\"updated_at\":\"2023-01-10 10:38:30\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:38:30', '2023-01-10 10:38:30', '0');
INSERT INTO `log_change` VALUES (102, 138, 'brand', 130, '{\"nama\":\"enter\",\"images\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 10:39:20\",\"updated_at\":\"2023-01-10 10:39:20\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 10:39:20', '2023-01-10 10:39:20', '0');
INSERT INTO `log_change` VALUES (103, 139, 'brand', 131, '{\"nama\":\"tes\",\"images\":\"[{\\\"file_name\\\":\\\"logo_mondial.png\\\",\\\"file_size\\\":7910,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_mondial.png\\\"}]\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 10:39:48\",\"updated_at\":\"2023-01-10 10:39:48\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 10:39:48', '2023-01-10 10:39:48', '0');
INSERT INTO `log_change` VALUES (104, 140, 'brand', 131, '{\"nama\":\"tes\",\"images\":\"[{\\\"file_name\\\":\\\"logo_pemerintah.png\\\",\\\"file_size\\\":7914,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_pemerintah.png\\\"}]\",\"updated_at\":\"2023-01-10 10:40:24\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:40:24', '2023-01-10 10:40:24', '0');
INSERT INTO `log_change` VALUES (105, 141, 'brand', 130, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 10:40:54\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:40:54', '2023-01-10 10:40:54', '0');
INSERT INTO `log_change` VALUES (106, 142, 'social_media', 6, '{\"nama\":\"a\",\"logo\":\"[{\\\"file_name\\\":\\\"logo_mondial.png\\\",\\\"file_size\\\":7910,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_mondial.png\\\"}]\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 10:57:27\",\"updated_at\":\"2023-01-10 10:57:27\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 10:57:27', '2023-01-10 10:57:27', '0');
INSERT INTO `log_change` VALUES (107, 143, 'social_media', 6, '{\"nama\":\"a\",\"logo\":\"[{\\\"file_name\\\":\\\"logo_mondial.png\\\",\\\"file_size\\\":7910,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_mondial.png\\\"}]\",\"updated_at\":\"2023-01-10 10:58:14\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 10:58:14', '2023-01-10 10:58:14', '0');
INSERT INTO `log_change` VALUES (108, 144, 'social_media', 7, '{\"nama\":\"b\",\"logo\":\"[{\\\"file_name\\\":\\\"logo_pemerintah.png\\\",\\\"file_size\\\":7914,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_pemerintah.png\\\"}]\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 10:58:51\",\"updated_at\":\"2023-01-10 10:58:51\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 10:58:51', '2023-01-10 10:58:51', '0');
INSERT INTO `log_change` VALUES (109, 145, 'social_media', 6, '{\"nama\":\"a\",\"link\":\"aaa\",\"logo\":\"[{\\\"file_name\\\":\\\"logo_mondial.png\\\",\\\"file_size\\\":7910,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_mondial.png\\\"}]\",\"updated_at\":\"2023-01-10 11:00:16\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:00:16', '2023-01-10 11:00:16', '0');
INSERT INTO `log_change` VALUES (110, 146, 'social_media', 7, '{\"nama\":\"b\",\"link\":\"bbbb\",\"logo\":\"[{\\\"file_name\\\":\\\"logo_pemerintah.png\\\",\\\"file_size\\\":7914,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_pemerintah.png\\\"}]\",\"updated_at\":\"2023-01-10 11:00:28\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:00:28', '2023-01-10 11:00:28', '0');
INSERT INTO `log_change` VALUES (111, 147, 'social_media', 6, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 11:00:35\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:00:35', '2023-01-10 11:00:35', '0');
INSERT INTO `log_change` VALUES (112, 148, 'social_media', 7, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 11:00:42\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:00:42', '2023-01-10 11:00:42', '0');
INSERT INTO `log_change` VALUES (113, 149, 'official_brand', 11, '{\"nama\":\"tes\",\"images\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 11:12:11\",\"updated_at\":\"2023-01-10 11:12:11\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 11:12:11', '2023-01-10 11:12:11', '0');
INSERT INTO `log_change` VALUES (114, 150, 'official_brand', 11, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 11:12:41\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:12:41', '2023-01-10 11:12:41', '0');
INSERT INTO `log_change` VALUES (115, 151, 'official_brand', 12, '{\"nama\":\"tes\",\"images\":\"[{\\\"file_name\\\":\\\"logo_mondial.png\\\",\\\"file_size\\\":7910,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_mondial.png\\\"}]\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 11:12:51\",\"updated_at\":\"2023-01-10 11:12:51\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 11:12:51', '2023-01-10 11:12:51', '0');
INSERT INTO `log_change` VALUES (116, 152, 'official_brand', 12, '{\"nama\":\"tes\",\"images\":\"[{\\\"file_name\\\":\\\"logo_pemerintah.png\\\",\\\"file_size\\\":7914,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_pemerintah.png\\\"}]\",\"updated_at\":\"2023-01-10 11:13:04\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:13:04', '2023-01-10 11:13:04', '0');
INSERT INTO `log_change` VALUES (117, 153, 'social_media', 1, '{\"nama\":\"instagram\",\"link\":\"instagram.com\",\"logo\":\"null\",\"updated_at\":\"2023-01-10 11:27:41\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:27:41', '2023-01-10 11:27:41', '0');
INSERT INTO `log_change` VALUES (118, 154, 'social_media', 2, '{\"nama\":\"facebook\",\"link\":\"facebook.com\",\"logo\":\"null\",\"updated_at\":\"2023-01-10 11:27:56\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:27:56', '2023-01-10 11:27:56', '0');
INSERT INTO `log_change` VALUES (119, 155, 'social_media', 3, '{\"nama\":\"tiktok\",\"link\":\"tiktok.com\",\"logo\":\"null\",\"updated_at\":\"2023-01-10 11:28:08\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:28:08', '2023-01-10 11:28:08', '0');
INSERT INTO `log_change` VALUES (120, 156, 'social_media', 4, '{\"nama\":\"twitter\",\"link\":\"twitter.com\",\"logo\":\"null\",\"updated_at\":\"2023-01-10 11:28:20\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:28:20', '2023-01-10 11:28:20', '0');
INSERT INTO `log_change` VALUES (121, 157, 'social_media', 5, '{\"nama\":\"youtube\",\"link\":\"youtube.com\",\"logo\":\"null\",\"updated_at\":\"2023-01-10 11:28:32\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 11:28:32', '2023-01-10 11:28:32', '0');
INSERT INTO `log_change` VALUES (122, 158, 'artikel', 2, '{\"judul\":\"q\",\"deskripsi\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 13:17:54\",\"updated_at\":\"2023-01-10 13:17:54\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 13:17:54', '2023-01-10 13:17:54', '0');
INSERT INTO `log_change` VALUES (123, 159, 'artikel', 2, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 13:18:22\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 13:18:22', '2023-01-10 13:18:22', '0');
INSERT INTO `log_change` VALUES (124, 160, 'artikel', 3, '{\"judul\":\"a\",\"deskripsi\":\"a\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 13:18:27\",\"updated_at\":\"2023-01-10 13:18:27\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 13:18:27', '2023-01-10 13:18:27', '0');
INSERT INTO `log_change` VALUES (125, 161, 'subkategori', 242, '{\"nama\":\"a\",\"kategori_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 13:20:28\",\"updated_at\":\"2023-01-10 13:20:28\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 13:20:28', '2023-01-10 13:20:28', '0');
INSERT INTO `log_change` VALUES (126, 162, 'produk', 3, '{\"nama_produk\":\"tes\",\"sku\":\"\",\"code\":null,\"berat\":\"\",\"kategori_id\":null,\"subkategori_id\":null,\"brand_id\":null,\"kategori_brand\":\"\",\"tags\":\"\",\"deskripsi\":\"\",\"harga\":\"\",\"stok\":\"\",\"images\":\"[]\",\"images_detail\":null,\"harga_promo\":\"\",\"link_wa\":\"\",\"official_brand_id\":null,\"bestseller_id\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 15:22:32\",\"updated_at\":\"2023-01-10 15:22:32\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 15:22:32', '2023-01-10 15:22:32', '0');
INSERT INTO `log_change` VALUES (127, 163, 'produk', 4, '{\"nama_produk\":\"tesset\",\"sku\":\"\",\"code\":null,\"berat\":\"\",\"kategori_id\":null,\"subkategori_id\":null,\"brand_id\":null,\"kategori_brand\":\"\",\"tags\":\"\",\"deskripsi\":\"\",\"harga\":\"\",\"stok\":\"\",\"images\":\"[]\",\"images_detail\":null,\"harga_promo\":\"\",\"link_wa\":\"\",\"official_brand_id\":null,\"bestseller_id\":\"1\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 15:32:22\",\"updated_at\":\"2023-01-10 15:32:22\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 15:32:22', '2023-01-10 15:32:22', '0');
INSERT INTO `log_change` VALUES (128, 164, 'subkategori', 243, '{\"nama\":\"AAAA\",\"kategori_id\":\"2\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 16:26:05\",\"updated_at\":\"2023-01-10 16:26:05\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 16:26:05', '2023-01-10 16:26:05', '0');
INSERT INTO `log_change` VALUES (129, 165, 'subkategori', 242, '{\"nama\":\"a\",\"kategori_id\":\"5\",\"updated_at\":\"2023-01-10 16:26:34\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 16:26:34', '2023-01-10 16:26:34', '0');
INSERT INTO `log_change` VALUES (130, 166, 'subkategori', 243, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 16:26:58\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 16:26:58', '2023-01-10 16:26:58', '0');
INSERT INTO `log_change` VALUES (131, 167, 'subkategori', 242, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 16:27:07\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 16:27:07', '2023-01-10 16:27:07', '0');
INSERT INTO `log_change` VALUES (132, 168, 'produk', 5, '{\"nama_produk\":\"gfgbfghfhnf\",\"sku\":\"gcbgxcbgc\",\"code\":\"cbgcbgcbg\",\"berat\":\"123\",\"kategori_id\":\"1\",\"subkategori_id\":\"1\",\"brand_id\":\"1\",\"kategori_brand\":\"\",\"tags\":\"\",\"deskripsi\":\"\",\"harga\":\"123456\",\"stok\":\"12\",\"images\":\"[{\\\"file_name\\\":\\\"logo_mondial.png\\\",\\\"file_size\\\":7910,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_mondial.png\\\"}]\",\"images_detail\":\"[{\\\"file_name\\\":\\\"11793505_48501051.jpg\\\",\\\"file_size\\\":120770,\\\"file_type\\\":\\\"image\\/jpeg\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/11793505_48501051.jpg\\\"}]\",\"harga_promo\":\"\",\"link_wa\":\"\",\"official_brand_id\":\"1\",\"bestseller_id\":\"0\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 16:30:54\",\"updated_at\":\"2023-01-10 16:30:54\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 16:30:54', '2023-01-10 16:30:54', '0');
INSERT INTO `log_change` VALUES (133, 169, 'kategori', 31, '{\"nama\":\"CCCC\",\"images\":null,\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-10 16:49:50\",\"updated_at\":\"2023-01-10 16:49:50\",\"softdelete\":\"0\"}', 1, 1, '2023-01-10 16:49:50', '2023-01-10 16:49:50', '0');
INSERT INTO `log_change` VALUES (134, 170, 'kategori', 31, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-10 16:50:04\",\"users_updated\":\"1\"}', 1, 1, '2023-01-10 16:50:04', '2023-01-10 16:50:04', '0');
INSERT INTO `log_change` VALUES (135, 172, 'artikel', 3, '{\"softdelete\":\"1\",\"updated_at\":\"2023-01-11 19:07:18\",\"users_updated\":\"1\"}', 1, 1, '2023-01-11 19:07:18', '2023-01-11 19:07:18', '0');
INSERT INTO `log_change` VALUES (136, 173, 'artikel', 4, '{\"judul\":\"TES\",\"deskripsi\":\"<p>TESTING<\\/p>\\r\\n\",\"images\":\"[{\\\"file_name\\\":\\\"logo_pemerintah.png\\\",\\\"file_size\\\":7914,\\\"file_type\\\":\\\"image\\/png\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/logo_pemerintah.png\\\"}]\",\"users_created\":\"1\",\"users_updated\":\"1\",\"created_at\":\"2023-01-11 19:20:51\",\"updated_at\":\"2023-01-11 19:20:51\",\"softdelete\":\"0\"}', 1, 1, '2023-01-11 19:20:51', '2023-01-11 19:20:51', '0');
INSERT INTO `log_change` VALUES (137, 174, 'artikel', 4, '{\"judul\":\"RAZER MASUK KE RANAH KOMPONEN PC? KHUSUS UNTUK GAMER ENTHUSIASTS\",\"deskripsi\":\"<p>Razer, brand mewah terkemuka di dunia untuk para gamer, hari ini meluncurkan Razer Kunai, Razer Hanbo, Razer Katana, dan Razer PWM Fan Controller, sebuah portofolio baru dari komponen PC berkinerja tinggi yang dirancang untuk para penggemar untuk build desktop gaming terbaik. Komponen baru akan mencakup Fan casing hidraulik canggih, water cooler all-in-one, berbagai power supply bersertifikat platinum untuk kinerja dan penyesuaian maksimal.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/drive.google.com\\/uc?id=1Lqvg5vBmdNhpBvXlmGRbZrR50qzMuAqf\\\" style=\\\"height:880px; width:1565px\\\" \\/><\\/p>\\r\\n\\r\\n<p><strong>Sponsored<\\/strong>:&nbsp;<a href=\\\"http:\\/\\/enterkomputer.com\\/\\\">Mau belanja Laptop dan PC Murah? Order aja di EnterKomputer, toko PC terbesar dan terpercaya di Indonesia<\\/a><\\/p>\\r\\n\\r\\n<p>Komponen baru telah dirancang untuk memenuhi standar tertinggi, dan juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Komponen baru telah dirancang untuk memenuhi standar keandalan tertinggi, sementara juga menggabungkan perangkat lunak plug-and-play sederhana yang memungkinkan akses mudah ke informasi termal PC. Selain itu, produk berkinerja tinggi ini diaktifkan dalam Razer Synapse, dan dirancang dengan pencahayaan RGB (aRGB) yang dapat dialamatkan untuk mendukung pengalaman gaming yang imersif.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/drive.google.com\\/uc?id=1G0E0ZhdecmH8iwvotXcEYLsG0ZAEPp_t\\\" style=\\\"height:882px; width:1568px\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/drive.google.com\\/uc?id=1KTDQEypi06mDFqXiYGPFM6lSGe_ktOiY\\\" style=\\\"height:872px; width:1555px\\\" \\/><\\/p>\\r\\n\",\"images\":\"[{\\\"file_name\\\":\\\"Iwv8VPyq0eXI8eTG.jpg\\\",\\\"file_size\\\":83.78,\\\"file_type\\\":\\\"image\\/jpeg\\\",\\\"file_thumbnail\\\":\\\"http:\\/\\/localhost\\/itstorecom\\/upload\\/Iwv8VPyq0eXI8eTG.jpg\\\"}]\",\"updated_at\":\"2023-01-11 19:22:55\",\"users_updated\":\"1\"}', 1, 1, '2023-01-11 19:22:55', '2023-01-11 19:22:55', '0');

-- ----------------------------
-- Table structure for menu_frontend
-- ----------------------------
DROP TABLE IF EXISTS `menu_frontend`;
CREATE TABLE `menu_frontend`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NOT NULL,
  `users_updated` int(11) NOT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 464 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_frontend
-- ----------------------------
INSERT INTO `menu_frontend` VALUES (1, 'Komponen PC', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (2, 'Processor', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (3, 'Intel Processor', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (4, 'Intel Core i3', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (5, 'Intel Core i5', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (6, 'Intel Core i7', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (7, 'Intel Core i9', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (8, 'Intel Processor by Socket', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (9, 'LGA 775', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (10, 'LGA 1150', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (11, 'LGA 1151', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (12, 'LGA 1151V2', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (13, 'LGA 1155', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (14, 'LGA 2011', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (15, 'LGA 2066', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (16, 'AMD Processor', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (17, 'AMD AM4', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (18, 'AMD FM2', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (19, 'AMD FM2+', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (20, 'AMD TR4', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (21, 'AMD sTRX4', NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (22, 'Motheboard', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (23, 'AMD On Board', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (24, 'Intel Atom On Board', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (25, 'Galax', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (26, 'Asrock', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (27, 'Asus', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (28, 'Biostar', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (29, 'Colorful', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (30, 'Digital Alliance', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (31, 'ECS', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (32, 'Gigabyte', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (33, 'Intel', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (34, 'Maxsun', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (35, 'MSI', NULL, NULL, NULL, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (36, 'Motheboard Sockets', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (37, 'Intel Socket', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (38, 'LGA 775', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (39, 'LGA 1150', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (40, 'LGA 1151', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (41, 'LGA 1151V2', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (42, 'LGA 1155', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (43, 'LGA 2011', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (44, 'LGA 2066', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (45, 'For Server', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (46, 'AMD Socket', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (47, 'AM3', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (48, 'AM3/AM3+', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (49, 'FM2/FM2+', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (50, 'AM4', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (51, 'TR4', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (52, 'sTRX4', NULL, NULL, NULL, 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (53, 'Casing', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (54, 'Cubegaming', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (55, 'Prime Gaming', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (56, 'Antec', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (57, 'Be Quiet!', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (58, 'Dazumba', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (59, 'Power Logic', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (60, 'VanAen', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (61, 'Cooler Master', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (62, 'Aerocool', NULL, NULL, NULL, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (63, 'VGA', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (64, 'Nvidia', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (65, 'Radeon', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (66, 'VGA Brand', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (67, 'Asus', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (68, 'Asrock', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (69, 'Biostar', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (70, 'Digital Alliance', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (71, 'Firepro', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (72, 'Galax', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (73, 'Gigabyte', NULL, NULL, NULL, 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (74, 'LCD', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (75, 'Bracket', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (76, 'Firepro', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (77, 'LCD Screen Size', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (78, '19\"', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (79, '20\"', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (80, '22\"', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (81, '24\"', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (82, '25\"', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (83, '15.6\"', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (84, '18.5', NULL, NULL, NULL, 74, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (85, 'RAM PC', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (86, 'DDR2', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (87, 'DDR3', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (88, 'DDR4', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (89, 'For Server', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (90, 'RAM Capacity', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (91, '4GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (92, '8GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (93, '16GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (94, '32GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (95, '2x4GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (96, '2x8GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (97, '2x16GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (98, '4x4GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (99, '4x8GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (100, '4x16GB', NULL, NULL, NULL, 85, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (101, 'Cooler & Fan', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (102, 'Keyboard & Mouse', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (103, 'Power Supply', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (105, 'SSD', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (106, 'SSD Capacity', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (107, '120GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (108, '128GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (109, '240GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (110, '256GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (111, '480GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (112, '500GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (113, '512GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (114, '960GB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (115, '1TB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (116, '2TB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (117, '3TB', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (118, 'SSD Brand', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (119, 'Adata', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (120, 'Colorful', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (121, 'Corsair', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (122, 'Crusial', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (123, 'Galax', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (124, 'Gloway', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (125, 'Samsung', NULL, NULL, NULL, 105, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (126, 'Harddisk', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (127, 'Internal 3.5\"', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (128, 'Internal 3.5\" for Server', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (129, 'Harddisk Brand', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (130, 'Adata', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (131, 'Samsung', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (132, 'WDC', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (133, 'Seagate', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (134, 'Toshiba', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (135, 'Hitachi', NULL, NULL, NULL, 126, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (136, 'Sofware & OS', NULL, '#', '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (137, 'Office', NULL, NULL, NULL, 136, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (138, 'Operating System', NULL, NULL, NULL, 136, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (139, 'Multimedia & Design', NULL, NULL, NULL, 136, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (140, 'Thermal Paste', NULL, NULL, NULL, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (141, '\r\nPC Rakitan', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (142, 'Notebook & Accessories', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (143, 'Notebook', NULL, '#', '#', 142, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (144, 'Acer', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (145, 'Apple', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (146, 'Asus', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (147, 'Dell', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (148, 'HP', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (149, 'Lenovo', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (150, 'Toshiba', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (151, 'MSI', NULL, NULL, NULL, 143, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (152, 'RAM Notebook', NULL, '#', '#', 142, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (153, 'DDR2', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (154, 'DDR3', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (155, 'DDR4', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (156, '4GB', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (157, '8GB', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (158, '16GB', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (159, '32GB', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (160, '2x4GB', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (161, '2x8GB', NULL, NULL, NULL, 152, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (164, 'Notebook Accessories', NULL, '#', '#', 142, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (165, 'Adapter', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (166, 'Bag', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (167, 'Battery', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (168, 'Cooler', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (169, 'Screen & Accessories', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (170, 'Security Cable Lock', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (171, 'Keyboard', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (172, 'LED Panel', NULL, NULL, NULL, 164, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (173, 'Hardisk Internal 2.5\"', NULL, NULL, NULL, 142, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (174, 'Computer Accessories', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (175, 'USB HUB & Card Reader', NULL, '#', '#', 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (176, 'Adapter', NULL, NULL, NULL, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (177, 'Card Reader', NULL, NULL, NULL, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (178, 'Connector', NULL, NULL, NULL, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (179, 'Converter', NULL, NULL, NULL, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (180, 'USB HUB', NULL, NULL, NULL, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (181, 'USB / Firewire Hub and PCI Card', NULL, NULL, NULL, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (182, 'Others', NULL, NULL, NULL, 175, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (183, 'Casing Harddisk', NULL, '#', '#', 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (184, 'Docking', NULL, NULL, NULL, 183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (185, 'Raid Station', NULL, NULL, NULL, 183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (186, 'USB Adapter', NULL, NULL, NULL, 183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (187, 'Casing Enclosure 2.5\"', NULL, NULL, NULL, 183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (188, 'Casing Enclosure 3.5\"', NULL, NULL, NULL, 183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (189, 'Function Panel', NULL, NULL, NULL, 183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (190, 'Others', NULL, NULL, NULL, 183, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (191, 'Office Accessories', NULL, '#', '#', 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (192, 'Cash Drawer', NULL, NULL, NULL, 191, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (193, 'Copier', NULL, NULL, NULL, 191, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (194, 'Industry Control', NULL, NULL, NULL, 191, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (195, 'Mesin Absensi', NULL, NULL, NULL, 191, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (196, 'Office', NULL, NULL, NULL, 191, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (197, 'Cable Accessories', NULL, '#', '#', 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (198, 'Connector Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (199, 'DVI Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (200, 'KVM Switch', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (201, 'LAN Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (202, 'Modding Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (203, 'USB Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (204, 'USB Extender', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (205, 'SATA Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (206, 'VGA Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (207, 'Others Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (208, 'PS/2 KVM & VGA Cable', NULL, NULL, NULL, 197, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (209, 'Other Accessories', NULL, '#', '#', 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (210, 'Auto Switch', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (211, 'Electronic Scale', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (212, 'Function Panel', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (213, 'KVM Extender', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (214, 'Master View KVM', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (215, 'Neon CCFL', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (216, 'PCI Card Converter', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (217, 'TV Tuner', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (218, 'USB Peripherals Switches', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (219, 'Webcam', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (220, 'KVM (Keyboard Video/Monitor Mouse) Switches', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (221, 'Video Switches, Splitters, HDMI, & Extenders', NULL, NULL, NULL, 209, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (222, 'Gaming Accessories', NULL, NULL, NULL, 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (223, 'Gaming Chair', NULL, NULL, NULL, 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (224, 'Optical Drive', NULL, NULL, NULL, 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (225, 'Speaker', NULL, NULL, NULL, 174, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (226, 'Flash Drive & Memory Card', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (227, 'Flash Drive', NULL, '#', '#', 226, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (228, 'Flash Drive Storage', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (229, '8GB', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (230, '16GB', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (231, '32GB', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (232, '64GB', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (233, '128GB', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (234, 'Flash Drive Brand', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (235, 'Adata', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (236, 'Apacer', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (237, 'Corsair', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (238, 'Kingston', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (239, 'Klevv', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (240, 'Patriot', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (241, 'Sandisk', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (242, 'Silicon Power', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (243, 'Team', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (244, 'Toshiba', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (245, 'Transcend', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (246, 'V-GEN', NULL, NULL, NULL, 227, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (247, 'Memory Card', NULL, '#', '#', 226, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (248, 'Memory Card Storage', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (249, '8GB', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (250, '16GB', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (251, '32GB', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (252, '64GB', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (253, '128GB', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (254, 'Memory Card Brand', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (255, 'Adata', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (256, 'Kingston', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (257, 'Klevv', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (258, 'Patriot', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (259, 'Samsung', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (260, 'Sandisk', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (261, 'Team', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (262, 'Toshiba', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (263, 'Transcend', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (264, 'V-GEN', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (265, 'WDC', NULL, NULL, NULL, 247, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (266, 'Server', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (267, 'Rackmount & Accessories', NULL, '#', '#', 266, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (268, 'Rack Mount Cases', NULL, NULL, NULL, 267, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (269, 'Agile Rackmount Cases', NULL, NULL, NULL, 267, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (270, 'Indocase Rackmount Cases Accessories', NULL, NULL, NULL, 267, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (271, 'Agile Rackmount and Pedestal Accessories', NULL, NULL, NULL, 267, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (272, 'Wallmount Rack', NULL, '#', '#', 266, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (273, 'Wallmounted Rack Series', NULL, NULL, NULL, 272, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (274, 'Wallmount Rack Single Door 19 inch', NULL, NULL, NULL, 272, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (275, 'Wallmount Rack Double Door 19 inch', NULL, NULL, NULL, 272, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (276, 'Standing Close Rack', NULL, '#', '#', 266, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (277, 'Standing Close Rack 19 inch Glass Door', NULL, NULL, NULL, 276, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (278, 'Standing Close Rack 19 inch Perforated Door', NULL, NULL, NULL, 276, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (279, 'Standing Heavy Duty Close Rack 19 inch Perforated Door', NULL, NULL, NULL, 276, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (280, 'PC Server', NULL, '#', '#', 266, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (281, 'Acer', NULL, NULL, NULL, 280, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (282, 'Asus', NULL, NULL, NULL, 280, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (283, 'Dell', NULL, NULL, NULL, 280, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (284, 'HP', NULL, NULL, NULL, 280, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (285, 'IBM', NULL, NULL, NULL, 280, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (286, 'Lenovo', NULL, NULL, NULL, 280, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (287, 'Server Accessories', NULL, NULL, NULL, 266, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (288, 'AIO & PC Branded', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (289, 'AIO Brands', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (290, 'Acer', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (291, 'Apple', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (292, 'Asrock', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (293, 'Asus', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (294, 'Biostar', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (295, 'Dell', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (296, 'ECS', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (297, 'Gigabyte', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (298, 'HP', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (299, 'Intel', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (300, 'Lenovo', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (301, 'MSI', NULL, NULL, NULL, 289, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (302, 'AIO Acer PC Branded', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (303, 'Acer Predator', NULL, NULL, NULL, 302, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (304, 'Acer Aspire', NULL, NULL, NULL, 302, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (305, 'AIO Asus PC Branded', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (306, 'Asus AIO', NULL, NULL, NULL, 305, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (307, 'Asus ROG', NULL, NULL, NULL, 305, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (308, 'Asus Vivo Mini', NULL, NULL, NULL, 305, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (309, 'AIO DELL PC Branded', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (310, 'Dell AIO', NULL, NULL, NULL, 309, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (311, 'Dell Inspiron', NULL, NULL, NULL, 309, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (312, 'Dell Optiplex', NULL, NULL, NULL, 309, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (313, 'Dell Precision', NULL, NULL, NULL, 309, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (314, 'Dell Vostro', NULL, NULL, NULL, 309, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (315, 'AIO HP PC Branded', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (316, 'HP EliteDesk', NULL, NULL, NULL, 315, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (317, 'HP Omen', NULL, NULL, NULL, 315, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (318, 'HP Pavilion', NULL, NULL, NULL, 315, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (319, 'HP Pro Desk', NULL, NULL, NULL, 315, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (320, 'HP Pro One', NULL, NULL, NULL, 315, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (321, 'HP Slimline', NULL, NULL, NULL, 315, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (322, 'AIO Lenovo PC Branded', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (323, 'Lenovo AIO', NULL, NULL, NULL, 322, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (324, 'Lenovo Legion', NULL, NULL, NULL, 322, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (325, 'Lenovo IdeaCentre', NULL, NULL, NULL, 322, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (326, 'Lenovo ThinkCentre', NULL, NULL, NULL, 322, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (327, 'Lenovo ThinkStation', NULL, NULL, NULL, 322, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (328, 'AIO MSI PC Branded', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (329, 'MSI Infinite', NULL, NULL, NULL, 328, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (330, 'MSI Trident', NULL, NULL, NULL, 328, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (331, 'MSI NightBlade', NULL, NULL, NULL, 328, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (332, 'Apple Series', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (333, 'Apple Imac', NULL, NULL, NULL, 332, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (334, 'Apple Mac Mini', NULL, NULL, NULL, 332, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (335, 'Intel NUC Series', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (336, 'Intel NUC5', NULL, NULL, NULL, 335, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (337, 'Intel NUC6', NULL, NULL, NULL, 335, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (338, 'Intel NUC7', NULL, NULL, NULL, 335, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (339, 'Intel NUC8', NULL, NULL, NULL, 335, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (340, 'Mini PC Series', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (341, 'ECS Liva', NULL, NULL, NULL, 340, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (342, 'Zotac Zbox', NULL, NULL, NULL, 340, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (343, 'N Computing', NULL, NULL, NULL, 340, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (344, 'PIPO', NULL, NULL, NULL, 340, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (345, 'Gigabyte GB Series', NULL, NULL, NULL, 340, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (346, 'AIO Others', NULL, '#', '#', 288, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (347, 'Shuttle', NULL, NULL, NULL, 346, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (348, 'Raspberry', NULL, NULL, NULL, 346, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (349, 'Headset & Audio', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (350, 'Headset', NULL, '#', '#', 349, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (351, 'A4Tech', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (352, 'AKG', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (353, 'Audio Technica', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (354, 'Bloody Gaming', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (355, 'Bose', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (356, 'Bright', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (357, 'Cougar', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (358, 'Edifier', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (359, 'Logitech', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (360, 'Marvo', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (361, 'Micropack', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (362, 'MSI', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (363, 'NYK', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (364, 'Oblanc', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (365, 'Prolink', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (366, 'Rapoo', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (367, 'Razer', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (368, 'Rexus', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (369, 'Robot', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (370, 'Simbadda', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (371, 'Sonic Gear', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (372, 'Xiaomi', NULL, NULL, NULL, 350, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (373, 'Priter & Catridge', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (374, 'Printer', NULL, '#', '#', 373, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (375, 'Brother', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (376, 'Canon', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (377, 'DATACARD', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (378, 'Epson', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (379, 'Fujitsu', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (380, 'Fujixerox', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (381, 'HP', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (382, 'Samsung', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (383, 'Panasonic', NULL, NULL, NULL, 374, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (384, 'Catridge & Toner', NULL, '#', '#', 373, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (385, 'Brother', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (386, 'Canon', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (387, 'Epson', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (388, 'HP', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (389, 'Panasonic', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (390, 'Samsung', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (391, 'Printer Toner', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (392, 'Tinta Printer', NULL, NULL, NULL, 384, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (393, 'Scanner', NULL, '#', '#', 373, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (394, 'Brother', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (395, 'Brother', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (396, 'Canon', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (397, 'Epson', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (398, 'Fujitsu', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (399, 'HP', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (400, 'Kodak', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (401, 'Panasonic', NULL, NULL, NULL, 393, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (402, 'Barcode Scanner', NULL, '#', '#', 373, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (403, 'ArgoX', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (404, 'Chiperlab', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (405, 'Datalogic', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (406, 'Ezone', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (407, 'Honeywell', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (408, 'Scan Logic', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (409, 'Silicon', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (410, 'Solution', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (411, 'Wearness', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (412, 'Zebra', NULL, NULL, NULL, 402, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (413, 'Fujixerox Copier & Accessories', NULL, '#', '#', 373, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (414, 'Fujixerox Copier', NULL, NULL, NULL, 413, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (415, 'Fujixerox Copier Accessories', NULL, NULL, NULL, 413, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (416, 'Others', NULL, NULL, NULL, 373, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (417, 'Networking', NULL, '#', '#', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (418, 'Wireless Access Point', NULL, '#', '#', 417, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (419, '54 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (420, '150 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (421, '300 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (422, '450 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (423, '600 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (424, '750 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (425, '1200 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (426, '1750 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (427, '1900 Mbps', NULL, NULL, NULL, 418, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (428, 'Wireless Adapter', NULL, '#', '#', 417, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (429, '150 Mbps', NULL, NULL, NULL, 428, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (430, '300 Mbps', NULL, NULL, NULL, 428, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (431, 'Dual Band', NULL, NULL, NULL, 428, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (432, 'Wireless Router', NULL, '#', '#', 417, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (433, '150 Mbps', NULL, NULL, NULL, 432, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (434, '300 Mbps', NULL, NULL, NULL, 432, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (435, '450 Mbps', NULL, NULL, NULL, 432, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (436, 'Dual Band', NULL, NULL, NULL, 432, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (437, 'Switches', NULL, '#', '#', 417, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (438, 'Smart Switches', NULL, NULL, NULL, 437, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (439, 'Unmanaged Switches', NULL, NULL, NULL, 437, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (440, 'L2 Managed Switches', NULL, NULL, NULL, 437, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (441, 'L3 Managed Switches', NULL, NULL, NULL, 437, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (442, 'Modem & Router', NULL, '#', '#', 417, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (443, 'CDMA Modem', NULL, NULL, NULL, 442, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (444, 'GSM Modem', NULL, NULL, NULL, 442, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (445, '4G Modem', NULL, NULL, NULL, 442, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (446, 'ADSL Modem', NULL, NULL, NULL, 442, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (447, 'VPN Router', NULL, NULL, NULL, 442, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (448, '3G/4G Router', NULL, NULL, NULL, 442, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (449, 'Networking Others', NULL, '#', '#', 417, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (450, 'Antena', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (451, 'Cable', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (452, 'LAN Card', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (453, 'Print Server', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (454, 'Powerline', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (455, 'IP Camera', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (456, 'PoE Injector & Splitters', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (457, 'Media Converter & Module', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (458, 'Networking Cable & Accessories', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (459, 'Load Balance Broadband Routers', NULL, NULL, NULL, 449, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (460, 'UPS & Stabilizer', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (461, 'Gaming Chair', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (462, 'Digital Drawing Tablet', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `menu_frontend` VALUES (463, 'Cek Status Pesanan', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL,
  `is_have_child` int(11) NULL DEFAULT NULL,
  `title` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `icon` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_lang` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1838 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 0, 3, 'Settings', '', 'fa fa-cog', 'menu_settings');
INSERT INTO `menus` VALUES (2, 0, 2, 'Site Settings', 'site_setting', 'fa fa-home', 'menu_site_settings');
INSERT INTO `menus` VALUES (3, 0, 0, 'Brand', 'brand', 'fa fa-home', 'menu_brand');
INSERT INTO `menus` VALUES (4, 0, 0, 'Official Brand', 'official_brand', 'fa fa-home', 'menu_official_brand');
INSERT INTO `menus` VALUES (5, 0, 0, 'Category', 'category', 'fa fa-home', 'menu_category');
INSERT INTO `menus` VALUES (6, 0, 0, 'Subcategory', 'subcategory', 'fa fa-home', 'menu_subcategory');
INSERT INTO `menus` VALUES (7, 0, 0, 'Product', 'product', 'fa fa-home', 'menu_product');
INSERT INTO `menus` VALUES (8, 0, 0, 'Ulasan IT', 'articles', 'fa fa-home', 'menu_articles');
INSERT INTO `menus` VALUES (50, 1, 0, 'Groups', 'group', 'i i-dot', 'menu_group');
INSERT INTO `menus` VALUES (51, 1, 0, 'Privileges', 'privilege', 'i i-dot', 'menu_privilege');
INSERT INTO `menus` VALUES (52, 2, 0, 'Social Media', 'social_media', 'fa fa-home', 'menu_social_media');
INSERT INTO `menus` VALUES (53, 2, 0, 'Slider & Promo', 'site_setting_slider', 'fa fa-home', 'menu_setting_slider');
INSERT INTO `menus` VALUES (55, 1, 0, 'Users', 'user_reset', 'i i-dot', 'menu_reset_password');

-- ----------------------------
-- Table structure for official_brand
-- ----------------------------
DROP TABLE IF EXISTS `official_brand`;
CREATE TABLE `official_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NOT NULL,
  `users_updated` int(11) NOT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of official_brand
-- ----------------------------
INSERT INTO `official_brand` VALUES (1, 'prime', 'assets/img/official/PRIME.jpg\r\nassets/img/official/PRIME.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (2, 'cube gaming', 'assets/img/official/CUBEGAMING.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (3, 'galax', 'assets/img/official/GALAX.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (4, 'klevv', 'assets/img/official/KLEVV.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (5, 'seasonic', 'assets/img/official/SEASONIC.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (6, 'adata', 'assets/img/official/ADATA.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (7, 'super flower', 'assets/img/official/SUPERFLOWER.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (8, '1stplayer', 'assets/img/official/1STPLAYER.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (9, 'antec', 'assets/img/official/ANTEC.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (10, 'be quiet', 'assets/img/official/BEQUIET.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `official_brand` VALUES (11, 'tes', NULL, '2023-01-10 11:12:11', '2023-01-10 11:12:41', 1, 1, '1');
INSERT INTO `official_brand` VALUES (12, 'tes', '[{\"file_name\":\"logo_pemerintah.png\",\"file_size\":7914,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/logo_pemerintah.png\"}]', '2023-01-10 11:12:51', '2023-01-10 11:13:04', 1, 1, '0');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  INDEX `password_resets_email_index`(`email`) USING BTREE,
  INDEX `password_resets_token_index`(`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for privileges
-- ----------------------------
DROP TABLE IF EXISTS `privileges`;
CREATE TABLE `privileges`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE,
  INDEX `menu_id`(`menu_id`) USING BTREE,
  CONSTRAINT `privileges_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `privileges_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3375 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of privileges
-- ----------------------------
INSERT INTO `privileges` VALUES (3362, 1, 1);
INSERT INTO `privileges` VALUES (3363, 1, 50);
INSERT INTO `privileges` VALUES (3364, 1, 51);
INSERT INTO `privileges` VALUES (3365, 1, 55);
INSERT INTO `privileges` VALUES (3366, 1, 2);
INSERT INTO `privileges` VALUES (3367, 1, 52);
INSERT INTO `privileges` VALUES (3368, 1, 53);
INSERT INTO `privileges` VALUES (3369, 1, 3);
INSERT INTO `privileges` VALUES (3370, 1, 4);
INSERT INTO `privileges` VALUES (3371, 1, 5);
INSERT INTO `privileges` VALUES (3372, 1, 6);
INSERT INTO `privileges` VALUES (3373, 1, 7);
INSERT INTO `privileges` VALUES (3374, 1, 8);

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `berat` int(11) NULL DEFAULT NULL,
  `kategori_id` int(11) NULL DEFAULT NULL,
  `subkategori_id` int(11) NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  `kategori_brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tags` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `harga` int(11) NULL DEFAULT NULL,
  `stok` int(11) NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `images_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `harga_promo` int(11) NULL DEFAULT NULL,
  `link_wa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `official_brand_id` int(11) NULL DEFAULT NULL,
  `bestseller_id` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NOT NULL,
  `users_updated` int(100) NOT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES (2, 'laptop', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '0');
INSERT INTO `produk` VALUES (3, 'tes', '', '2', 0, NULL, NULL, NULL, '', '', '', 0, 0, '[]', NULL, 0, '', NULL, NULL, '2023-01-10 15:22:32', '2023-01-10 15:22:32', 1, 1, '0');
INSERT INTO `produk` VALUES (4, 'tesset', '', '3', 0, NULL, NULL, NULL, '', '', '', 0, 0, '[]', NULL, 0, '', NULL, '1', '2023-01-10 15:32:22', '2023-01-10 15:32:22', 1, 1, '0');
INSERT INTO `produk` VALUES (5, 'gfgbfghfhnf', 'gcbgxcbgc', 'cbgcbgcbg', 123, 1, 1, 1, '', '', '', 123456, 12, '[{\"file_name\":\"logo_mondial.png\",\"file_size\":7910,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/logo_mondial.png\"}]', '[{\"file_name\":\"11793505_48501051.jpg\",\"file_size\":120770,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/11793505_48501051.jpg\"}]', 0, '', 1, '0', '2023-01-10 16:30:54', '2023-01-10 16:30:54', 1, 1, '0');

-- ----------------------------
-- Table structure for sekolah
-- ----------------------------
DROP TABLE IF EXISTS `sekolah`;
CREATE TABLE `sekolah`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nis_nss_dns` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `npsn` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_sekolah` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kelurahan_desa` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kecamatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kota_kabupaten` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `provinsi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `website` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telepon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `visi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `misi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kepala_sekolah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nip_kepala_sekolah` varchar(45) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `logo_pemerintah` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`nama_sekolah`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sekolah
-- ----------------------------
INSERT INTO `sekolah` VALUES (1, 'TK Mondial', '69909672', NULL, 'Jl. Pasir Putih, Komplek Ruko Batam Mas, Ocarina, RT. 03/RW. 21', 'Sadai', 'Bengkong', 'Batam', 'Kepulauan Riau', 'www.sekolahmondial.com', 'info@sekolahmondial.com', NULL, 'To teach, to learn, to bridge, to future so as to serve and be a blessing to the world. (Mengajar, belajar, menjembatani ke masa depan agar berguna dan menjadi berkat bagi dunia))', 'Change for The Better', NULL, NULL, '[{\"file_name\":\"logo_mondial.png\",\"file_size\":7.72,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_mondial.png\"}]', '[{\"file_name\":\"logo_pemerintah.png\",\"file_size\":7914,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_pemerintah.png\"}]', '2022-10-30 22:52:31', '2022-11-20 11:44:02', 1, 1, '0');
INSERT INTO `sekolah` VALUES (2, 'SD Mondial', '11001714', NULL, 'Jl. Pasir Putih, Komplek Ruko Batam Mas, Ocarina, RT. 03/RW. 21', 'Sadai', 'Bengkong', 'Batam', 'Kepulauan Riau', 'www.sekolahmondial.com', 'info@sekolahmondial.com', NULL, 'To teach, to learn, to bridge, to future so as to serve and be a blessing to the world. (Mengajar, belajar, menjembatani ke masa depan agar berguna dan menjadi berkat bagi dunia))', 'Change for The Better', NULL, NULL, '[{\"file_name\":\"logo_mondial.png\",\"file_size\":7.72,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_mondial.png\"}]', '[{\"file_name\":\"logo_pemerintah.png\",\"file_size\":7914,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_pemerintah.png\"}]', '2022-10-30 22:52:31', '2022-10-30 22:57:24', 1, 1, '0');
INSERT INTO `sekolah` VALUES (3, 'SMP Mondial', '200430', '11001779', 'Jl. Pasir Putih, Komplek Ruko Batam Mas, Ocarina, RT.13/RW 21', 'Sadai', 'Bengkong', 'Batam', 'Kepulauan Riau', 'www.sekolahmondial.com', 'info@sekolahmondial.com', '0778-8013677', 'To teach, to learn, to bridge, to future so as to serve and be a blessing to the world. (Mengajar, belajar, menjembatani ke masa depan agar berguna dan menjadi berkat bagi dunia))', 'Change for The Better', NULL, NULL, '[{\"file_name\":\"logo_mondial.png\",\"file_size\":7.72,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_mondial.png\"}]', '[{\"file_name\":\"logo_pemerintah.png\",\"file_size\":7914,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_pemerintah.png\"}]', '2022-10-30 22:52:31', '2022-11-20 12:06:29', 1, 1, '0');
INSERT INTO `sekolah` VALUES (4, 'SMA Mondial', '11002191', NULL, 'Jl. Pasir Putih, Komplek Ruko Batam Mas, Ocarina, RT. 03/RW. 21', 'Sadai', 'Bengkong', 'Batam', 'Kepulauan Riau', 'www.sekolahmondial.com', 'info@sekolahmondial.com', NULL, 'To teach, to learn, to bridge, to future so as to serve and be a blessing to the world. (Mengajar, belajar, menjembatani ke masa depan agar berguna dan menjadi berkat bagi dunia))', 'Change for The Better', 'Reynold Sirait, S.P.d.', NULL, '[{\"file_name\":\"logo_mondial.png\",\"file_size\":7.72,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_mondial.png\"}]', '[{\"file_name\":\"logo_pemerintah.png\",\"file_size\":7914,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/siakadbaru/upload/logo_pemerintah.png\"}]', '2022-10-30 22:52:31', '2022-10-30 22:57:24', 1, 1, '0');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `meta_value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'company_name', 'IT STORE COM', '0000-00-00 00:00:00', '2017-07-15 13:20:38');
INSERT INTO `settings` VALUES (2, 'company_address', 'Komplek Dian Centre, Jalan, Batu Selicin, Lubuk Baja, Batam City, Riau Islands 29444', '0000-00-00 00:00:00', '2017-07-15 13:20:38');
INSERT INTO `settings` VALUES (3, 'company_phone_number', '0812-6882-9879', '0000-00-00 00:00:00', '2017-07-15 13:20:38');
INSERT INTO `settings` VALUES (4, 'company_email', 'cs@itstore.com', '0000-00-00 00:00:00', '2017-06-04 06:33:43');
INSERT INTO `settings` VALUES (5, 'company_apps', 'E-Commerce', '2022-10-30 15:11:05', '2022-10-30 15:11:07');

-- ----------------------------
-- Table structure for slider_promo
-- ----------------------------
DROP TABLE IF EXISTS `slider_promo`;
CREATE TABLE `slider_promo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `promo_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `promo_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `promo_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slider_promo
-- ----------------------------
INSERT INTO `slider_promo` VALUES (1, '[{\"file_name\":\"Banner-Slider-Home-Prosessor_Intel-1633090287.jpg\",\"file_size\":121.65,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Banner-Slider-Home-Prosessor_Intel-1633090287.jpg\"},{\"file_name\":\"Banner-Slider-Home-Paket-Rakitan_Office-1633090376.jpg\",\"file_size\":148.89,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Banner-Slider-Home-Paket-Rakitan_Office-1633090376.jpg\"},{\"file_name\":\"Banner-Slider-Home-Prosessor_AMD-1633330392.jpg\",\"file_size\":151.12,\"file_type\":\"image/jpeg\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/Banner-Slider-Home-Prosessor_AMD-1633330392.jpg\"}]', '[]', '[]', '[]', '2023-01-11 18:25:18', '2023-01-11 18:25:21', 1, 1, '0');

-- ----------------------------
-- Table structure for social_media
-- ----------------------------
DROP TABLE IF EXISTS `social_media`;
CREATE TABLE `social_media`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL,
  `updated_at` datetime(0) NOT NULL,
  `users_created` int(11) NOT NULL,
  `users_updated` int(11) NOT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of social_media
-- ----------------------------
INSERT INTO `social_media` VALUES (1, 'instagram', 'null', 'instagram.com', '0000-00-00 00:00:00', '2023-01-10 11:27:41', 0, 1, '0');
INSERT INTO `social_media` VALUES (2, 'facebook', 'null', 'facebook.com', '0000-00-00 00:00:00', '2023-01-10 11:27:56', 0, 1, '0');
INSERT INTO `social_media` VALUES (3, 'tiktok', 'null', 'tiktok.com', '0000-00-00 00:00:00', '2023-01-10 11:28:08', 0, 1, '0');
INSERT INTO `social_media` VALUES (4, 'twitter', 'null', 'twitter.com', '0000-00-00 00:00:00', '2023-01-10 11:28:20', 0, 1, '0');
INSERT INTO `social_media` VALUES (5, 'youtube', 'null', 'youtube.com', '0000-00-00 00:00:00', '2023-01-10 11:28:32', 0, 1, '0');
INSERT INTO `social_media` VALUES (6, 'a', '[{\"file_name\":\"logo_mondial.png\",\"file_size\":7910,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/logo_mondial.png\"}]', 'aaa', '2023-01-10 10:57:27', '2023-01-10 11:00:35', 1, 1, '1');
INSERT INTO `social_media` VALUES (7, 'b', '[{\"file_name\":\"logo_pemerintah.png\",\"file_size\":7914,\"file_type\":\"image/png\",\"file_thumbnail\":\"http://localhost/itstorecom/upload/logo_pemerintah.png\"}]', 'bbbb', '2023-01-10 10:58:51', '2023-01-10 11:00:42', 1, 1, '1');

-- ----------------------------
-- Table structure for subkategori
-- ----------------------------
DROP TABLE IF EXISTS `subkategori`;
CREATE TABLE `subkategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 244 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subkategori
-- ----------------------------
INSERT INTO `subkategori` VALUES (1, 'Cable Accessories Connector', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (2, 'Cable Accessories DVI Splitter', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (3, 'Cable Accessories HDMI Splitter', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (4, 'Cable Accessories iPhone Cable', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (5, 'Cable Accessories Kabel DisplayPort', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (6, 'Cable Accessories Kabel DVI', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (7, 'Cable Accessories Kabel HDMI', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (8, 'Cable Accessories Kabel LAN', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (9, 'Cable Accessories Kabel SATA', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (10, 'Cable Accessories Kabel USB', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (11, 'Cable Accessories Kabel USB Extender', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (12, 'Cable Accessories Kabel VGA', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (13, 'Cable Accessories KVM Switch', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (14, 'Cable Accessories Modding Cable', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (15, 'Cable Accessories Others Cable', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (16, 'Cable Accessories Splitter', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (17, 'Cable Accessories VGA Splitter', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (18, 'Cable Accessories VGA Switch', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (19, 'Card Reader', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (20, 'Cash Drawer', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (21, 'Casing Harddisk Docking', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (22, 'Casing Harddisk Enclosure 2.5 inch', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (23, 'Casing Harddisk Enclosure 3.5 inch', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (24, 'Casing Harddisk Others', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (25, 'Casing Harddisk Raid Station', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (26, 'Casing Harddisk USB Adapter', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (27, 'Electronic Scale', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (28, 'Function Panel', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (29, 'Gaming Accessories', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (30, 'Industry Control', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (31, 'KVM (Keyboard Video/Monitor Mouse) Switches', NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (32, 'KVM Extenders', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (33, 'M.2/NVMe SSD Enclosure', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (34, 'Master View KVM', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (35, 'Mesin Absensi', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (36, 'Neon CCFL', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (37, 'Office', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (38, 'Others', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (39, 'PCI Card Converter', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (40, 'Powerbank', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (41, 'PS/2 KVM Cables and VGA Cables', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (42, 'Thermal Paste', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (43, 'Tv Tuner', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (44, 'USB / Firewire Hub and PCI Card', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (45, 'USB HUB and CARD READER Connector', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (46, 'USB HUB and CARD READER Kabel USB', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (47, 'USB HUB and CARD READER Others', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (48, 'USB HUB and CARD READER USB Adapter', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (49, 'USB HUB and CARD READER USB Converter', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (50, 'USB HUB and CARD READER USB HUB', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (51, 'USB Peripherals Switches', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (52, 'Video Switches,Splitters ,HDMI and Extenders', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (53, 'Webcam', 1, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (54, 'PC - Desktop', 3, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (55, 'Air Cooler / Heatsink Cooler', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (56, 'Fan Casing 12CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (57, 'Fan Casing 14CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (58, 'Fan Casing 18CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (59, 'Fan Casing 20CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (60, 'Fan Casing 4CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (61, 'Fan Casing 6CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (62, 'Fan Casing 8CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (63, 'Fan Casing 9.2CM Fan Case', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (64, 'Fan Casing Dust Filter / Accessories', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (65, 'Liquid Cooler / Water Cooler', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (66, 'Memory Cooler', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (67, 'Mounting Kits', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (68, 'SSD Cooler', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (69, 'VGA Cooler', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (70, 'Water Cooling and Accessories', 4, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (71, 'Apple Cable / Connector', 7, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (72, 'Case', 7, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (73, 'Phone and Accessories', 7, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (74, 'Tablet', 7, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (75, 'Tempered Glass', 7, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (76, 'GAMING CHAIR', 8, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (77, 'Bracket', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (78, 'Harddisk Eksternal 2.5 Without Adapter Plug USB', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (79, 'Harddisk Eksternal 3.5 Must Use Adapter', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (80, 'Harddisk Internal 2.5 - For Notebook', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (81, 'Harddisk Internal 2.5 - For Server', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (82, 'Harddisk Internal 3.5 - For Server', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (83, 'Harddisk Internal 3.5 For Desktop PC', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (84, 'HD PLAYER - MKV FILES - BLURAY RIP', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (85, 'NAS', 9, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (86, 'Bundle Keyboard + Mouse Razer', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (87, 'Bundle Mousepad + Mouse Razer', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (88, 'Flight Stick', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (89, 'Gaming Accessories', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (90, 'Keyboard', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (91, 'Keyboard + Mouse', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (92, 'Keyboard Razer', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (93, 'Keycaps and Accessories', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (94, 'Mouse', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (95, 'Mouse Pad', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (96, 'Mouse Pad Razer', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (97, 'Mousefeet', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (98, 'Mousepad', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (99, 'Rapoo Mouse+Keyboard', 11, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (100, 'Bracket LCD', 12, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (101, 'Compact Flash (CF)', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (102, 'MicroSD', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (103, 'SD Card', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (104, 'SDHC', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (105, 'Transcend MicroSD', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (106, 'Transcend SDHC', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (107, 'V-GeN Micro SD', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (108, 'V-GeN SD Card', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (109, 'V-GeN SDXC', 13, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (110, 'Motherboard AMD AM4', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (111, 'Motherboard AMD AM5', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (112, 'Motherboard AMD FM2/FM2+', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (113, 'Motherboard AMD sTRX4', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (114, 'Motherboard AMD sWRX8', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (115, 'Motherboard AMD TR4', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (116, 'Motherboard Intel Atom On Board Processor', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (117, 'Motherboard Intel LGA 1150', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (118, 'Motherboard Intel LGA 1151', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (119, 'Motherboard Intel LGA 1151V2', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (120, 'Motherboard Intel LGA 1155', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (121, 'Motherboard Intel LGA 1200', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (122, 'Motherboard Intel LGA 1700', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (123, 'Motherboard Intel LGA 2066', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (124, 'Motherboard Intel LGA 775', 14, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (125, '3G / 4G Router', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (126, '4G Modem', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (127, 'Antenna', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (128, 'IP Camera', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (129, 'Kartu Perdana', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (130, 'L2 Managed Switches', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (131, 'L3 Managed Switches', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (132, 'LAN Card', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (133, 'Load Balance Broadband Routers', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (134, 'Media Converter and Module', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (135, 'Networking Cable and Accessories', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (136, 'Others', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (137, 'PoE Injectors and Splitters', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (138, 'Powerline', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (139, 'Print Server', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (140, 'Smart Switches', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (141, 'Unmanaged Switches', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (142, 'Wireless Acces Point 1200 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (143, 'Wireless Acces Point 1750 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (144, 'Wireless Access Point 150 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (145, 'Wireless Access Point 300 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (146, 'Wireless Access Point 450 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (147, 'Wireless Access Point 750 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (148, 'Wireless Adapter 150 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (149, 'Wireless Adapter 300 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (150, 'Wireless Adapter Dual Band', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (151, 'Wireless Dual Band Access Point', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (152, 'Wireless Router 300 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (153, 'Wireless Router 450 Mbps', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (154, 'Wireless Router Dual Band', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (155, 'Wireless Router Tri Band', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (156, 'Wireless Tri Band Access Point', 15, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (159, 'Acer AMD Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (160, 'Acer Intel Atom, Celeron, Pentium Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (161, 'Acer Intel Core i3 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (162, 'Acer Intel Core i5 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (163, 'Acer Intel Core i7 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (164, 'Acer Intel Core i9 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (165, 'Asus AMD Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (166, 'Asus Intel Atom, Celeron, Pentium Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (167, 'Asus Intel Core i3 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (168, 'Asus Intel Core i5 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (169, 'Asus Intel Core i7 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (170, 'Asus Intel Core i9 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (171, 'Dell AMD Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (172, 'Dell Intel Core i3 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (173, 'Dell Intel Core i5 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (174, 'Dell Intel Core i7 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (175, 'Dell Intel Core i9 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (176, 'Dell Intel Xeon Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (177, 'HP - Hewlett Packard AMD Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (178, 'HP - Hewlett Packard Intel Atom, Celeron, Pentium Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (179, 'HP - Hewlett Packard Intel Core i3 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (180, 'HP - Hewlett Packard Intel Core i5 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (181, 'HP - Hewlett Packard Intel Core i7 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (182, 'Lenovo AMD Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (183, 'Lenovo Intel Atom, Celeron, Pentium Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (184, 'Lenovo Intel Core i3 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (185, 'Lenovo Intel Core i5 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (186, 'Lenovo Intel Core i7 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (187, 'Lenovo Intel Core i9 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (188, 'Lenovo Intel Xeon Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (189, 'MSI AMD Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (190, 'MSI Intel Core i3 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (191, 'MSI Intel Core i5 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (192, 'MSI Intel Core i7 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (193, 'MSI Intel Core i9 Notebook', 16, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (194, 'Notebook Adaptor', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (195, 'Notebook Bag', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (196, 'Notebook Battery', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (197, 'Notebook Cooler', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (198, 'Notebook Keyboard', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (199, 'Notebook LED Panel', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (200, 'Notebook Screen & Accessories', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (201, 'Security Cable Lock', 17, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (202, 'Barcode Scanner', 19, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (203, 'Cartridge and Toner', 19, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (204, 'Printer', 19, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (205, 'Scanner', 19, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (206, 'Scanner Epson', 19, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (207, 'AMD Socket AM3', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (208, 'AMD Socket AM4', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (209, 'AMD Socket AM5', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (210, 'AMD Socket FM2+', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (211, 'AMD Socket sWRX8', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (212, 'Intel Celeron Socket LGA 1700', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (213, 'Intel Core 2 Duo Socket LGA 775', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (214, 'Intel Core i3 Socket LGA 1150', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (215, 'Intel Core i3 Socket LGA 1151', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (216, 'Intel Core i3 Socket LGA 1151V2', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (217, 'Intel Core i3 Socket LGA 1155', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (218, 'Intel Core i3 Socket LGA 1200', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (219, 'Intel Core i3 Socket LGA 1700', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (220, 'Intel Core i5 Socket LGA 1151V2', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (221, 'Intel Core i5 Socket LGA 1150', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (222, 'Intel Core i5 Socket LGA 1151', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (223, 'Intel Core i5 Socket LGA 1155', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (224, 'Intel Core i5 Socket LGA 1200', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (225, 'Intel Core i5 Socket LGA 1700', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (226, 'Intel Core i7 Socket LGA 1150', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (227, 'Intel Core i7 Socket LGA 1151', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (228, 'Intel Core i7 Socket LGA 1151V2', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (229, 'Intel Core i7 Socket LGA 1155', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (230, 'Intel Core i7 Socket LGA 1200', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (231, 'Intel Core i7 Socket LGA 1700', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (232, 'Intel Core i9 Socket LGA 1200', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (233, 'Intel Core i9 Socket LGA 1700', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (234, 'Intel Pentium Socket LGA 1150', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (235, 'Intel Pentium Socket LGA 1151', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (236, 'Intel Pentium Socket LGA 1151V2', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (237, 'Intel Pentium Socket LGA 1155', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (238, 'Intel Pentium Socket LGA 1200', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (239, 'Intel Pentium Socket LGA 1700', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (240, 'Intel Xeon LGA1151', 20, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (241, NULL, NULL, NULL, NULL, NULL, NULL, '0');
INSERT INTO `subkategori` VALUES (242, 'a', 5, '2023-01-10 13:20:28', '2023-01-10 16:27:07', 1, 1, '1');
INSERT INTO `subkategori` VALUES (243, 'AAAA', 2, '2023-01-10 16:26:05', '2023-01-10 16:26:58', 1, 1, '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `users_created` int(11) NULL DEFAULT NULL,
  `users_updated` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `softdelete` enum('0','1') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, NULL, 'Administrator', 'administrator', '11223344', '20230111162050.png', 1, 1, '2022-11-14 15:28:42', '2022-11-14 15:28:42', '0');

SET FOREIGN_KEY_CHECKS = 1;
