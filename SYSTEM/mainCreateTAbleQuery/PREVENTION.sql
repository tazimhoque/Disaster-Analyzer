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

Date: 2015-02-20 15:22:10
*/


-- ----------------------------
-- Table structure for "SYSTEM"."PREVENTION"
-- ----------------------------
DROP TABLE "SYSTEM"."PREVENTION";
CREATE TABLE "SYSTEM"."PREVENTION" (
"PREVENTION_ID" VARCHAR2(10 BYTE) NOT NULL ,
"CAUSES" VARCHAR2(1000 BYTE) NOT NULL ,
"PREVENTION" VARCHAR2(1000 BYTE) DEFAULT 'NA'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of PREVENTION
-- ----------------------------
INSERT INTO "SYSTEM"."PREVENTION" VALUES ('na001', ' large revolving tropical storm caused by winds blowing around a central area of low atmospheric pressure. They develop over warm waters, because the warmth creates low-pressure air.  The air rises quickly, becomes saturated with moisture and forms thunderclouds.  Cool air fills up the empty space created by the rising air.  Because the earth is constantly spinning on its axis, it causes the winds to start rotating faster and faster and become bigger in diameter, sometimes thousands of kilometers. ', 'NA');

-- ----------------------------
-- Checks structure for table "SYSTEM"."PREVENTION"
-- ----------------------------
ALTER TABLE "SYSTEM"."PREVENTION" ADD CHECK ("PREVENTION_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."PREVENTION" ADD CHECK ("CAUSES" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."PREVENTION"
-- ----------------------------
ALTER TABLE "SYSTEM"."PREVENTION" ADD FOREIGN KEY ("PREVENTION_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
