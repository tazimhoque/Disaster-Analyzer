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

Date: 2015-02-20 15:21:09
*/


-- ----------------------------
-- Table structure for "SYSTEM"."ECONOMICAL"
-- ----------------------------
DROP TABLE "SYSTEM"."ECONOMICAL";
CREATE TABLE "SYSTEM"."ECONOMICAL" (
"ECONOMICAL_ID" VARCHAR2(10 BYTE) NOT NULL ,
"ECONOMICAL_EFFECT" VARCHAR2(200 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ECONOMICAL
-- ----------------------------
INSERT INTO "SYSTEM"."ECONOMICAL" VALUES ('na001', '450');
INSERT INTO "SYSTEM"."ECONOMICAL" VALUES ('na002', '1200');

-- ----------------------------
-- Uniques structure for table "SYSTEM"."ECONOMICAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD UNIQUE ("ECONOMICAL_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."ECONOMICAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD CHECK ("ECONOMICAL_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD CHECK ("ECONOMICAL_EFFECT" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."ECONOMICAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD FOREIGN KEY ("ECONOMICAL_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
