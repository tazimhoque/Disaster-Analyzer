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

Date: 2015-02-20 15:20:56
*/


-- ----------------------------
-- Table structure for "SYSTEM"."DISDATE"
-- ----------------------------
DROP TABLE "SYSTEM"."DISDATE";
CREATE TABLE "SYSTEM"."DISDATE" (
"DISDATE_ID" VARCHAR2(10 BYTE) NOT NULL ,
"DIS_DATE" DATE NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DISDATE
-- ----------------------------
INSERT INTO "SYSTEM"."DISDATE" VALUES ('na001', TO_DATE('2007-11-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYSTEM"."DISDATE" VALUES ('na002', TO_DATE('2009-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYSTEM"."DISDATE" VALUES ('na003', TO_DATE('2008-04-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Uniques structure for table "SYSTEM"."DISDATE"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISDATE" ADD UNIQUE ("DISDATE_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."DISDATE"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISDATE" ADD CHECK ("DISDATE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."DISDATE" ADD CHECK ("DIS_DATE" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."DISDATE"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISDATE" ADD FOREIGN KEY ("DISDATE_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
