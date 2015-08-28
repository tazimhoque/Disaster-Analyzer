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

Date: 2015-02-20 15:21:44
*/


-- ----------------------------
-- Table structure for "SYSTEM"."FOREIGNHELP"
-- ----------------------------
DROP TABLE "SYSTEM"."FOREIGNHELP";
CREATE TABLE "SYSTEM"."FOREIGNHELP" (
"DIS_ID" VARCHAR2(10 BYTE) NOT NULL ,
"COUNTINST" VARCHAR2(255 BYTE) NOT NULL ,
"DESCRIPTION" VARCHAR2(1000 BYTE) NULL ,
"FUND" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of FOREIGNHELP
-- ----------------------------
INSERT INTO "SYSTEM"."FOREIGNHELP" VALUES ('na001', 'australia', 'safe water,sanitation,food,clothes,blanket', '8294');
INSERT INTO "SYSTEM"."FOREIGNHELP" VALUES ('na001', 'belgium', 'rehabilitation of houses,agricultural support', '3097157');
INSERT INTO "SYSTEM"."FOREIGNHELP" VALUES ('na001', 'bill and melinda gates foundation', 'humanitarian assistance', '500000');
INSERT INTO "SYSTEM"."FOREIGNHELP" VALUES ('na001', 'canada', 'health aid,non food item,basic needs,foods', '3700000');

-- ----------------------------
-- Checks structure for table "SYSTEM"."FOREIGNHELP"
-- ----------------------------
ALTER TABLE "SYSTEM"."FOREIGNHELP" ADD CHECK ("DIS_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."FOREIGNHELP" ADD CHECK ("COUNTINST" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."FOREIGNHELP"
-- ----------------------------
ALTER TABLE "SYSTEM"."FOREIGNHELP" ADD FOREIGN KEY ("DIS_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
