/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : disaster
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : SYSTEM

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2015-02-20 15:23:05
*/


-- ----------------------------
-- Table structure for "SYSTEM"."VOLUNTEERS"
-- ----------------------------
DROP TABLE "SYSTEM"."VOLUNTEERS";
CREATE TABLE "SYSTEM"."VOLUNTEERS" (
"DIS_ID" VARCHAR2(10 BYTE) NOT NULL ,
"NAME" VARCHAR2(50 BYTE) NOT NULL ,
"ORG" VARCHAR2(200 BYTE) NULL ,
"CONTACT" VARCHAR2(25 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of VOLUNTEERS
-- ----------------------------
INSERT INTO "SYSTEM"."VOLUNTEERS" VALUES ('na001', 'Md.Sahabuddin', 'Bangladesh Army', '0195568789');

-- ----------------------------
-- Checks structure for table "SYSTEM"."VOLUNTEERS"
-- ----------------------------
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD CHECK ("DIS_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD CHECK ("NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD CHECK ("CONTACT" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."VOLUNTEERS"
-- ----------------------------
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD FOREIGN KEY ("DIS_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
