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

Date: 2015-02-20 15:21:21
*/


-- ----------------------------
-- Table structure for "SYSTEM"."EFFECT"
-- ----------------------------
DROP TABLE "SYSTEM"."EFFECT";
CREATE TABLE "SYSTEM"."EFFECT" (
"EFFECT_ID" VARCHAR2(10 BYTE) NOT NULL ,
"HUMANLIFE" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of EFFECT
-- ----------------------------
INSERT INTO "SYSTEM"."EFFECT" VALUES ('na001', '10000');
INSERT INTO "SYSTEM"."EFFECT" VALUES ('na002', '2500');
INSERT INTO "SYSTEM"."EFFECT" VALUES ('na003', '8000');

-- ----------------------------
-- Uniques structure for table "SYSTEM"."EFFECT"
-- ----------------------------
ALTER TABLE "SYSTEM"."EFFECT" ADD UNIQUE ("EFFECT_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."EFFECT"
-- ----------------------------
ALTER TABLE "SYSTEM"."EFFECT" ADD CHECK ("EFFECT_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."EFFECT" ADD CHECK ("HUMANLIFE" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."EFFECT"
-- ----------------------------
ALTER TABLE "SYSTEM"."EFFECT" ADD FOREIGN KEY ("EFFECT_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
