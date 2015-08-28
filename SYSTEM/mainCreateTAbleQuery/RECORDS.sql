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

Date: 2015-02-20 15:22:19
*/


-- ----------------------------
-- Table structure for "SYSTEM"."RECORDS"
-- ----------------------------
DROP TABLE "SYSTEM"."RECORDS";
CREATE TABLE "SYSTEM"."RECORDS" (
"RECORD_ID" VARCHAR2(10 BYTE) NOT NULL ,
"DIS_TYPE" VARCHAR2(255 BYTE) NULL ,
"PLACE" VARCHAR2(300 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of RECORDS
-- ----------------------------
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na001', 'cyclone', 'jhalokati');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na001', 'cyclone', 'barguna');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na001', 'cyclone', 'patuakhali');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na002', 'cyclone', 'bagerhat');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na002', 'cyclone', 'khulna');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na002', 'cyclone', 'shatkhira');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na002', 'cyclone', 'gopalgonj');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na002', 'cyclone', 'bhola');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na002', 'cyclone', 'barisal');
INSERT INTO "SYSTEM"."RECORDS" VALUES ('na002', 'cyclone', 'jessore');

-- ----------------------------
-- Checks structure for table "SYSTEM"."RECORDS"
-- ----------------------------
ALTER TABLE "SYSTEM"."RECORDS" ADD CHECK ("RECORD_ID" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."RECORDS"
-- ----------------------------
ALTER TABLE "SYSTEM"."RECORDS" ADD FOREIGN KEY ("RECORD_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
