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

Date: 2015-02-20 15:22:46
*/


-- ----------------------------
-- Table structure for "SYSTEM"."RESCUE"
-- ----------------------------
DROP TABLE "SYSTEM"."RESCUE";
CREATE TABLE "SYSTEM"."RESCUE" (
"RESCUE_ID" VARCHAR2(10 BYTE) NOT NULL ,
"DAYS" NUMBER NOT NULL ,
"RESCUE_NUMBER" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of RESCUE
-- ----------------------------
INSERT INTO "SYSTEM"."RESCUE" VALUES ('na001', '15', '150');
INSERT INTO "SYSTEM"."RESCUE" VALUES ('na002', '8', '1500');

-- ----------------------------
-- Checks structure for table "SYSTEM"."RESCUE"
-- ----------------------------
ALTER TABLE "SYSTEM"."RESCUE" ADD CHECK ("RESCUE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."RESCUE" ADD CHECK ("DAYS" IS NOT NULL);
ALTER TABLE "SYSTEM"."RESCUE" ADD CHECK ("RESCUE_NUMBER" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."RESCUE"
-- ----------------------------
ALTER TABLE "SYSTEM"."RESCUE" ADD FOREIGN KEY ("RESCUE_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
