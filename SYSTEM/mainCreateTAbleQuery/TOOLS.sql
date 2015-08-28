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

Date: 2015-02-20 15:22:56
*/


-- ----------------------------
-- Table structure for "SYSTEM"."TOOLS"
-- ----------------------------
DROP TABLE "SYSTEM"."TOOLS";
CREATE TABLE "SYSTEM"."TOOLS" (
"DIS_ID" VARCHAR2(10 BYTE) NOT NULL ,
"NAME" VARCHAR2(100 BYTE) NOT NULL ,
"COST" NUMBER NULL ,
"QUANTITY" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of TOOLS
-- ----------------------------
INSERT INTO "SYSTEM"."TOOLS" VALUES ('na001', 'water purifier', '13500', '20');
INSERT INTO "SYSTEM"."TOOLS" VALUES ('na001', 'Helicopter ', null, '5');
INSERT INTO "SYSTEM"."TOOLS" VALUES ('na001', 'electricity generator', null, null);
INSERT INTO "SYSTEM"."TOOLS" VALUES ('na001', 'Tents', null, '10000');

-- ----------------------------
-- Checks structure for table "SYSTEM"."TOOLS"
-- ----------------------------
ALTER TABLE "SYSTEM"."TOOLS" ADD CHECK ("DIS_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."TOOLS" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."TOOLS"
-- ----------------------------
ALTER TABLE "SYSTEM"."TOOLS" ADD FOREIGN KEY ("DIS_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
