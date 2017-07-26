/*
Navicat MySQL Data Transfer

Source Server         : AlphaProjects
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : projectdb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-07-26 17:25:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Plumbing');
INSERT INTO `categories` VALUES ('2', 'Electrical');
INSERT INTO `categories` VALUES ('3', 'Doors');
INSERT INTO `categories` VALUES ('4', 'Windows');
INSERT INTO `categories` VALUES ('5', 'Flooring');
INSERT INTO `categories` VALUES ('6', 'Roofing');
INSERT INTO `categories` VALUES ('7', 'Flashing');
INSERT INTO `categories` VALUES ('8', 'Site Work');
INSERT INTO `categories` VALUES ('9', 'Interior Trim');
INSERT INTO `categories` VALUES ('10', 'Exterior Trim');
INSERT INTO `categories` VALUES ('11', 'Siding');
INSERT INTO `categories` VALUES ('12', 'Walkways');
INSERT INTO `categories` VALUES ('13', 'Fixtures');
INSERT INTO `categories` VALUES ('14', 'Door Hardware');
INSERT INTO `categories` VALUES ('15', 'Cabinetry');
INSERT INTO `categories` VALUES ('16', 'Built Ins');
INSERT INTO `categories` VALUES ('17', 'Pool');
INSERT INTO `categories` VALUES ('18', 'Interior Paint');
INSERT INTO `categories` VALUES ('19', 'Exterior Paint');
INSERT INTO `categories` VALUES ('20', 'HVAC');
INSERT INTO `categories` VALUES ('21', 'Tile');
INSERT INTO `categories` VALUES ('22', 'Countertops');
INSERT INTO `categories` VALUES ('23', 'Garage Doors');
INSERT INTO `categories` VALUES ('24', 'Sheetrock');
INSERT INTO `categories` VALUES ('25', 'Fireplaces');
INSERT INTO `categories` VALUES ('26', 'Timber Frame');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(45) DEFAULT NULL,
  `project_address` varchar(80) DEFAULT NULL,
  `project_city` varchar(45) DEFAULT NULL,
  `project_state` varchar(2) DEFAULT NULL,
  `project_zip` varchar(12) DEFAULT NULL,
  `project_lat` varchar(25) DEFAULT NULL,
  `project_lon` varchar(25) DEFAULT NULL,
  `project_phone` varchar(45) DEFAULT NULL,
  `project_photo` varchar(255) DEFAULT NULL,
  `owner_name` varchar(45) DEFAULT NULL,
  `owner_address` varchar(80) DEFAULT NULL,
  `owner_city` varchar(45) DEFAULT NULL,
  `owner_state` varchar(2) DEFAULT NULL,
  `owner_zip` varchar(12) DEFAULT NULL,
  `owner_email` varchar(45) DEFAULT NULL,
  `owner_work_phone` varchar(45) DEFAULT NULL,
  `owner_cell_phone` varchar(45) DEFAULT NULL,
  `owner_home_phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  UNIQUE KEY `idProjects_UNIQUE` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of projects
-- ----------------------------
INSERT INTO `projects` VALUES ('1', 'Haynes Project', 'East Beach Road', 'Darien', 'CT', '06454', '41.0772', '-73.4687', '203-333-4343', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_project_photo_j4k9z8ij_A3C1BCE2-2E2C-4C43-AFC7-318751842DFB.jpg', 'Douglas Haynes', '18 Bronson Road', 'Fairfield', 'CT', '06432', 'dsmith@gmail.com', '212-333-4232', '203-433-2334', '203-237-2323');
INSERT INTO `projects` VALUES ('2', 'Homestead Project', '26 Kent Falls Road', 'Kent ', 'CT', '06880', '41.7248', '-73.4770', '203-237-9080', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_img3.jpg', 'John and May Homestead', '515 Park Avenue', 'New York', 'NY', '10065', 'jhomestead@gmail.com', '212-322-4343', '203-227-3434', '203-566-3434');
INSERT INTO `projects` VALUES ('3', 'Harrison Project', '12 Blue View Drive', 'Lincoln', 'VT', '05340', '44.1059', '-72.9971', '802-444-5454', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_project_photo_j4ka08ie_703AD86C-4ED8-432B-9017-91FA2127680E.jpg', 'John and Lisa Harrison', '102 Redding Rd.', 'Fairlfield', 'CT', '06430', 'jharrison@gmail.com', '212-355-6767', '203-235-2323', '203-255-6565');
INSERT INTO `projects` VALUES ('4', 'Clapp Project', '674 Washington Street', 'Duxbury', 'MA', '02332', '42.0418', '-70.6723', '781-234-5689', 'http://alphaanywheredemo.s3.amazonaws.com/p4/p4_img1.jpg', 'Michael and Martha Clapp', '228 Commonwealth Ave.', 'Boston', 'MA', '02116', 'mclapp@gmail.com', '617-234-5332', '617-222-8964', '617-546-2317');
INSERT INTO `projects` VALUES ('7', 'Morrison Project', '7 East Street', 'Duxbury', 'MA', '02332', '42.0418', '-70.6723', '203-259-0021', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_project_photo_j4jzb40f_76F7607B-4F66-4734-9046-1F7648DF2E81.jpg', 'Robert Morrison', '80 Bronson Road', 'Fairfield', 'CT', '06430', 'rem@apple.com', '772-234-3232', null, null);

-- ----------------------------
-- Table structure for punchlist_details
-- ----------------------------
DROP TABLE IF EXISTS `punchlist_details`;
CREATE TABLE `punchlist_details` (
  `punchlist_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `punchlist_item_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `notes` text,
  `audio_notes` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`punchlist_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of punchlist_details
-- ----------------------------
INSERT INTO `punchlist_details` VALUES ('2', '2', '2017-02-21', 'These fixtures are missing. They need to be ordered and should have been supplied.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j2qgi9mr_rec-2017_5_15-14_21_54-6_581.m4a');
INSERT INTO `punchlist_details` VALUES ('3', '3', '2017-02-21', 'Replace paint grade hinges with ORB hinges ASAP!', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j2qgldqb_rec-2017_5_15-14_23_53-13_579.m4a');
INSERT INTO `punchlist_details` VALUES ('4', '4', '2017-07-26', 'Check weatherstrip, garagedoor.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_rec-2017_7_26-15_25_41-8_041.m4a');
INSERT INTO `punchlist_details` VALUES ('5', '2', '2017-02-21', 'Lights should have been supplied: Bob spoke with the Dave Lawlor about these lights. The material and cost is in the electrical contract. Dave will order.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j2w1b40d_rec-2017_5_19-12_2_51-11_05.m4a');
INSERT INTO `punchlist_details` VALUES ('6', '22', '2017-04-13', 'Painter notified.', null);
INSERT INTO `punchlist_details` VALUES ('7', '23', '2017-04-13', 'This door looks like it needs to be replaced. Did this come from the supplier in this condition?', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j4k8314d_rec-2017_6_30-14_56_49-10_567.m4a');
INSERT INTO `punchlist_details` VALUES ('9', '8', '2017-06-25', 'Confirmed warped door. New door on order.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j4k15anq_rec-2017_6_30-11_44_37-10_567.m4a');
INSERT INTO `punchlist_details` VALUES ('12', '5', '2017-04-25', 'Inspected and verified that this.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j4kabj7n_rec-2017_6_30-16_1_17-9_306.m4a');
INSERT INTO `punchlist_details` VALUES ('13', '20', '2017-05-15', 'Fix gaps in mortar', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j2qgr5tl_rec-2017_5_15-14_28_48-6_705.m4a');
INSERT INTO `punchlist_details` VALUES ('15', '15', '2017-05-22', 'Fixed it.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j4k0rusm_rec-2017_6_30-11_34_12-8_551.m4a');
INSERT INTO `punchlist_details` VALUES ('16', '13', '2017-06-09', 'Confirmed low water pressure. Informed plumber.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j4k0nvuj_rec-2017_6_30-11_31_5-9_055.m4a');
INSERT INTO `punchlist_details` VALUES ('17', '23', '2017-06-30', 'Door supplier will replace door.', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_notes_j4k8314d_rec-2017_6_30-14_58_10-15_081.m4a');
INSERT INTO `punchlist_details` VALUES ('18', '6', '2017-06-30', 'I spoke to the plumber. These fixtures will be installed next week.', '');

-- ----------------------------
-- Table structure for punchlist_items
-- ----------------------------
DROP TABLE IF EXISTS `punchlist_items`;
CREATE TABLE `punchlist_items` (
  `punchlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT 'reference project id',
  `category` varchar(45) DEFAULT NULL COMMENT 'list of categories could be pulled from a categories table or selected from a simple drop down. Examples, hvac, electrical, plumbing, cabinetry, flooring, roofing, windows, doors, exterior tirm, interior trim, hardware, driveway, site-work, interior paint, exterior paint, masonry, fireplace, garage, basement, walkways, etc.',
  `description` varchar(1024) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Not Started' COMMENT 'Can be : in process, on hold, resolved, not started. Could be handled with simple drop down.',
  `photo_filename` varchar(1024) DEFAULT NULL,
  `audio_filename` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`punchlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of punchlist_items
-- ----------------------------
INSERT INTO `punchlist_items` VALUES ('2', '1', 'Electrical', 'Under cabinet lights missing', '2017-02-20', null, 'In Process', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k0in2x_4C3CDCE4-CFBD-417B-82B7-F5470AAB0E2C.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k7z8ee_rec-2017_6_30-14_52_47-10_557.m4a');
INSERT INTO `punchlist_items` VALUES ('4', '2', 'Garage Doors', 'Weatherstrip seals missing', '2017-02-21', '2017-03-16', 'Completed', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_img5.jpg', null);
INSERT INTO `punchlist_items` VALUES ('5', '2', 'Exterior Paint', 'Touch up paint, South Elevation', '2017-04-27', null, 'In Process', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_img7.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j31tc298_rec-2017_5_23-13_6_27-5_049.m4a');
INSERT INTO `punchlist_items` VALUES ('6', '2', 'Plumbing', 'Bath #2, missing fixtures', '2017-02-23', '2017-04-27', 'Completed', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_img1.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k8a6ae_rec-2017_6_30-15_3_0-8_046.m4a');
INSERT INTO `punchlist_items` VALUES ('8', '3', 'Cabinetry', 'Warped cabinet door, upstairs bath.', '2017-02-21', null, 'In Process', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k8ewtb_1BF28818-7755-4C34-B6BC-9D8F3884F775.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k14544_rec-2017_6_30-11_43_44-11_567.m4a');
INSERT INTO `punchlist_items` VALUES ('9', '3', 'Tile', 'Seal grout, bathrom #5', '2017-05-22', '2017-06-25', 'Completed', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k11p16_7B346DFE-A31D-4AA4-8966-1191CC760C1A.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k12x7b_rec-2017_6_30-11_42_52-7_54.m4a');
INSERT INTO `punchlist_items` VALUES ('11', '2', 'Windows', 'Check cupula windows for leak', null, null, 'Not Started', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_img4.jpg', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_cupula.m4a');
INSERT INTO `punchlist_items` VALUES ('12', '1', 'Doors', 'Leak, back porch door, check weatherstripping.', '2017-04-25', null, 'In Process', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k0jkqq_78D0128B-66CB-4ABF-9A9A-612E11E72DE8.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k7z8ee_rec-2017_6_30-14_54_38-13_075.m4a');
INSERT INTO `punchlist_items` VALUES ('13', '4', 'Fixtures', 'Check pot filler over stove for proper water flow.', '2017-05-23', null, 'In Process', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k0in2x_0AE5BDAF-DD1A-4BBE-B8BE-64829764A060.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k0nvui_rec-2017_6_30-11_29_50-10_809.m4a');
INSERT INTO `punchlist_items` VALUES ('14', '4', 'Plumbing', 'Check installation of washer hot and cold water feeds.', null, null, 'Not Started', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k0in2x_8CD5C081-EDD7-4ABB-90FF-DA0E5977797B.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k0pc0q_rec-2017_6_30-11_32_5-17_591.m4a');
INSERT INTO `punchlist_items` VALUES ('15', '4', 'HVAC', 'Noisy air handler, 2nd floor east bedroom', null, null, 'Completed', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k0in2x_762F9D9F-6A0A-49FD-9FF8-E4DC314CFF44.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k0rusl_rec-2017_6_30-11_33_19-14_329.m4a');
INSERT INTO `punchlist_items` VALUES ('18', '1', 'Interior Paint', 'Repair gaps, crown, West Bedroom', null, null, 'Not Started', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_img3.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_rec-2017_7_26-15_27_7-14_096.m4a');
INSERT INTO `punchlist_items` VALUES ('19', '1', 'Sheetrock', 'Repair and replace, audio panel, bedroom #3', null, null, 'Not Started', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_img4.jpg', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_audio_panel.m4a');
INSERT INTO `punchlist_items` VALUES ('21', '1', 'Fireplaces', 'Gas fixture, missing, FP #1', null, null, 'Not Started', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_img6.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k7shhj_rec-2017_6_30-14_50_37-12_565.m4a');
INSERT INTO `punchlist_items` VALUES ('22', '1', 'Interior Paint', 'Main stairs, touchup', '2017-04-12', null, 'In Process', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_img7.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k7z8ee_rec-2017_6_30-14_55_51-12_066.m4a');
INSERT INTO `punchlist_items` VALUES ('23', '1', 'Doors', 'Front door damaged', '2017-04-13', null, 'In Process', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_img8.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k0l9x1_rec-2017_6_30-11_29_6-7_788.m4a');
INSERT INTO `punchlist_items` VALUES ('24', '1', 'HVAC', 'Filter fit, improper', null, null, 'Not Started', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_img9.jpg', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_air_filter.m4a');
INSERT INTO `punchlist_items` VALUES ('25', '1', 'Doors', 'Closet doors, East bedroom, check fit', null, null, 'Not Started', 'http://alphaanywheredemo.s3.amazonaws.com/p1/p1_img10.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k7u221_rec-2017_6_30-14_51_48-12_073.m4a');
INSERT INTO `punchlist_items` VALUES ('26', '2', 'Timber Frame', 'East sun room, trim pegs', null, null, 'Not Started', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_img2.jpg', 'http://alphaanywheredemo.s3.amazonaws.com/p2/p2_timber_pegs.m4a');
INSERT INTO `punchlist_items` VALUES ('27', '2', 'Interior Trim', 'Check fireplace veneer', '2017-04-11', '2017-04-12', 'Not Started', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k0in2y_C86CD182-A962-410F-AA42-7967486262E2.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_rec-2017_7_26-15_23_51-12_797.m4a');
INSERT INTO `punchlist_items` VALUES ('29', '7', 'Doors', 'Check fit on this entrance door, 2nd floor kid bedroom.', '2017-04-25', '2017-04-30', 'In Process', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k9y58d_3C262871-4D1D-4AE5-9BF4-EDB82652B970.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4ka94if_rec-2017_6_30-15_59_16-18_855.m4a');
INSERT INTO `punchlist_items` VALUES ('43', '1', 'HVAC', 'Check all labels on boiler for accuracy.', '2017-06-30', null, 'In Process', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_photo_filename_j4k87396_43A9E175-6E22-446B-AE8B-1DCFEA668731.jpg', 'https://alphaanywheredemo.s3.amazonaws.com/B38BB4A2-3914-4806-9424-B6EF8C58C0D8_audio_filename_j4k87397_rec-2017_6_30-15_1_56-13_332.m4a');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', 'On hold');
INSERT INTO `status` VALUES ('2', 'In Process');
INSERT INTO `status` VALUES ('3', 'Not Started');
INSERT INTO `status` VALUES ('4', 'Completed');
SET FOREIGN_KEY_CHECKS=1;
