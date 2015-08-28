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

Date: 2015-02-20 15:21:33
*/


-- ----------------------------
-- Table structure for "SYSTEM"."ENVIRONMENTAL"
-- ----------------------------
DROP TABLE "SYSTEM"."ENVIRONMENTAL";
CREATE TABLE "SYSTEM"."ENVIRONMENTAL" (
"ENVIRONMENTAL_ID" VARCHAR2(10 BYTE) NOT NULL ,
"ENVIRONMENTAL_EFFECT" VARCHAR2(200 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of ENVIRONMENTAL
-- ----------------------------
INSERT INTO "SYSTEM"."ENVIRONMENTAL" VALUES ('na001', 'forest damage');
INSERT INTO "SYSTEM"."ENVIRONMENTAL" VALUES ('na002', 'bengal tigers dead');
INSERT INTO "SYSTEM"."ENVIRONMENTAL" VALUES ('na002', 'forest damage');
INSERT INTO "SYSTEM"."ENVIRONMENTAL" VALUES ('na002', 'salt water mixed natural water');

-- ----------------------------
-- Checks structure for table "SYSTEM"."ENVIRONMENTAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ENVIRONMENTAL" ADD CHECK ("ENVIRONMENTAL_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."ENVIRONMENTAL" ADD CHECK ("ENVIRONMENTAL_EFFECT" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."ENVIRONMENTAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ENVIRONMENTAL" ADD FOREIGN KEY ("ENVIRONMENTAL_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
