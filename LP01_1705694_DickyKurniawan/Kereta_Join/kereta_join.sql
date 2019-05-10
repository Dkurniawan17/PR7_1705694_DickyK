/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : kereta_join

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 15/04/2019 18:18:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gerbong
-- ----------------------------
DROP TABLE IF EXISTS `gerbong`;
CREATE TABLE `gerbong`  (
  `id_gerbong` int(11) NOT NULL AUTO_INCREMENT,
  `kd_gerbong` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kd_kereta` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_gerbong` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_gerbong`) USING BTREE,
  INDEX `kd_gerbong`(`kd_gerbong`) USING BTREE,
  INDEX `fk_gerbong`(`kd_kereta`) USING BTREE,
  CONSTRAINT `fk_gerbong` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gerbong
-- ----------------------------
INSERT INTO `gerbong` VALUES (1, 'GRB001', 'KRT002', 'A01');
INSERT INTO `gerbong` VALUES (2, 'GRB002', 'KRT002', 'B01');
INSERT INTO `gerbong` VALUES (3, 'GRB003', 'KRT003', 'C01');

-- ----------------------------
-- Table structure for kursi
-- ----------------------------
DROP TABLE IF EXISTS `kursi`;
CREATE TABLE `kursi`  (
  `id_kursi` int(11) NOT NULL AUTO_INCREMENT,
  `kd_kursi` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kd_gerbong` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kd_kereta` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kursi`) USING BTREE,
  INDEX `fk_kgerbong`(`kd_gerbong`) USING BTREE,
  INDEX `fk_kkereta`(`kd_kereta`) USING BTREE,
  CONSTRAINT `fk_kgerbong` FOREIGN KEY (`kd_gerbong`) REFERENCES `gerbong` (`kd_gerbong`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_kkereta` FOREIGN KEY (`kd_kereta`) REFERENCES `lokomotif` (`kd_kereta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kursi
-- ----------------------------
INSERT INTO `kursi` VALUES (5, 'KRS001', 'GRB001', 'KRT001');
INSERT INTO `kursi` VALUES (6, 'KRS002', 'GRB001', 'KRT001');
INSERT INTO `kursi` VALUES (7, 'KRS003', 'GRB001', 'KRT002');
INSERT INTO `kursi` VALUES (8, 'KRS004', 'GRB001', 'KRT002');
INSERT INTO `kursi` VALUES (9, 'KRS005', 'GRB002', 'KRT002');
INSERT INTO `kursi` VALUES (10, 'KRS006', 'GRB002', 'KRT002');

-- ----------------------------
-- Table structure for lokomotif
-- ----------------------------
DROP TABLE IF EXISTS `lokomotif`;
CREATE TABLE `lokomotif`  (
  `id_kereta` int(11) NOT NULL AUTO_INCREMENT,
  `kd_kereta` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kereta` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kereta`) USING BTREE,
  INDEX `kd_kereta`(`kd_kereta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lokomotif
-- ----------------------------
INSERT INTO `lokomotif` VALUES (1, 'KRT001', 'Argo Wilis');
INSERT INTO `lokomotif` VALUES (2, 'KRT002', 'MALABAR');
INSERT INTO `lokomotif` VALUES (3, 'KRT003', 'KURTOJOYO');

SET FOREIGN_KEY_CHECKS = 1;
