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

Date: 2015-02-20 15:20:16
*/


-- ----------------------------
-- Table structure for "SYSTEM"."DISASTER"
-- ----------------------------
DROP TABLE "SYSTEM"."DISASTER";
CREATE TABLE "SYSTEM"."DISASTER" (
"ID" VARCHAR2(10 BYTE) NOT NULL ,
"TYPE" VARCHAR2(25 BYTE) NOT NULL ,
"NAME" VARCHAR2(200 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DISASTER
-- ----------------------------
INSERT INTO "SYSTEM"."DISASTER" VALUES ('na001', 'natural', 'sidr');
INSERT INTO "SYSTEM"."DISASTER" VALUES ('na002', 'natural', 'aila');
INSERT INTO "SYSTEM"."DISASTER" VALUES ('na003', 'natural', 'nargis');

-- ----------------------------
-- Indexes structure for table DISASTER
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."DISASTER"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISASTER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."DISASTER" ADD CHECK ("TYPE" IS NOT NULL);
ALTER TABLE "SYSTEM"."DISASTER" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DISASTER"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISASTER" ADD PRIMARY KEY ("ID");
