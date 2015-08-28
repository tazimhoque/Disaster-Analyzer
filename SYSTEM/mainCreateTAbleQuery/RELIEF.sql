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

Date: 2015-02-20 15:22:31
*/


-- ----------------------------
-- Table structure for "SYSTEM"."RELIEF"
-- ----------------------------
DROP TABLE "SYSTEM"."RELIEF";
CREATE TABLE "SYSTEM"."RELIEF" (
"RELIEF_ID" VARCHAR2(10 BYTE) NOT NULL ,
"EXPENSE" NUMBER NOT NULL ,
"PRODUCT" VARCHAR2(50 BYTE) NULL ,
"PLACE" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of RELIEF
-- ----------------------------
INSERT INTO "SYSTEM"."RELIEF" VALUES ('na001', '85', 'food', 'Jhalokati');
INSERT INTO "SYSTEM"."RELIEF" VALUES ('na002', '35', 'food', 'barisal');
INSERT INTO "SYSTEM"."RELIEF" VALUES ('na002', '120', 'food', 'khulna');
INSERT INTO "SYSTEM"."RELIEF" VALUES ('na002', '6', 'saline', 'barisal');
INSERT INTO "SYSTEM"."RELIEF" VALUES ('na002', '6', 'saline', 'gopalgonj');

-- ----------------------------
-- Checks structure for table "SYSTEM"."RELIEF"
-- ----------------------------
ALTER TABLE "SYSTEM"."RELIEF" ADD CHECK ("RELIEF_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."RELIEF" ADD CHECK ("EXPENSE" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."RELIEF"
-- ----------------------------
ALTER TABLE "SYSTEM"."RELIEF" ADD FOREIGN KEY ("RELIEF_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
